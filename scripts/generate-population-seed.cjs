/**
 * ResearchCollab demo population generator (ResearchCollab ONLY).
 * Produces SQL batches + id manifest. No Decro. No visible bot markers in profiles.
 *
 * Usage: node scripts/generate-population-seed.mjs
 */
const fs = require('fs');
const path = require('path');
const crypto = require('crypto');
const {
  educationTier,
  titleForTier,
  fieldForTier,
  skillsForTier,
  interestsForTier,
  bioForTier,
  pitchForTier,
} = require('./population-personas.cjs');

const OUT = path.join(__dirname, 'seed-data');
const USER_COUNT = 1000;
const PROJECT_COUNT = 175;
const WORKSPACE_COUNT = 40;
const PASSWORD = 'ResearchCollab!2026'; // internal only; not shown in app
const SEED_NS = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

function uuidFrom(key) {
  const h = crypto.createHash('sha1').update(SEED_NS + ':' + key).digest();
  const bytes = Buffer.from(h.slice(0, 16));
  bytes[6] = (bytes[6] & 0x0f) | 0x50; // UUID v5-ish
  bytes[8] = (bytes[8] & 0x3f) | 0x80;
  const hex = bytes.toString('hex');
  return `${hex.slice(0, 8)}-${hex.slice(8, 12)}-${hex.slice(12, 16)}-${hex.slice(16, 20)}-${hex.slice(20)}`;
}

