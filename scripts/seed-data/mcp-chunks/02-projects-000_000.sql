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