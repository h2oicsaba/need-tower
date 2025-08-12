# Need Tower Quiz – Implementation Plan

## 0. Environment & Repo
- Monorepo (Turborepo): apps/web, supabase/functions, packages/*
- Supabase project per country
- CI/CD: GitHub Actions, Vercel integration
- Env params per country

## 1. Auth & Profile
- Email/password auth
- profiles table with RLS
- Web: login/register, protected layout

## 2. DB Schema
- Core game tables
- Financial tables & views
- RLS + indexes

## 3. Edge Functions
- join-tower, check-answer, start-challenge, respond-challenge, finish-duel
- buy-need, redeem-shop
- weekly-digest

## 4. Frontend
- Lobby, Tower gameplay, Profile/Wallet
- Realtime connections

## 5. Admin UI (later)
- Question bank CRUD
- Tower management
- Parameter settings
