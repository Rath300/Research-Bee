/**
 * Apply ResearchCollab seed chunks via postgres connection.
 * Usage:
 *   DATABASE_URL='postgresql://postgres:PASSWORD@db.yltnvmypasnfdgtnyhwg.supabase.co:5432/postgres' \
 *     node scripts/apply-seed-node.cjs
 */
const fs = require('fs');
const path = require('path');

async function main() {
  const url = process.env.DATABASE_URL;
  if (!url) {
    console.error('Set DATABASE_URL (replace [YOUR-PASSWORD] with your DB password).');
    process.exit(1);
  }
  if (url.includes('[YOUR-PASSWORD]')) {
    console.error('DATABASE_URL still contains [YOUR-PASSWORD] — use your real database password.');
    process.exit(1);
  }

  const pgPath = path.join(__dirname, 'seed-runner/node_modules/pg');
  const { Client } = require(fs.existsSync(pgPath) ? pgPath : 'pg');
  const chunksDir = path.join(__dirname, 'seed-data/mcp-chunks');
  const files = fs.readdirSync(chunksDir).filter((f) => f.endsWith('.sql')).sort();

  const client = new Client({
    connectionString: url,
    ssl: { rejectUnauthorized: false },
  });

  await client.connect();
  console.log(`Connected. Applying ${files.length} chunks to ResearchCollab...`);

  let ok = 0;
  let skipped = 0;
  const startFrom = process.env.START_FROM || '';
  let started = !startFrom;

  for (const f of files) {
    if (!started) {
      if (f === startFrom || f.startsWith(startFrom)) started = true;
      else continue;
    }
    const sql = fs.readFileSync(path.join(chunksDir, f), 'utf8');
    process.stdout.write(`[${ok + skipped + 1}/${files.length}] ${f} ... `);
    try {
      await client.query(sql);
      console.log('ok');
      ok++;
    } catch (err) {
      if (err.code === '23505' || err.code === '23503') {
        console.log(`skip (${err.code === '23505' ? 'duplicate' : 'missing fk'})`);
        skipped++;
        continue;
      }
      console.log('FAIL');
      console.error(err.message);
      await client.end();
      process.exit(1);
    }
  }

  console.log(`Applied ${ok} chunks, skipped ${skipped} duplicates.`);

  const { rows } = await client.query(`
    SELECT
      (SELECT count(*) FROM auth.users WHERE coalesce((raw_app_meta_data->>'rb_synth')::boolean,false)) AS synth_users,
      (SELECT count(*) FROM public.projects) AS projects,
      (SELECT count(*) FROM public.matches) AS matches,
      (SELECT count(*) FROM public.workspaces) AS workspaces
  `);
  console.log('Final counts:', rows[0]);
  await client.end();
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
