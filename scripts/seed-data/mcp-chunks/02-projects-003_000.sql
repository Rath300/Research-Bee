INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '5814e2ed-9947-5bc8-bf74-1ac984f8e3cf'::uuid,
  'Single-cell atlas of treatment response — cohort 4',
  'Single-cell atlas of treatment response is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around genomics, RNA-seq, oncology. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  ARRAY['genomics','RNA-seq','oncology']::text[],
  'planning',
  'Computational Biology',
  ARRAY['Python','R','Genomics']::text[],
  'remote',
  'short_term',
  4,
  true,
  'Oxford, UK',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3d606e42-8249-5f40-a08a-e28561863945'::uuid,
  '5814e2ed-9947-5bc8-bf74-1ac984f8e3cf'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  'owner',
  'active',
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ce0cc631-2fec-54fd-96d3-aa9463d324b2'::uuid,
  '5814e2ed-9947-5bc8-bf74-1ac984f8e3cf'::uuid,
  'f439b08a-0f7c-50c6-afcb-db2b75ff253a'::uuid,
  'editor',
  'active',
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '641aa2cf-1bba-514b-a331-0b5bd90a3435'::uuid,
  '5814e2ed-9947-5bc8-bf74-1ac984f8e3cf'::uuid,
  '701bc471-d89e-56aa-b221-e5ebec104cb3'::uuid,
  'viewer',
  'active',
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c73d2cd1-7894-551c-852c-1b7985288235'::uuid,
  '5814e2ed-9947-5bc8-bf74-1ac984f8e3cf'::uuid,
  'd8f35861-4574-5a95-81ee-2a68c58124ed'::uuid,
  'viewer',
  'active',
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '32cb747b-413b-56ad-a92e-c057c1064299'::uuid,
  '5814e2ed-9947-5bc8-bf74-1ac984f8e3cf'::uuid,
  'Draft related work section',
  'Tracked work item for Single-cell atlas of treatment response — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3283858a-b650-5c54-b51b-7ca3207506f9'::uuid,
  '5814e2ed-9947-5bc8-bf74-1ac984f8e3cf'::uuid,
  'Clean and version dataset',
  'Tracked work item for Single-cell atlas of treatment response — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'f439b08a-0f7c-50c6-afcb-db2b75ff253a'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'dce3a008-59f7-5294-96af-9a65c8978313'::uuid,
  '5814e2ed-9947-5bc8-bf74-1ac984f8e3cf'::uuid,
  'Run baseline model',
  'Tracked work item for Single-cell atlas of treatment response — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '701bc471-d89e-56aa-b221-e5ebec104cb3'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '762d5a6f-c6a8-590d-9f0d-b9c079b675ac'::uuid,
  '5814e2ed-9947-5bc8-bf74-1ac984f8e3cf'::uuid,
  'Write IRB amendment',
  'Tracked work item for Single-cell atlas of treatment response — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'd8f35861-4574-5a95-81ee-2a68c58124ed'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '49878787-5eb0-5cfd-8eec-d6d3d728dc86'::uuid,
  '5814e2ed-9947-5bc8-bf74-1ac984f8e3cf'::uuid,
  'Prepare figure panels',
  'Tracked work item for Single-cell atlas of treatment response — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '69318ef2-365c-5946-9903-b695c8a3bd80'::uuid,
  '5814e2ed-9947-5bc8-bf74-1ac984f8e3cf'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Single-cell atlas of treatment response — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'f439b08a-0f7c-50c6-afcb-db2b75ff253a'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8a6aef05-59b5-5f9d-981a-868ff8d5ce89'::uuid,
  '5814e2ed-9947-5bc8-bf74-1ac984f8e3cf'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Single-cell atlas of treatment response — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '701bc471-d89e-56aa-b221-e5ebec104cb3'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'cfd41121-e406-5fc9-8b9a-8449c8d6f2c6'::uuid,
  '5814e2ed-9947-5bc8-bf74-1ac984f8e3cf'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Single-cell atlas of treatment response — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'd8f35861-4574-5a95-81ee-2a68c58124ed'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c4a00d03-8822-5fc7-af5d-b68f3f0c6ed1'::uuid,
  '5814e2ed-9947-5bc8-bf74-1ac984f8e3cf'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  true,
  'planning',
  ARRAY['genomics','RNA-seq']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '17775f5f-1adc-538b-b9bf-d2c2e6dc8a1f'::uuid,
  '5814e2ed-9947-5bc8-bf74-1ac984f8e3cf'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'f439b08a-0f7c-50c6-afcb-db2b75ff253a'::uuid,
  'f439b08a-0f7c-50c6-afcb-db2b75ff253a'::uuid,
  true,
  'analysis',
  ARRAY['genomics','RNA-seq']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'bdc11563-0bae-5ea8-b9d7-13ed87777078'::uuid,
  '5814e2ed-9947-5bc8-bf74-1ac984f8e3cf'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '701bc471-d89e-56aa-b221-e5ebec104cb3'::uuid,
  '701bc471-d89e-56aa-b221-e5ebec104cb3'::uuid,
  true,
  'writing',
  ARRAY['genomics','RNA-seq']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd3712802-9878-5d1a-8055-28b1d91f9ff7'::uuid,
  '5814e2ed-9947-5bc8-bf74-1ac984f8e3cf'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'd8f35861-4574-5a95-81ee-2a68c58124ed'::uuid,
  'd8f35861-4574-5a95-81ee-2a68c58124ed'::uuid,
  true,
  'ops',
  ARRAY['genomics','RNA-seq']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'ee797424-45b5-514d-b123-d79393f9e70e'::uuid,
  'Urban heat mitigation with satellite ML — cohort 4',
  'Urban heat mitigation with satellite ML is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around remote sensing, cities, ML. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  ARRAY['remote sensing','cities','ML']::text[],
  'active',
  'Climate Science',
  ARRAY['Remote sensing','Python','GIS']::text[],
  'hybrid',
  'medium_term',
  5,
  true,
  'Singapore',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6276e76b-b1b5-59bc-b490-692c202e8a2d'::uuid,
  'ee797424-45b5-514d-b123-d79393f9e70e'::uuid,
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  'owner',
  'active',
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2d999b70-bf26-5a41-bdfc-989ad6e0f3be'::uuid,
  'ee797424-45b5-514d-b123-d79393f9e70e'::uuid,
  '6d797a78-3704-5608-8637-77e373f046fc'::uuid,
  'editor',
  'active',
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '391f1e47-e81f-5159-96e1-3ed7c3cc5639'::uuid,
  'ee797424-45b5-514d-b123-d79393f9e70e'::uuid,
  'a82005d9-eb53-54f1-a998-6ab98ab9128d'::uuid,
  'viewer',
  'active',
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f9fd8015-e1a9-5438-ad08-80ca6c18d0e1'::uuid,
  'ee797424-45b5-514d-b123-d79393f9e70e'::uuid,
  'deb0386d-b54d-5b0b-8e3d-137214ddaf59'::uuid,
  'viewer',
  'active',
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '633853f2-6617-57cf-80f5-e2a889e766aa'::uuid,
  'ee797424-45b5-514d-b123-d79393f9e70e'::uuid,
  '50cb7af5-ed51-5446-8054-edb6eae4e7e6'::uuid,
  'viewer',
  'active',
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8c3056b4-15ce-533a-8b72-39cef4e7c4c7'::uuid,
  'ee797424-45b5-514d-b123-d79393f9e70e'::uuid,
  'Draft related work section',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c3ba763d-f55e-57ce-8657-4cc096d0eb67'::uuid,
  'ee797424-45b5-514d-b123-d79393f9e70e'::uuid,
  'Clean and version dataset',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '6d797a78-3704-5608-8637-77e373f046fc'::uuid,
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6926abf3-1d1a-5113-a96c-1d8f346931a4'::uuid,
  'ee797424-45b5-514d-b123-d79393f9e70e'::uuid,
  'Run baseline model',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'a82005d9-eb53-54f1-a998-6ab98ab9128d'::uuid,
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c4e15fa6-9d1f-5892-8fa5-bfef87a67cd2'::uuid,
  'ee797424-45b5-514d-b123-d79393f9e70e'::uuid,
  'Write IRB amendment',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'deb0386d-b54d-5b0b-8e3d-137214ddaf59'::uuid,
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2027e0e8-66c6-5dc1-91e2-d2f8c3ad25dd'::uuid,
  'ee797424-45b5-514d-b123-d79393f9e70e'::uuid,
  'Prepare figure panels',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '50cb7af5-ed51-5446-8054-edb6eae4e7e6'::uuid,
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a20d9dc7-f3fb-548f-8846-2dd104a0470a'::uuid,
  'ee797424-45b5-514d-b123-d79393f9e70e'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '23b88846-c7c7-5044-96da-972d20ffbf37'::uuid,
  'ee797424-45b5-514d-b123-d79393f9e70e'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '6d797a78-3704-5608-8637-77e373f046fc'::uuid,
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'beac269d-6b08-565c-a48a-74a2d6e98b82'::uuid,
  'ee797424-45b5-514d-b123-d79393f9e70e'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'a82005d9-eb53-54f1-a998-6ab98ab9128d'::uuid,
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd2462dc0-cc9b-52cf-9b9f-0afe40c6840b'::uuid,
  'ee797424-45b5-514d-b123-d79393f9e70e'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  true,
  'planning',
  ARRAY['remote sensing','cities']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '90fd0acf-7656-5f9f-926d-da43b12072b6'::uuid,
  'ee797424-45b5-514d-b123-d79393f9e70e'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '6d797a78-3704-5608-8637-77e373f046fc'::uuid,
  '6d797a78-3704-5608-8637-77e373f046fc'::uuid,
  true,
  'analysis',
  ARRAY['remote sensing','cities']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ca3c6ddd-2cd0-56a1-974c-f81c905efdf7'::uuid,
  'ee797424-45b5-514d-b123-d79393f9e70e'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'a82005d9-eb53-54f1-a998-6ab98ab9128d'::uuid,
  'a82005d9-eb53-54f1-a998-6ab98ab9128d'::uuid,
  true,
  'writing',
  ARRAY['remote sensing','cities']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd58c74fb-7a56-5d9e-8d0b-ee5411572805'::uuid,
  'ee797424-45b5-514d-b123-d79393f9e70e'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'deb0386d-b54d-5b0b-8e3d-137214ddaf59'::uuid,
  'deb0386d-b54d-5b0b-8e3d-137214ddaf59'::uuid,
  true,
  'ops',
  ARRAY['remote sensing','cities']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'd4bc4173-2c7c-5347-9589-83a3bbbfe6a8'::uuid,
  'High-throughput electrolyte screening — cohort 4',
  'High-throughput electrolyte screening is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around batteries, automation, DFT. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  ARRAY['batteries','automation','DFT']::text[],
  'active',
  'Materials Science',
  ARRAY['DFT','Lab automation','Characterization']::text[],
  'local',
  'long_term',
  6,
  true,
  'Melbourne, AU',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e61ca628-34a6-58b7-9ccf-af18e6ca219f'::uuid,
  'd4bc4173-2c7c-5347-9589-83a3bbbfe6a8'::uuid,
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  'owner',
  'active',
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'dd21c30f-677e-5b35-acd4-700ff134c9c9'::uuid,
  'd4bc4173-2c7c-5347-9589-83a3bbbfe6a8'::uuid,
  'dab59244-4f3e-5e87-a1c5-d2738f719a6a'::uuid,
  'editor',
  'active',
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8e509f71-06a3-532a-b14c-02b2402fcc47'::uuid,
  'd4bc4173-2c7c-5347-9589-83a3bbbfe6a8'::uuid,
  '2ccca6e5-bb28-5a0e-abe4-066695c1a229'::uuid,
  'viewer',
  'active',
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '151eb90f-bf6a-576a-90f1-2a060b20b971'::uuid,
  'd4bc4173-2c7c-5347-9589-83a3bbbfe6a8'::uuid,
  'da485178-a3ce-55c1-9c87-d63e6dc88145'::uuid,
  'viewer',
  'active',
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '25db8879-ee86-5541-86ba-f9401c9e4ec0'::uuid,
  'd4bc4173-2c7c-5347-9589-83a3bbbfe6a8'::uuid,
  '91c678b4-6d1b-543c-ab3e-c298a0d3b8e5'::uuid,
  'viewer',
  'active',
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5994147a-ada9-5bba-8f15-c050541ba97f'::uuid,
  'd4bc4173-2c7c-5347-9589-83a3bbbfe6a8'::uuid,
  '8fe0f3e1-b131-5d34-8746-44ea97dd000a'::uuid,
  'viewer',
  'active',
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3b6e9284-bedc-5cdc-9d11-0f3e9145bb29'::uuid,
  'd4bc4173-2c7c-5347-9589-83a3bbbfe6a8'::uuid,
  'Draft related work section',
  'Tracked work item for High-throughput electrolyte screening — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5d503e2f-0d2c-56ce-98d6-51032d875d61'::uuid,
  'd4bc4173-2c7c-5347-9589-83a3bbbfe6a8'::uuid,
  'Clean and version dataset',
  'Tracked work item for High-throughput electrolyte screening — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'dab59244-4f3e-5e87-a1c5-d2738f719a6a'::uuid,
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6ad8a4f1-589e-5f2e-85f1-67a9bda347a7'::uuid,
  'd4bc4173-2c7c-5347-9589-83a3bbbfe6a8'::uuid,
  'Run baseline model',
  'Tracked work item for High-throughput electrolyte screening — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '2ccca6e5-bb28-5a0e-abe4-066695c1a229'::uuid,
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a1ecf2e2-0f38-52af-80ed-792f4782893f'::uuid,
  'd4bc4173-2c7c-5347-9589-83a3bbbfe6a8'::uuid,
  'Write IRB amendment',
  'Tracked work item for High-throughput electrolyte screening — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'da485178-a3ce-55c1-9c87-d63e6dc88145'::uuid,
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '60fe0aa5-5779-5a9e-86f0-373d1d23f974'::uuid,
  'd4bc4173-2c7c-5347-9589-83a3bbbfe6a8'::uuid,
  'Prepare figure panels',
  'Tracked work item for High-throughput electrolyte screening — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '91c678b4-6d1b-543c-ab3e-c298a0d3b8e5'::uuid,
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1ca95272-f013-5035-bdbb-b595a7b0678d'::uuid,
  'd4bc4173-2c7c-5347-9589-83a3bbbfe6a8'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for High-throughput electrolyte screening — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '8fe0f3e1-b131-5d34-8746-44ea97dd000a'::uuid,
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9727b274-8b00-5a41-adaf-32a1c206aa06'::uuid,
  'd4bc4173-2c7c-5347-9589-83a3bbbfe6a8'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for High-throughput electrolyte screening — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '074a6e51-65c7-5772-a71b-99f826d3623c'::uuid,
  'd4bc4173-2c7c-5347-9589-83a3bbbfe6a8'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for High-throughput electrolyte screening — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'dab59244-4f3e-5e87-a1c5-d2738f719a6a'::uuid,
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '24cbb160-918e-52b2-9bab-595e4486691c'::uuid,
  'd4bc4173-2c7c-5347-9589-83a3bbbfe6a8'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  true,
  'planning',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '012fd653-073a-5026-87be-eaafa27b9ccd'::uuid,
  'd4bc4173-2c7c-5347-9589-83a3bbbfe6a8'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'dab59244-4f3e-5e87-a1c5-d2738f719a6a'::uuid,
  'dab59244-4f3e-5e87-a1c5-d2738f719a6a'::uuid,
  true,
  'analysis',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '29316983-b205-5083-b936-83feb6e6bd71'::uuid,
  'd4bc4173-2c7c-5347-9589-83a3bbbfe6a8'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '2ccca6e5-bb28-5a0e-abe4-066695c1a229'::uuid,
  '2ccca6e5-bb28-5a0e-abe4-066695c1a229'::uuid,
  true,
  'writing',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8e20e767-387d-55ca-99d6-59074df639a3'::uuid,
  'd4bc4173-2c7c-5347-9589-83a3bbbfe6a8'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'da485178-a3ce-55c1-9c87-d63e6dc88145'::uuid,
  'da485178-a3ce-55c1-9c87-d63e6dc88145'::uuid,
  true,
  'ops',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;