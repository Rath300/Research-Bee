/**
 * Apply population seed SQL batches to ResearchCollab via Supabase MCP helper.
 * Run from repo root with Cursor agent using apply_migration, OR paste output
 * migration names into Supabase dashboard.
 *
 * This script splits large files and prints batch manifest for manual/MCP apply.
 */
const fs = require('fs');
const path = require('path');

const SEED = path.join(__dirname, 'seed-data');
const PROJECT_ID = 'yltnvmypasnfdgtnyhwg';

function listBatches() {
  const batches = [];
  for (const f of fs.readdirSync(SEED).filter((x) => x.endsWith('.sql')).sort()) {
    batches.push({ kind: f.split('-')[0], file: path.join(SEED, f), name: f.replace('.sql', '') });
  }
  for (const sub of ['03-matches', '04-workspaces']) {
    const dir = path.join(SEED, sub);
    if (!fs.existsSync(dir)) continue;
    for (const f of fs.readdirSync(dir).filter((x) => x.endsWith('.sql')).sort()) {
      batches.push({ kind: sub, file: path.join(dir, f), name: `${sub.replace('/', '_')}_${f.replace('.sql', '')}` });
    }
  }
  return batches;
}

const batches = listBatches();
console.log(JSON.stringify({ projectId: PROJECT_ID, total: batches.length, batches: batches.map((b) => ({ name: b.name, bytes: fs.statSync(b.file).size })) }, null, 2));
