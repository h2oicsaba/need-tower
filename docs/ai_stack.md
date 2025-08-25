# AI Stack – Supabase MCP beállítás és használat

Ez a dokumentum a Supabase MCP (Model Context Protocol) szerver beállítását és használatát foglalja össze a Need Tower projekthez. Cél: AI eszközökön (pl. Cascade) keresztül tudjunk biztonságosan, kontrolláltan dolgozni a DEV (és később PRD) adatbázissal.

## Áttekintés
- MCP szerver: `@supabase/mcp-server-supabase`
- Funkciók:
  - Olvasás (read-only): séma/objektumok listázása, lekérdezések
  - Írás (write): migrációk (DDL) és adatműveletek (DML) futtatása
- Környezet: jelenleg a DEV Supabase projektre van beállítva

## Konfiguráció (példa)
Az MCP kliens (IDE/agent) konfigurációjában egy szerverblokk definiálja a Supabase kapcsolatot. Példa (JSON-szerű):

```json
{
  "supabase": {
    "command": "npx",
    "args": [
      "-y",
      "@supabase/mcp-server-supabase@latest",
      "--read-only",
      "--project-ref=zdrewjmbqlwycldqmnrc"
    ],
    "env": {
      "SUPABASE_ACCESS_TOKEN": "<SUPABASE_ACCESS_TOKEN>"
    }
  }
}
```

- `--project-ref=...`: a Supabase projekt azonosítója (itt: DEV)
- `SUPABASE_ACCESS_TOKEN`: személyes access token (Dashboard → Account → Access Tokens). Tartsd titokban.

## Write mód engedélyezése
Ha írni is szeretnénk (DDL/DML), kapcsold ki a read-only módot azzal, hogy ELHAGYOD a `--read-only` kapcsolót. Nincs külön `--mode=write` flag.

Helyes beállítás (write):
```json
"args": [
  "-y",
  "@supabase/mcp-server-supabase@latest",
  "--project-ref=zdrewjmbqlwycldqmnrc"
]
```

Hivatkozás: Supabase MCP README – az elérhető opciók: `--read-only`, `--project-ref`, `--features`.
https://github.com/supabase-community/supabase-mcp

> Biztonság: write mód csak DEV környezetben javasolt. Productionon maradjon read-only, vagy nagyon szigorú kontrollal használd.

## Vercel / repo és titkok
- Ne committold a `SUPABASE_ACCESS_TOKEN`-t a repo-ba.
- Állítsd be titokként a futtató környezetben (IDE/agent settings), ne `.env`-ben.

## Használat – DDL és adatbetöltés
A Cascade-ból (AI agent) elérhető MCP műveletek:

- Séma (DDL) migráció: `apply_migration`
  - Használat: add meg a migráció nevét (kebab/snake case) és a DDL SQL-t.
  - Célszerű idempotens DDL-t írni (IF NOT EXISTS, stb.).

- Adat (DML) betöltés: `execute_sql`
  - Nagy fájlok esetén hasznos a feldarabolás és tranzakciók használata (BEGIN/COMMIT).

### Konkrét workflow ehhez a repohoz
Fájlok:
- `sql/quiz/quiz_db.sql` – séma (DDL)
- `sql/quiz/import_hu_<topic>.sql` – magyar kérdés/adat import (DML)

Lépések (DEV adatbázis):
1) Kapcsold a Supabase MCP-t write módba (lásd fent) a DEV projektre.
2) Futtasd a sémát migrációként (`apply_migration: quiz_schema_v1`).
3) Futtasd az importot nyers SQL-ként (`execute_sql`), szükség esetén batch-ekre darabolva.

> Figyelem: az import jelen formában egyszeri betöltésre készült. Ismételt futtatásnál duplikációt okozhat, hacsak nem védekezel (ON CONFLICT stb.).

## Hibaelhárítás
- `Cannot apply migration in read-only mode.` → a szerver read-only módban fut. Távolítsd el a `--read-only` kapcsolót és indítsd újra a szervert.
- `cannot execute CREATE TABLE in a read-only transaction` → ugyanaz az ok; write mód kell a DDL futtatásához.
- Jogosultság/kapcsolat hiba → ellenőrizd a `SUPABASE_ACCESS_TOKEN` érvényességét és a `--project-ref`-et.

## Hivatkozás
- Supabase MCP dokumentáció: https://supabase.com/docs/guides/getting-started/mcp?queryGroups=os&os=linux
