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
