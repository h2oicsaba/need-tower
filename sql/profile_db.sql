-- Profiles table DDL (idempotent)
-- Run in DEV first, then PRD
BEGIN;
--
-- DEV rule: drop and recreate the table to reflect current schema
DROP TABLE IF EXISTS public.profiles CASCADE;
CREATE TABLE public.profiles (
  user_id uuid PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  first_name text,
  last_name text,
  address text,
  city text NOT NULL,
  postal_code text,
  country text NOT NULL DEFAULT 'Hungary',
  avatar_name text NOT NULL,
  character_key text NOT NULL,
  avatar_handle text UNIQUE,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT profiles_country_chk CHECK (country = 'Hungary'),
  CONSTRAINT profiles_postal_code_chk CHECK (postal_code IS NULL OR postal_code ~ '^[0-9]{4}$'),
  CONSTRAINT profiles_character_key_chk CHECK (
    character_key IN ('okos_toni','bolcs_elemer','zseni_zsuzsi','tudos_tundi')
  )
);
-- Keep updated_at in sync
CREATE OR REPLACE FUNCTION public.set_updated_at()
RETURNS trigger AS '
BEGIN
  NEW.updated_at = now();
  RETURN NEW;
END;
' LANGUAGE plpgsql;
--
DROP TRIGGER IF EXISTS set_profiles_updated_at ON public.profiles;
CREATE TRIGGER set_profiles_updated_at
BEFORE UPDATE ON public.profiles
FOR EACH ROW EXECUTE FUNCTION public.set_updated_at();

-- Generate a unique avatar_handle (base, base_2, base_3, ...)
-- Returns the chosen handle. Creates/updates the caller's profile row.
CREATE OR REPLACE FUNCTION public.generate_avatar_handle(p_user_id uuid, p_avatar_name text)
RETURNS text
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  base text;
  attempt int := 0;
  candidate text;
BEGIN
  IF p_avatar_name IS NULL OR btrim(p_avatar_name) = '' THEN
    RAISE EXCEPTION 'avatar_name required';
  END IF;

  base := lower(regexp_replace(p_avatar_name, '[^a-z0-9]+', '-', 'g'));
  base := btrim(base, '-');
  IF base = '' THEN
    base := 'player';
  END IF;

  LOOP
    IF attempt = 0 THEN
      candidate := base;
    ELSE
      candidate := base || '_' || (attempt + 1); -- mariska_2, _3, ...
    END IF;
    BEGIN
      INSERT INTO public.profiles (user_id, avatar_handle, avatar_name)
      VALUES (p_user_id, candidate, p_avatar_name)
      ON CONFLICT (user_id)
      DO UPDATE SET avatar_handle = EXCLUDED.avatar_handle,
                    avatar_name = COALESCE(public.profiles.avatar_name, EXCLUDED.avatar_name)
      WHERE public.profiles.avatar_handle IS DISTINCT FROM EXCLUDED.avatar_handle;
      RETURN candidate;
    EXCEPTION WHEN unique_violation THEN
      -- someone else has this handle, try next
      attempt := attempt + 1;
      IF attempt > 20 THEN
        RAISE EXCEPTION 'could not generate unique handle for base %', base;
      END IF;
      -- continue loop
    END;
  END LOOP;
END;
$$;
--
COMMIT;
