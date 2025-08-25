# Per-topic SQL imports (HU)

This folder contains:

- `question_db.sql` — schema (DDL) for the quiz database
- `import_hu_<topic>.sql` — per-topic data inserts (DML) for Hungarian content
- `IMPORT_HU_TOPICS.txt` — index of generated per-topic files and run order tips

## How these files are generated

Use the generator script `scripts/gen_import_hu_sql.js`:

```bash
node scripts/gen_import_hu_sql.js
```

It scans `.q` sources under `questions/` and writes idempotent per-topic SQL files here plus refreshes `IMPORT_HU_TOPICS.txt`.

## What "idempotent" means here

- Each file starts with `BEGIN;` and ends with `COMMIT;`.
- Ensures the Hungarian language exists: `INSERT ... ON CONFLICT DO NOTHING`.
- Inserts the `topic` row by `slug` with `ON CONFLICT (slug) DO NOTHING`.
- Inserts questions and answers via `INSERT ... SELECT` queries scoped by `slug` and exact `text`.
- Safe to re-run; duplicates are avoided by constraints.

## Ways to run imports

1) Supabase SQL editor (manual)
- Open the DEV project SQL editor
- Paste a single `import_hu_<topic>.sql` file
- Execute, verify, move to the next topic

2) Supabase MCP (automatable)
- Ensure MCP server is in write mode (omit `--read-only`)
- Execute each file using the MCP `execute_sql` function against DEV
- Order is flexible; files are independent beyond requiring `languages('hu')`

## Notes

- Keep DEV and PRD separate. Apply to DEV first, validate, then repeat on PRD if needed.
- If a run does nothing, the data may already be present; re-runs are safe by design.
- If you modify `.q` sources, re-run the generator to update SQL files.
