INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  'Near-term quantum error mitigation — cohort 2',
  'Near-term quantum error mitigation is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around NISQ, algorithms. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  ARRAY['NISQ','algorithms']::text[],
  'active',
  'Quantum Information',
  ARRAY['Qiskit','Linear algebra','Optics']::text[],
  'local',
  'long_term',
  6,
  true,
  'Zurich, CH',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '227b063b-ced4-5b78-95c9-d365135e8c4f'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  'owner',
  'active',
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ca7c8cc1-9089-5260-8cff-b8b6a7617782'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  '9583a091-71fc-59e2-a837-c827f33c072a'::uuid,
  'editor',
  'active',
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2be27573-da2c-5959-a97d-ef8b07b7611f'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid,
  'viewer',
  'active',
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e350a122-14d2-5021-b6d6-dd70488912af'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  '370327fd-3558-57cf-8945-bc80d916c857'::uuid,
  'viewer',
  'active',
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4d5055b8-e55e-5f6a-84e3-92ba3711f7f6'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  '2ca134b1-2119-5e9e-8c0e-f36ce476cf56'::uuid,
  'viewer',
  'active',
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ebad7f61-d93e-5f7b-ba51-0a43e3d51f1e'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  '04960929-8e6d-526f-902a-3f56fae228ea'::uuid,
  'viewer',
  'active',
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fd7d0b22-16f1-591c-9c95-5ef4f87a8eb8'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Near-term quantum error mitigation — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a34494ff-c0a5-5cb8-80c6-401a0ec910dc'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Near-term quantum error mitigation — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '9583a091-71fc-59e2-a837-c827f33c072a'::uuid,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3fd41ad9-2c15-5f28-9871-11e2752880a0'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  'Submit internal review',
  'Tracked work item for Near-term quantum error mitigation — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1a8971ca-bad4-54e4-8abf-ab933045fb96'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  'Update project README',
  'Tracked work item for Near-term quantum error mitigation — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '370327fd-3558-57cf-8945-bc80d916c857'::uuid,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '911d0363-47a5-5228-a23c-16f081fda3d6'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  'Draft related work section',
  'Tracked work item for Near-term quantum error mitigation — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '2ca134b1-2119-5e9e-8c0e-f36ce476cf56'::uuid,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8b287a24-564f-5cb2-b387-d65b2b9efd8f'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  'Clean and version dataset',
  'Tracked work item for Near-term quantum error mitigation — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '04960929-8e6d-526f-902a-3f56fae228ea'::uuid,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0c44814d-fae9-5378-82b7-5273197b8111'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Near-term quantum error mitigation — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '345d0829-fb6e-5acc-9334-b1ed41dc1e0f'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Near-term quantum error mitigation — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '9583a091-71fc-59e2-a837-c827f33c072a'::uuid,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c477f084-ca14-5596-9105-a7f0af8d6142'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  true,
  'planning',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'eb342cce-8d93-563d-93ca-710b7f463e54'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '9583a091-71fc-59e2-a837-c827f33c072a'::uuid,
  '9583a091-71fc-59e2-a837-c827f33c072a'::uuid,
  true,
  'analysis',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'cfb32fd1-523b-598f-9439-fca078a36a68'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid,
  'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid,
  true,
  'writing',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'de87bd5c-165b-5c56-82a4-e1ffe7248f8c'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '370327fd-3558-57cf-8945-bc80d916c857'::uuid,
  '370327fd-3558-57cf-8945-bc80d916c857'::uuid,
  true,
  'ops',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'Robust evaluation for clinical LLMs — cohort 2',
  'Robust evaluation for clinical LLMs is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around LLMs, evaluation, safety. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  ARRAY['LLMs','evaluation','safety']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'remote',
  'long_term',
  7,
  true,
  'London, UK',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2fe74571-8f92-5ac8-81e8-42335a9d1d92'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  'owner',
  'active',
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '43e66744-d4bc-54fe-a247-722c1935d3eb'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  '093ae4a7-64b9-54f9-9c88-8b9150c9d1af'::uuid,
  'editor',
  'active',
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '50095845-cd85-5f4a-8683-a317731a8dbc'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'b5c5f827-63ef-5230-bb5e-5e5d81dec47c'::uuid,
  'viewer',
  'active',
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '487c103c-2147-5b80-993d-8f3ed0989c91'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid,
  'viewer',
  'active',
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '95ce8f59-ff3e-526e-a02f-39a8522bbf16'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'e10d8f3c-3339-5b7c-aab1-cb38fa334cb4'::uuid,
  'viewer',
  'active',
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '808f1b1f-a812-50b6-a377-29f4f2aa899e'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  '3f854435-9399-5c74-9096-979bd941e61d'::uuid,
  'viewer',
  'active',
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3bb4ee79-b7d5-590f-9b6d-1b4587bd69dc'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'a1026c86-856a-5225-b193-c935211475da'::uuid,
  'viewer',
  'active',
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7eea846a-1348-5f9c-b695-042eef58d407'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '04f34a9e-9ac2-57a1-a789-a47beaa14d33'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '093ae4a7-64b9-54f9-9c88-8b9150c9d1af'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'dea49c2f-7d5d-5893-a1b0-2e231056c7a8'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'Submit internal review',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'b5c5f827-63ef-5230-bb5e-5e5d81dec47c'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f7db81f0-7f12-5d0e-8971-a505123e0380'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'Update project README',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a5773544-7d8a-5560-ac7c-116d9087c87f'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'Draft related work section',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'e10d8f3c-3339-5b7c-aab1-cb38fa334cb4'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e9dad3cc-ff41-502c-8957-e84867da6192'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'Clean and version dataset',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '3f854435-9399-5c74-9096-979bd941e61d'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e1d605d8-a835-5f1e-a634-42737f51963f'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'a1026c86-856a-5225-b193-c935211475da'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '84000e9f-ce5b-5145-9288-7f0ab25e6be3'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f6f822b2-6bdc-5d1c-bbb8-fae95913ab4e'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  true,
  'planning',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '9136b695-0172-5e7d-bdbe-f12ebf52a2c1'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '093ae4a7-64b9-54f9-9c88-8b9150c9d1af'::uuid,
  '093ae4a7-64b9-54f9-9c88-8b9150c9d1af'::uuid,
  true,
  'analysis',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1b0100cf-764a-52b6-be35-e9e7ddddf215'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'b5c5f827-63ef-5230-bb5e-5e5d81dec47c'::uuid,
  'b5c5f827-63ef-5230-bb5e-5e5d81dec47c'::uuid,
  true,
  'writing',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '73216740-02c3-567f-b946-7f27f037270e'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid,
  'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid,
  true,
  'ops',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'Photoredox catalysis for late-stage edits — cohort 2',
  'Photoredox catalysis for late-stage edits is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around catalysis, synthesis. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  ARRAY['catalysis','synthesis']::text[],
  'active',
  'Chemistry',
  ARRAY['Organic synthesis','Spectroscopy','Cheminformatics']::text[],
  'hybrid',
  'short_term',
  8,
  true,
  'Seattle, WA',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'cf17538b-cafc-5839-b1b0-183fee55f7a4'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  'owner',
  'active',
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a7942593-fdf6-5d6d-a9b0-a22440f2688e'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid,
  'editor',
  'active',
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '696ba06c-8bbf-537b-9199-f80ed9a3311b'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid,
  'viewer',
  'active',
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9d010bec-9f08-58c7-8442-9e8d454d18fb'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  '93006b3a-19e8-5e78-8f8e-4e880c4429ef'::uuid,
  'viewer',
  'active',
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e1c98855-5921-5135-85e5-e28a2a9bdd4a'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'd43fc93e-7731-5f15-9829-c96382a66268'::uuid,
  'viewer',
  'active',
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '00b991f0-704f-5162-a913-7553b2232461'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  '6a514a41-4c7e-5056-a14d-13305a0c1c48'::uuid,
  'viewer',
  'active',
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '55398a79-38e6-5c6c-9495-975c27f64c67'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'bc3269b7-ccf7-597d-a309-30596d8dbb75'::uuid,
  'viewer',
  'active',
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd9ea03de-3f2b-55cd-9f52-52dd3f7e8ac5'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  '22d0d638-0bfb-521a-b51e-e1919770243e'::uuid,
  'viewer',
  'active',
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ad7685bb-98aa-55cf-91e4-b4f19c41d969'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '939e6b73-d12a-50b6-ad4b-337acf00cc46'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'db375c3f-aa3e-5b93-8adf-c71504220a15'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'Submit internal review',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7e330523-1bb6-50d8-9c38-7edb9d221e53'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'Update project README',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '93006b3a-19e8-5e78-8f8e-4e880c4429ef'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e8ecf247-abc3-5334-80cd-5aff3977bf98'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'Draft related work section',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'd43fc93e-7731-5f15-9829-c96382a66268'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'de6979d6-fca2-5c96-b483-1aba52dce962'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'Clean and version dataset',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '6a514a41-4c7e-5056-a14d-13305a0c1c48'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '42a6ede5-1d88-5d9d-afdb-5b3e9756a19a'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'bc3269b7-ccf7-597d-a309-30596d8dbb75'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '462c9c28-2bf4-5ebe-8a52-7f2f7a986e8b'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '22d0d638-0bfb-521a-b51e-e1919770243e'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b2aec9bf-a096-55c9-abe6-46d470667f98'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  true,
  'planning',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5180ac45-23c1-5d51-9e03-e046e7ce1044'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid,
  'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid,
  true,
  'analysis',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1b51f97f-316d-53e0-9d3d-8a2d9335ff1b'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid,
  'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid,
  true,
  'writing',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'eec75453-ba23-5b76-81c6-e904d567809a'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '93006b3a-19e8-5e78-8f8e-4e880c4429ef'::uuid,
  '93006b3a-19e8-5e78-8f8e-4e880c4429ef'::uuid,
  true,
  'ops',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;