INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  'Classroom AI tutor field study — cohort 5',
  'Classroom AI tutor field study is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around edtech, RCT. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  ARRAY['edtech','RCT']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'local',
  'long_term',
  6,
  true,
  'Baltimore, MD',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e998d86e-198d-5eba-8aca-50234b7f170d'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  'owner',
  'active',
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a84b8aa4-adc5-5f73-8818-3cb6af3320d7'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  '0b8bc984-976f-5d9b-8a58-2fed9283e948'::uuid,
  'editor',
  'active',
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9b463a3f-dd0f-55ba-99cf-3727011554ea'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  'bd20663c-d6a2-51fa-ab80-4be7e0b70de7'::uuid,
  'viewer',
  'active',
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8dc15f9a-1253-5ad9-9ba9-c17ffc6070cc'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  '666efcc9-c467-5b54-b887-659ecb744286'::uuid,
  'viewer',
  'active',
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b911c098-66a2-5d9b-929f-2764aba70824'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  '66ed3399-31e4-53c0-b383-f6dc631a5b40'::uuid,
  'viewer',
  'active',
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ad8cd1bc-89a6-51f2-ba22-2e765fdb6bcf'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  'e490df88-38c2-5929-9c18-233d575e2a3c'::uuid,
  'viewer',
  'active',
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4545aaa5-c721-53f9-84b5-001d3b8fd26b'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Classroom AI tutor field study — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7dd1e89a-ff2c-51e4-8895-e3844c5e85cf'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Classroom AI tutor field study — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '0b8bc984-976f-5d9b-8a58-2fed9283e948'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '949143ad-6c90-5b1b-bc2a-a7cbe8f86023'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  'Submit internal review',
  'Tracked work item for Classroom AI tutor field study — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'bd20663c-d6a2-51fa-ab80-4be7e0b70de7'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9ba34e23-3d41-579c-9f49-30876f196a51'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  'Update project README',
  'Tracked work item for Classroom AI tutor field study — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '666efcc9-c467-5b54-b887-659ecb744286'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'dc95be1e-9115-5d09-8871-696e24cac9b7'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  'Draft related work section',
  'Tracked work item for Classroom AI tutor field study — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '66ed3399-31e4-53c0-b383-f6dc631a5b40'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a5a4f237-d408-5bb8-9d00-c4cb9e4f0fe6'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  'Clean and version dataset',
  'Tracked work item for Classroom AI tutor field study — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'e490df88-38c2-5929-9c18-233d575e2a3c'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '89c01419-2371-5251-95b8-e8b2597e665b'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Classroom AI tutor field study — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '341b14fa-d887-5168-8dcc-351499adeb0a'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Classroom AI tutor field study — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '0b8bc984-976f-5d9b-8a58-2fed9283e948'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '578d4ad7-72f9-56b2-856c-aa088f9705c7'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  true,
  'planning',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '333c9701-e3c7-5c69-acd3-ac3f1362b728'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '0b8bc984-976f-5d9b-8a58-2fed9283e948'::uuid,
  '0b8bc984-976f-5d9b-8a58-2fed9283e948'::uuid,
  true,
  'analysis',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '96f745ef-0505-5082-87dd-faca21bb0bbb'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'bd20663c-d6a2-51fa-ab80-4be7e0b70de7'::uuid,
  'bd20663c-d6a2-51fa-ab80-4be7e0b70de7'::uuid,
  true,
  'writing',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd5172224-5e8a-53ce-8de2-b18be2fcfc28'::uuid,
  '005a99dd-8e91-5b20-ab65-c1cb32e1e2e6'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '666efcc9-c467-5b54-b887-659ecb744286'::uuid,
  '666efcc9-c467-5b54-b887-659ecb744286'::uuid,
  true,
  'ops',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'Privacy-preserving wearable analytics — cohort 5',
  'Privacy-preserving wearable analytics is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around wearables, privacy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  ARRAY['wearables','privacy']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'remote',
  'long_term',
  7,
  true,
  'New Haven, CT',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8772f17e-5211-525f-b0ea-df4839e82b4f'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  'owner',
  'active',
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6d57792d-c576-5c00-be71-e0f363fbc344'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'd950d3d2-16f6-5d3d-bed8-7ac8a0c5c29e'::uuid,
  'editor',
  'active',
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '84870b10-67da-5f6c-a5f1-15a4d89ae84a'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid,
  'viewer',
  'active',
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'dd0031ed-060e-5574-a30c-6e472e1a7d59'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'e0cf12ee-c803-590f-87be-dbc5f2ea0cb9'::uuid,
  'viewer',
  'active',
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f00ed4f6-3ee3-5ffd-9ade-15ff88c06555'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  '07e78528-7a32-5945-9289-b917095c02bc'::uuid,
  'viewer',
  'active',
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7b5caaad-7e0d-5695-9c15-58059a90872a'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid,
  'viewer',
  'active',
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9329d406-aaee-54f1-aba1-4002218a49d2'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'b06a5bb8-5c51-5c83-b14f-366ec1bcc6c2'::uuid,
  'viewer',
  'active',
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f51366e6-0431-592a-a1b7-e884a2288fb2'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9f2ac44d-f0b7-57dc-901b-7fd2d5098053'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'd950d3d2-16f6-5d3d-bed8-7ac8a0c5c29e'::uuid,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '055df8a5-c691-59f2-af69-a7f63c096e8d'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'Submit internal review',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4d519835-969f-5087-b7ec-37222d5c56bb'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'Update project README',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'e0cf12ee-c803-590f-87be-dbc5f2ea0cb9'::uuid,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6e8011aa-d5ce-5d4a-b187-7fb93b98a6ae'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'Draft related work section',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '07e78528-7a32-5945-9289-b917095c02bc'::uuid,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'aa047d9b-575b-5027-991c-51c98e98223a'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'Clean and version dataset',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6a2bf678-397f-5007-bd0c-c335284cbc6d'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'b06a5bb8-5c51-5c83-b14f-366ec1bcc6c2'::uuid,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '01a498ca-73e3-551f-a8ea-d3d70dab7f59'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3243dccc-beb1-5e83-8230-417c0d91d327'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid,
  true,
  'planning',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '9918c0c8-2189-51ce-a572-1721d619ad7a'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'd950d3d2-16f6-5d3d-bed8-7ac8a0c5c29e'::uuid,
  'd950d3d2-16f6-5d3d-bed8-7ac8a0c5c29e'::uuid,
  true,
  'analysis',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '11786ffc-a1e6-53aa-b418-d8a2e8f567db'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid,
  'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid,
  true,
  'writing',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c6a360e4-5b02-5137-9cd0-ab0a32813434'::uuid,
  'e76031a2-e73e-58ad-be6a-f67ac24d7b59'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'e0cf12ee-c803-590f-87be-dbc5f2ea0cb9'::uuid,
  'e0cf12ee-c803-590f-87be-dbc5f2ea0cb9'::uuid,
  true,
  'ops',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;