-- projects 0..19

INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'e4a201b8-9e58-51d5-92f0-2b6bea193d82'::uuid,
  'Single-cell atlas of treatment response — cohort 1',
  'Single-cell atlas of treatment response is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around genomics, RNA-seq, oncology. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  ARRAY['genomics','RNA-seq','oncology']::text[],
  'planning',
  'Computational Biology',
  ARRAY['Python','R','Genomics']::text[],
  'remote',
  'short_term',
  4,
  true,
  'Cambridge, MA',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1e330ad4-5037-5734-9610-80cb353ad551'::uuid,
  'e4a201b8-9e58-51d5-92f0-2b6bea193d82'::uuid,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  'owner',
  'active',
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '76551e5f-76dd-55c8-b76e-3343297658b9'::uuid,
  'e4a201b8-9e58-51d5-92f0-2b6bea193d82'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  'editor',
  'active',
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '34f195c5-6671-5493-859a-9557c037cf4e'::uuid,
  'e4a201b8-9e58-51d5-92f0-2b6bea193d82'::uuid,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  'viewer',
  'active',
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8dca2c1a-6eff-5b4d-b156-2ea45501aab0'::uuid,
  'e4a201b8-9e58-51d5-92f0-2b6bea193d82'::uuid,
  'Draft related work section',
  'Tracked work item for Single-cell atlas of treatment response — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a6c8c8c3-e9f0-552d-b809-1ad6c68a57e4'::uuid,
  'e4a201b8-9e58-51d5-92f0-2b6bea193d82'::uuid,
  'Clean and version dataset',
  'Tracked work item for Single-cell atlas of treatment response — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd5072791-c8dc-5e17-b480-eea5c89b1369'::uuid,
  'e4a201b8-9e58-51d5-92f0-2b6bea193d82'::uuid,
  'Run baseline model',
  'Tracked work item for Single-cell atlas of treatment response — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fd4c3fdd-1aef-5817-ba24-1e1599edbd2b'::uuid,
  'e4a201b8-9e58-51d5-92f0-2b6bea193d82'::uuid,
  'Write IRB amendment',
  'Tracked work item for Single-cell atlas of treatment response — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0f889a63-92e3-5b81-8d6c-dc49673d5277'::uuid,
  'e4a201b8-9e58-51d5-92f0-2b6bea193d82'::uuid,
  'Prepare figure panels',
  'Tracked work item for Single-cell atlas of treatment response — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '74c7e726-ba6f-527b-9798-ff502ca95609'::uuid,
  'e4a201b8-9e58-51d5-92f0-2b6bea193d82'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Single-cell atlas of treatment response — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '719538b6-6a5f-59dc-8832-3bc6b9493869'::uuid,
  'e4a201b8-9e58-51d5-92f0-2b6bea193d82'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Single-cell atlas of treatment response — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b650fc89-1e86-54a2-8907-e0f3e0f8d17a'::uuid,
  'e4a201b8-9e58-51d5-92f0-2b6bea193d82'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Single-cell atlas of treatment response — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '26028ceb-e439-5c5a-86cc-6e5cbb3c354a'::uuid,
  'e4a201b8-9e58-51d5-92f0-2b6bea193d82'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  true,
  'planning',
  ARRAY['genomics','RNA-seq']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '9fc56105-8220-5296-8421-16177fbab138'::uuid,
  'e4a201b8-9e58-51d5-92f0-2b6bea193d82'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  true,
  'analysis',
  ARRAY['genomics','RNA-seq']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'bc909f9e-6d37-5cad-9e49-decb2cef6297'::uuid,
  'e4a201b8-9e58-51d5-92f0-2b6bea193d82'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  true,
  'writing',
  ARRAY['genomics','RNA-seq']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '51b2dd2e-d176-5361-a278-ccaf7be57e4e'::uuid,
  'e4a201b8-9e58-51d5-92f0-2b6bea193d82'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
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
  '2847b7d8-ca82-5bcc-a2e5-52acc9c9536e'::uuid,
  'Urban heat mitigation with satellite ML — cohort 1',
  'Urban heat mitigation with satellite ML is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around remote sensing, cities, ML. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid,
  ARRAY['remote sensing','cities','ML']::text[],
  'active',
  'Climate Science',
  ARRAY['Remote sensing','Python','GIS']::text[],
  'hybrid',
  'medium_term',
  5,
  true,
  'Palo Alto, CA',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a8d25605-29d6-5e50-937a-bae7d008674d'::uuid,
  '2847b7d8-ca82-5bcc-a2e5-52acc9c9536e'::uuid,
  '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid,
  'owner',
  'active',
  '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '13aabb8f-fa1f-5e01-8f8f-0e1bfff3406b'::uuid,
  '2847b7d8-ca82-5bcc-a2e5-52acc9c9536e'::uuid,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  'editor',
  'active',
  '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd0a4b948-e0dc-57ba-8dbf-28a9be290e4b'::uuid,
  '2847b7d8-ca82-5bcc-a2e5-52acc9c9536e'::uuid,
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  'viewer',
  'active',
  '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '57da7192-24cc-53cf-8930-0b0f70369806'::uuid,
  '2847b7d8-ca82-5bcc-a2e5-52acc9c9536e'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  'viewer',
  'active',
  '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '154a3470-a644-5858-a27c-3821f15cb3be'::uuid,
  '2847b7d8-ca82-5bcc-a2e5-52acc9c9536e'::uuid,
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  'viewer',
  'active',
  '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '992ba578-a667-50d2-9ebb-9920f75acd70'::uuid,
  '2847b7d8-ca82-5bcc-a2e5-52acc9c9536e'::uuid,
  'Draft related work section',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid,
  '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a70d55cd-fdc9-5e97-a5c0-005adacde1af'::uuid,
  '2847b7d8-ca82-5bcc-a2e5-52acc9c9536e'::uuid,
  'Clean and version dataset',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a8c951e4-3fa4-5673-a5a7-04841b739b81'::uuid,
  '2847b7d8-ca82-5bcc-a2e5-52acc9c9536e'::uuid,
  'Run baseline model',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5759d651-1c4e-5f86-bcbc-fb8effa22246'::uuid,
  '2847b7d8-ca82-5bcc-a2e5-52acc9c9536e'::uuid,
  'Write IRB amendment',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '441cada9-3983-5947-94e0-260035c0db34'::uuid,
  '2847b7d8-ca82-5bcc-a2e5-52acc9c9536e'::uuid,
  'Prepare figure panels',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '716be09f-3956-58bc-8d57-6e8e2f34336a'::uuid,
  '2847b7d8-ca82-5bcc-a2e5-52acc9c9536e'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid,
  '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '001ea4b0-6c47-55a8-9b4a-bec43fe546c4'::uuid,
  '2847b7d8-ca82-5bcc-a2e5-52acc9c9536e'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fe4c6209-f2f3-5c5c-a659-10588b839d51'::uuid,
  '2847b7d8-ca82-5bcc-a2e5-52acc9c9536e'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2d4774ec-b220-5279-8e2b-9d4aa424ff8d'::uuid,
  '2847b7d8-ca82-5bcc-a2e5-52acc9c9536e'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid,
  '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid,
  true,
  'planning',
  ARRAY['remote sensing','cities']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '633d6506-f9dd-58c4-b3b1-a98f578edaf9'::uuid,
  '2847b7d8-ca82-5bcc-a2e5-52acc9c9536e'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  true,
  'analysis',
  ARRAY['remote sensing','cities']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b89737ee-f67f-5098-a6d9-959db2df73ae'::uuid,
  '2847b7d8-ca82-5bcc-a2e5-52acc9c9536e'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  true,
  'writing',
  ARRAY['remote sensing','cities']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b6080daf-071f-58ad-8db2-f4b507315104'::uuid,
  '2847b7d8-ca82-5bcc-a2e5-52acc9c9536e'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
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
  '082ad501-fcfb-506b-a25b-2b0567047a52'::uuid,
  'High-throughput electrolyte screening — cohort 1',
  'High-throughput electrolyte screening is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around batteries, automation, DFT. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid,
  ARRAY['batteries','automation','DFT']::text[],
  'active',
  'Materials Science',
  ARRAY['DFT','Lab automation','Characterization']::text[],
  'local',
  'long_term',
  6,
  true,
  'Berkeley, CA',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '00b1c018-4eab-51f9-98c5-1af3c11887e2'::uuid,
  '082ad501-fcfb-506b-a25b-2b0567047a52'::uuid,
  '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid,
  'owner',
  'active',
  '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '40ab2fa7-62aa-51b9-8c1d-a093965f5592'::uuid,
  '082ad501-fcfb-506b-a25b-2b0567047a52'::uuid,
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  'editor',
  'active',
  '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ad1a0542-df2e-5109-8387-1204f029571c'::uuid,
  '082ad501-fcfb-506b-a25b-2b0567047a52'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  'viewer',
  'active',
  '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '77c2fe23-bbb7-5c7f-bb2f-9bddc4241edf'::uuid,
  '082ad501-fcfb-506b-a25b-2b0567047a52'::uuid,
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  'viewer',
  'active',
  '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '11a8aaff-5f60-5432-b0b9-7d099efa3a4c'::uuid,
  '082ad501-fcfb-506b-a25b-2b0567047a52'::uuid,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  'viewer',
  'active',
  '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'af550186-9e76-58d0-bffa-9f68394c0274'::uuid,
  '082ad501-fcfb-506b-a25b-2b0567047a52'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  'viewer',
  'active',
  '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ade87e58-29df-5a13-9adb-1a357a30a53a'::uuid,
  '082ad501-fcfb-506b-a25b-2b0567047a52'::uuid,
  'Draft related work section',
  'Tracked work item for High-throughput electrolyte screening — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid,
  '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5b91148b-d96e-525b-a181-934739a73012'::uuid,
  '082ad501-fcfb-506b-a25b-2b0567047a52'::uuid,
  'Clean and version dataset',
  'Tracked work item for High-throughput electrolyte screening — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '789dcc8c-3994-59a7-ae80-61038cebb8d3'::uuid,
  '082ad501-fcfb-506b-a25b-2b0567047a52'::uuid,
  'Run baseline model',
  'Tracked work item for High-throughput electrolyte screening — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1261130d-be76-50a9-a0d1-7ba9be2e5f85'::uuid,
  '082ad501-fcfb-506b-a25b-2b0567047a52'::uuid,
  'Write IRB amendment',
  'Tracked work item for High-throughput electrolyte screening — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1d1a049a-7e56-5d97-ab2e-cf3f07e6c36d'::uuid,
  '082ad501-fcfb-506b-a25b-2b0567047a52'::uuid,
  'Prepare figure panels',
  'Tracked work item for High-throughput electrolyte screening — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '89ccd33b-8c15-51eb-bd1c-53b55ed237bb'::uuid,
  '082ad501-fcfb-506b-a25b-2b0567047a52'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for High-throughput electrolyte screening — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8886f119-8ed2-5eb8-92f0-46f2be1b79f7'::uuid,
  '082ad501-fcfb-506b-a25b-2b0567047a52'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for High-throughput electrolyte screening — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid,
  '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6d1c8ddb-94a8-59f8-b243-835c46471311'::uuid,
  '082ad501-fcfb-506b-a25b-2b0567047a52'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for High-throughput electrolyte screening — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '700eeff5-aacf-58cb-9c21-85cf011ff58d'::uuid,
  '082ad501-fcfb-506b-a25b-2b0567047a52'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid,
  '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid,
  true,
  'planning',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '10d9cbc1-5653-5543-9276-96252a2b1586'::uuid,
  '082ad501-fcfb-506b-a25b-2b0567047a52'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  true,
  'analysis',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e0233224-1e28-591d-a9d8-32525d0c5179'::uuid,
  '082ad501-fcfb-506b-a25b-2b0567047a52'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  true,
  'writing',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0fc73a48-d86f-5547-9306-5b95c5e89267'::uuid,
  '082ad501-fcfb-506b-a25b-2b0567047a52'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
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
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'Accessible clinical note summarization — cohort 1',
  'Accessible clinical note summarization is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around NLP, healthcare, UX. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  ARRAY['NLP','healthcare','UX']::text[],
  'active',
  'Human-Computer Interaction',
  ARRAY['User research','Prototyping','Statistics']::text[],
  'remote',
  'long_term',
  7,
  true,
  'Boston, MA',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ff49d602-71b5-5fc0-bfd3-c94677220c83'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  'owner',
  'active',
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c9ca6f0c-fcd2-54e5-8f61-524b11b6637c'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  'editor',
  'active',
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '01604c64-b452-5411-9570-fb89af39d54e'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  'viewer',
  'active',
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c2ea986a-632d-586e-a183-0177b856095c'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  'viewer',
  'active',
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a3af145b-43b7-56ad-b8b8-0a697b74c4ac'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  'viewer',
  'active',
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c542609b-d114-59d9-9aec-7e560002274e'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  'viewer',
  'active',
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2922f064-10af-59b0-b59f-aac68f0f798c'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  'viewer',
  'active',
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6d14a146-5374-506e-bca2-63c18c7c06e9'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'Draft related work section',
  'Tracked work item for Accessible clinical note summarization — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '11196c1b-7e4a-5490-808c-da3aca2fc50a'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'Clean and version dataset',
  'Tracked work item for Accessible clinical note summarization — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a3fd48d0-6e5d-59ad-b5d5-d2becc4eeb0d'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'Run baseline model',
  'Tracked work item for Accessible clinical note summarization — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c0f90c48-5c3d-57f1-a7e9-71b1bb60060c'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'Write IRB amendment',
  'Tracked work item for Accessible clinical note summarization — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8b7ac679-dbb6-5fd2-9b60-c9565bc19348'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'Prepare figure panels',
  'Tracked work item for Accessible clinical note summarization — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e250215f-bf19-57c6-9db4-7461bc5498bd'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Accessible clinical note summarization — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f3e8cbb8-1188-521c-8df9-80a1feb8be63'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Accessible clinical note summarization — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a30612e6-f7cb-5a83-83e0-0c2fb178b5aa'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Accessible clinical note summarization — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b072edc9-525a-5114-83cf-7f1fa7d13277'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  true,
  'planning',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e6ebc02d-f90d-5e98-85d0-09f20ce40857'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  true,
  'analysis',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '42b718fd-9d50-5013-b07b-0131ef7d9550'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  true,
  'writing',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a8a7e60d-2e31-52cc-b08e-94e2e9d06a7e'::uuid,
  '84987ce5-845d-51db-9110-8bcf9cd82a4e'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
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
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  'Closed-loop stimulation for memory — cohort 1',
  'Closed-loop stimulation for memory is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around neurotech, memory, EEG. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  ARRAY['neurotech','memory','EEG']::text[],
  'active',
  'Neuroscience',
  ARRAY['fMRI','Electrophysiology','Python']::text[],
  'hybrid',
  'short_term',
  8,
  true,
  'Toronto, ON',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '072b4720-9886-5fb0-8ece-f0b4e25fa892'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  'owner',
  'active',
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0741ac63-132a-5b1a-bbe2-1b07c9fb5759'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  'editor',
  'active',
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7f9e0e52-e9ec-5bfd-b51e-a7650377cd7b'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  'viewer',
  'active',
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'bbc62348-1af4-5c63-b88f-229555793522'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  'viewer',
  'active',
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ab918c3d-00fe-56c3-8d28-d87ccb102fdd'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid,
  'viewer',
  'active',
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4120f507-1bb0-5723-bbbd-4b9fe00462ca'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  '33258244-df5a-5c2f-933d-31972bac2f03'::uuid,
  'viewer',
  'active',
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd00e57d1-dec0-5d47-b109-83d1d1f5780c'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  'viewer',
  'active',
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e99f881b-05eb-585b-a9d2-d85f617fe0f3'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  'viewer',
  'active',
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3e2af9a1-4c5a-5f22-92bd-926a4bc1aae6'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  'Draft related work section',
  'Tracked work item for Closed-loop stimulation for memory — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8bd7a9c3-b942-5965-b5b4-3f44798db2b3'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  'Clean and version dataset',
  'Tracked work item for Closed-loop stimulation for memory — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b0c7eb0c-f7c5-5db4-aa96-c2eb3acf3c19'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  'Run baseline model',
  'Tracked work item for Closed-loop stimulation for memory — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c953deef-2508-59be-9702-29a3fa07adb2'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  'Write IRB amendment',
  'Tracked work item for Closed-loop stimulation for memory — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '966a3cf0-4355-5e12-b632-ecc68287741f'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  'Prepare figure panels',
  'Tracked work item for Closed-loop stimulation for memory — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid,
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'cea40e3b-4e13-57f6-815d-2f4f1260b546'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Closed-loop stimulation for memory — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '33258244-df5a-5c2f-933d-31972bac2f03'::uuid,
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c2c70d7b-f53d-5393-81c2-fb237de98ba3'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Closed-loop stimulation for memory — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '37b964eb-0d13-5a38-a137-0a583546a5f1'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Closed-loop stimulation for memory — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1fbbbc1e-af87-56a1-9bcc-ff14ed6eb086'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  true,
  'planning',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'bc88c2a2-5001-5322-b6f6-4f0ed3496dd9'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  true,
  'analysis',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '678551c5-59f4-5bd1-91fd-8365cefbae35'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  true,
  'writing',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '72e58f41-2a9f-5bbb-af5d-6a045641a8bb'::uuid,
  '68c477cb-2efe-5f86-a768-01e068d23ea9'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
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
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'Community vaccine confidence study — cohort 1',
  'Community vaccine confidence study is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around surveys, equity, vaccines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  ARRAY['surveys','equity','vaccines']::text[],
  'planning',
  'Public Health',
  ARRAY['Epidemiology','R','Survey design']::text[],
  'local',
  'medium_term',
  9,
  true,
  'Zurich, CH',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f894cb2a-a06f-5454-9c96-3d7dd00ee29e'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  'owner',
  'active',
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b6306308-07d4-5843-9bd1-cd320acae42e'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  'editor',
  'active',
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5bbc9b91-3366-5851-8a08-abf450c83fa5'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  'viewer',
  'active',
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd2abc774-a61a-57c0-b43e-47bbb8a6ff11'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  'viewer',
  'active',
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '458ef807-ff11-5385-9c40-cd9f2103e65c'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  'viewer',
  'active',
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ee8a8f21-7a71-5e91-b4c4-84c4efcc2cf3'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  'viewer',
  'active',
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f0c7a343-0120-57a0-bcb6-99e935ac0bad'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  'viewer',
  'active',
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5bd08454-be9d-5880-8750-80a5b12d2dbd'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  'viewer',
  'active',
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '63ecbf61-f890-532c-803e-eaef879ba256'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  'viewer',
  'active',
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '311fc899-9a74-5123-ab5c-c39be754d282'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'Draft related work section',
  'Tracked work item for Community vaccine confidence study — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '936f6bbf-9ddf-5683-b09a-871cdb13a4eb'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'Clean and version dataset',
  'Tracked work item for Community vaccine confidence study — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '36007062-38b4-5c85-8806-e8d0d39652f8'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'Run baseline model',
  'Tracked work item for Community vaccine confidence study — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e7ddd331-5cdc-5d82-91dc-a511fa109127'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'Write IRB amendment',
  'Tracked work item for Community vaccine confidence study — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1afddbe9-b7f4-5f6d-8220-7564787a8b47'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'Prepare figure panels',
  'Tracked work item for Community vaccine confidence study — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7e6e488b-ab9c-5189-ae45-7fca43d1bebb'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Community vaccine confidence study — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'eb8486bb-b542-5767-995e-0f4b250d3b7e'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Community vaccine confidence study — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'dfa6d596-f8a4-567d-b178-33ca47096c68'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Community vaccine confidence study — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '89cab345-ed75-5386-9063-c97f2dbfdba1'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  true,
  'planning',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a8c953e7-0c93-591e-b060-686950f1ea68'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  true,
  'analysis',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'adaab32f-e27d-5549-9901-15836fa3e0db'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  true,
  'writing',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '50adfe8f-10de-5cc5-8686-7005cfc4a153'::uuid,
  '58041fac-7a28-5d8a-8a61-a339b2c106e8'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
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
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'Near-term quantum error mitigation — cohort 1',
  'Near-term quantum error mitigation is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around NISQ, algorithms. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  ARRAY['NISQ','algorithms']::text[],
  'active',
  'Quantum Information',
  ARRAY['Qiskit','Linear algebra','Optics']::text[],
  'remote',
  'long_term',
  10,
  true,
  'London, UK',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ff12d659-c96b-502e-965e-2006f33f3fac'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  'owner',
  'active',
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8f1c56ab-9331-51b6-9552-cf42bc088972'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  'editor',
  'active',
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd2ea04d2-7b1f-5e5f-b224-e77a212db820'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  'viewer',
  'active',
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '41a0914b-430a-5307-aa9a-465c70e37bfb'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  'viewer',
  'active',
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd43bba77-a8b8-53f8-9144-926fbe0b1dc8'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'Draft related work section',
  'Tracked work item for Near-term quantum error mitigation — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '553c38e9-1f4f-5561-9d74-643bdca60615'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'Clean and version dataset',
  'Tracked work item for Near-term quantum error mitigation — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9a6646c0-bec6-5bf1-99d1-de9bb889c649'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'Run baseline model',
  'Tracked work item for Near-term quantum error mitigation — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ff1fc44b-c740-5885-8c71-2ff88001cc0f'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'Write IRB amendment',
  'Tracked work item for Near-term quantum error mitigation — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '48438998-b1c1-5e61-94e0-52f8a0bbbdbf'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'Prepare figure panels',
  'Tracked work item for Near-term quantum error mitigation — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7e02bed5-d34d-584d-a84c-1b26a7648a11'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Near-term quantum error mitigation — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '13536a5c-3b82-5381-a7c1-cdd23d49df59'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Near-term quantum error mitigation — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9037fc83-9dcd-5486-aaea-1339bf54c348'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Near-term quantum error mitigation — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c0c4b65c-3771-5081-9c64-ff29205e442b'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  true,
  'planning',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e76d7e03-a2d2-5527-b22f-edcaed8d78c5'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  true,
  'analysis',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '83a019cd-547b-5618-a067-96bc966bcc9b'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  true,
  'writing',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '78009f38-7e78-5ea4-b6ab-9c6939de859f'::uuid,
  '3232a83d-295c-5a39-a628-cae4e7f3267a'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
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
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  'Robust evaluation for clinical LLMs — cohort 1',
  'Robust evaluation for clinical LLMs is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around LLMs, evaluation, safety. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  ARRAY['LLMs','evaluation','safety']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'hybrid',
  'long_term',
  11,
  true,
  'Seattle, WA',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ede50f62-8b7b-5c69-b718-ecf9b2220b15'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  'owner',
  'active',
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd1a6b7c1-e97c-59b6-9e4b-452e04caf98e'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  'editor',
  'active',
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4ed2dff8-2f01-5534-ad57-7ab3cbc26bf7'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  'viewer',
  'active',
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a0cdc274-18bc-5581-99d7-2f6708a2e623'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  'viewer',
  'active',
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f30f4962-69db-584d-bc28-99c2ffe97b5c'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  'viewer',
  'active',
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6303af87-6b27-59b9-8d26-0d20031783fb'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  'Draft related work section',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7d601ea8-e99d-5516-bbc2-58c5c8ee4507'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  'Clean and version dataset',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7ace70b4-49dd-5bc7-bcbb-51fa06966409'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  'Run baseline model',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ad66d812-1ed0-58ac-89d3-db54552bf057'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  'Write IRB amendment',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5a2bc1cb-8434-5795-9314-c37e9760fad8'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  'Prepare figure panels',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b1e2d1b9-8211-5a88-91b6-e4f629bb3103'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '870ed4f5-304e-5ede-8946-d179ac5e4f1f'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '731f0d03-7467-521b-bf28-948e46400430'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b7f5ac10-ad32-54be-89ba-901735b973e6'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  true,
  'planning',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0ae12443-cf8c-5cb2-b792-f5f3590c17f3'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  true,
  'analysis',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8e5516ff-39a1-538f-8093-71dfdbb2471c'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  true,
  'writing',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a94cebd2-cf70-5f74-9fc5-16568688b670'::uuid,
  'd80328f6-0069-5263-9d4a-58c6d933ce50'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
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
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  'Photoredox catalysis for late-stage edits — cohort 1',
  'Photoredox catalysis for late-stage edits is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around catalysis, synthesis. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  ARRAY['catalysis','synthesis']::text[],
  'active',
  'Chemistry',
  ARRAY['Organic synthesis','Spectroscopy','Cheminformatics']::text[],
  'local',
  'short_term',
  12,
  true,
  'Pittsburgh, PA',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2a479ef8-0489-5caa-9e9f-c9608e37cb09'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  'owner',
  'active',
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '17ce0263-7ed4-5cb1-8200-2febab0dcfd9'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  'editor',
  'active',
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '669c982f-af0d-56e7-9d18-e393fd17d5af'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  'viewer',
  'active',
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '68cfeb8c-7927-5457-9027-552531063630'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  'viewer',
  'active',
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0e5ea60c-df2b-59ce-9549-0d9478f79490'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  'viewer',
  'active',
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b9d490b5-2e85-5d07-a766-378103dd0b1b'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  'viewer',
  'active',
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '066ffce9-a4d3-5804-aadc-9de6b52d6dff'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  'Draft related work section',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8b8a1dde-0391-53f5-baa2-37bf9c86e26a'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  'Clean and version dataset',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f1b8e529-3b19-5a31-aa83-39f68121e5f9'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  'Run baseline model',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '83b906cd-cefb-5b0e-ba69-9c241560c1ea'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  'Write IRB amendment',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7d4c494b-33d3-593c-a483-a448cf7c98d3'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  'Prepare figure panels',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ac1d11ad-7c1b-5249-82a3-f62969a5b982'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2725fe0b-28a3-5ab0-9e0b-92cc63a7f045'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6dd5fe2b-05bb-526f-850e-29b40b7c99f6'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0a8d4587-be28-51bf-a26a-274257a6036d'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  true,
  'planning',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '72237e19-eb7b-5f6d-8887-349fe457670d'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  true,
  'analysis',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c72abb29-c2d6-5505-a7c2-176a5824bdc6'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  true,
  'writing',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a6ccac8a-3e40-5fb2-965d-2229ddb0275b'::uuid,
  'f6e88ccf-3d3f-57a3-8169-2ff1e9deee18'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
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
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'STEM identity in first-gen undergraduates — cohort 1',
  'STEM identity in first-gen undergraduates is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around equity, mixed methods. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  ARRAY['equity','mixed methods']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'remote',
  'medium_term',
  13,
  true,
  'Atlanta, GA',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '63c3d8da-0352-5c5e-9285-624abd43e2f0'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  'owner',
  'active',
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3c0b012a-0aea-5f41-a85e-39ae381f9c93'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  'editor',
  'active',
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1e5f47d9-a59e-5dd2-8706-5a96a8a34b1f'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  'viewer',
  'active',
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7e772bca-58a2-5321-aebd-71eebd3fec34'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  'viewer',
  'active',
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4eaeed27-332b-5321-9415-3be2d99577df'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  'viewer',
  'active',
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '24348b55-dee1-5b1f-8790-468aaf330786'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid,
  'viewer',
  'active',
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b7065679-a3b3-5500-9422-f06a1ae95c43'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  'viewer',
  'active',
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f358b989-038b-5712-914a-1862b3650e2a'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'Draft related work section',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '633f5432-bb47-5678-a3d8-69c41b37e218'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'Clean and version dataset',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'eb141ebb-ebd8-56c5-80cb-de1883d7e28d'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'Run baseline model',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2e64dd72-a629-55e0-bcb8-290ca5c07d44'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'Write IRB amendment',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ce59fb30-79a3-5aed-ab9a-2ce46f553062'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'Prepare figure panels',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9b2a2cdf-73f8-5618-b461-650e621d9791'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e79ed9a3-523e-5370-98cd-bcf9ee393acb'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0a672c80-14cf-5e0b-8a14-510478b70e87'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b6e277a9-f55c-5014-b933-00a1adb0efe6'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  true,
  'planning',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'af92d948-c07f-5fc5-8bcb-fb9bd9afafce'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  true,
  'analysis',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2de23237-a837-5116-b67a-19805f602197'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  true,
  'writing',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd5a03a33-bb33-54f9-b98f-bacd0c1fbac7'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
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
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  'Dexterous packing under uncertainty — cohort 1',
  'Dexterous packing under uncertainty is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around manipulation, sim2real. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  ARRAY['manipulation','sim2real']::text[],
  'planning',
  'Robotics',
  ARRAY['ROS','Control systems','C++']::text[],
  'hybrid',
  'long_term',
  14,
  true,
  'Ann Arbor, MI',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b4650d44-c912-5e2c-baeb-5da6272c9949'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  'owner',
  'active',
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '40b98432-f983-55ab-8f1a-97cd9404a137'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  'editor',
  'active',
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5f9c9e52-babf-5e57-8e40-0272a7f1ce6f'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  'viewer',
  'active',
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6cfb19dd-ea14-5f14-a734-717c03d90892'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  'viewer',
  'active',
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b2296aea-4874-5628-b5bf-9a862be7b8cf'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  'viewer',
  'active',
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd9d924c2-40c9-5af3-935a-ec4a2b0a3da1'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid,
  'viewer',
  'active',
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '992960f4-f28c-565b-a6c1-cfd55482eebb'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  'viewer',
  'active',
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '04a78abe-b8f4-5eef-a496-717dc876eafa'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  'viewer',
  'active',
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'be3486e9-1da1-5ec4-bcfa-1acb8369222c'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  'Draft related work section',
  'Tracked work item for Dexterous packing under uncertainty — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '04c155fc-b15b-50e5-91e1-329ee189ba40'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  'Clean and version dataset',
  'Tracked work item for Dexterous packing under uncertainty — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd49126d9-05bc-504f-b513-0f5108fb9115'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  'Run baseline model',
  'Tracked work item for Dexterous packing under uncertainty — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '12c4abf6-da80-5c69-98a8-2f905e4f2567'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  'Write IRB amendment',
  'Tracked work item for Dexterous packing under uncertainty — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '81c6a355-233e-57ae-b7c5-4b7142876164'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  'Prepare figure panels',
  'Tracked work item for Dexterous packing under uncertainty — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4a8ae5b6-6a25-5d9a-9b3b-c93a88d90cbf'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Dexterous packing under uncertainty — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4a4940c2-02e4-5842-992c-2f786d37c9de'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8cd12006-d829-5fc7-8dcb-2c304fe98f73'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'bfa37b6c-b2ce-5861-b8d0-fc15be8fca51'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  true,
  'planning',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e8f4c9a1-fa49-50c2-94d8-6696fa7ebb1b'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  true,
  'analysis',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'bcff1533-fc57-54c0-8034-33dca45442df'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  true,
  'writing',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8535635c-41d2-5396-86c3-a13c2954c402'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
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
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'Transit spectroscopy pipeline for JWST — cohort 1',
  'Transit spectroscopy pipeline for JWST is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around exoplanets, pipelines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  ARRAY['exoplanets','pipelines']::text[],
  'active',
  'Astrophysics',
  ARRAY['Data pipelines','Python','Bayesian inference']::text[],
  'local',
  'long_term',
  15,
  true,
  'Los Angeles, CA',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '61c05ff9-e37e-5da2-bbce-d3f1f5458d25'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  'owner',
  'active',
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b4cfe180-91ff-5af6-99e5-9066297c0297'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  'editor',
  'active',
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'fe6aa5df-d72f-52db-94b1-b2bd58ca4f14'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  'viewer',
  'active',
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c31f5e91-4a21-5da9-81e4-e72489d2e44f'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  'viewer',
  'active',
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd886443d-c9c0-59b9-8b53-ac2350cfdc4f'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  'viewer',
  'active',
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f0c351da-7f1b-54f0-91c8-93c8851b9522'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  'viewer',
  'active',
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '90eca9fb-2a42-5e2e-abaf-041fc07ac454'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid,
  'viewer',
  'active',
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'bb42eeb7-1dae-52fb-aa30-501843d83e51'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  'viewer',
  'active',
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '13db9602-461f-58b1-b93f-c237687f43f5'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  'viewer',
  'active',
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9b57c4a9-6524-5d27-8309-4b42c84e380a'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'Draft related work section',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '73f0026b-ab01-5ef7-8914-cdf6de57ecc7'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'Clean and version dataset',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ca39629d-61b2-5675-b102-030c91713fc0'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'Run baseline model',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '385c7093-cd70-53e0-be30-c31c377bc10a'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'Write IRB amendment',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '56d6c8bf-53e8-5567-98b9-cb6cb0eb8d89'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'Prepare figure panels',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3864580c-c63a-5eec-b75d-0eafea472d1f'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8cc1ec63-8554-5d41-bf7f-ee089cb495af'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid,
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e25c23d8-aa4b-5871-aa85-e1294623dab5'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'da3c13f5-6ae5-5c40-93cb-92d552869e84'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  true,
  'planning',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e9f855ca-c791-5d24-ac94-0563140d9f94'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  true,
  'analysis',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a9581d97-a384-54cf-99a6-6f20895fced5'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  true,
  'writing',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f1a5d103-3314-56ca-99af-5e518935b533'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
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
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  'Vascularized cardiac organoids — cohort 1',
  'Vascularized cardiac organoids is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around organoids, tissue eng. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  ARRAY['organoids','tissue eng']::text[],
  'active',
  'Bioengineering',
  ARRAY['Tissue culture','CAD','Microfluidics']::text[],
  'remote',
  'short_term',
  4,
  true,
  'New York, NY',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '49b191f4-ab06-5a3c-9095-342f58b46fa0'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  'owner',
  'active',
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ae3f6f35-718f-5aff-abfe-383c3ca330bc'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  'editor',
  'active',
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '29108df4-152c-57db-928a-436827c2c5f1'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  'viewer',
  'active',
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '794abbf8-b536-5cef-86d9-732555e62a41'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  'viewer',
  'active',
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e84f627a-705d-572c-b1ce-5d760f9d6c93'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  'Draft related work section',
  'Tracked work item for Vascularized cardiac organoids — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'eef659f3-1821-5c6c-b978-0fc1b9216fd1'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  'Clean and version dataset',
  'Tracked work item for Vascularized cardiac organoids — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3499f447-4c07-549c-9b5d-572a059caa1c'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  'Run baseline model',
  'Tracked work item for Vascularized cardiac organoids — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fef7610e-d4a4-5e8e-afbd-8fc1fd4870c1'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  'Write IRB amendment',
  'Tracked work item for Vascularized cardiac organoids — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2e0c1e2a-dd57-590a-9410-f9b4054c6a19'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  'Prepare figure panels',
  'Tracked work item for Vascularized cardiac organoids — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'beee17d7-2153-552c-a06e-5e8b83d8e660'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Vascularized cardiac organoids — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7c033a75-d6a5-555f-9dc4-2655887daef2'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Vascularized cardiac organoids — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7fb382e4-ed65-5eb2-856b-19d721e74387'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Vascularized cardiac organoids — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '09184a98-cc44-5311-845d-a7cc380b6c40'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  true,
  'planning',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1d864ba2-df92-582c-9b28-aab6698a10e3'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  true,
  'analysis',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6200759f-8299-565a-aa1c-398d97c01c39'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  true,
  'writing',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '005a0d9d-376a-5416-8c99-e20f19f1ac6c'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
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
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'Labor market effects of credentialing — cohort 1',
  'Labor market effects of credentialing is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around causal, policy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  ARRAY['causal','policy']::text[],
  'active',
  'Economics',
  ARRAY['Econometrics','Stata','Causal ML']::text[],
  'hybrid',
  'medium_term',
  5,
  true,
  'Chicago, IL',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3c831631-289a-5c4e-b024-485eb858c1af'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  'owner',
  'active',
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '50cf8cf0-f2c9-5cb5-95e0-a28ffb968c18'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  'editor',
  'active',
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '36a8f0a9-83e1-5537-a19f-50558c20c2c8'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  'viewer',
  'active',
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4b565d08-6ae7-5286-b367-c6c94b66b5b1'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  'viewer',
  'active',
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '99c57f48-1558-5d5e-90c9-ab9489f3cba5'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  'viewer',
  'active',
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ccac6935-08a8-528f-aa02-cbea109198c1'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'Draft related work section',
  'Tracked work item for Labor market effects of credentialing — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ca7490f7-05ac-578b-b99e-9175e871623a'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'Clean and version dataset',
  'Tracked work item for Labor market effects of credentialing — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '678a986e-8dbc-56f7-b942-50aeff058876'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'Run baseline model',
  'Tracked work item for Labor market effects of credentialing — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '61fa96c5-f073-5633-83ec-d34b03dcff0a'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'Write IRB amendment',
  'Tracked work item for Labor market effects of credentialing — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b2855e1a-3f40-5558-ac40-f17e60c3c278'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'Prepare figure panels',
  'Tracked work item for Labor market effects of credentialing — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7f20cb9e-0147-5dbd-8a20-2b882544e462'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Labor market effects of credentialing — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1e4b1c7b-5501-585c-b185-47584b35f3ae'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Labor market effects of credentialing — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f2936d64-56ec-57f2-b6fb-76f4d4d056cc'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Labor market effects of credentialing — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c576cefe-39e7-5123-9f77-6512db6eaa19'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  true,
  'planning',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c9f7e221-27fa-52b2-b6a4-18323af84d90'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  true,
  'analysis',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c9a24d76-8c8a-5ac6-bdd4-bb3aa0ca7e3c'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  true,
  'writing',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '44eb86c5-faf8-58ce-89c1-e0e108cd2760'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
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
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  'Low-cost water contaminant sensing — cohort 1',
  'Low-cost water contaminant sensing is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around sensors, water. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  ARRAY['sensors','water']::text[],
  'active',
  'Environmental Engineering',
  ARRAY['Hydrology','Sensor networks','Python']::text[],
  'local',
  'long_term',
  6,
  true,
  'Baltimore, MD',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'da6fddbc-ea17-5712-9983-a14acdd85cf1'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  'owner',
  'active',
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '784a1dba-8386-55b2-aa17-61b5a8e25b5d'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  'editor',
  'active',
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '36d54444-4d79-59fd-83f6-9dc0f48ebe9d'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  'viewer',
  'active',
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a99c48e4-a0ec-54f3-aec3-742e72b49c5a'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  'viewer',
  'active',
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '41fedc87-fbf4-5208-b60c-d6d56b1b9526'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  'viewer',
  'active',
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '44bc456d-f603-5174-bb89-2993463ea894'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  'viewer',
  'active',
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '262965c9-bc72-5580-839f-01e1b107a5d4'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  'Draft related work section',
  'Tracked work item for Low-cost water contaminant sensing — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fc61c38e-ce2a-5c5a-8bbd-d67c8cd779bc'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  'Clean and version dataset',
  'Tracked work item for Low-cost water contaminant sensing — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '947e389d-b823-558c-aaa1-dfc4a6db2f13'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  'Run baseline model',
  'Tracked work item for Low-cost water contaminant sensing — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '37099e3a-a51a-51dc-8f4d-374c2514e4d2'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  'Write IRB amendment',
  'Tracked work item for Low-cost water contaminant sensing — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a22ccf41-2525-5627-82ef-0c3438280ea6'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  'Prepare figure panels',
  'Tracked work item for Low-cost water contaminant sensing — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2e1b364d-0b7e-5895-8bc6-57b6f80c9a62'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Low-cost water contaminant sensing — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '88ca30c5-3b97-5e95-89e1-6fdbbeef873b'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9ea38a56-caa4-5f43-8425-e4b0f145de5d'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '79c0a2bc-c22a-5db5-a7d4-afe4135055a0'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  true,
  'planning',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3e041d5e-45b6-5682-ba4d-bcd0c0a3a5d9'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  true,
  'analysis',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5903ee4d-666c-5694-a2d3-20a4d878c156'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  true,
  'writing',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c7bc00a8-ec40-5b9b-bb24-c80a780c06eb'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
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
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  'Federated learning for rare disease cohorts — cohort 1',
  'Federated learning for rare disease cohorts is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around privacy, ML. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  ARRAY['privacy','ML']::text[],
  'planning',
  'Computational Biology',
  ARRAY['Python','R','Genomics']::text[],
  'remote',
  'long_term',
  7,
  true,
  'New Haven, CT',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2220e660-860f-538c-9608-eda359e296a1'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  'owner',
  'active',
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8ecfc165-8ffa-5e29-901c-859e9b654e63'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  'editor',
  'active',
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8510ba49-33bf-59fb-b90c-a2985fb18fd5'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  'viewer',
  'active',
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '04a035fc-dfec-5be1-b247-404a502a353d'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  'viewer',
  'active',
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7a0cfb72-f200-52ae-8cac-9b6e32567b26'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid,
  'viewer',
  'active',
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a24b305d-1945-57ac-8626-6881ae404139'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid,
  'viewer',
  'active',
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '700a65ed-cf70-56f4-a26f-899e4cec3afa'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  'viewer',
  'active',
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '470f6173-acac-546d-a14d-8ee511022d5f'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  'Draft related work section',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0bbc25d9-9479-53c0-8f09-f4355a4d6073'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  'Clean and version dataset',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c0f0a16f-3b2a-50dd-883a-ac68b8b574a3'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  'Run baseline model',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '09ee3c62-a7f3-578e-9d23-952d22386c68'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  'Write IRB amendment',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '15257f9e-b735-5dda-8a4e-547af7dfbcc8'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  'Prepare figure panels',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c84ad3de-9034-57fc-8229-d815f3b350d6'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5c420586-9a60-5283-8c74-59d7a10847c3'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c3a1832a-5587-5c9d-a513-d4c78dc90091'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5c471c8c-9ebe-5434-8478-b7fa32748c5c'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  true,
  'planning',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '677b0310-53a7-5b94-98a6-41b21218d027'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  true,
  'analysis',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6b7bea79-765c-5d7a-acf0-822d9836adf5'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  true,
  'writing',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ddbe2f71-22a7-51b8-8138-769a429bc30f'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
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
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'Wildfire smoke exposure forecasting — cohort 1',
  'Wildfire smoke exposure forecasting is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around air quality, forecasting. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  ARRAY['air quality','forecasting']::text[],
  'active',
  'Climate Science',
  ARRAY['Remote sensing','Python','GIS']::text[],
  'hybrid',
  'short_term',
  8,
  true,
  'Princeton, NJ',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'bc6527d9-5b49-54a3-b9d5-acd772fac259'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  'owner',
  'active',
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd84fa7d6-9af4-5ed2-a11d-49a5c0b2405e'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  'editor',
  'active',
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '71f8cfe7-63ae-5f4a-8947-58ecaa0dc684'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  'viewer',
  'active',
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '452a71e3-aab1-573d-ac59-6f3a79ab3010'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  'viewer',
  'active',
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f17768d3-172d-5f8d-98f2-8d6cc0f1d026'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  'viewer',
  'active',
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'af16f5b4-37ae-5758-b488-37a99705834f'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  'viewer',
  'active',
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '00327111-c677-574f-9673-cce17d324979'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  '709233fc-6dac-5a42-941b-d839482389b8'::uuid,
  'viewer',
  'active',
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3023717c-d308-560c-a5a8-b49718f76a25'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid,
  'viewer',
  'active',
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '29b8a15c-50e4-5db3-a01e-a7a02c9f6ce2'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'Draft related work section',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '40cf8b4b-b0d8-5938-8dc3-8b793cd0642a'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'Clean and version dataset',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9caade05-af58-58ed-ba8a-5cefb62ee126'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'Run baseline model',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '47d394a9-67a0-5a23-a304-f659fb8da5db'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'Write IRB amendment',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fefb775b-3c75-5aa6-9144-d0a3d570df68'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'Prepare figure panels',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5bac3da3-176e-5158-88d5-5e003709b2a8'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'df5d4abe-19ad-56e6-afd2-519cd1769ed2'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '709233fc-6dac-5a42-941b-d839482389b8'::uuid,
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '72fbd584-7919-5e65-bcd9-7059f61aecbd'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid,
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd3cdc4a1-02d2-5b51-bdcd-f9bbf91e9d76'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  true,
  'planning',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '22030618-e4b6-5271-8b45-d4761b26bb9a'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  true,
  'analysis',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8fcfe044-42ad-5744-ab26-0e3cd7faf7fb'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  true,
  'writing',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a8238a20-fa6f-5bcf-ab09-52e01bbbd75d'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
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
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'Solid-state battery interface imaging — cohort 1',
  'Solid-state battery interface imaging is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around interfaces, microscopy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  ARRAY['interfaces','microscopy']::text[],
  'active',
  'Materials Science',
  ARRAY['DFT','Lab automation','Characterization']::text[],
  'local',
  'medium_term',
  9,
  true,
  'Pasadena, CA',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '16088a3b-7e26-5d80-89d9-acc2e2ae56fd'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  'owner',
  'active',
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5bfd409e-5c3a-5213-8ea7-4d38ad79fc79'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  'editor',
  'active',
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '99cabf7d-980c-5d33-bb83-35dbacb50454'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  'viewer',
  'active',
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'cb4d6a6d-fe1b-5a9f-a362-be409cb46577'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  'viewer',
  'active',
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '29f2d0da-ced1-5629-80f4-1229357c424d'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  'viewer',
  'active',
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'bbdbacce-9ef5-5997-b5ac-7022fee6bcf6'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  'viewer',
  'active',
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'dc076b1c-977e-5595-97f2-60ea3d256d8a'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  '8cbc51da-924c-5c60-b2ff-91e9b5bade3b'::uuid,
  'viewer',
  'active',
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7c89a7b0-3e40-5f24-b1f4-2b2f00dc5432'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  '65673952-33ec-5b72-b075-0d350bcdb2da'::uuid,
  'viewer',
  'active',
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c76ff56c-5ddd-5fa3-a58e-6b80791dc653'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid,
  'viewer',
  'active',
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'eccde645-8d54-545e-a74a-93c6a3257a80'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'Draft related work section',
  'Tracked work item for Solid-state battery interface imaging — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '292759bf-4b50-5747-9396-82e2bfd4dba5'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'Clean and version dataset',
  'Tracked work item for Solid-state battery interface imaging — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3df67a35-84d0-5fdc-87c5-b530f129aba8'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'Run baseline model',
  'Tracked work item for Solid-state battery interface imaging — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '18a33bb6-bfb6-52ba-a30e-f7657136c3ef'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'Write IRB amendment',
  'Tracked work item for Solid-state battery interface imaging — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7087803d-67a9-54af-b70d-5999b8dc21d1'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'Prepare figure panels',
  'Tracked work item for Solid-state battery interface imaging — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '481b8b47-2c37-54cd-85df-ea04e1ade725'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Solid-state battery interface imaging — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'de5d3214-cebd-5618-81ab-75a61942d4c6'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Solid-state battery interface imaging — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '8cbc51da-924c-5c60-b2ff-91e9b5bade3b'::uuid,
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3904f461-bd00-5dd0-b972-da38407319b7'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Solid-state battery interface imaging — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '65673952-33ec-5b72-b075-0d350bcdb2da'::uuid,
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6637008c-23cc-58ac-a3f5-89e88f33a5ee'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  true,
  'planning',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '257d2768-ff92-54f4-b965-37473447e39f'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  true,
  'analysis',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ae41ffb0-c9b3-505c-86aa-b0b4d483a9aa'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  true,
  'writing',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4af0afd4-eb51-576f-bdea-5df09d653ce0'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
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
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  'Classroom AI tutor field study — cohort 1',
  'Classroom AI tutor field study is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around edtech, RCT. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  ARRAY['edtech','RCT']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'remote',
  'long_term',
  10,
  true,
  'Oxford, UK',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'febfaeb1-3e84-5619-99da-9209ce754dea'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  'owner',
  'active',
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5332bc23-c528-5b76-ae33-bb328a82a70a'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  'editor',
  'active',
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'fc5fc4ce-1767-5a76-a272-44fae5fc53f3'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  'viewer',
  'active',
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4fbcb366-be29-5be1-ac5c-39016e7fff75'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  'viewer',
  'active',
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '14a96dac-b8f4-56f5-9adc-fdb14a728d23'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  'Draft related work section',
  'Tracked work item for Classroom AI tutor field study — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f9a8afaa-a7cb-517b-9891-a6b44a794849'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  'Clean and version dataset',
  'Tracked work item for Classroom AI tutor field study — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c73325a1-f21a-5e75-9e26-fbc6c63b4461'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  'Run baseline model',
  'Tracked work item for Classroom AI tutor field study — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '694bec12-d3c4-5868-8b42-9d04d7c9b015'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  'Write IRB amendment',
  'Tracked work item for Classroom AI tutor field study — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ae77845d-edb4-5ef9-b437-805579673cbd'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  'Prepare figure panels',
  'Tracked work item for Classroom AI tutor field study — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c49bd5b0-4941-5e8a-ac9e-ddee08b3a110'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Classroom AI tutor field study — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'cbd6fc43-5f7d-54cd-a1e7-209857fa3f12'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Classroom AI tutor field study — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6955ee89-cfd2-58f1-9eed-02839daf809e'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Classroom AI tutor field study — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6a5fd643-acda-5b73-9e6a-7f91091168cd'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  true,
  'planning',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '15d12724-dcce-5e92-b292-5c83c2a85fe8'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  true,
  'analysis',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd18605f6-1389-5129-af1b-00463d8ab5af'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  true,
  'writing',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd4632762-aab9-5e55-8faa-4d4a74c5c3fe'::uuid,
  'f1038513-5c16-5887-92e5-1cec2ee39309'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
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
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'Privacy-preserving wearable analytics — cohort 1',
  'Privacy-preserving wearable analytics is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around wearables, privacy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  ARRAY['wearables','privacy']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'hybrid',
  'long_term',
  11,
  true,
  'Singapore',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3acb3139-e84e-5f63-bb2a-79a1cfebfca4'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  'owner',
  'active',
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2efa7f57-7b32-5281-b9c7-a4e6aea272fb'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  'editor',
  'active',
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1219f745-e5d5-5d82-b70d-fe2ec5361cbd'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  'viewer',
  'active',
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '164c4b56-da54-5d03-ac61-68da49b9e939'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  'viewer',
  'active',
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e4bcfa39-f67b-57ba-9adb-a2ec9d6d8f15'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  'viewer',
  'active',
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '58272668-98ab-5940-a92d-ef1da693232e'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'Draft related work section',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b1aa6b68-010d-523c-935a-d9741e4cf329'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'Clean and version dataset',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bffc5286-5f5a-5c9a-bc09-47c8f2d1a000'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'Run baseline model',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0bd845a1-8c75-5330-b3db-e68afdd1fb3c'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'Write IRB amendment',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1164a723-ba5b-5d45-9d1c-09d7d96a61df'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'Prepare figure panels',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fbca297b-a06f-51ea-a1c4-2916a673f0a4'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e4b9eafd-2d08-55b2-ac01-551712048a0a'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '853ce50d-92bd-5664-9cdd-9a594e52b78b'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '03452cb0-c148-5b65-837c-d19017c1c2b0'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid,
  true,
  'planning',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a52f26d9-b446-5cca-8512-f3394cbd5df9'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  true,
  'analysis',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '52521c86-53c7-57e4-909e-b04a34fed992'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  true,
  'writing',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '7631d12b-6f5b-5486-9516-c9275d024911'::uuid,
  '56cf7b1d-54ca-51a3-a6a9-a6273399fe76'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  true,
  'ops',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;
