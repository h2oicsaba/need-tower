# Database: Supabase schema, imports, and MCP usage

This document explains how the quiz database is structured, how to run schema migrations (DDL) and per-topic data imports (DML), and how to safely use the Supabase MCP server in write mode.

- Project: Next.js app in `apps/web` using Supabase (DEV and PRD are separate projects)
- DEV runs locally with cloud Supabase; PRD runs on Vercel with its own Supabase project
- SQL sources live under `sql/`

## Schema (DDL)

The schema is defined in `sql/quiz/quiz_db.sql` and contains the following tables:

- `languages(id, code, name)`
- `topics(id, language_id, name_hu, name_translated, slug, created_at)`
- `questions(id, topic_id, text, difficulty, source, created_at, active)`
- `answers(id, question_id, text, is_correct)`

Important constraints and indexes:
- Unique language code on `languages(code)`
- Unique `topics.slug`
- One correct answer per question enforced by a partial unique index on `answers(question_id) WHERE is_correct`

Applied to DEV via MCP as a migration: `question_db_init`.

### DEV-only rule: drop-and-recreate for fast iteration

- During active development, some tables (e.g., `public.profiles` in `sql/profile_db.sql`) are dropped and recreated to reflect current fields without ALTER chains.
- This is safe in DEV where data can be reset. Do not run destructive DDL on PRD.
- After dropping tables, always re-apply RLS, grants, and triggers from `sql/db_auth.sql`.
 - Profile mezők elnevezése angol: `postal_code`, `country`, `avatar_name`, `avatar_gender`. Az `avatar_gender` engedélyezett értékei: `'boy' | 'girl'`.

## Data (DML) per-topic imports

Per-topic data import SQL files are generated in `sql/quiz/` with names like `import_hu_<topic>.sql`.

Each file is idempotent and contains:
- `BEGIN; ... COMMIT;`
- `INSERT INTO languages (code, name) VALUES ('hu','Magyar') ON CONFLICT DO NOTHING;`
- Topic upsert by slug via `ON CONFLICT (slug) DO NOTHING`
- `INSERT ... SELECT` for questions and their answers within that topic

Topics are listed in `sql/quiz/IMPORT_HU_TOPICS.txt`.

## Running imports

You can run the imports in two ways:

1) Using the Supabase SQL editor (manual)
- Open the DEV project's SQL editor
- Paste the contents of a single `import_hu_<topic>.sql`
- Execute and confirm success before proceeding to the next topic

2) Using the Supabase MCP server (recommended for repeatability)
- Ensure the Supabase MCP server is running in write mode (see below)
- Execute each per-topic file sequentially via the MCP `execute_sql` tool
- Suggested order: any order is fine; per-topic files are independent beyond requiring `languages('hu')` which each file inserts idempotently

## Supabase MCP server: read-only vs write mode

- Read-only mode: pass the `--read-only` flag when starting the MCP server. SQL writes (DDL/DML) are blocked.
- Write mode: omit the `--read-only` flag. There is no `--mode=write` flag.

Security notes for write mode:
- Only run trusted SQL that is checked into the repo
- Keep DEV/PRD isolated. Always confirm which project the MCP server is connected to
- Prefer idempotent scripts; avoid destructive DDL on production

## Environment separation (DEV vs PRD)

- DEV Supabase: used by local Next.js app via `.env.local`
  - `NEXT_PUBLIC_SUPABASE_URL`
  - `NEXT_PUBLIC_SUPABASE_ANON_KEY`
- PRD Supabase: set env vars in Vercel dashboard; do not commit production secrets

Recommended workflow:
- Apply DDL in DEV as a migration
- Import all per-topic DML into DEV
- Validate app behavior against DEV data
- For PRD, repeat DDL as a migration, then import the same per-topic files if needed

## Regenerating per-topic SQL files

Use the generator in `scripts/gen_import_hu_sql.js` which reads `.q` sources under `sql/quiz/q/` and writes per-topic SQL files under `sql/quiz/`.

- Node >=18 recommended
- Run from repo root:

```bash
node scripts/gen_import_hu_sql.js
```

This updates per-topic imports and the `IMPORT_HU_TOPICS.txt` index file.

## Troubleshooting

- If a topic import appears to do nothing, it may have already been applied. Re-running is safe thanks to `ON CONFLICT DO NOTHING` and unique constraints.
- If the MCP call fails, confirm the server is in write mode and that credentials point to the correct DEV project.
- For constraint violations, inspect the offending rows by querying the affected tables by `slug` or `text`.
