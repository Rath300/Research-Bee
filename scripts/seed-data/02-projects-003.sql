-- projects 60..79

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


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  'Accessible clinical note summarization — cohort 4',
  'Accessible clinical note summarization is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around NLP, healthcare, UX. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  ARRAY['NLP','healthcare','UX']::text[],
  'active',
  'Human-Computer Interaction',
  ARRAY['User research','Prototyping','Statistics']::text[],
  'remote',
  'long_term',
  7,
  true,
  'Cambridge, MA',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'bc9e851f-6c73-53ac-9162-836b1ea81a95'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  'owner',
  'active',
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c175e428-413c-5a5d-9d79-b2da3710e705'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  '362e8e33-ad10-5e09-97c1-9e4fd176cfec'::uuid,
  'editor',
  'active',
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '03950823-d9bb-5a1c-95db-f7b6343cef1c'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  '76be2658-a631-5b5f-a48b-2899d0277be7'::uuid,
  'viewer',
  'active',
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '263e1447-20e8-5782-ae8b-5218b2f4bf51'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  '5fb1afbf-0859-5415-be8c-84cc088ebd51'::uuid,
  'viewer',
  'active',
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd22b7a64-7d8e-5455-9fa1-7b7e2ade8030'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  '4df46dd0-4046-525a-94ec-1dc05586ff46'::uuid,
  'viewer',
  'active',
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '43d9ba3d-e35b-563a-8fdb-0ee4f60eda56'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  '51687c53-c74e-5a27-8949-dcde640e42d8'::uuid,
  'viewer',
  'active',
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c8c7f4c2-71e5-5027-b33a-e2db40573eb0'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  '9fa6c3ed-6590-56b4-8dbb-73ca44e426eb'::uuid,
  'viewer',
  'active',
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'db8157af-5035-50a1-af8f-424e173c2a07'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  'Draft related work section',
  'Tracked work item for Accessible clinical note summarization — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'da6837f1-0b44-5147-8faa-0d5b9e95583f'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  'Clean and version dataset',
  'Tracked work item for Accessible clinical note summarization — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '362e8e33-ad10-5e09-97c1-9e4fd176cfec'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f3b2c072-5614-5d40-b072-623570262a63'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  'Run baseline model',
  'Tracked work item for Accessible clinical note summarization — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '76be2658-a631-5b5f-a48b-2899d0277be7'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '13875c27-7ac1-5d16-9567-46adc3ff257b'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  'Write IRB amendment',
  'Tracked work item for Accessible clinical note summarization — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '5fb1afbf-0859-5415-be8c-84cc088ebd51'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'acbb6650-0d4b-5203-be01-7b0cd33e39e5'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  'Prepare figure panels',
  'Tracked work item for Accessible clinical note summarization — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '4df46dd0-4046-525a-94ec-1dc05586ff46'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ec39e42f-af6d-52ee-9f23-2c480065f49c'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Accessible clinical note summarization — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '51687c53-c74e-5a27-8949-dcde640e42d8'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a683f469-0202-550f-8079-04864a1ab78f'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Accessible clinical note summarization — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '9fa6c3ed-6590-56b4-8dbb-73ca44e426eb'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2f3ef419-f884-5622-8fc3-94cd642df0fc'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Accessible clinical note summarization — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'fcdb6958-cc49-533a-b99a-92b80d842952'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  true,
  'planning',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '509893ee-1c3e-586b-9783-772185458625'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '362e8e33-ad10-5e09-97c1-9e4fd176cfec'::uuid,
  '362e8e33-ad10-5e09-97c1-9e4fd176cfec'::uuid,
  true,
  'analysis',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '62b0aa28-1894-5804-846e-17384b271fd9'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '76be2658-a631-5b5f-a48b-2899d0277be7'::uuid,
  '76be2658-a631-5b5f-a48b-2899d0277be7'::uuid,
  true,
  'writing',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e7a02e66-c76e-528a-a8d3-a3aabe7b0024'::uuid,
  'c61f7760-ddda-540b-94a2-0f3fde00c27c'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '5fb1afbf-0859-5415-be8c-84cc088ebd51'::uuid,
  '5fb1afbf-0859-5415-be8c-84cc088ebd51'::uuid,
  true,
  'ops',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  'Closed-loop stimulation for memory — cohort 4',
  'Closed-loop stimulation for memory is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around neurotech, memory, EEG. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  ARRAY['neurotech','memory','EEG']::text[],
  'active',
  'Neuroscience',
  ARRAY['fMRI','Electrophysiology','Python']::text[],
  'hybrid',
  'short_term',
  8,
  true,
  'Palo Alto, CA',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '137aed70-f6c5-5e49-b2e2-b3703f4e7d59'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  'owner',
  'active',
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e7918c6f-3cfb-59a7-b331-7b1ecdb3d2ca'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  '14acafc8-5752-5e7f-a736-a20b700204e8'::uuid,
  'editor',
  'active',
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b4d24210-426b-5b48-a3d5-b0623fdd5029'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  '591c3431-cc8c-5f3a-bdfe-57efd787bd73'::uuid,
  'viewer',
  'active',
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3ee64b56-081b-55bf-bb52-e239b2933720'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  '882ce91f-dd4d-5798-9c92-ceb3be3c526c'::uuid,
  'viewer',
  'active',
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2d12f07d-5c66-5f3e-a60e-34ba78edeb00'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  '5ad5e69f-e707-5b76-8788-6652faf2a416'::uuid,
  'viewer',
  'active',
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c30f9c2e-70fe-5f7d-8700-b3e89f1b68ce'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  'a3e5aa51-30a9-5d43-8d54-86b2d0be7b2a'::uuid,
  'viewer',
  'active',
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '33f508ac-e0af-5c6e-835d-60a26ab8cd5d'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  '0687ee8d-ff4f-5a57-a322-44f46574449a'::uuid,
  'viewer',
  'active',
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'af6c7891-c1d9-576f-b5c3-3099e32ca4cf'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  '8a3ccd43-eedc-52e3-970e-b05b035225e2'::uuid,
  'viewer',
  'active',
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '796035ef-f375-53cf-b4e2-c4e5b5cb8e53'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  'Draft related work section',
  'Tracked work item for Closed-loop stimulation for memory — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7d2aeee2-4de1-509a-a679-d1f8b9fa18d3'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  'Clean and version dataset',
  'Tracked work item for Closed-loop stimulation for memory — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '14acafc8-5752-5e7f-a736-a20b700204e8'::uuid,
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '36f8e4f0-e25f-5c71-ad88-bb9adcbb4b9c'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  'Run baseline model',
  'Tracked work item for Closed-loop stimulation for memory — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '591c3431-cc8c-5f3a-bdfe-57efd787bd73'::uuid,
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1e3b2a5d-26e7-58c0-b8b5-a73f1ae5a302'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  'Write IRB amendment',
  'Tracked work item for Closed-loop stimulation for memory — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '882ce91f-dd4d-5798-9c92-ceb3be3c526c'::uuid,
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'df815048-3ec7-52e5-bb97-fcf16f3ea4ab'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  'Prepare figure panels',
  'Tracked work item for Closed-loop stimulation for memory — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '5ad5e69f-e707-5b76-8788-6652faf2a416'::uuid,
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a87be303-36c7-55b3-bf0e-bb546aa44444'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Closed-loop stimulation for memory — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'a3e5aa51-30a9-5d43-8d54-86b2d0be7b2a'::uuid,
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '555ed760-e8dc-57f9-babe-cdeeab04abd1'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Closed-loop stimulation for memory — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '0687ee8d-ff4f-5a57-a322-44f46574449a'::uuid,
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e1e488a1-c21a-5e6a-bd06-0961c4489a36'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Closed-loop stimulation for memory — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '8a3ccd43-eedc-52e3-970e-b05b035225e2'::uuid,
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '57ff2323-ecb7-587b-b8b2-4b0fc070d1e6'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid,
  true,
  'planning',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c720f7b1-1b98-5694-ba20-6b71c35eb898'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '14acafc8-5752-5e7f-a736-a20b700204e8'::uuid,
  '14acafc8-5752-5e7f-a736-a20b700204e8'::uuid,
  true,
  'analysis',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ac006322-0d3e-5e32-9ab0-e01ba161836f'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '591c3431-cc8c-5f3a-bdfe-57efd787bd73'::uuid,
  '591c3431-cc8c-5f3a-bdfe-57efd787bd73'::uuid,
  true,
  'writing',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3a71ab6c-404c-5a29-894a-739a071a64b5'::uuid,
  '9df03379-f6c8-5309-8995-cb68370a2052'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '882ce91f-dd4d-5798-9c92-ceb3be3c526c'::uuid,
  '882ce91f-dd4d-5798-9c92-ceb3be3c526c'::uuid,
  true,
  'ops',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'Community vaccine confidence study — cohort 4',
  'Community vaccine confidence study is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around surveys, equity, vaccines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  ARRAY['surveys','equity','vaccines']::text[],
  'planning',
  'Public Health',
  ARRAY['Epidemiology','R','Survey design']::text[],
  'local',
  'medium_term',
  9,
  true,
  'Berkeley, CA',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f57d6c26-7b29-5944-8afc-6c1fce01a49a'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  'owner',
  'active',
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9c1cb8b0-e4a0-5ee2-a11f-04e60155bdf0'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  '781e7da5-24de-584d-b14b-8380dabd974e'::uuid,
  'editor',
  'active',
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'db3df3bd-b7f0-5312-ab55-6eed7d91edc6'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'f5d6a6bc-d32b-54be-a18e-3ccafce0aa8d'::uuid,
  'viewer',
  'active',
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b93418f2-7dfb-521a-8fbe-ecbc047b1ffa'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'cf9c3d0b-7a52-5d3a-82ad-f7cc9d6acdfc'::uuid,
  'viewer',
  'active',
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd586f43a-8a60-527c-a67d-54ae90a237f1'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'a47f9557-3126-5157-8316-17a32c536be0'::uuid,
  'viewer',
  'active',
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6339d6cd-a858-56cb-8e92-99f55c7e5328'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'e78a6ddc-5a54-530e-9647-71d739067c0c'::uuid,
  'viewer',
  'active',
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0de54139-46f2-557f-a1b0-7d1b9908d43e'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'f271c942-fc21-56d3-93cb-8635126191a1'::uuid,
  'viewer',
  'active',
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e1615743-e767-552d-ad58-2e392ca277d0'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  '4ba4df9e-a91f-57ee-8882-f80f02274f08'::uuid,
  'viewer',
  'active',
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a5129355-2d59-5e3a-ae9f-e3fe1b388630'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'b11a21f9-aaa6-5e4a-b799-262e6d513bf1'::uuid,
  'viewer',
  'active',
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '34a0bb0f-0b63-595d-a99c-8b45ca7c4fff'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'Draft related work section',
  'Tracked work item for Community vaccine confidence study — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4a811524-4ae5-57ff-823d-2ca9dfb0dba8'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'Clean and version dataset',
  'Tracked work item for Community vaccine confidence study — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '781e7da5-24de-584d-b14b-8380dabd974e'::uuid,
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6a2feaeb-ea33-58f9-b261-51d84a5ae38b'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'Run baseline model',
  'Tracked work item for Community vaccine confidence study — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'f5d6a6bc-d32b-54be-a18e-3ccafce0aa8d'::uuid,
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f0074b2c-9f38-5ca2-ad78-ae493021c282'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'Write IRB amendment',
  'Tracked work item for Community vaccine confidence study — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'cf9c3d0b-7a52-5d3a-82ad-f7cc9d6acdfc'::uuid,
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1f8d6515-7ec2-5482-84bc-46918cefe646'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'Prepare figure panels',
  'Tracked work item for Community vaccine confidence study — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'a47f9557-3126-5157-8316-17a32c536be0'::uuid,
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2be8b055-054c-50a7-976a-66d2934534db'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Community vaccine confidence study — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'e78a6ddc-5a54-530e-9647-71d739067c0c'::uuid,
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '19ed38f7-b784-5ef5-9968-01c09806d146'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Community vaccine confidence study — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'f271c942-fc21-56d3-93cb-8635126191a1'::uuid,
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1bb03ff6-c763-52be-8310-d6f57efdb3ec'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Community vaccine confidence study — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '4ba4df9e-a91f-57ee-8882-f80f02274f08'::uuid,
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '27eb92b8-20b7-5f67-9065-f4f0fcf748c3'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  true,
  'planning',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '99065cb7-1bbf-56e5-994c-e1c325eed8b0'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '781e7da5-24de-584d-b14b-8380dabd974e'::uuid,
  '781e7da5-24de-584d-b14b-8380dabd974e'::uuid,
  true,
  'analysis',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b34bd229-90aa-5577-8ebe-6c3aa79768f0'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'f5d6a6bc-d32b-54be-a18e-3ccafce0aa8d'::uuid,
  'f5d6a6bc-d32b-54be-a18e-3ccafce0aa8d'::uuid,
  true,
  'writing',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0f8324dd-08fa-5811-bd2c-ee189011a1d0'::uuid,
  '0efb964d-44a7-57e9-bf76-07a41c1344d6'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'cf9c3d0b-7a52-5d3a-82ad-f7cc9d6acdfc'::uuid,
  'cf9c3d0b-7a52-5d3a-82ad-f7cc9d6acdfc'::uuid,
  true,
  'ops',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '6d3bdbfa-68d1-598c-bbb3-72877cf3c983'::uuid,
  'Near-term quantum error mitigation — cohort 4',
  'Near-term quantum error mitigation is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around NISQ, algorithms. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  ARRAY['NISQ','algorithms']::text[],
  'active',
  'Quantum Information',
  ARRAY['Qiskit','Linear algebra','Optics']::text[],
  'remote',
  'long_term',
  10,
  true,
  'Boston, MA',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '71ea90e1-5bbc-55b8-a36f-503ba191af82'::uuid,
  '6d3bdbfa-68d1-598c-bbb3-72877cf3c983'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  'owner',
  'active',
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5169c49e-5675-5edc-be78-4dec5bc3e5ec'::uuid,
  '6d3bdbfa-68d1-598c-bbb3-72877cf3c983'::uuid,
  '0cd97540-575a-57c2-a037-9c730567b2e7'::uuid,
  'editor',
  'active',
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '146b9fe8-8008-54ba-b36c-a46614f58aee'::uuid,
  '6d3bdbfa-68d1-598c-bbb3-72877cf3c983'::uuid,
  'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid,
  'viewer',
  'active',
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0f579917-dbe4-5e83-bb7d-ae7e1bf09553'::uuid,
  '6d3bdbfa-68d1-598c-bbb3-72877cf3c983'::uuid,
  '65a74fe8-c38f-5780-8ad2-bf331721a3d9'::uuid,
  'viewer',
  'active',
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9e353bc1-a8be-5f90-ac2f-9dce56c2ce9b'::uuid,
  '6d3bdbfa-68d1-598c-bbb3-72877cf3c983'::uuid,
  'Draft related work section',
  'Tracked work item for Near-term quantum error mitigation — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '438f018a-4c5f-5dd7-8f47-9ba68eff14f4'::uuid,
  '6d3bdbfa-68d1-598c-bbb3-72877cf3c983'::uuid,
  'Clean and version dataset',
  'Tracked work item for Near-term quantum error mitigation — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '0cd97540-575a-57c2-a037-9c730567b2e7'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fb35e6ea-29bf-53b2-8f15-087fa6e27430'::uuid,
  '6d3bdbfa-68d1-598c-bbb3-72877cf3c983'::uuid,
  'Run baseline model',
  'Tracked work item for Near-term quantum error mitigation — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f3c6e85e-662c-5c84-b34b-1eac4ae13d1b'::uuid,
  '6d3bdbfa-68d1-598c-bbb3-72877cf3c983'::uuid,
  'Write IRB amendment',
  'Tracked work item for Near-term quantum error mitigation — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '65a74fe8-c38f-5780-8ad2-bf331721a3d9'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a816953d-24de-5991-9eee-0992e2fca65a'::uuid,
  '6d3bdbfa-68d1-598c-bbb3-72877cf3c983'::uuid,
  'Prepare figure panels',
  'Tracked work item for Near-term quantum error mitigation — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1b7d3ffe-5216-59f8-af8f-abde9020d4c6'::uuid,
  '6d3bdbfa-68d1-598c-bbb3-72877cf3c983'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Near-term quantum error mitigation — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '0cd97540-575a-57c2-a037-9c730567b2e7'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6b2e33cf-9b9b-5387-b607-ad39bc644161'::uuid,
  '6d3bdbfa-68d1-598c-bbb3-72877cf3c983'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Near-term quantum error mitigation — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2db3df0f-2f1f-59f3-9950-89ff1018ad88'::uuid,
  '6d3bdbfa-68d1-598c-bbb3-72877cf3c983'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Near-term quantum error mitigation — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '65a74fe8-c38f-5780-8ad2-bf331721a3d9'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1856d95e-9438-5179-99e1-63b79a8a7fdf'::uuid,
  '6d3bdbfa-68d1-598c-bbb3-72877cf3c983'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  true,
  'planning',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8cef8562-b301-5edf-864f-3a28c043822e'::uuid,
  '6d3bdbfa-68d1-598c-bbb3-72877cf3c983'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '0cd97540-575a-57c2-a037-9c730567b2e7'::uuid,
  '0cd97540-575a-57c2-a037-9c730567b2e7'::uuid,
  true,
  'analysis',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f34410ed-db27-564f-9428-a9da36d5af23'::uuid,
  '6d3bdbfa-68d1-598c-bbb3-72877cf3c983'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid,
  'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid,
  true,
  'writing',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3c3b1736-d069-5716-9ebf-14f6a0241b5d'::uuid,
  '6d3bdbfa-68d1-598c-bbb3-72877cf3c983'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '65a74fe8-c38f-5780-8ad2-bf331721a3d9'::uuid,
  '65a74fe8-c38f-5780-8ad2-bf331721a3d9'::uuid,
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
  '1b389326-391c-51ac-ae90-70101731ac01'::uuid,
  'Robust evaluation for clinical LLMs — cohort 4',
  'Robust evaluation for clinical LLMs is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around LLMs, evaluation, safety. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid,
  ARRAY['LLMs','evaluation','safety']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'hybrid',
  'long_term',
  11,
  true,
  'Toronto, ON',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a08c618b-b34c-5c54-be80-e71a0f1ad1c8'::uuid,
  '1b389326-391c-51ac-ae90-70101731ac01'::uuid,
  'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid,
  'owner',
  'active',
  'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6aa055bc-4a1a-5770-8294-d481572e62ab'::uuid,
  '1b389326-391c-51ac-ae90-70101731ac01'::uuid,
  '809c2fce-167e-593f-99c1-13a851571fb2'::uuid,
  'editor',
  'active',
  'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3c52bab6-74a0-53f8-bbfd-f6dbb0565fb7'::uuid,
  '1b389326-391c-51ac-ae90-70101731ac01'::uuid,
  '885eadf1-5032-5f2a-a6ff-cfeab6c5d89e'::uuid,
  'viewer',
  'active',
  'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '67693bd7-d693-55d1-a51b-f02c355be98d'::uuid,
  '1b389326-391c-51ac-ae90-70101731ac01'::uuid,
  'b5b80d38-e67f-5db0-8d01-be0b9a1bd224'::uuid,
  'viewer',
  'active',
  'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7ae2283e-ea74-5655-8fcf-277a0659dcd3'::uuid,
  '1b389326-391c-51ac-ae90-70101731ac01'::uuid,
  'd460af56-9bbd-5b2f-8e70-fddb8cf7d6c0'::uuid,
  'viewer',
  'active',
  'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3b74b436-fffb-5a45-90a5-a36ffdb53370'::uuid,
  '1b389326-391c-51ac-ae90-70101731ac01'::uuid,
  'Draft related work section',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid,
  'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fad80e6a-b9a5-5d9a-8ed0-11337f4d960c'::uuid,
  '1b389326-391c-51ac-ae90-70101731ac01'::uuid,
  'Clean and version dataset',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '809c2fce-167e-593f-99c1-13a851571fb2'::uuid,
  'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8f2c0f0e-1832-5a5c-a574-9cd2b4cf4776'::uuid,
  '1b389326-391c-51ac-ae90-70101731ac01'::uuid,
  'Run baseline model',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '885eadf1-5032-5f2a-a6ff-cfeab6c5d89e'::uuid,
  'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '43aa62cd-94a7-50a5-9cd7-c67a3c7b6a35'::uuid,
  '1b389326-391c-51ac-ae90-70101731ac01'::uuid,
  'Write IRB amendment',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'b5b80d38-e67f-5db0-8d01-be0b9a1bd224'::uuid,
  'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4e373fda-f158-5e94-b53e-9fe9cbb7f619'::uuid,
  '1b389326-391c-51ac-ae90-70101731ac01'::uuid,
  'Prepare figure panels',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'd460af56-9bbd-5b2f-8e70-fddb8cf7d6c0'::uuid,
  'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7677049f-6c53-51b1-8566-e9dc56e525ba'::uuid,
  '1b389326-391c-51ac-ae90-70101731ac01'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid,
  'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4df57bff-85a1-5e1b-b75c-bc9503cc6f87'::uuid,
  '1b389326-391c-51ac-ae90-70101731ac01'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '809c2fce-167e-593f-99c1-13a851571fb2'::uuid,
  'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f69fe984-13f8-573e-934a-af69b3865d18'::uuid,
  '1b389326-391c-51ac-ae90-70101731ac01'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '885eadf1-5032-5f2a-a6ff-cfeab6c5d89e'::uuid,
  'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '26130b8a-5328-5158-9dd6-36be65355dcf'::uuid,
  '1b389326-391c-51ac-ae90-70101731ac01'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid,
  'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid,
  true,
  'planning',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f3b9aca9-6fb1-5886-87ec-366cb01b40c5'::uuid,
  '1b389326-391c-51ac-ae90-70101731ac01'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '809c2fce-167e-593f-99c1-13a851571fb2'::uuid,
  '809c2fce-167e-593f-99c1-13a851571fb2'::uuid,
  true,
  'analysis',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd80dcc6f-e588-5872-9bb0-4a698b0a1c82'::uuid,
  '1b389326-391c-51ac-ae90-70101731ac01'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '885eadf1-5032-5f2a-a6ff-cfeab6c5d89e'::uuid,
  '885eadf1-5032-5f2a-a6ff-cfeab6c5d89e'::uuid,
  true,
  'writing',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'af8a61f1-32e9-556e-b351-985922800ca8'::uuid,
  '1b389326-391c-51ac-ae90-70101731ac01'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'b5b80d38-e67f-5db0-8d01-be0b9a1bd224'::uuid,
  'b5b80d38-e67f-5db0-8d01-be0b9a1bd224'::uuid,
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
  '0f5b21bc-b985-5b51-9e2d-02f75457be88'::uuid,
  'Photoredox catalysis for late-stage edits — cohort 4',
  'Photoredox catalysis for late-stage edits is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around catalysis, synthesis. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  ARRAY['catalysis','synthesis']::text[],
  'active',
  'Chemistry',
  ARRAY['Organic synthesis','Spectroscopy','Cheminformatics']::text[],
  'local',
  'short_term',
  12,
  true,
  'Zurich, CH',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b23e9b8b-16c3-5989-bc8e-746243625f7d'::uuid,
  '0f5b21bc-b985-5b51-9e2d-02f75457be88'::uuid,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  'owner',
  'active',
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4dcc233c-042e-58f8-ba75-ba15cadb5ec8'::uuid,
  '0f5b21bc-b985-5b51-9e2d-02f75457be88'::uuid,
  '9fb50165-a8eb-59fc-a02a-980426bca98e'::uuid,
  'editor',
  'active',
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '77935426-6c3f-5895-bae5-c40c5b53fe4c'::uuid,
  '0f5b21bc-b985-5b51-9e2d-02f75457be88'::uuid,
  '24d08bca-e89e-5133-9580-3c3af259e917'::uuid,
  'viewer',
  'active',
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '82671580-8667-5ec8-b2f5-9738a9388764'::uuid,
  '0f5b21bc-b985-5b51-9e2d-02f75457be88'::uuid,
  '3504c8cb-2805-54ab-9a65-613d52401f26'::uuid,
  'viewer',
  'active',
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5e202f96-2c28-5025-9c01-368183b07dec'::uuid,
  '0f5b21bc-b985-5b51-9e2d-02f75457be88'::uuid,
  'e5b13d72-cb9f-5c3d-9bcc-a7b8cd7499ba'::uuid,
  'viewer',
  'active',
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b69513db-1371-50d9-ba04-36fab49e0915'::uuid,
  '0f5b21bc-b985-5b51-9e2d-02f75457be88'::uuid,
  '7d4f49fb-43d1-502f-9920-10e2cb21136a'::uuid,
  'viewer',
  'active',
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'abfbbd73-de20-5f5a-b981-a5e3ff520e4f'::uuid,
  '0f5b21bc-b985-5b51-9e2d-02f75457be88'::uuid,
  'Draft related work section',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0abad064-2511-5fc6-9d08-462ccae25360'::uuid,
  '0f5b21bc-b985-5b51-9e2d-02f75457be88'::uuid,
  'Clean and version dataset',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '9fb50165-a8eb-59fc-a02a-980426bca98e'::uuid,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9c39aeb2-f416-5a20-adbd-fb25d34b5aeb'::uuid,
  '0f5b21bc-b985-5b51-9e2d-02f75457be88'::uuid,
  'Run baseline model',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '24d08bca-e89e-5133-9580-3c3af259e917'::uuid,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4b9eecc6-0ede-5d9a-97d7-0bc82f6bd75d'::uuid,
  '0f5b21bc-b985-5b51-9e2d-02f75457be88'::uuid,
  'Write IRB amendment',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '3504c8cb-2805-54ab-9a65-613d52401f26'::uuid,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4dfe094b-c274-53f7-931b-6fb237b753c1'::uuid,
  '0f5b21bc-b985-5b51-9e2d-02f75457be88'::uuid,
  'Prepare figure panels',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'e5b13d72-cb9f-5c3d-9bcc-a7b8cd7499ba'::uuid,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '80d19150-d0ea-5a04-8094-110b0e1de946'::uuid,
  '0f5b21bc-b985-5b51-9e2d-02f75457be88'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '7d4f49fb-43d1-502f-9920-10e2cb21136a'::uuid,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b6acc4af-9a11-55d3-98b1-e671123abb15'::uuid,
  '0f5b21bc-b985-5b51-9e2d-02f75457be88'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5d785614-b1ea-582b-825b-efd12765fd19'::uuid,
  '0f5b21bc-b985-5b51-9e2d-02f75457be88'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '9fb50165-a8eb-59fc-a02a-980426bca98e'::uuid,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd4ac515b-6ae4-5554-b7d5-be7447cd5265'::uuid,
  '0f5b21bc-b985-5b51-9e2d-02f75457be88'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  true,
  'planning',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2574b0f8-6afb-5191-afd0-f7080503b2ae'::uuid,
  '0f5b21bc-b985-5b51-9e2d-02f75457be88'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '9fb50165-a8eb-59fc-a02a-980426bca98e'::uuid,
  '9fb50165-a8eb-59fc-a02a-980426bca98e'::uuid,
  true,
  'analysis',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'be4e4a1f-decd-5a5a-88fb-e6fa2b83c43e'::uuid,
  '0f5b21bc-b985-5b51-9e2d-02f75457be88'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '24d08bca-e89e-5133-9580-3c3af259e917'::uuid,
  '24d08bca-e89e-5133-9580-3c3af259e917'::uuid,
  true,
  'writing',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '68a4871d-b997-52ec-83a7-330733aefb5b'::uuid,
  '0f5b21bc-b985-5b51-9e2d-02f75457be88'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '3504c8cb-2805-54ab-9a65-613d52401f26'::uuid,
  '3504c8cb-2805-54ab-9a65-613d52401f26'::uuid,
  true,
  'ops',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'STEM identity in first-gen undergraduates — cohort 4',
  'STEM identity in first-gen undergraduates is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around equity, mixed methods. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  ARRAY['equity','mixed methods']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'remote',
  'medium_term',
  13,
  true,
  'London, UK',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'bcf09894-e66a-5aad-9900-1fd20af41d5f'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  'owner',
  'active',
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd6c0ebc0-9623-5a4f-8406-9f0555ce9b1b'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'ea7a5038-ea24-5c53-b37f-6e7af7843a5f'::uuid,
  'editor',
  'active',
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd19f0e3e-9c82-5c49-9493-2225c7251aa1'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'd0295c77-a7ff-5caa-a86e-c288ce62df44'::uuid,
  'viewer',
  'active',
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '07ce8791-4515-5e13-8383-811221f1afca'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'c4ef2b83-74dd-5001-9c23-9219dc342540'::uuid,
  'viewer',
  'active',
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '39e4a505-cc06-5d3f-a65b-82ce6d28c20c'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  '6d5bb006-e4b9-59a3-a281-843bcdf8d1aa'::uuid,
  'viewer',
  'active',
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '77c1fc35-2ecd-5fdd-9d80-f6bdcabf4b48'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  '812f08f9-a001-5282-a6cd-650da7bcc1b7'::uuid,
  'viewer',
  'active',
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '03df85db-91c1-5ba3-a8ea-fe46bf2b21e9'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'a32ba5d6-4384-5565-bc82-72ceeafa3e5d'::uuid,
  'viewer',
  'active',
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '20aaba9e-af93-5d5e-bd7d-eb4e89452fe1'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'Draft related work section',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7a8179ba-43b5-528b-8895-64987c4fb7a3'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'Clean and version dataset',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'ea7a5038-ea24-5c53-b37f-6e7af7843a5f'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a96d37c6-8cb4-5580-a6e3-388ea28a0ea3'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'Run baseline model',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'd0295c77-a7ff-5caa-a86e-c288ce62df44'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '32339fda-0671-5ed8-81a6-f0169e3fa729'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'Write IRB amendment',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'c4ef2b83-74dd-5001-9c23-9219dc342540'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '911673d1-eb51-515d-9343-4e87605b5c82'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'Prepare figure panels',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '6d5bb006-e4b9-59a3-a281-843bcdf8d1aa'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0a14a03e-94d8-5407-bc63-f47c96595fd4'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '812f08f9-a001-5282-a6cd-650da7bcc1b7'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9f3d590d-b0ef-589e-8467-7ec968fea4ae'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'a32ba5d6-4384-5565-bc82-72ceeafa3e5d'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '09481317-baf1-50f5-b134-bff98c7c03fd'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a59ddd0d-8a8a-5f18-b101-59e7b608dbfe'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  true,
  'planning',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b100618a-91c5-5c3a-8faa-7f9e47c1b8d7'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'ea7a5038-ea24-5c53-b37f-6e7af7843a5f'::uuid,
  'ea7a5038-ea24-5c53-b37f-6e7af7843a5f'::uuid,
  true,
  'analysis',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6ce03c0c-bfd9-54c9-a38a-a57296689278'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'd0295c77-a7ff-5caa-a86e-c288ce62df44'::uuid,
  'd0295c77-a7ff-5caa-a86e-c288ce62df44'::uuid,
  true,
  'writing',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0433f31e-ebec-5093-932d-ff7772388c58'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'c4ef2b83-74dd-5001-9c23-9219dc342540'::uuid,
  'c4ef2b83-74dd-5001-9c23-9219dc342540'::uuid,
  true,
  'ops',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  'Dexterous packing under uncertainty — cohort 4',
  'Dexterous packing under uncertainty is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around manipulation, sim2real. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  ARRAY['manipulation','sim2real']::text[],
  'planning',
  'Robotics',
  ARRAY['ROS','Control systems','C++']::text[],
  'hybrid',
  'long_term',
  14,
  true,
  'Seattle, WA',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'fd2a048a-50e0-5b79-b1d4-b8e84d65244f'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  'owner',
  'active',
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c60fc86c-ec36-546d-886f-cd37c9c3252e'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid,
  'editor',
  'active',
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '50987600-a32e-5b0a-96f9-ce22b2cfd086'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  '52776ca6-2ffa-5c16-991d-f1758cd740bb'::uuid,
  'viewer',
  'active',
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a364d39b-75ca-5ecc-a570-6f720ba330c4'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  '5c6a2b16-8772-56c9-9570-5254356f5c19'::uuid,
  'viewer',
  'active',
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'cfd4e018-511f-5349-b9e7-9e890aa5fd49'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  '05fcff78-0cbc-5304-80d1-89c5fb51a5ce'::uuid,
  'viewer',
  'active',
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f09f4817-c14a-5f94-8b24-74b22b5e5dcf'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  '74597a4b-13a0-5293-b367-cd56ff9bccd1'::uuid,
  'viewer',
  'active',
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ecd8c6cd-4773-512b-ad20-e93c3a38b537'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  '2df7870b-f77b-5301-b54e-6af2f7ff0758'::uuid,
  'viewer',
  'active',
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6f0a3544-27db-5431-86d6-aa48ef12c3c2'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  '7c6ad270-1e50-52cd-a3b9-c96edf79d00e'::uuid,
  'viewer',
  'active',
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'dc606f1e-e289-515e-925c-6fd1bb2ea495'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  'Draft related work section',
  'Tracked work item for Dexterous packing under uncertainty — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6e889540-e152-55cf-a818-504e4b21e964'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  'Clean and version dataset',
  'Tracked work item for Dexterous packing under uncertainty — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'eb44e8a0-77fe-59ed-bd7d-be6e54d19263'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  'Run baseline model',
  'Tracked work item for Dexterous packing under uncertainty — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '52776ca6-2ffa-5c16-991d-f1758cd740bb'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '86991368-e043-5f36-8060-03d41b8d0b40'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  'Write IRB amendment',
  'Tracked work item for Dexterous packing under uncertainty — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '5c6a2b16-8772-56c9-9570-5254356f5c19'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a0a118a2-f230-59d5-b7e0-0c3fc517b989'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  'Prepare figure panels',
  'Tracked work item for Dexterous packing under uncertainty — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '05fcff78-0cbc-5304-80d1-89c5fb51a5ce'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c46ee902-ae23-5d2d-8e77-a365b6e53e93'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Dexterous packing under uncertainty — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '74597a4b-13a0-5293-b367-cd56ff9bccd1'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '43bf6072-e687-5448-aa68-11d1f077282e'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '2df7870b-f77b-5301-b54e-6af2f7ff0758'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '894d7a16-c001-5ed8-bf71-f180daedb002'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '7c6ad270-1e50-52cd-a3b9-c96edf79d00e'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '78a986bc-9284-5cff-aa23-393cb64dedbe'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  true,
  'planning',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a547e624-8f50-53f5-aa4c-fbee1337207a'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid,
  '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid,
  true,
  'analysis',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3b5bab74-f9ce-5f1f-8441-86a9a30539c6'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '52776ca6-2ffa-5c16-991d-f1758cd740bb'::uuid,
  '52776ca6-2ffa-5c16-991d-f1758cd740bb'::uuid,
  true,
  'writing',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8f8d756a-d40d-5ab2-9473-7825efd1197d'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '5c6a2b16-8772-56c9-9570-5254356f5c19'::uuid,
  '5c6a2b16-8772-56c9-9570-5254356f5c19'::uuid,
  true,
  'ops',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'Transit spectroscopy pipeline for JWST — cohort 4',
  'Transit spectroscopy pipeline for JWST is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around exoplanets, pipelines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  ARRAY['exoplanets','pipelines']::text[],
  'active',
  'Astrophysics',
  ARRAY['Data pipelines','Python','Bayesian inference']::text[],
  'local',
  'long_term',
  15,
  true,
  'Pittsburgh, PA',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'aa22e993-8699-5058-a3b3-dd9f85b15bb9'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  'owner',
  'active',
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6e16a8e5-e70e-562f-a342-f06964349e70'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  '4f0d7d5d-dc90-54b0-925b-9d1035573f83'::uuid,
  'editor',
  'active',
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '848f40e3-3e41-5a23-85a2-f1e8d16d41ae'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid,
  'viewer',
  'active',
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd779d834-2044-561e-bfce-85d82cc67fd5'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'edf936e0-ccbc-507d-943e-ce31b4b8b532'::uuid,
  'viewer',
  'active',
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8cf54a26-4023-58f4-9939-b27b6c504537'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  '10f9e18b-4dea-5949-a353-69f4282d6bf7'::uuid,
  'viewer',
  'active',
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c0c5a2a8-6ff3-51da-b2d8-b58055a61670'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  '12fb840a-85f9-51d1-a098-9f48ae2a57b8'::uuid,
  'viewer',
  'active',
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2cb3974c-40b2-5a26-a780-244573dfab15'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'd063655e-9e04-5406-8e3a-ac9c25650b1c'::uuid,
  'viewer',
  'active',
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5e789e3b-898d-568a-83bf-8ab378cf1e1a'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'a8c0d033-8cc7-56d4-ad9a-aa29a1d84869'::uuid,
  'viewer',
  'active',
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'eba28ab6-ece0-5e26-85bd-8b53fcc440f4'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  '60cca69c-84bc-5bfc-b458-9eca431f832f'::uuid,
  'viewer',
  'active',
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7fbba85b-1e2f-57a0-9cc0-990b04f19bd9'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'Draft related work section',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '733d54f0-3c45-5738-ab95-423ab31ff69b'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'Clean and version dataset',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '4f0d7d5d-dc90-54b0-925b-9d1035573f83'::uuid,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '30f307a0-7e29-580f-be2c-917560f0fa6f'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'Run baseline model',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2e53a5a3-a9ce-5601-a14c-2c3a4d3f677b'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'Write IRB amendment',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'edf936e0-ccbc-507d-943e-ce31b4b8b532'::uuid,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6f879b88-0cec-5ff1-a9ce-7ef69c6ba7f3'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'Prepare figure panels',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '10f9e18b-4dea-5949-a353-69f4282d6bf7'::uuid,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '14e91801-1853-57b6-9da1-fb6d737b55f1'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '12fb840a-85f9-51d1-a098-9f48ae2a57b8'::uuid,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '11ab7921-c4d2-5abc-9e70-6f80b8778208'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'd063655e-9e04-5406-8e3a-ac9c25650b1c'::uuid,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '90b42800-50c7-593f-ba11-d14b549b8623'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'a8c0d033-8cc7-56d4-ad9a-aa29a1d84869'::uuid,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4beac4cc-7ca0-5967-9fc6-a4c47335e1ea'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  true,
  'planning',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ef4957a6-1d71-59af-b6b5-13f35a2f0901'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '4f0d7d5d-dc90-54b0-925b-9d1035573f83'::uuid,
  '4f0d7d5d-dc90-54b0-925b-9d1035573f83'::uuid,
  true,
  'analysis',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0101258b-5c93-5cee-a092-a1879321629f'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid,
  '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid,
  true,
  'writing',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '9384bc60-e624-5582-a6bc-e2fb8a93bae6'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'edf936e0-ccbc-507d-943e-ce31b4b8b532'::uuid,
  'edf936e0-ccbc-507d-943e-ce31b4b8b532'::uuid,
  true,
  'ops',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  'Vascularized cardiac organoids — cohort 4',
  'Vascularized cardiac organoids is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around organoids, tissue eng. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  ARRAY['organoids','tissue eng']::text[],
  'active',
  'Bioengineering',
  ARRAY['Tissue culture','CAD','Microfluidics']::text[],
  'remote',
  'short_term',
  4,
  true,
  'Atlanta, GA',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e92fca73-abc4-5201-bd30-cb46c9e9e4e6'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  'owner',
  'active',
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1df5075d-4cc6-5040-9b30-f75f2763a4a5'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  'd4b14f46-3fa3-5e98-9836-f65ed0a3f18b'::uuid,
  'editor',
  'active',
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2cc138f5-b66c-50be-b9d7-6442c5321351'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  '69dc47c5-32db-5e03-92bf-7ca4422944f3'::uuid,
  'viewer',
  'active',
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '035f412d-2ee3-57b3-adf5-77fd9bb02c68'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  '374e622b-e91f-54be-9ba0-cf4aa0906fa8'::uuid,
  'viewer',
  'active',
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'cff989b8-22ea-5be4-8b68-fdd709e8c58c'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  'Draft related work section',
  'Tracked work item for Vascularized cardiac organoids — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '42c566b5-d033-523b-be8e-534f34a3c2e4'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  'Clean and version dataset',
  'Tracked work item for Vascularized cardiac organoids — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'd4b14f46-3fa3-5e98-9836-f65ed0a3f18b'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e3bc7f90-9dbb-5474-9d01-0f49a7f8ef96'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  'Run baseline model',
  'Tracked work item for Vascularized cardiac organoids — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '69dc47c5-32db-5e03-92bf-7ca4422944f3'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9ebb47e4-4cd3-5787-b251-605781e2cc10'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  'Write IRB amendment',
  'Tracked work item for Vascularized cardiac organoids — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '374e622b-e91f-54be-9ba0-cf4aa0906fa8'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9d190289-acf8-5917-9ec2-0e423d5e136b'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  'Prepare figure panels',
  'Tracked work item for Vascularized cardiac organoids — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '75ea5a7d-726a-5185-9213-6a0230d9eea9'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Vascularized cardiac organoids — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'd4b14f46-3fa3-5e98-9836-f65ed0a3f18b'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '11f008e8-d7e4-561e-88de-33735f823f80'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Vascularized cardiac organoids — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '69dc47c5-32db-5e03-92bf-7ca4422944f3'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8a732a6c-f843-5b97-9a1f-179caf7530f9'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Vascularized cardiac organoids — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '374e622b-e91f-54be-9ba0-cf4aa0906fa8'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6fbff551-5f63-5636-9dcb-f3ec5f91efcd'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  true,
  'planning',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e4d46383-f3e3-542c-b0b8-aca79e71c415'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'd4b14f46-3fa3-5e98-9836-f65ed0a3f18b'::uuid,
  'd4b14f46-3fa3-5e98-9836-f65ed0a3f18b'::uuid,
  true,
  'analysis',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'fcfac40c-d507-565f-9f57-4651a39616cd'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '69dc47c5-32db-5e03-92bf-7ca4422944f3'::uuid,
  '69dc47c5-32db-5e03-92bf-7ca4422944f3'::uuid,
  true,
  'writing',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a3d32d0a-e130-56d2-8f2f-c90d277e1b0d'::uuid,
  '949c5f36-0c68-56af-a181-dd560e485e0b'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '374e622b-e91f-54be-9ba0-cf4aa0906fa8'::uuid,
  '374e622b-e91f-54be-9ba0-cf4aa0906fa8'::uuid,
  true,
  'ops',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  'Labor market effects of credentialing — cohort 4',
  'Labor market effects of credentialing is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around causal, policy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  ARRAY['causal','policy']::text[],
  'active',
  'Economics',
  ARRAY['Econometrics','Stata','Causal ML']::text[],
  'hybrid',
  'medium_term',
  5,
  true,
  'Ann Arbor, MI',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2734a69b-35cb-51a7-a086-64cd5866a339'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  'owner',
  'active',
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b972e6c0-bf91-5fab-a369-d217c8e6507a'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid,
  'editor',
  'active',
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '51c886de-3266-528f-bc8d-f0dc2e68cb55'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  '3d5e4b71-5d33-5e87-b691-528b0554141d'::uuid,
  'viewer',
  'active',
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '457a333e-243b-592f-9281-8ce5c6404ea5'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  '83ff2cf2-4e61-55da-bdb2-88feed58633c'::uuid,
  'viewer',
  'active',
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f8440681-7c19-5b55-92d2-bf16dd7860d1'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  '2c9ba917-c830-5bfb-b0bc-663f09ef379b'::uuid,
  'viewer',
  'active',
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fc05402f-b51d-56a9-a9ab-230614bf7f0e'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  'Draft related work section',
  'Tracked work item for Labor market effects of credentialing — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd24ed907-c140-5f01-9759-b141d8e647ba'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  'Clean and version dataset',
  'Tracked work item for Labor market effects of credentialing — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '433ad69b-4973-5db5-bf62-2d0b8e154f7b'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  'Run baseline model',
  'Tracked work item for Labor market effects of credentialing — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '3d5e4b71-5d33-5e87-b691-528b0554141d'::uuid,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1dd5cb85-0150-51da-a391-619047de4d9b'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  'Write IRB amendment',
  'Tracked work item for Labor market effects of credentialing — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '83ff2cf2-4e61-55da-bdb2-88feed58633c'::uuid,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6eaa8bc2-50c8-5d86-855a-8b25f7345a3a'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  'Prepare figure panels',
  'Tracked work item for Labor market effects of credentialing — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '2c9ba917-c830-5bfb-b0bc-663f09ef379b'::uuid,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0d135ad1-e1c2-5ec9-af4f-452bc14d500c'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Labor market effects of credentialing — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4fb8d56d-0dfd-5946-b8ba-9b438f931a1f'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Labor market effects of credentialing — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '25c26b92-1200-5b35-8242-52b93ceb750a'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Labor market effects of credentialing — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '3d5e4b71-5d33-5e87-b691-528b0554141d'::uuid,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ff62f978-85ef-580b-9999-42f1570af78c'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  true,
  'planning',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8ecc3744-7314-5d43-b52b-85b9c79afa8c'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid,
  '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid,
  true,
  'analysis',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c408b6e4-2220-5d6f-bc58-3ce205897097'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '3d5e4b71-5d33-5e87-b691-528b0554141d'::uuid,
  '3d5e4b71-5d33-5e87-b691-528b0554141d'::uuid,
  true,
  'writing',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'def4ce44-2b5e-589f-b718-21c64fc5ace9'::uuid,
  'cfb087a4-edcb-5581-bba4-4367b8f02df0'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '83ff2cf2-4e61-55da-bdb2-88feed58633c'::uuid,
  '83ff2cf2-4e61-55da-bdb2-88feed58633c'::uuid,
  true,
  'ops',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  'Low-cost water contaminant sensing — cohort 4',
  'Low-cost water contaminant sensing is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around sensors, water. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  ARRAY['sensors','water']::text[],
  'active',
  'Environmental Engineering',
  ARRAY['Hydrology','Sensor networks','Python']::text[],
  'local',
  'long_term',
  6,
  true,
  'Los Angeles, CA',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6a0cf601-f4f8-56ed-9158-88609f0303ff'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  'owner',
  'active',
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1e10e76b-23cd-5852-8f48-37fe66adc84f'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  '3d805200-315a-549f-9527-ae5519886cbb'::uuid,
  'editor',
  'active',
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '693e5c8b-0be0-544c-8e72-87f169bfe345'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  '8c33b28f-c7cc-5e43-9231-990bf3dca6f9'::uuid,
  'viewer',
  'active',
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd5edf8ac-8906-5b5e-b015-9105c2c36cca'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  '5dd56626-dcc4-5dc3-ae51-e75530f4ba40'::uuid,
  'viewer',
  'active',
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '41dd2cda-7e7f-5fa3-9699-bd1eac58da0e'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  'c58b8537-3066-5e38-b2ee-04688319f6de'::uuid,
  'viewer',
  'active',
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2f05014b-eac3-5bc3-95a8-3ecb8cf93949'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  '88290c7c-9070-5aac-b75d-6ff845ba41c2'::uuid,
  'viewer',
  'active',
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2e66d970-a7db-59a5-bd57-ca70d7580e7b'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  'Draft related work section',
  'Tracked work item for Low-cost water contaminant sensing — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'af5f251f-6db8-50bc-9bb7-d41221483dac'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  'Clean and version dataset',
  'Tracked work item for Low-cost water contaminant sensing — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '3d805200-315a-549f-9527-ae5519886cbb'::uuid,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a343dff0-3bda-51e7-946a-7acd3747be90'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  'Run baseline model',
  'Tracked work item for Low-cost water contaminant sensing — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '8c33b28f-c7cc-5e43-9231-990bf3dca6f9'::uuid,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fbc6d699-3840-5d50-b43d-95e78a7330cd'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  'Write IRB amendment',
  'Tracked work item for Low-cost water contaminant sensing — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '5dd56626-dcc4-5dc3-ae51-e75530f4ba40'::uuid,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9c287198-c96e-5e50-b23b-bc71cb9e8f4e'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  'Prepare figure panels',
  'Tracked work item for Low-cost water contaminant sensing — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'c58b8537-3066-5e38-b2ee-04688319f6de'::uuid,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '81231cb4-65ff-5033-a195-a5e813eacbe1'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Low-cost water contaminant sensing — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '88290c7c-9070-5aac-b75d-6ff845ba41c2'::uuid,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'cc8b06e9-db37-5a41-a659-900ca204a4b7'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd9ac81f6-8bfa-5afc-ab1c-498bd67cf801'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '3d805200-315a-549f-9527-ae5519886cbb'::uuid,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b0f68dbb-e4a2-577f-b238-bfa7480f230a'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  true,
  'planning',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '43e52f69-529f-592b-b298-bd7a12424554'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '3d805200-315a-549f-9527-ae5519886cbb'::uuid,
  '3d805200-315a-549f-9527-ae5519886cbb'::uuid,
  true,
  'analysis',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8a1316c9-7c1b-5e05-8f14-7f772bc60dc8'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '8c33b28f-c7cc-5e43-9231-990bf3dca6f9'::uuid,
  '8c33b28f-c7cc-5e43-9231-990bf3dca6f9'::uuid,
  true,
  'writing',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '88e4d116-fa9b-5073-a07a-fafb31bdb118'::uuid,
  '4313ea17-488c-5903-b91f-036901569ac5'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '5dd56626-dcc4-5dc3-ae51-e75530f4ba40'::uuid,
  '5dd56626-dcc4-5dc3-ae51-e75530f4ba40'::uuid,
  true,
  'ops',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'Federated learning for rare disease cohorts — cohort 4',
  'Federated learning for rare disease cohorts is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around privacy, ML. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  ARRAY['privacy','ML']::text[],
  'planning',
  'Computational Biology',
  ARRAY['Python','R','Genomics']::text[],
  'remote',
  'long_term',
  7,
  true,
  'New York, NY',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6c09f8bb-d8ff-5e11-9747-919e45991955'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  'owner',
  'active',
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c3559dff-07e2-5b5f-bf73-fee030a72f25'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid,
  'editor',
  'active',
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '49ba5859-cf92-525b-b5d0-79a34bec6553'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  '6499e30b-6a75-57c2-9f84-b06b398ee38f'::uuid,
  'viewer',
  'active',
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5c4967e1-04ff-5afd-96c9-a7cfb6bf7b9a'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'dc812569-44a4-5798-a90f-fb9ec9b15fb0'::uuid,
  'viewer',
  'active',
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'cb54d29d-3223-5ff2-b307-85df18e211fb'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'e4161d15-a489-5141-bd1c-b34b92ebab30'::uuid,
  'viewer',
  'active',
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '97ee57ad-f6a6-556a-87eb-2788a40ccacf'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  '3f68d29d-2cdf-5260-9839-0ba7504ac3f1'::uuid,
  'viewer',
  'active',
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b068b95d-ed4a-5702-a559-405986a98980'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  '7fa979d0-8550-56ee-91d7-4eaf982710d7'::uuid,
  'viewer',
  'active',
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7de3a05b-2381-5b31-986e-dcbe769dfb42'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'Draft related work section',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c70bb690-72ae-55b1-b1bb-d45c2eaf2f46'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'Clean and version dataset',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '82a3bcda-e0ec-5df3-bf5b-53c81037967c'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'Run baseline model',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '6499e30b-6a75-57c2-9f84-b06b398ee38f'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4b48ea7d-486d-5119-8b01-008a30d820c0'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'Write IRB amendment',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'dc812569-44a4-5798-a90f-fb9ec9b15fb0'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '391c5fde-9fe2-57fe-9a63-1e86e75bca8e'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'Prepare figure panels',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'e4161d15-a489-5141-bd1c-b34b92ebab30'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'db97b846-b3c7-54ff-bbfc-cd43f0a6dccf'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '3f68d29d-2cdf-5260-9839-0ba7504ac3f1'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '18a0a3cf-adc8-5f64-8e57-a1e6de0eebc6'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '7fa979d0-8550-56ee-91d7-4eaf982710d7'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9fcea6ef-8890-51cc-b01c-dc564e63f571'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '65ea7ec6-0074-54de-8398-6d6cba3364d6'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  true,
  'planning',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6b4a6bb7-c0ee-5f5a-b6e1-d9ed1d44691d'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid,
  '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid,
  true,
  'analysis',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '83153cbe-9777-55c3-8b92-addd8a3d1e13'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '6499e30b-6a75-57c2-9f84-b06b398ee38f'::uuid,
  '6499e30b-6a75-57c2-9f84-b06b398ee38f'::uuid,
  true,
  'writing',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a5a3d1e3-9859-547f-9627-a23b8f42d6b0'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'dc812569-44a4-5798-a90f-fb9ec9b15fb0'::uuid,
  'dc812569-44a4-5798-a90f-fb9ec9b15fb0'::uuid,
  true,
  'ops',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'Wildfire smoke exposure forecasting — cohort 4',
  'Wildfire smoke exposure forecasting is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around air quality, forecasting. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  ARRAY['air quality','forecasting']::text[],
  'active',
  'Climate Science',
  ARRAY['Remote sensing','Python','GIS']::text[],
  'hybrid',
  'short_term',
  8,
  true,
  'Chicago, IL',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a2ea784c-5b69-5b1f-9831-4f5c9df2e52f'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  'owner',
  'active',
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '018fd5b2-3740-5701-b7f8-f14704d48ae6'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'aa0f4626-ae11-54e1-a711-4c9fb811ad54'::uuid,
  'editor',
  'active',
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4d271a41-9c8d-5f61-9c21-68b3ebe9a57c'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid,
  'viewer',
  'active',
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f1e133ff-59b8-56f8-8c0e-60bd8513f7a1'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  '4913360a-0394-5a55-b1d6-85d797e7ae73'::uuid,
  'viewer',
  'active',
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '11abd49a-daf5-529b-83c5-dd589cd1fd96'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  '3304cdb0-f9e3-5358-9673-f15e11dc4e17'::uuid,
  'viewer',
  'active',
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '335e0564-808d-5739-8a3e-e55528b4c0c9'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'cc231435-d9ae-5d15-affd-9d705a76b1a1'::uuid,
  'viewer',
  'active',
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '82be7b7d-5b11-5e0b-b2d2-296f3d10ced5'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  '84128e04-1e76-5553-aee4-1a7c93db7343'::uuid,
  'viewer',
  'active',
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4648e10d-7663-561a-9048-3ccb5a76f3c2'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'b7a397ee-42b4-54dd-9008-e559a0b46399'::uuid,
  'viewer',
  'active',
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2c7b813c-02dd-5d0b-b922-67967975fc24'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'Draft related work section',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6bcedd66-5c06-5948-82b3-8befe2f8efb5'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'Clean and version dataset',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'aa0f4626-ae11-54e1-a711-4c9fb811ad54'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a3e21464-3f53-5d3f-9d70-b0b4fc5b3933'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'Run baseline model',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b541fb03-e513-5794-8b30-d6965f2332f3'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'Write IRB amendment',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '4913360a-0394-5a55-b1d6-85d797e7ae73'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8e2a1b7d-27d4-5160-a4a5-667d744fa50e'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'Prepare figure panels',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '3304cdb0-f9e3-5358-9673-f15e11dc4e17'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e07fe576-78af-5d62-8e6e-6c5c6caf496b'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'cc231435-d9ae-5d15-affd-9d705a76b1a1'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '94a458b9-5480-55d4-b129-e5e4130f0523'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '84128e04-1e76-5553-aee4-1a7c93db7343'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3fb9a4a7-0bab-5063-83ec-14b987cbf0c3'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'b7a397ee-42b4-54dd-9008-e559a0b46399'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e33b4dda-2f19-5a54-b894-bd86789da6ed'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  true,
  'planning',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0ebdabbc-d85a-5530-bc93-ca2ef3cfe628'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'aa0f4626-ae11-54e1-a711-4c9fb811ad54'::uuid,
  'aa0f4626-ae11-54e1-a711-4c9fb811ad54'::uuid,
  true,
  'analysis',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '30ceb269-5a57-5898-b639-a0bcaa95e07d'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid,
  '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid,
  true,
  'writing',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a2848e12-6d96-5ba3-8be9-72b5129d9a69'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '4913360a-0394-5a55-b1d6-85d797e7ae73'::uuid,
  '4913360a-0394-5a55-b1d6-85d797e7ae73'::uuid,
  true,
  'ops',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  'Solid-state battery interface imaging — cohort 4',
  'Solid-state battery interface imaging is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around interfaces, microscopy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  ARRAY['interfaces','microscopy']::text[],
  'active',
  'Materials Science',
  ARRAY['DFT','Lab automation','Characterization']::text[],
  'local',
  'medium_term',
  9,
  true,
  'Baltimore, MD',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'adb761be-ba47-5074-af50-bcf5d8b61bf1'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  'owner',
  'active',
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8ddc52dd-bb6a-5f76-b71d-5833e6bc02f2'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  '9b4dc10b-7d36-5636-ae3b-99ce160b7bed'::uuid,
  'editor',
  'active',
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '69d6b8ac-117d-526f-8a36-294d340b9b46'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  'e6f31c55-2acb-59f4-b10e-e3657979db8f'::uuid,
  'viewer',
  'active',
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f4a3baf2-8985-5aea-a029-5dd0522f854c'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid,
  'viewer',
  'active',
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1039bba2-43d4-5b91-89c8-96eef401c010'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  '37bf800c-4c16-538e-9bf2-8f3f5c8d7d38'::uuid,
  'viewer',
  'active',
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '022f1ec4-2515-5f92-82b4-f1426ea4f866'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  '01d4c20f-728c-5f96-8116-bbb132da4fca'::uuid,
  'viewer',
  'active',
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b21bfcd2-dc37-5996-acaa-c16c01c31638'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  'f5c6f747-5297-5e24-87be-fd7df457b835'::uuid,
  'viewer',
  'active',
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'dffe6f51-0278-596d-880f-84dd6cc5e586'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  '72563df9-2262-5969-9688-d5cf69877f50'::uuid,
  'viewer',
  'active',
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6b12b5d3-3b62-5341-9c87-2b527a1cc4d2'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid,
  'viewer',
  'active',
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c17515d8-09fa-5515-b1e5-d189d981f70a'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  'Draft related work section',
  'Tracked work item for Solid-state battery interface imaging — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '31a138ce-3a1f-588f-9340-a03183f04196'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  'Clean and version dataset',
  'Tracked work item for Solid-state battery interface imaging — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '9b4dc10b-7d36-5636-ae3b-99ce160b7bed'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '80e94d98-54be-59d8-85cc-a529316620c4'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  'Run baseline model',
  'Tracked work item for Solid-state battery interface imaging — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'e6f31c55-2acb-59f4-b10e-e3657979db8f'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4a473f0a-d9d1-5652-a67b-e35ccff3a6d0'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  'Write IRB amendment',
  'Tracked work item for Solid-state battery interface imaging — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6074c04c-8ba1-59f4-856d-aebebee23cd0'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  'Prepare figure panels',
  'Tracked work item for Solid-state battery interface imaging — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '37bf800c-4c16-538e-9bf2-8f3f5c8d7d38'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '89257402-bd8c-5d1e-9d67-ca90c525e48e'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Solid-state battery interface imaging — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '01d4c20f-728c-5f96-8116-bbb132da4fca'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e9786dfb-fa5c-5101-b6d5-01b20f360cc5'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Solid-state battery interface imaging — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'f5c6f747-5297-5e24-87be-fd7df457b835'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4b36690e-1a5d-5650-ba2d-ab5ef3335180'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Solid-state battery interface imaging — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '72563df9-2262-5969-9688-d5cf69877f50'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'dbaf49db-6bd3-57e4-9b7d-e0fd2f58e39a'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  true,
  'planning',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '7accba9d-ed69-51ed-b339-f28d6e8122b6'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '9b4dc10b-7d36-5636-ae3b-99ce160b7bed'::uuid,
  '9b4dc10b-7d36-5636-ae3b-99ce160b7bed'::uuid,
  true,
  'analysis',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ad3b3242-0a03-513c-9224-babaa132af90'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'e6f31c55-2acb-59f4-b10e-e3657979db8f'::uuid,
  'e6f31c55-2acb-59f4-b10e-e3657979db8f'::uuid,
  true,
  'writing',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3be9b379-a2b7-5633-8e42-c0cf19028020'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid,
  '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid,
  true,
  'ops',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'Classroom AI tutor field study — cohort 4',
  'Classroom AI tutor field study is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around edtech, RCT. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  ARRAY['edtech','RCT']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'remote',
  'long_term',
  10,
  true,
  'New Haven, CT',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0278678c-d862-58e6-8148-f5f15c5d4899'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  'owner',
  'active',
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '448d7450-8345-5489-a2da-82b3be918a29'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'b11a21f9-aaa6-5e4a-b799-262e6d513bf1'::uuid,
  'editor',
  'active',
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd2b73d4c-b1df-5510-9da5-96c5693fe658'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  '4195c436-ecd0-5c32-b18c-8fac2b240d47'::uuid,
  'viewer',
  'active',
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd36d5ff6-af0d-5397-bd27-e357b25de203'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'b08af7f3-44ca-5e8d-b812-59bb85c0e059'::uuid,
  'viewer',
  'active',
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bf37537a-b264-51ee-80ee-a8445132c7ec'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'Draft related work section',
  'Tracked work item for Classroom AI tutor field study — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f6024cfd-43b8-5757-933e-b718a519dfce'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'Clean and version dataset',
  'Tracked work item for Classroom AI tutor field study — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'b11a21f9-aaa6-5e4a-b799-262e6d513bf1'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '31e462ef-8d10-5f3b-aa01-71e6f72138c2'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'Run baseline model',
  'Tracked work item for Classroom AI tutor field study — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '4195c436-ecd0-5c32-b18c-8fac2b240d47'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '41a5a235-b856-5f1f-b3df-2fabc9b39fd7'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'Write IRB amendment',
  'Tracked work item for Classroom AI tutor field study — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'b08af7f3-44ca-5e8d-b812-59bb85c0e059'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4c0e5845-16ac-52e3-a68a-286608dfef62'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'Prepare figure panels',
  'Tracked work item for Classroom AI tutor field study — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd902cf84-004a-5724-9c25-e4fc6c2ba064'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Classroom AI tutor field study — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'b11a21f9-aaa6-5e4a-b799-262e6d513bf1'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4491c639-ae18-56af-80d9-c0abc6cdec46'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Classroom AI tutor field study — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '4195c436-ecd0-5c32-b18c-8fac2b240d47'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '64e30cc8-2ff5-5f43-ac32-d5aa930d25d3'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Classroom AI tutor field study — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'b08af7f3-44ca-5e8d-b812-59bb85c0e059'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a37ea7a4-827c-5811-855d-d5864c69c1c6'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  true,
  'planning',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd6d31f8e-3020-549d-b33d-721e76b1fdcb'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'b11a21f9-aaa6-5e4a-b799-262e6d513bf1'::uuid,
  'b11a21f9-aaa6-5e4a-b799-262e6d513bf1'::uuid,
  true,
  'analysis',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f8224249-3333-504b-874f-8b40285c7727'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '4195c436-ecd0-5c32-b18c-8fac2b240d47'::uuid,
  '4195c436-ecd0-5c32-b18c-8fac2b240d47'::uuid,
  true,
  'writing',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd7716a91-325e-5201-b4fa-f4989724a59b'::uuid,
  '56161549-8920-5681-83be-28893ffd4744'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'b08af7f3-44ca-5e8d-b812-59bb85c0e059'::uuid,
  'b08af7f3-44ca-5e8d-b812-59bb85c0e059'::uuid,
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
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'Privacy-preserving wearable analytics — cohort 4',
  'Privacy-preserving wearable analytics is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around wearables, privacy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  ARRAY['wearables','privacy']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'hybrid',
  'long_term',
  11,
  true,
  'Princeton, NJ',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c4ff7502-4f5e-5fd4-9309-bb532fbf4013'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  'owner',
  'active',
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b4cf7baf-32df-5190-852c-39577d365f34'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'a0d489bc-17d8-56b1-a52a-67fedb5755c2'::uuid,
  'editor',
  'active',
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ad015257-0642-52b6-b7e2-98adaaaa4d76'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid,
  'viewer',
  'active',
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '574fdcc1-1f86-50e0-aa65-0551da4ebffe'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'f456b7ce-d7b5-55b2-985b-08089f991121'::uuid,
  'viewer',
  'active',
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'dc0aa14d-b11a-523f-afc8-7b30f0933f3a'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'dc95368b-9c57-5ec2-b201-4299e6d34bfd'::uuid,
  'viewer',
  'active',
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '97fa498f-900c-5065-880a-2274452472dc'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'Draft related work section',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '87eb2cc8-2285-5090-8ea8-aab126e2e341'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'Clean and version dataset',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'a0d489bc-17d8-56b1-a52a-67fedb5755c2'::uuid,
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9069edba-eb33-5f5f-9032-2e03a288a74c'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'Run baseline model',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid,
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4742a2a0-6ceb-53df-9d7c-59250073b86e'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'Write IRB amendment',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'f456b7ce-d7b5-55b2-985b-08089f991121'::uuid,
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b4605f53-4594-5db3-ab59-c5730462a41e'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'Prepare figure panels',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'dc95368b-9c57-5ec2-b201-4299e6d34bfd'::uuid,
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '55f38640-4185-575e-9ddf-305559218673'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b7973dae-8af5-572f-99b5-599f825b34ac'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'a0d489bc-17d8-56b1-a52a-67fedb5755c2'::uuid,
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a6ba0226-23b0-5911-a455-4f675780f9d2'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid,
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f66cd75e-d157-5925-9311-2a6b8c193cd0'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid,
  true,
  'planning',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8069c1b4-436c-5035-aa7a-befb02d6c4e8'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'a0d489bc-17d8-56b1-a52a-67fedb5755c2'::uuid,
  'a0d489bc-17d8-56b1-a52a-67fedb5755c2'::uuid,
  true,
  'analysis',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '25f69fa3-17df-58e9-aed7-27edc5a62384'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid,
  'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid,
  true,
  'writing',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6b081498-9eb2-5f14-aef1-64d2d6986f4c'::uuid,
  'ed629457-cbd3-56b3-8796-249ea9d5cf27'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'f456b7ce-d7b5-55b2-985b-08089f991121'::uuid,
  'f456b7ce-d7b5-55b2-985b-08089f991121'::uuid,
  true,
  'ops',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;
