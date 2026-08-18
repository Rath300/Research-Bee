/**
 * Patch live ResearchCollab synth population: unique names, no institutions,
 * varied project titles/descriptions (no "cohort" boilerplate).
 */
const fs = require('fs');
const path = require('path');

const FIRST = [
  'Maya','Priya','James','Sofia','Noah','Aisha','Liam','Elena','Omar','Grace','Kenji','Amelia','Diego','Hannah','Rohan',
  'Chloe','Mateo','Zara','Ethan','Nadia','Julian','Fatima','Owen','Isla','Kai','Leila','Adrian','Nora','Samir','Violet',
  'Theo','Ananya','Caleb','Mei','Isaac','Camila','Leo','Yara','Benjamin','Sana','Henry','Ines','Daniel','Tara','Lucas',
  'Ava','Marcus','Riya','Felix','Nina','Aaron','Lina','Sebastian','Hana','Nathan','Sara','Oliver','Imani','David','Amina',
  'Jonah','Keiko','Rafael','Simone','Tariq','Uma','Vikram','Willa','Xavier','Yasmin','Zoe','Arjun','Bianca','Cole','Dina',
];
const LAST = [
  'Chen','Patel','Nguyen','Garcia','Kim','Ali','Johnson','Silva','Brown','Khan','Park','Lopez','Martinez','Singh','Wang',
  'Costa','Miller','Hassan','Thompson','Sato','Rodriguez','Lee','Wright','Ahmed','Davis','Fernandez','Clark','Yamamoto','Evans','Murphy',
  'Ibrahim','Turner','Brooks','Reed','Bailey','Cooper','Richardson','Cox','Howard','Ward','Torres','Peterson','Gray','Ramirez','James',
  'Watson','Sanders','Price','Bennett','Wood','Barnes','Ross','Henderson','Coleman','Jenkins','Perry','Powell','Long','Patterson',
  'Okonkwo','Schmidt','Nakamura','Fontaine','Kowalski','Okafor','Lindqvist','Mensah','Vargas','Hoffman',
];
const FIELDS = [
  'Computational Biology','Climate Science','Materials Science','Human-Computer Interaction','Neuroscience',
  'Public Health','Quantum Information','Machine Learning','Chemistry','Education Research','Robotics',
  'Astrophysics','Bioengineering','Economics','Environmental Engineering',
];
const TITLES = [
  'PhD Candidate','Postdoctoral Researcher','Research Scientist','Lab Manager','Staff Scientist',
  'Research Engineer','Graduate Researcher','Independent Researcher','Methods Specialist','Data Scientist',
];
const CITIES = [
  'Cambridge, MA','Palo Alto, CA','Berkeley, CA','Boston, MA','Toronto, ON','Zurich, CH','London, UK',
  'Seattle, WA','Pittsburgh, PA','Atlanta, GA','Ann Arbor, MI','Los Angeles, CA','New York, NY','Chicago, IL',
];
const TMPL = [
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
const TITLE_SUFFIXES = [
  '', ' — replication study', ' (2025)', ' · methods track', ' · field deployment',
  ' · dataset release', ' · pilot phase', ' · multi-site arm', ' · analysis sprint',
  ' · instrumentation', ' · open methods', ' · longitudinal arm', ' · benchmark suite',
  ' · stakeholder review', ' · preprint push', ' · extension study', ' · core pipeline', ' · secondary analysis',
];
const DESC_INTROS = [
  'We are coordinating a distributed team on',
  'This project focuses on',
  'A cross-functional group is working on',
  'Collaborators are building shared infrastructure for',
  'The group is comparing approaches to',
];
const DESC_OUTROS = [
  'Weekly syncs, shared notebooks, and clear authorship norms.',
  'Looking for careful contributors who document decisions.',
  'Scope is defined; next milestone is a reproducible baseline.',
  'Emphasis on transparent methods and peer review before wider release.',
  'Remote-friendly with async updates and structured task ownership.',
];
const TASK_TITLES = [
  'Draft figures', 'Validate pipeline', 'Literature review', 'Run sensitivity analysis', 'Sync with collaborators',
  'Update data dictionary', 'Review inclusion criteria', 'Prepare slide deck', 'Archive raw outputs', 'Schedule check-in',
];

function uniquePersona(i) {
  const first = FIRST[i % FIRST.length];
  const last = LAST[Math.floor(i / FIRST.length) % LAST.length];
  const field = FIELDS[i % FIELDS.length];
  const title = TITLES[i % TITLES.length];
  const location = CITIES[i % CITIES.length];
  const focus = ['methods', 'analysis', 'fieldwork', 'writing', 'instrumentation'][i % 5];
  const bio = `${title} in ${field}. Interested in ${focus} and long-horizon collaboration with clear deliverables.`;
  const pitch = `Open to partners with complementary skills — prefer written scope and shared milestones.`;
  return { first, last, full_name: `${first} ${last}`, title, field, location, bio, pitch };
}

function projectCopy(pIndex) {
  const tmpl = TMPL[pIndex % TMPL.length];
  const suffix = TITLE_SUFFIXES[pIndex % TITLE_SUFFIXES.length];
  const title = `${tmpl.title}${suffix}`;
  const intro = DESC_INTROS[pIndex % DESC_INTROS.length];
  const outro = DESC_OUTROS[pIndex % DESC_OUTROS.length];
  const tags = (tmpl.tags || []).join(', ');
  const description = `${intro} ${tmpl.title.toLowerCase()} (${tags}). ${outro}`;
  return { title, description, category: tmpl.category };
}

async function main() {
  const url = process.env.DATABASE_URL;
  if (!url) {
    console.error('DATABASE_URL required');
    process.exit(1);
  }
  const pgPath = path.join(__dirname, 'seed-runner/node_modules/pg');
  const { Client } = require(fs.existsSync(pgPath) ? pgPath : 'pg');
  const client = new Client({ connectionString: url, ssl: { rejectUnauthorized: false } });
  await client.connect();

  const { rows: synthUsers } = await client.query(`
    SELECT id FROM auth.users
    WHERE coalesce((raw_app_meta_data->>'rb_synth')::boolean, false)
    ORDER BY created_at, id
  `);

  console.log(`Patching ${synthUsers.length} synth profiles...`);
  for (let i = 0; i < synthUsers.length; i++) {
    const u = uniquePersona(i);
    await client.query(
      `UPDATE public.profiles SET
        first_name = $1, last_name = $2, full_name = $3,
        title = $4, institution = NULL,
        field_of_study = $5, location = $6,
        bio = $7, collaboration_pitch = $8,
        updated_at = now()
      WHERE id = $9`,
      [u.first, u.last, u.full_name, u.title, u.field, u.location, u.bio, u.pitch, synthUsers[i].id]
    );
  }

  const { rows: projects } = await client.query(`
    SELECT id FROM public.projects ORDER BY created_at, id
  `);

  console.log(`Patching ${projects.length} projects...`);
  for (let i = 0; i < projects.length; i++) {
    const copy = projectCopy(i);
    await client.query(
      `UPDATE public.projects SET title = $1, description = $2, category = $3, updated_at = now() WHERE id = $4`,
      [copy.title, copy.description, copy.category, projects[i].id]
    );
    await client.query(
      `UPDATE public.project_tasks SET
        title = $1,
        description = $2,
        updated_at = now()
      WHERE project_id = $3 AND title ILIKE 'Tracked work item for%'`,
      [TASK_TITLES[i % TASK_TITLES.length], `Work item for ${copy.title}`, projects[i].id]
    );
  }

  await client.query(`
    UPDATE public.profiles SET institution = NULL, updated_at = now()
    WHERE institution IS NOT NULL
  `);

  const r = await client.query(`
    SELECT
      (SELECT count(DISTINCT p.full_name)::int FROM public.profiles p
        JOIN auth.users au ON au.id = p.id
        WHERE coalesce((au.raw_app_meta_data->>'rb_synth')::boolean,false)) AS unique_synth_names,
      (SELECT count(*)::int FROM public.profiles WHERE institution IS NOT NULL) AS with_institution,
      (SELECT count(*)::int FROM public.projects WHERE title ILIKE '%cohort%') AS cohort_titles
  `);
  console.log('Done:', r.rows[0]);
  await client.end();
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
