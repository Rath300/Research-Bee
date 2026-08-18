/**
 * Add public discover projects for scrolling feed.
 * Usage: DATABASE_URL=... node scripts/add-discover-projects.cjs
 */
const crypto = require('crypto');
const fs = require('fs');
const path = require('path');

const NEW_PROJECT_COUNT = 450;
const SEED_NS = 'rb-discover-v2';

const TEMPLATES = [
  { title: 'Single-cell atlas of treatment response', tags: ['genomics', 'RNA-seq', 'oncology'], category: 'Computational Biology' },
  { title: 'Urban heat mitigation with satellite ML', tags: ['remote sensing', 'cities', 'ML'], category: 'Climate Science' },
  { title: 'High-throughput electrolyte screening', tags: ['batteries', 'automation', 'DFT'], category: 'Materials Science' },
  { title: 'Accessible clinical note summarization', tags: ['NLP', 'healthcare', 'UX'], category: 'Human-Computer Interaction' },
  { title: 'Closed-loop stimulation for memory', tags: ['neurotech', 'memory', 'EEG'], category: 'Neuroscience' },
  { title: 'Community vaccine confidence study', tags: ['surveys', 'equity', 'vaccines'], category: 'Public Health' },
  { title: 'Near-term quantum error mitigation', tags: ['NISQ', 'algorithms'], category: 'Quantum Information' },
  { title: 'Robust evaluation for clinical LLMs', tags: ['LLMs', 'evaluation', 'safety'], category: 'Machine Learning' },
  { title: 'Photoredox catalysis for late-stage edits', tags: ['catalysis', 'synthesis'], category: 'Chemistry' },
  { title: 'STEM identity in first-gen undergraduates', tags: ['equity', 'mixed methods'], category: 'Education Research' },
  { title: 'Dexterous packing under uncertainty', tags: ['manipulation', 'sim2real'], category: 'Robotics' },
  { title: 'Transit spectroscopy pipeline for JWST', tags: ['exoplanets', 'pipelines'], category: 'Astrophysics' },
  { title: 'Vascularized cardiac organoids', tags: ['organoids', 'tissue eng'], category: 'Bioengineering' },
  { title: 'Labor market effects of credentialing', tags: ['causal', 'policy'], category: 'Economics' },
  { title: 'Low-cost water contaminant sensing', tags: ['sensors', 'water'], category: 'Environmental Engineering' },
  { title: 'Local air quality prediction with ML', tags: ['environment', 'python', 'science fair'], category: 'Environmental Science' },
  { title: 'Teen sleep and screen time survey', tags: ['psychology', 'survey', 'health'], category: 'Psychology' },
  { title: 'Robotics sorting line prototype', tags: ['robotics', 'engineering', 'arduino'], category: 'Engineering' },
  { title: 'Plant growth under different LED spectra', tags: ['biology', 'lab', 'botany'], category: 'Biology' },
  { title: 'Microplastics in campus creek samples', tags: ['ecology', 'fieldwork', 'chemistry'], category: 'Environmental Science' },
  { title: 'Handwriting recognition for accessibility', tags: ['CS', 'ML', 'accessibility'], category: 'Computer Science' },
  { title: 'Music tempo effects on study focus', tags: ['psychology', 'experiment', 'stats'], category: 'Psychology' },
  { title: 'Solar panel angle optimization model', tags: ['physics', 'renewable', 'modeling'], category: 'Physics' },
  { title: 'Bacterial growth in reusable water bottles', tags: ['microbiology', 'lab', 'health'], category: 'Biology' },
  { title: 'Chatbot tutor for algebra practice', tags: ['education', 'NLP', 'math'], category: 'Computer Science' },
  { title: 'Composting speed with different additives', tags: ['environment', 'experiment', 'chemistry'], category: 'Chemistry' },
  { title: 'Heart rate variability during exams', tags: ['health', 'wearables', 'data'], category: 'Public Health' },
  { title: 'Bridge load testing with simulation', tags: ['engineering', 'CAD', 'physics'], category: 'Engineering' },
  { title: 'Bird migration patterns from citizen data', tags: ['ecology', 'GIS', 'citizen science'], category: 'Biology' },
  { title: 'Encryption visualizer for CS outreach', tags: ['cybersecurity', 'education', 'web'], category: 'Computer Science' },
];

const SUFFIXES = [
  '',
  ' — replication study',
  ' (2025)',
  ' · methods track',
  ' · field deployment',
  ' · dataset release',
  ' · pilot phase',
  ' · multi-site arm',
  ' · analysis sprint',
  ' · open notebook',
  ' · science fair track',
  ' · regional competition',
  ' · club collaboration',
];

const INTROS = [
  'We are coordinating a distributed team on',
  'This project focuses on',
  'Collaborators are building shared infrastructure for',
  'Our group is comparing approaches to',
  'Students and mentors are working together on',
];

const OUTROS = [
  'Weekly syncs and shared notebooks keep scope clear.',
  'Emphasis on reproducible methods and documented decisions.',
  'Remote-friendly with structured milestones.',
  'Looking for teammates who can commit a few hours per week.',
  'Great fit for AP research, science fair, or independent study credit.',
];

const CITIES = [
  'Cambridge, MA', 'Palo Alto, CA', 'Berkeley, CA', 'Boston, MA', 'Toronto, ON',
  'Seattle, WA', 'Atlanta, GA', 'Chicago, IL', 'Los Angeles, CA', 'New York, NY',
];

