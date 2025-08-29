-- RLS + authenticated-only read policies (idempotent)
-- Apply in DEV first, then PRD
BEGIN;
-- Auto-profile trigger removed: profiles now has NOT NULL fields; app will create row explicitly
DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
-- 1) Enable RLS on public tables (safe to re-run)
ALTER TABLE public.languages ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.topics ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.questions ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.answers ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.profiles ENABLE ROW LEVEL SECURITY;
-- 2) Ensure SELECT privilege exists (RLS still gates rows)
GRANT SELECT ON public.languages TO authenticated;
GRANT SELECT ON public.topics TO authenticated;
GRANT SELECT ON public.questions TO authenticated;
GRANT SELECT ON public.answers TO authenticated;
GRANT SELECT ON public.profiles TO authenticated;
GRANT INSERT, UPDATE ON public.profiles TO authenticated;
-- 3) Idempotent policies without DO/dollar-quoting
DROP POLICY IF EXISTS "auth read languages" ON public.languages;
CREATE POLICY "auth read languages" ON public.languages FOR SELECT TO authenticated USING (true);
DROP POLICY IF EXISTS "auth read topics" ON public.topics;
CREATE POLICY "auth read topics" ON public.topics FOR SELECT TO authenticated USING (true);
DROP POLICY IF EXISTS "auth read questions" ON public.questions;
CREATE POLICY "auth read questions" ON public.questions FOR SELECT TO authenticated USING (true);
DROP POLICY IF EXISTS "auth read answers" ON public.answers;
CREATE POLICY "auth read answers" ON public.answers FOR SELECT TO authenticated USING (true);
-- Profiles RLS: users can read everyone (optional) but update only self
DROP POLICY IF EXISTS "read profiles" ON public.profiles;
CREATE POLICY "read profiles" ON public.profiles FOR SELECT TO authenticated USING (true);
DROP POLICY IF EXISTS "insert own profile" ON public.profiles;
CREATE POLICY "insert own profile" ON public.profiles FOR INSERT TO authenticated WITH CHECK (auth.uid() = user_id);
DROP POLICY IF EXISTS "update own profile" ON public.profiles;
CREATE POLICY "update own profile" ON public.profiles FOR UPDATE TO authenticated USING (auth.uid() = user_id) WITH CHECK (auth.uid() = user_id);
-- Allow calling the handle generator from clients
GRANT EXECUTE ON FUNCTION public.generate_avatar_handle(uuid, text) TO authenticated;
--
COMMIT;
