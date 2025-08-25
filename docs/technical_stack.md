# Need Tower Quiz – Technical Stack (2025)

## Overview
Architecture: Monorepo (Turborepo) → Frontend (Next.js PWA, React 18), Backend (Supabase: Postgres + Auth + Realtime + Edge Functions)
Deployment: apps/web → Vercel, supabase/db + supabase/functions → Supabase
Per-country separation (recommended): HU, SK, etc. – different currency/price, separate DB and secrets

## Backend (Supabase)
- Database: PostgreSQL 15
- Auth: Supabase Auth (email/password, later OAuth)
- Realtime: Postgres Changes → progress, duels, player_status
- Edge Functions (Deno + TypeScript): join-tower, check-answer, start-challenge, respond-challenge, finish-duel, buy-need, redeem-shop, weekly-digest
- Security: RLS on all tables, Edge Functions do critical checks
- Rate limit critical endpoints, captcha on login

## Key Tables
- profiles(user_id PK, display_name, city, last_activity_at)
- towers(id PK, name, target_players, state, started_at, finished_at)
- tower_participants(tower_id, user_id, joined_at)
- questions(id PK, tower_id, text, answers jsonb, active)
- progress(tower_id, user_id, step, last_move_at)
- answers(id PK, tower_id, question_id, user_id, option_id, is_correct, created_at)
- first_correct(question_id PK, tower_id, answer_id, user_id, created_at)
- duels(id PK, tower_id, challenger_id, opponent_id, state, winner_id, loser_id, created_at, accepted_at, finished_at, version)
- duel_answers(duel_id, user_id, question_id, option_id, is_correct, created_at)
- player_status(tower_id, user_id, can_be_challenged, penalty_until, updated_at)

Financial tables:
- need_lots(id PK, user_id, qty_need, purchased_at, expires_at, price_minor, currency, percent_redeemable)
- need_ledger(id PK, user_id, lot_id, kind, amount_need, amount_minor, created_at, meta jsonb)

Views/functions:
- v_need_played(user), v_need_unplayed(user)
- effective_expires_at(lot)
- shop_balance_minor calculation

## Frontend (apps/web)
- Next.js 18 (App Router) + React 18 (LTS)
- Tailwind CSS
- @supabase/supabase-js v2 + TanStack Query
- framer-motion animations
- PWA with next-pwa

## Monorepo Structure
/apps/web – Next.js PWA
/supabase/functions – Edge Functions
/packages/ui – shared React components
/packages/utils – shared utils
/packages/db-schema – shared TS types

Separate deploy pipeline from same repo: Vercel (web), Supabase (db/functions).

## CI/CD
- GitHub Actions with path filters
- Web → build + Vercel deploy
- Backend → supabase db push, functions deploy

## Env Parameters
- NEED_PRICE_MINOR, CURRENCY, PERCENT_REDEEMABLE, MIN_NOTIFY_AMOUNT, DIGEST_DAYS, DIGEST_TIME
 
## Környezetek: DEV és PRD

Az infrastruktúra két, külön Supabase projektet használ: egy DEV (fejlesztői) és egy PRD (éles) projektet. A frontend (Next.js) futtatása és a funkciók tesztelése a DEV projektre mutat; az éles Vercel deploy a PRD projektre.

* __Supabase projektek__
  - __DEV__: külön Supabase projekt fejlesztéshez. Itt történik a fejlesztői adatbázis, RLS, Edge Functions és Realtime tesztelése.
  - __PRD__: külön Supabase projekt éles adatokkal és Edge Functions verziókkal.
  - A két projekt teljesen különálló. A kliensoldali Next.js csak az anon kulcsot használja; a service role kulcs soha nem kerül a kliensbe.

* __Kliens környezeti változók (Next.js)__
  - Kötelező változók: `NEXT_PUBLIC_SUPABASE_URL`, `NEXT_PUBLIC_SUPABASE_ANON_KEY`.
  - __DEV__: az értékeket az `apps/web/.env.local` fájlban adjuk meg (a DEV Supabase projekt URL-je és anon kulcsa).
  - __PRD__: Vercelben, a projekt környezeti változóiban állítjuk be (a PRD Supabase projekt URL-je és anon kulcsa).
  - Opcionális: lokális prod preview-hoz használható `apps/web/.env.production.local` PRD értékekkel.
  - Verziózott példa: `apps/web/.env.local.example` (másold át `.env.local` néven és töltsd ki DEV értékekkel).
  - Vercel viselkedés: a Vercel NEM olvassa a repo-ban lévő `.env*` fájlokat build/futás közben. A PRD (és Preview/Development) értékeket a Vercel Project Settings → Environment Variables alatt kell megadni. Production deploy esetén ezek az értékek lesznek injektálva.
  - Lokális profilok: fejlesztésnél a Next.js a `.env.local`-t használja; prod módban (lokális preview) a `.env.production.local` lép életbe (`pnpm --filter web build && pnpm --filter web start`).
  - Ajánlás: tarts két helyi fájlt (DEV: `.env.local`, PRD lokális preview: `.env.production.local`). Élesben mindig a Vercel dashboard változói döntenek.

* __Fejlesztői futtatás (DEV)__
  - Csomagkezelő: `pnpm` (monorepo, Turborepo).
  - Telepítés a repo gyökerében: `pnpm install`.
  - Indítás csak a web appra: `pnpm --filter web dev` (a `apps/web/package.json` `dev` scriptje `next dev`).
  - Alternatíva: gyökérben `pnpm dev` (ha a Turborepo config a webet is figyeli).
  - __Port__: alapértelmezetten 3000 (`http://localhost:3000`). Felülírható a `PORT` env-vel.

* __Edge Functions és adatbázis__
  - __DEV__: a fejlesztés a DEV Supabase projekten történik. Módosítások: `supabase db push` és `supabase functions deploy <name>` a DEV projektre mutató bejelentkezéssel.
  - __PRD__: release előtt migrációk futtatása és Edge Functions deploy a PRD projektre.

* __Deployment útvonal__
  - __Frontend (PRD)__: Vercel. A környezeti változók PRD értékekkel a Vercelben vannak beállítva. Build: Next 14 App Router.
  - __Backend (PRD)__: Supabase (Postgres + Edge Functions). CI/CD: `supabase db push`, `supabase functions deploy`.

* __Összefoglaló parancsok__
  - Telepítés: `pnpm install`
  - DEV indítás: `pnpm --filter web dev` → http://localhost:3000
  - Build: `pnpm --filter web build`
  - Start (prod mód lokálisan): `pnpm --filter web start` (építés után)

