#!/usr/bin/env bash
# Apply ResearchCollab population seed via psql (fast, no MCP token burn).
# Usage:
#   export DATABASE_URL='postgresql://postgres.[ref]:[PASSWORD]@aws-0-[region].pooler.supabase.com:6543/postgres'
#   ./scripts/apply-seed-psql.sh
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SEED="$ROOT/scripts/seed-data"
CHUNKS="$SEED/mcp-chunks"

if [[ -z "${DATABASE_URL:-}" ]]; then
  echo "ERROR: Set DATABASE_URL to your ResearchCollab postgres connection string."
  echo "Supabase Dashboard → Project research-collab → Connect → URI (use pooler, port 6543)."
  exit 1
fi

if ! command -v psql >/dev/null 2>&1; then
  echo "ERROR: psql not found. Install PostgreSQL client."
  exit 1
fi

apply_dir() {
  local label="$1"
  local dir="$2"
  local count=0
  local total
  total=$(find "$dir" -maxdepth 1 -name '*.sql' | wc -l | tr -d ' ')
  echo "==> $label ($total files)"
  while IFS= read -r -d '' f; do
    count=$((count + 1))
    echo "[$count/$total] $(basename "$f")"
    psql "$DATABASE_URL" -v ON_ERROR_STOP=1 -f "$f" >/dev/null
  done < <(find "$dir" -maxdepth 1 -name '*.sql' | sort -z)
}

# Prefer pre-split chunks (~18KB) for reliability
if [[ -d "$CHUNKS" ]] && [[ -n "$(ls -A "$CHUNKS"/*.sql 2>/dev/null)" ]]; then
  apply_dir "chunks" "$CHUNKS"
else
  apply_dir "users" "$SEED"
  for f in "$SEED"/01-users-*.sql "$SEED"/02-projects-*.sql "$SEED"/03-matches.sql "$SEED"/04-workspaces.sql; do
    [[ -f "$f" ]] || continue
    echo "Applying $(basename "$f")"
    psql "$DATABASE_URL" -v ON_ERROR_STOP=1 -f "$f" >/dev/null
  done
  for sub in 03-matches 04-workspaces; do
    [[ -d "$SEED/$sub" ]] && apply_dir "$sub" "$SEED/$sub"
  done
fi

echo "Done. Verify counts in Supabase SQL editor:"
cat <<'SQL'
SELECT
  (SELECT count(*) FROM auth.users WHERE coalesce((raw_app_meta_data->>'rb_synth')::boolean,false)) AS synth_users,
  (SELECT count(*) FROM public.projects) AS projects,
  (SELECT count(*) FROM public.matches) AS matches,
  (SELECT count(*) FROM public.workspaces) AS workspaces;
SQL