function esc(s) {
  return String(s ?? '').replace(/'/g, "''");
}

function sqlArr(arr) {
  if (!arr?.length) return 'NULL';
  return `ARRAY[${arr.map((x) => `'${esc(x)}'`).join(',')}]::text[]`;
}

function sqlJson(obj) {
  return `'${esc(JSON.stringify(obj))}'::jsonb`;
}

const FIRST = [
  'Maya','Priya','James','Sofia','Noah','Aisha','Liam','Elena','Omar','Grace','Kenji','Amelia','Diego','Hannah','Rohan',
  'Chloe','Mateo','Zara','Ethan','Nadia','Julian','Fatima','Owen','Isla','Kai','Leila','Adrian','Nora','Samir','Violet',
  'Theo','Ananya','Caleb','Mei','Isaac','Camila','Leo','Yara','Benjamin','Sana','Henry','Ines','Daniel','Tara','Lucas',
  'Ava','Marcus','Riya','Felix','Nina','Aaron','Lina','Sebastian','Hana','Nathan','Sara','Oliver','Imani','David','Amina',
];
const LAST = [
  'Chen','Patel','Nguyen','Garcia','Kim','Ali','Johnson','Silva','Brown','Khan','Park','Lopez','Martinez','Singh','Wang',
  'Costa','Miller','Hassan','Thompson','Sato','Rodriguez','Lee','Wright','Ahmed','Davis','Fernandez','Clark','Yamamoto','Evans','Murphy',
  'Ibrahim','Turner','Brooks','Reed','Bailey','Cooper','Richardson','Cox','Howard','Ward','Torres','Peterson','Gray','Ramirez','James',
  'Watson','Brooks','Sanders','Price','Bennett','Wood','Barnes','Ross','Henderson','Coleman','Jenkins','Perry','Powell','Long','Patterson',
];
const INSTITUTIONS = [
  'MIT','Stanford University','UC Berkeley','Harvard Medical School','University of Toronto','ETH Zurich','Imperial College London',
  'University of Washington','Carnegie Mellon University','Georgia Tech','University of Michigan','UCLA','Columbia University',
  'University of Chicago','Johns Hopkins University','Yale University','Princeton University','Caltech','University of Oxford',
  'University of Cambridge','Northwestern University','Duke University','Cornell University','NYU','University of Pennsylvania',
  'University of Wisconsin–Madison','University of Illinois Urbana-Champaign','University of Texas at Austin','McGill University',
  'National University of Singapore','University of Melbourne','TU Delft','EPFL','University of Copenhagen','Karolinska Institute',
];
const FIELDS = [
  { field: 'Computational Biology', skills: ['Python','R','Genomics','ML','Statistics'], interests: ['CRISPR','single-cell','drug discovery'] },
  { field: 'Climate Science', skills: ['Remote sensing','Python','GIS','Modeling'], interests: ['urban heat','carbon','extreme weather'] },
  { field: 'Materials Science', skills: ['DFT','Lab automation','Characterization'], interests: ['batteries','catalysts','polymers'] },
  { field: 'Human-Computer Interaction', skills: ['User research','Prototyping','Statistics'], interests: ['accessibility','education tech','health UX'] },
  { field: 'Neuroscience', skills: ['fMRI','Electrophysiology','Python','MATLAB'], interests: ['memory','decision-making','neurotech'] },
  { field: 'Public Health', skills: ['Epidemiology','R','Survey design','Causal inference'], interests: ['vaccines','health equity','maternal health'] },
  { field: 'Quantum Information', skills: ['Qiskit','Linear algebra','Optics'], interests: ['error correction','sensing','algorithms'] },
  { field: 'Machine Learning', skills: ['PyTorch','NLP','Evaluation','MLOps'], interests: ['LLMs','robustness','fairness'] },
  { field: 'Chemistry', skills: ['Organic synthesis','Spectroscopy','Cheminformatics'], interests: ['catalysis','green chemistry','medicinal chemistry'] },
  { field: 'Education Research', skills: ['Mixed methods','R','Curriculum design'], interests: ['STEM equity','assessment','learning science'] },
  { field: 'Robotics', skills: ['ROS','Control systems','C++','Computer vision'], interests: ['manipulation','HRI','autonomy'] },
  { field: 'Astrophysics', skills: ['Data pipelines','Python','Bayesian inference'], interests: ['exoplanets','surveys','simulation'] },
  { field: 'Bioengineering', skills: ['Tissue culture','CAD','Microfluidics'], interests: ['organoids','biomaterials','diagnostics'] },
  { field: 'Economics', skills: ['Econometrics','Stata','Causal ML'], interests: ['development','labor','policy evaluation'] },
  { field: 'Environmental Engineering', skills: ['Hydrology','Sensor networks','Python'], interests: ['water quality','infrastructure','resilience'] },
];
const TITLES = [
  'PhD Candidate','Postdoctoral Researcher','Research Scientist','Assistant Professor','Associate Professor',
  'Lab Manager','Staff Scientist','Research Engineer','Visiting Scholar','Graduate Researcher',
];
const GRAD_FIELDS = FIELDS.map((f) => f.field);
const LOOKING = [
  'co-authors','experimental collaborators','computational partners','mentorship','grant collaborators',
  'industry partners','cross-disciplinary teammates','data partners',
];
const CITIES = [
  'Cambridge, MA','Palo Alto, CA','Berkeley, CA','Boston, MA','Toronto, ON','Zurich, CH','London, UK',
  'Seattle, WA','Pittsburgh, PA','Atlanta, GA','Ann Arbor, MI','Los Angeles, CA','New York, NY','Chicago, IL',
  'Baltimore, MD','New Haven, CT','Princeton, NJ','Pasadena, CA','Oxford, UK','Singapore','Melbourne, AU',
];

const PROJECT_TEMPLATES = [
  { title: 'Single-cell atlas of treatment response', category: 'Computational Biology', tags: ['genomics','RNA-seq','oncology'] },
  { title: 'Urban heat mitigation with satellite ML', category: 'Climate Science', tags: ['remote sensing','cities','ML'] },
  { title: 'High-throughput electrolyte screening', category: 'Materials Science', tags: ['batteries','automation','DFT'] },
  { title: 'Accessible clinical note summarization', category: 'Human-Computer Interaction', tags: ['NLP','healthcare','UX'] },
  { title: 'Closed-loop stimulation for memory', category: 'Neuroscience', tags: ['neurotech','memory','EEG'] },
  { title: 'Community vaccine confidence study', category: 'Public Health', tags: ['surveys','equity','vaccines'] },
  { title: 'Near-term quantum error mitigation', category: 'Quantum Information', tags: ['NISQ','algorithms'] },
  { title: 'Robust evaluation for clinical LLMs', category: 'Machine Learning', tags: ['LLMs','evaluation','safety'] },
  { title: 'Photoredox catalysis for late-stage edits', category: 'Chemistry', tags: ['catalysis','synthesis'] },
  { title: 'STEM identity in first-gen undergraduates', category: 'Education Research', tags: ['equity','mixed methods'] },
  { title: 'Dexterous packing under uncertainty', category: 'Robotics', tags: ['manipulation','sim2real'] },
  { title: 'Transit spectroscopy pipeline for JWST', category: 'Astrophysics', tags: ['exoplanets','pipelines'] },
  { title: 'Vascularized cardiac organoids', category: 'Bioengineering', tags: ['organoids','tissue eng'] },
  { title: 'Labor market effects of credentialing', category: 'Economics', tags: ['causal','policy'] },
  { title: 'Low-cost water contaminant sensing', category: 'Environmental Engineering', tags: ['sensors','water'] },
  { title: 'Federated learning for rare disease studies', category: 'Computational Biology', tags: ['privacy','ML'] },
  { title: 'Wildfire smoke exposure forecasting', category: 'Climate Science', tags: ['air quality','forecasting'] },
  { title: 'Solid-state battery interface imaging', category: 'Materials Science', tags: ['interfaces','microscopy'] },
  { title: 'Classroom AI tutor field study', category: 'Education Research', tags: ['edtech','RCT'] },
  { title: 'Privacy-preserving wearable analytics', category: 'Machine Learning', tags: ['wearables','privacy'] },
];

const NOTE_SNIPPETS = [
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'Data dictionary update: added provenance fields and consent flags.',
  'Pilot results look promising; schedule replication run before expanding cohort.',
];

const TASKS = [
  'Draft related work section','Clean and version dataset','Run baseline model','Write IRB amendment',
  'Prepare figure panels','Schedule collaborator sync','Upload supplementary tables','Refactor analysis notebook',
  'Validate QC pipeline','Collect pilot feedback','Submit internal review','Update project README',
];

function pick(arr, i) {
  return arr[i % arr.length];
}

function persona(i) {
  const first = FIRST[i % FIRST.length];
  const last = LAST[Math.floor(i / FIRST.length) % LAST.length];
  const tier = educationTier(i);
  const title = titleForTier(tier, i);
  const fieldName = fieldForTier(tier, i, GRAD_FIELDS);
  const fieldMeta =
    tier === 'phd'
      ? FIELDS.find((f) => f.field === fieldName) || pick(FIELDS, i * 3 + 1)
      : {
          field: fieldName,
          skills: skillsForTier(tier, i),
          interests: interestsForTier(tier, i),
        };
  const id = uuidFrom(`user-${i}`);
  const emailLocal = `${first}.${last}.${String(100 + (i % 900))}`.toLowerCase().replace(/[^a-z0-9.]/g, '');
  const domains = ['gmail.com', 'outlook.com', 'icloud.com', 'yahoo.com', 'proton.me'];
  const email = `${emailLocal}@${pick(domains, i)}`;
  const location = pick(CITIES, i);
  const focus = fieldMeta.interests.slice(0, 2).join(' and ');
  const bio = bioForTier(tier, title, fieldMeta.field, focus);
  const pitch = pitchForTier(tier, fieldMeta.skills[0], fieldMeta.skills[1] || 'experimental design');
  return {
    i,
    id,
    first,
    last,
    email,
    title,
    institution: null,
    field: fieldMeta.field,
    skills: fieldMeta.skills,
    interests: fieldMeta.interests,
    looking_for: [pick(LOOKING, i), pick(LOOKING, i + 3)],
    location,
    bio,
    pitch,
    full_name: `${first} ${last}`,
    availability: i % 3 === 0 ? 'part-time' : i % 3 === 1 ? 'full-time' : 'weekends',
    availability_hours: 5 + (i % 20),
    project_preference: pick(['remote', 'hybrid', 'local'], i),
  };
}

fs.mkdirSync(OUT, { recursive: true });

const users = Array.from({ length: USER_COUNT }, (_, i) => persona(i));
fs.writeFileSync(path.join(OUT, 'users.json'), JSON.stringify(users.map((u) => ({ id: u.id, email: u.email, i: u.i })), null, 2));

// --- Auth + profile batches ---
const userBatchSize = 40;
let batchIdx = 0;
for (let start = 0; start < users.length; start += userBatchSize) {
  const slice = users.slice(start, start + userBatchSize);
  const lines = [];
  lines.push(`-- population users ${start}..${start + slice.length - 1}`);
  // passwords use extensions.crypt (pgcrypto already enabled on Supabase)
  for (const u of slice) {
    const meta = {
      first_name: u.first,
      last_name: u.last,
      full_name: u.full_name,
    };
    lines.push(`
INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '${u.id}'::uuid,
  'authenticated',
  'authenticated',
  '${esc(u.email)}',
  extensions.crypt('${esc(PASSWORD)}', extensions.gen_salt('bf')),
  now() - ((${u.i % 400}) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  ${sqlJson(meta)},
  now() - ((${u.i % 400}) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;
`);
    lines.push(`
INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '${u.id}'::uuid,
  '${u.id}'::uuid,
  ${sqlJson({ sub: u.id, email: u.email, email_verified: true, phone_verified: false })},
  'email',
  '${u.id}',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;
`);
    lines.push(`
UPDATE public.profiles SET
  first_name = '${esc(u.first)}',
  last_name = '${esc(u.last)}',
  full_name = '${esc(u.full_name)}',
  email = '${esc(u.email)}',
  title = '${esc(u.title)}',
  institution = NULL,
  location = '${esc(u.location)}',
  field_of_study = '${esc(u.field)}',
  bio = '${esc(u.bio)}',
  collaboration_pitch = '${esc(u.pitch)}',
  skills = ${sqlArr(u.skills)},
  interests = ${sqlArr(u.interests)},
  looking_for = ${sqlArr(u.looking_for)},
  availability = '${esc(u.availability)}',
  availability_hours = ${u.availability_hours},
  project_preference = '${esc(u.project_preference)}',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '${u.id}'::uuid;
`);
  }
  fs.writeFileSync(path.join(OUT, `01-users-${String(batchIdx).padStart(3, '0')}.sql`), lines.join('\n'));
  batchIdx++;
}

const PROJECT_SUFFIXES = [
  '', ' — replication study', ' (2025)', ' · methods track', ' · field deployment',
  ' · dataset release', ' · pilot phase', ' · multi-site arm', ' · analysis sprint',
];

// --- Projects ---
const projects = [];
for (let p = 0; p < PROJECT_COUNT; p++) {
  const tmpl = pick(PROJECT_TEMPLATES, p);
  const leader = users[p % users.length];
  const id = uuidFrom(`project-${p}`);
  const memberCount = 3 + (p % 6);
  const members = [];
  for (let m = 0; m < memberCount; m++) {
    const u = users[(p * 7 + m * 13) % users.length];
    if (!members.find((x) => x.id === u.id)) members.push(u);
  }
  if (!members.find((x) => x.id === leader.id)) members.unshift(leader);
  const suffix = pick(PROJECT_SUFFIXES, p);
  const descIntro = pick([
    'We are coordinating a distributed team on',
    'This project focuses on',
    'Collaborators are building shared infrastructure for',
  ], p);
  const descOutro = pick([
    'Weekly syncs and shared notebooks keep scope clear.',
    'Emphasis on reproducible methods and documented decisions.',
    'Remote-friendly with structured milestones.',
  ], p);
  projects.push({
    id,
    title: `${tmpl.title}${suffix}`,
    description: `${descIntro} ${tmpl.title.toLowerCase()} (${tmpl.tags.join(', ')}). ${descOutro}`,
    leader_id: leader.id,
    tags: tmpl.tags,
    category: tmpl.category,
    skills_needed: FIELDS.find((f) => f.field === tmpl.category)?.skills?.slice(0, 3) || ['Python', 'Writing'],
    status: p % 5 === 0 ? 'planning' : 'active',
    collaboration_type: pick(['remote', 'hybrid', 'local'], p),
    duration: pick(['short_term', 'medium_term', 'long_term'], p),
    commitment_hours: 4 + (p % 12),
    location: pick(CITIES, p),
    members,
  });
}
fs.writeFileSync(path.join(OUT, 'projects.json'), JSON.stringify(projects.map((p) => ({ id: p.id, title: p.title, leader_id: p.leader_id })), null, 2));

const projBatch = 20;
batchIdx = 0;
for (let start = 0; start < projects.length; start += projBatch) {
  const slice = projects.slice(start, start + projBatch);
  const lines = [`-- projects ${start}..${start + slice.length - 1}`];
  for (const p of slice) {
    lines.push(`
INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '${p.id}'::uuid,
  '${esc(p.title)}',
  '${esc(p.description)}',
  '${p.leader_id}'::uuid,
  ${sqlArr(p.tags)},
  '${esc(p.status)}',
  '${esc(p.category)}',
  ${sqlArr(p.skills_needed)},
  '${esc(p.collaboration_type)}',
  '${esc(p.duration)}',
  ${p.commitment_hours},
  true,
  '${esc(p.location)}',
  now() - interval '${(start % 200) + 3} days',
  now()
) ON CONFLICT (id) DO NOTHING;
`);
    p.members.forEach((m, mi) => {
      const role = m.id === p.leader_id ? 'owner' : mi < 2 ? 'editor' : 'viewer';
      lines.push(`
INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '${uuidFrom(`pc-${p.id}-${m.id}`)}'::uuid,
  '${p.id}'::uuid,
  '${m.id}'::uuid,
  '${role}',
  'active',
  '${p.leader_id}'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;
`);
    });
    for (let t = 0; t < 8; t++) {
      const assignee = p.members[t % p.members.length];
      const status = pick(['todo', 'in_progress', 'completed', 'todo'], t);
      lines.push(`
INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '${uuidFrom(`pt-${p.id}-${t}`)}'::uuid,
  '${p.id}'::uuid,
  '${esc(pick(TASKS, p.i ?? start + t) + (t > 5 ? ` (${t - 4})` : ''))}',
  'Tracked work item for ${esc(p.title)}.',
  '${status}',
  '${pick(['low', 'medium', 'high', 'urgent'], t)}',
  ${status === 'completed' ? 'NULL' : `now() + interval '${7 + t} days'`},
  ${t},
  ${t},
  '${assignee.id}'::uuid,
  '${p.leader_id}'::uuid,
  now(),
  now(),
  ${status === 'completed' ? 'now()' : 'NULL'}
) ON CONFLICT (id) DO NOTHING;
`);
    }
    for (let n = 0; n < 4; n++) {
      const author = p.members[n % p.members.length];
      lines.push(`
INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '${uuidFrom(`pn-${p.id}-${n}`)}'::uuid,
  '${p.id}'::uuid,
  '${esc(pick(['Methods', 'Meeting notes', 'Reading list', 'Open questions', 'Data notes'], n))}',
  '${esc(pick(NOTE_SNIPPETS, n + start))}',
  '${author.id}'::uuid,
  '${author.id}'::uuid,
  true,
  '${esc(pick(['planning', 'analysis', 'writing', 'ops'], n))}',
  ${sqlArr(p.tags.slice(0, 2))},
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;
`);
    }
  }
  fs.writeFileSync(path.join(OUT, `02-projects-${String(batchIdx).padStart(3, '0')}.sql`), lines.join('\n'));
  batchIdx++;
}

// --- Matches + messages (~800 mutual matches; dense enough without huge SQL) ---
const matchLines = ['-- matches and messages'];
const seenMatches = new Set();
let matchCount = 0;
for (let i = 0; i < users.length; i++) {
  const a = users[i];
  const partners = i % 5 === 0 ? [1, 3] : [1]; // denser hubs every 5th user
  for (const k of partners) {
    const b = users[(i + k * 37) % users.length];
    if (a.id === b.id) continue;
    const [u1, u2] = a.id < b.id ? [a, b] : [b, a];
    const pairKey = `${u1.id}:${u2.id}`;
    if (seenMatches.has(pairKey)) continue;
    seenMatches.add(pairKey);
    const matchId = uuidFrom(`match-${u1.id}-${u2.id}`);
    matchLines.push(`
INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('${uuidFrom(`pm-${a.id}-${b.id}`)}'::uuid, '${a.id}'::uuid, '${b.id}'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;
INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('${uuidFrom(`pm-${b.id}-${a.id}`)}'::uuid, '${b.id}'::uuid, '${a.id}'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;
INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('${matchId}'::uuid, '${u1.id}'::uuid, '${u2.id}'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;
`);
    if (matchCount % 2 === 0) {
      matchLines.push(`
INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '${uuidFrom(`msg-${matchId}-1`)}'::uuid,
  '${matchId}'::uuid,
  '${a.id}'::uuid,
  '${b.id}'::uuid,
  'Hi ${esc(b.first)} — your work on ${esc(b.field)} overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;
INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '${uuidFrom(`msg-${matchId}-2`)}'::uuid,
  '${matchId}'::uuid,
  '${b.id}'::uuid,
  '${a.id}'::uuid,
  'Thanks ${esc(a.first)}! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;
`);
    }
    matchCount++;
  }
  if (i < 150) {
    const c = users[(i + 41) % users.length];
    matchLines.push(`
INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('${uuidFrom(`pending-${c.id}-${a.id}`)}'::uuid, '${c.id}'::uuid, '${a.id}'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;
`);
  }
}
fs.writeFileSync(path.join(OUT, '03-matches.sql'), matchLines.join('\n'));
console.log('Match pairs', matchCount);

// --- Workspaces ---
const wsLines = ['-- workspaces'];
for (let w = 0; w < WORKSPACE_COUNT; w++) {
  const owner = users[w * 3 % users.length];
  const wsId = uuidFrom(`ws-${w}`);
  wsLines.push(`
INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '${wsId}'::uuid,
  '${esc(pick(['Lab coordination', 'Paper writing room', 'Grant workspace', 'Methods club', 'Data room'], w))} ${w + 1}',
  'Shared workspace for documents, tasks, and team chat.',
  '${owner.id}'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;
`);
  // owner membership may be trigger-created; upsert anyway
  for (let m = 0; m < 5; m++) {
    const u = users[(w * 3 + m * 11) % users.length];
    const role = u.id === owner.id ? 'owner' : m === 1 ? 'admin' : 'editor';
    wsLines.push(`
INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('${wsId}'::uuid, '${u.id}'::uuid, '${role}', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;
`);
  }
  for (let d = 0; d < 3; d++) {
    wsLines.push(`
INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '${uuidFrom(`wd-${w}-${d}`)}'::uuid,
  '${wsId}'::uuid,
  '${esc(pick(['Agenda', 'Draft outline', 'Shared notes', 'Decision log'], d))}',
  'Generic Document',
  ${sqlJson({ text: pick(NOTE_SNIPPETS, d + w) })},
  '${owner.id}'::uuid,
  '${owner.id}'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;
`);
  }
  for (let t = 0; t < 5; t++) {
    wsLines.push(`
INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '${uuidFrom(`wt-${w}-${t}`)}'::uuid,
  '${wsId}'::uuid,
  '${esc(pick(TASKS, t + w))}',
  'Workspace task',
  '${pick(['todo', 'in_progress', 'completed'], t)}',
  '${users[(w + t) % users.length].id}'::uuid,
  '${owner.id}'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;
`);
  }
}
fs.writeFileSync(path.join(OUT, '04-workspaces.sql'), wsLines.join('\n'));

fs.writeFileSync(
  path.join(OUT, 'README.md'),
  `# ResearchCollab population seed

- Users: ${USER_COUNT}
- Projects: ${PROJECT_COUNT}
- Workspaces: ${WORKSPACE_COUNT}
- Target: ResearchCollab only (yltnvmypasnfdgtnyhwg)
- App-visible profiles contain NO bot/seed labels
- Internal wipe key: auth.users.raw_app_meta_data.rb_synth = true
- Shared password (ops only): see generate script constant

Apply SQL files in order via Supabase SQL (ResearchCollab).
`
);

console.log(`Wrote seed batches to ${OUT}`);
console.log(`Users ${USER_COUNT}, projects ${PROJECT_COUNT}, workspaces ${WORKSPACE_COUNT}, user SQL batches ${batchIdx}`);
