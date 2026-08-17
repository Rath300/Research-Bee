# ResearchCollab population seed

- Users: 1000
- Projects: 175
- Workspaces: 40
- Target: **ResearchCollab only** (`yltnvmypasnfdgtnyhwg`) — never Decro
- App-visible profiles contain NO bot/seed labels
- Internal wipe key: `auth.users.raw_app_meta_data.rb_synth = true`
- Shared password (ops only): see `scripts/generate-population-seed.cjs`

## Generate

```bash
node scripts/generate-population-seed.cjs
```

## Apply (recommended — fast, no agent usage)

1. Supabase Dashboard → **research-collab** → **Connect** → copy **URI** (pooler, port 6543)
2. Run:

```bash
export DATABASE_URL='postgresql://postgres.[ref]:[PASSWORD]@...pooler.supabase.com:6543/postgres'
./scripts/apply-seed-psql.sh
```

Uses pre-split chunks in `scripts/seed-data/mcp-chunks/` (~343 files, ~18KB each).

## Apply via MCP (agent)

Use Supabase MCP `apply_migration` on project `yltnvmypasnfdgtnyhwg` only.
`execute_sql` is read-only for inserts — use `apply_migration` for writes.
Password hashing must use `extensions.crypt(..., extensions.gen_salt('bf'))`.

## Verify

```sql
SELECT
  (SELECT count(*) FROM auth.users WHERE coalesce((raw_app_meta_data->>'rb_synth')::boolean,false)) AS synth_users,
  (SELECT count(*) FROM public.projects) AS projects,
  (SELECT count(*) FROM public.matches) AS matches,
  (SELECT count(*) FROM public.workspaces) AS workspaces;
```

Expected: ~1000 synth users, ~175 projects, ~1200 matches, 40 workspaces.