const SKILLS = ['Python', 'Statistics', 'Writing', 'Lab notes', 'Presentation', 'Literature review'];

function uuidFrom(key) {
  const h = crypto.createHash('sha1').update(SEED_NS + ':' + key).digest();
  const bytes = Buffer.from(h.slice(0, 16));
  bytes[6] = (bytes[6] & 0x0f) | 0x50;
  bytes[8] = (bytes[8] & 0x3f) | 0x80;
  const hex = bytes.toString('hex');
  return `${hex.slice(0, 8)}-${hex.slice(8, 12)}-${hex.slice(12, 16)}-${hex.slice(16, 20)}-${hex.slice(20)}`;
}

function esc(s) {
  return String(s ?? '').replace(/'/g, "''");
}

function pick(arr, i) {
  return arr[i % arr.length];
}

function buildProject(i) {
  const tmpl = pick(TEMPLATES, i * 3 + 1);
  const suffix = pick(SUFFIXES, i);
  const intro = pick(INTROS, i);
  const outro = pick(OUTROS, i);
  const title = `${tmpl.title}${suffix}`;
  const description = `${intro} ${tmpl.title.toLowerCase()} (${tmpl.tags.join(', ')}). ${outro}`;
  return {
    id: uuidFrom(`discover-project-${i}`),
    title,
    description,
    tags: tmpl.tags,
    category: tmpl.category,
    skills: [pick(SKILLS, i), pick(SKILLS, i + 2), pick(SKILLS, i + 4)],
    collaboration_type: pick(['remote', 'hybrid', 'local'], i),
    duration: pick(['short_term', 'medium_term', 'long_term'], i),
    commitment_hours: 3 + (i % 10),
    location: pick(CITIES, i),
    status: i % 6 === 0 ? 'planning' : 'active',
    daysAgo: 1 + (i % 365),
    leaderOffset: i,
  };
}

function sqlForProjects(start, count, leaderIds) {
  const lines = [`-- discover projects ${start}..${start + count - 1}`];
  for (let i = start; i < start + count; i++) {
    const p = buildProject(i);
    const leaderId = leaderIds[p.leaderOffset % leaderIds.length];
    lines.push(`
INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '${p.id}'::uuid,
  '${esc(p.title)}',
  '${esc(p.description)}',
  '${leaderId}'::uuid,
  ARRAY[${p.tags.map((t) => `'${esc(t)}'`).join(',')}]::text[],
  '${esc(p.status)}',
  '${esc(p.category)}',
  ARRAY[${p.skills.map((s) => `'${esc(s)}'`).join(',')}]::text[],
  '${esc(p.collaboration_type)}',
  '${esc(p.duration)}',
  ${p.commitment_hours},
  true,
  '${esc(p.location)}',
  now() - interval '${p.daysAgo} days',
  now()
) ON CONFLICT (id) DO NOTHING;
`);
  }
  return lines.join('\n');
}

async function main() {
  const url = process.env.DATABASE_URL;
  if (!url) {
    const outDir = path.join(__dirname, 'seed-data/discover-batches');
    fs.mkdirSync(outDir, { recursive: true });
    const placeholderLeaders = Array.from({ length: 50 }, (_, i) => uuidFrom(`leader-placeholder-${i}`));
    const batchSize = 45;
    for (let start = 0; start < NEW_PROJECT_COUNT; start += batchSize) {
      const count = Math.min(batchSize, NEW_PROJECT_COUNT - start);
      const sql = sqlForProjects(start, count, placeholderLeaders);
      fs.writeFileSync(path.join(outDir, `batch-${String(start / batchSize).padStart(3, '0')}.sql`), sql);
    }
    console.log(`Wrote ${Math.ceil(NEW_PROJECT_COUNT / batchSize)} SQL batches to seed-data/discover-batches (need DATABASE_URL to apply with real leaders).`);
    process.exit(0);
  }

  const pgPath = path.join(__dirname, 'seed-runner/node_modules/pg');
  const { Client } = require(fs.existsSync(pgPath) ? pgPath : 'pg');
  const client = new Client({ connectionString: url, ssl: { rejectUnauthorized: false } });
  await client.connect();

  const { rows: leaders } = await client.query(`
    SELECT id FROM auth.users
    WHERE coalesce((raw_app_meta_data->>'rb_synth')::boolean, false)
    ORDER BY created_at, id
  `);
  if (!leaders.length) {
    console.error('No synth users found.');
    process.exit(1);
  }
  const leaderIds = leaders.map((r) => r.id);
  console.log(`Inserting ${NEW_PROJECT_COUNT} public projects using ${leaderIds.length} leaders...`);

  const batchSize = 45;
  for (let start = 0; start < NEW_PROJECT_COUNT; start += batchSize) {
    const count = Math.min(batchSize, NEW_PROJECT_COUNT - start);
    const sql = sqlForProjects(start, count, leaderIds);
    process.stdout.write(`Batch ${start / batchSize + 1} ... `);
    await client.query(sql);
    console.log('ok');
  }

  const { rows } = await client.query(`
    SELECT count(*)::int AS public_projects FROM public.projects WHERE is_public = true
  `);
  console.log('Public projects now:', rows[0].public_projects);
  await client.end();
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
