-- projects 160..174

INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '9ea58674-7b56-5a3c-a1fa-56cd508bc560'::uuid,
  'Single-cell atlas of treatment response — cohort 9',
  'Single-cell atlas of treatment response is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around genomics, RNA-seq, oncology. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  ARRAY['genomics','RNA-seq','oncology']::text[],
  'planning',
  'Computational Biology',
  ARRAY['Python','R','Genomics']::text[],
  'hybrid',
  'short_term',
  8,
  true,
  'Chicago, IL',
  now() - interval '163 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c1784608-8dd9-5405-a448-79c44bef9243'::uuid,
  '9ea58674-7b56-5a3c-a1fa-56cd508bc560'::uuid,
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  'owner',
  'active',
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd71c885d-77f2-5501-b9c0-82bee095378d'::uuid,
  '9ea58674-7b56-5a3c-a1fa-56cd508bc560'::uuid,
  'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid,
  'editor',
  'active',
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f229d8a6-656e-5896-8ff5-407007db5c64'::uuid,
  '9ea58674-7b56-5a3c-a1fa-56cd508bc560'::uuid,
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  'viewer',
  'active',
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '51f672b2-b0bc-500e-9421-24569a4b08c4'::uuid,
  '9ea58674-7b56-5a3c-a1fa-56cd508bc560'::uuid,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  'viewer',
  'active',
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ba2a3cab-50a1-5008-845e-68c7cad3b05a'::uuid,
  '9ea58674-7b56-5a3c-a1fa-56cd508bc560'::uuid,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  'viewer',
  'active',
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8c8bb181-7fee-55e4-a038-d930f88ae1ff'::uuid,
  '9ea58674-7b56-5a3c-a1fa-56cd508bc560'::uuid,
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  'viewer',
  'active',
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f1cb541f-3f1b-5c97-ab42-a162d51f7c2b'::uuid,
  '9ea58674-7b56-5a3c-a1fa-56cd508bc560'::uuid,
  '1c95027d-691e-5ca1-932e-2748aa925246'::uuid,
  'viewer',
  'active',
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e3e22f7a-a968-558d-b8d8-a8e6b3242281'::uuid,
  '9ea58674-7b56-5a3c-a1fa-56cd508bc560'::uuid,
  '8147a3cb-192b-5bfd-8336-c12eacf477cd'::uuid,
  'viewer',
  'active',
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2cee941d-901a-554b-aac6-dc6d675d3f6f'::uuid,
  '9ea58674-7b56-5a3c-a1fa-56cd508bc560'::uuid,
  'Prepare figure panels',
  'Tracked work item for Single-cell atlas of treatment response — cohort 9.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1d8bca4d-16b9-50c1-9fda-781970098b9f'::uuid,
  '9ea58674-7b56-5a3c-a1fa-56cd508bc560'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Single-cell atlas of treatment response — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid,
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1dcee486-cb2f-5a60-b2ef-8eb434acc34d'::uuid,
  '9ea58674-7b56-5a3c-a1fa-56cd508bc560'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Single-cell atlas of treatment response — cohort 9.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9960f44b-65a8-509e-92df-183d7ede1959'::uuid,
  '9ea58674-7b56-5a3c-a1fa-56cd508bc560'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Single-cell atlas of treatment response — cohort 9.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a8e9c653-76ee-5b13-b21c-83921108c29d'::uuid,
  '9ea58674-7b56-5a3c-a1fa-56cd508bc560'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Single-cell atlas of treatment response — cohort 9.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid,
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0545c8d0-43d6-5920-90ca-083547e86b72'::uuid,
  '9ea58674-7b56-5a3c-a1fa-56cd508bc560'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Single-cell atlas of treatment response — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '13f038ef-14ef-5892-946b-aa16bac2b910'::uuid,
  '9ea58674-7b56-5a3c-a1fa-56cd508bc560'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Single-cell atlas of treatment response — cohort 9.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '1c95027d-691e-5ca1-932e-2748aa925246'::uuid,
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd5f1a8c4-8983-5a82-a673-207b8811224c'::uuid,
  '9ea58674-7b56-5a3c-a1fa-56cd508bc560'::uuid,
  'Update project README (3)',
  'Tracked work item for Single-cell atlas of treatment response — cohort 9.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '8147a3cb-192b-5bfd-8336-c12eacf477cd'::uuid,
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '7fef0919-6053-5180-a001-42aa1a9d075d'::uuid,
  '9ea58674-7b56-5a3c-a1fa-56cd508bc560'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  true,
  'planning',
  ARRAY['genomics','RNA-seq']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'aaebe933-7e8f-59ef-9da2-a7f30b82ea1e'::uuid,
  '9ea58674-7b56-5a3c-a1fa-56cd508bc560'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid,
  'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid,
  true,
  'analysis',
  ARRAY['genomics','RNA-seq']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f35046d7-a378-54cf-a7d1-a0a417580b82'::uuid,
  '9ea58674-7b56-5a3c-a1fa-56cd508bc560'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  true,
  'writing',
  ARRAY['genomics','RNA-seq']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '381018e6-391f-5a21-b18e-5be9923178fe'::uuid,
  '9ea58674-7b56-5a3c-a1fa-56cd508bc560'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
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
  '5e26edc7-822e-5040-91bc-2de03431bdeb'::uuid,
  'Urban heat mitigation with satellite ML — cohort 9',
  'Urban heat mitigation with satellite ML is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around remote sensing, cities, ML. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  ARRAY['remote sensing','cities','ML']::text[],
  'active',
  'Climate Science',
  ARRAY['Remote sensing','Python','GIS']::text[],
  'local',
  'medium_term',
  9,
  true,
  'Baltimore, MD',
  now() - interval '163 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0e7ac0ef-7013-5aa8-9c44-fcdf846794c4'::uuid,
  '5e26edc7-822e-5040-91bc-2de03431bdeb'::uuid,
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  'owner',
  'active',
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5c51b9ef-dfb5-5976-9cbd-ed84bc2c9580'::uuid,
  '5e26edc7-822e-5040-91bc-2de03431bdeb'::uuid,
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  'editor',
  'active',
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b8dcd489-26d9-5e2d-a51d-f4ea0511980f'::uuid,
  '5e26edc7-822e-5040-91bc-2de03431bdeb'::uuid,
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  'viewer',
  'active',
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c3d0f505-4214-5568-a68f-05ed3a69e721'::uuid,
  '5e26edc7-822e-5040-91bc-2de03431bdeb'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  'viewer',
  'active',
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0a47f1a6-d782-5158-b553-c0c085853dc9'::uuid,
  '5e26edc7-822e-5040-91bc-2de03431bdeb'::uuid,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  'viewer',
  'active',
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd5bccf45-660b-502f-afe5-19e19d850c96'::uuid,
  '5e26edc7-822e-5040-91bc-2de03431bdeb'::uuid,
  '1ca806bf-7216-5681-8652-8db2434048ce'::uuid,
  'viewer',
  'active',
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4925e70b-0b67-545c-96ce-5330291e53b0'::uuid,
  '5e26edc7-822e-5040-91bc-2de03431bdeb'::uuid,
  '96571827-6ea6-5c4e-919e-3571e4d1410e'::uuid,
  'viewer',
  'active',
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a81a2646-2a57-50f5-a5ea-7621a22a494d'::uuid,
  '5e26edc7-822e-5040-91bc-2de03431bdeb'::uuid,
  '80bfdd09-8531-533c-aa94-5cdf0372995d'::uuid,
  'viewer',
  'active',
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f06b5042-5df7-58a2-9256-c3b9d438b30a'::uuid,
  '5e26edc7-822e-5040-91bc-2de03431bdeb'::uuid,
  '48d761d1-a120-5c9e-8de9-c17b54e987e9'::uuid,
  'viewer',
  'active',
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e1bf1dde-d84b-51c8-9f5e-ea6457f61699'::uuid,
  '5e26edc7-822e-5040-91bc-2de03431bdeb'::uuid,
  'Prepare figure panels',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 9.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3d3353ee-ddfe-5cdd-83a3-7a1230f9a329'::uuid,
  '5e26edc7-822e-5040-91bc-2de03431bdeb'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b2aa646b-ad03-5495-964d-09b0c9c8b4d8'::uuid,
  '5e26edc7-822e-5040-91bc-2de03431bdeb'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 9.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '981f7ad2-cf36-5316-b0f3-2f02e48d2d11'::uuid,
  '5e26edc7-822e-5040-91bc-2de03431bdeb'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 9.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '00a24466-dd3d-5d20-aa0f-baa669fd54df'::uuid,
  '5e26edc7-822e-5040-91bc-2de03431bdeb'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 9.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1afeee14-c5a2-5969-be8e-be3b1db100c5'::uuid,
  '5e26edc7-822e-5040-91bc-2de03431bdeb'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '1ca806bf-7216-5681-8652-8db2434048ce'::uuid,
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e6f4afa1-db68-5682-93f7-cec858e68d6f'::uuid,
  '5e26edc7-822e-5040-91bc-2de03431bdeb'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 9.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '96571827-6ea6-5c4e-919e-3571e4d1410e'::uuid,
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '46da8041-5a1e-5799-86bd-e8c8df622f89'::uuid,
  '5e26edc7-822e-5040-91bc-2de03431bdeb'::uuid,
  'Update project README (3)',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 9.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '80bfdd09-8531-533c-aa94-5cdf0372995d'::uuid,
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '708f6bcd-786e-5090-a2ae-2f948529c40c'::uuid,
  '5e26edc7-822e-5040-91bc-2de03431bdeb'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  true,
  'planning',
  ARRAY['remote sensing','cities']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c69e0be5-f3db-5bd8-8656-f92aefd11f59'::uuid,
  '5e26edc7-822e-5040-91bc-2de03431bdeb'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  true,
  'analysis',
  ARRAY['remote sensing','cities']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd09a2487-7a88-56e9-8cc8-13668328c169'::uuid,
  '5e26edc7-822e-5040-91bc-2de03431bdeb'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  true,
  'writing',
  ARRAY['remote sensing','cities']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3e283018-a0fc-598e-b07e-0714693addfd'::uuid,
  '5e26edc7-822e-5040-91bc-2de03431bdeb'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
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
  '88d1948b-73b2-55c2-923f-c6930213d014'::uuid,
  'High-throughput electrolyte screening — cohort 9',
  'High-throughput electrolyte screening is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around batteries, automation, DFT. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  ARRAY['batteries','automation','DFT']::text[],
  'active',
  'Materials Science',
  ARRAY['DFT','Lab automation','Characterization']::text[],
  'remote',
  'long_term',
  10,
  true,
  'New Haven, CT',
  now() - interval '163 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'cf598647-c984-5989-bb08-dd82eded2b3c'::uuid,
  '88d1948b-73b2-55c2-923f-c6930213d014'::uuid,
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  'owner',
  'active',
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6504f4d9-315d-599d-9368-3e064582e6ba'::uuid,
  '88d1948b-73b2-55c2-923f-c6930213d014'::uuid,
  '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid,
  'editor',
  'active',
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6939db22-f0a4-57be-bf93-6e7131ad7670'::uuid,
  '88d1948b-73b2-55c2-923f-c6930213d014'::uuid,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  'viewer',
  'active',
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b1483cca-4ebb-56f3-a37b-f1d2b6697bc6'::uuid,
  '88d1948b-73b2-55c2-923f-c6930213d014'::uuid,
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  'viewer',
  'active',
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7cc489f3-392f-549f-8820-febd71b8e10f'::uuid,
  '88d1948b-73b2-55c2-923f-c6930213d014'::uuid,
  'Prepare figure panels',
  'Tracked work item for High-throughput electrolyte screening — cohort 9.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '853a8e22-bec9-5345-be17-738e2f58d544'::uuid,
  '88d1948b-73b2-55c2-923f-c6930213d014'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for High-throughput electrolyte screening — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid,
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1927cb8f-3f52-5186-bd70-da1fb772c8cc'::uuid,
  '88d1948b-73b2-55c2-923f-c6930213d014'::uuid,
  'Upload supplementary tables',
  'Tracked work item for High-throughput electrolyte screening — cohort 9.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bf03f576-5e37-5669-ae13-d6b94ef67fb9'::uuid,
  '88d1948b-73b2-55c2-923f-c6930213d014'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for High-throughput electrolyte screening — cohort 9.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e981b7fd-0701-5be5-b4f8-d3c4e90f7418'::uuid,
  '88d1948b-73b2-55c2-923f-c6930213d014'::uuid,
  'Validate QC pipeline',
  'Tracked work item for High-throughput electrolyte screening — cohort 9.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e3c958b5-fc20-59fe-b011-8d92b4fe5746'::uuid,
  '88d1948b-73b2-55c2-923f-c6930213d014'::uuid,
  'Collect pilot feedback',
  'Tracked work item for High-throughput electrolyte screening — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid,
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '880c9410-ceba-5a38-81a2-26a1c1c1488c'::uuid,
  '88d1948b-73b2-55c2-923f-c6930213d014'::uuid,
  'Submit internal review (2)',
  'Tracked work item for High-throughput electrolyte screening — cohort 9.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '11652ad2-b5b8-5e18-8472-564661d907c8'::uuid,
  '88d1948b-73b2-55c2-923f-c6930213d014'::uuid,
  'Update project README (3)',
  'Tracked work item for High-throughput electrolyte screening — cohort 9.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6038f7d3-7c68-5505-a17f-eef12d0c584b'::uuid,
  '88d1948b-73b2-55c2-923f-c6930213d014'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  true,
  'planning',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c18c5178-43b5-5371-ae26-b2aa30724420'::uuid,
  '88d1948b-73b2-55c2-923f-c6930213d014'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid,
  '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid,
  true,
  'analysis',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '83ddbf06-8c6e-5cf4-8855-08ec993387c5'::uuid,
  '88d1948b-73b2-55c2-923f-c6930213d014'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  true,
  'writing',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8a3ab9e2-082b-58c4-ba3b-76819d4df2aa'::uuid,
  '88d1948b-73b2-55c2-923f-c6930213d014'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
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
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  'Accessible clinical note summarization — cohort 9',
  'Accessible clinical note summarization is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around NLP, healthcare, UX. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  ARRAY['NLP','healthcare','UX']::text[],
  'active',
  'Human-Computer Interaction',
  ARRAY['User research','Prototyping','Statistics']::text[],
  'hybrid',
  'long_term',
  11,
  true,
  'Princeton, NJ',
  now() - interval '163 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '224216e5-57ad-5377-add3-6adc59225f39'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  'owner',
  'active',
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ea64d9d8-c9c9-58a9-8110-195a940f08a4'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  'editor',
  'active',
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8a28692d-d0cc-530c-8b83-ff5ddebd94d0'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  'viewer',
  'active',
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ad87af58-bbdb-523e-a4b3-e744d9673a8c'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  'viewer',
  'active',
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a51e401b-38a7-5bbe-b123-72ffc04498e9'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  '66993f2c-3a35-5a4f-9ebe-3d9beb02b962'::uuid,
  'viewer',
  'active',
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0aa59929-bbf3-5709-81ce-395e31042060'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  'Prepare figure panels',
  'Tracked work item for Accessible clinical note summarization — cohort 9.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4da74625-dc9f-594e-980f-d2b042fcea6a'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Accessible clinical note summarization — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e5195561-ccc6-5e06-aa9b-f832c1ce8802'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Accessible clinical note summarization — cohort 9.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3d4afef3-18fd-5a5d-a9e4-c0522fb1a2e4'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Accessible clinical note summarization — cohort 9.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fa103ab4-4576-577b-9826-d5ff8c1b267d'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Accessible clinical note summarization — cohort 9.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '66993f2c-3a35-5a4f-9ebe-3d9beb02b962'::uuid,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7daa2890-1038-5716-a0f7-876388f6ea53'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Accessible clinical note summarization — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '59296b4a-c12d-5e1f-a092-2a30dd16292b'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Accessible clinical note summarization — cohort 9.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7a5d2d49-0386-5a2f-9fad-fd7eac528600'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  'Update project README (3)',
  'Tracked work item for Accessible clinical note summarization — cohort 9.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a10277bd-65e0-57cc-bea1-c3ff8829e165'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  true,
  'planning',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd05770b4-7d28-577e-a8d7-25dbd8409dfa'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid,
  true,
  'analysis',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e5f9ea04-f181-5aec-b93d-bc9c3cc134a3'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  true,
  'writing',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '20bebf45-b291-5e7c-bd4a-b1c4ec9fe63c'::uuid,
  '794b0cf8-9979-59bc-850a-bc1bbd200184'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
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
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'Closed-loop stimulation for memory — cohort 9',
  'Closed-loop stimulation for memory is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around neurotech, memory, EEG. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  ARRAY['neurotech','memory','EEG']::text[],
  'active',
  'Neuroscience',
  ARRAY['fMRI','Electrophysiology','Python']::text[],
  'local',
  'short_term',
  12,
  true,
  'Pasadena, CA',
  now() - interval '163 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '52ca26d2-af87-50bb-84e7-ef33c7da6ddc'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  'owner',
  'active',
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f7bdac7a-1fd9-55bd-8831-b9ce12dca0f7'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  'editor',
  'active',
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4513604a-ff99-5d45-92ae-f316f462eec3'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  'viewer',
  'active',
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '94720ede-60d0-5303-9731-79d89ccfeac7'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  'viewer',
  'active',
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a278a0b5-6e4c-51fc-9dda-9cf1f3b00475'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  '73be6dda-66ed-5e48-afec-7a94f58b9172'::uuid,
  'viewer',
  'active',
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ee4d77e9-1e52-506e-9986-d03133d5a0a0'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'ad5c0cbc-9e41-56d0-b0ae-200c31b5995a'::uuid,
  'viewer',
  'active',
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '034ae4d5-558d-5022-af38-0251a957f3e5'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'Prepare figure panels',
  'Tracked work item for Closed-loop stimulation for memory — cohort 9.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e2a8c62f-b4f4-5046-98b6-6ece638ba83b'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Closed-loop stimulation for memory — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0fc6e70d-6448-50c6-b2bd-ad84e9af4ec5'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Closed-loop stimulation for memory — cohort 9.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '65f84606-f70e-5cf1-b27c-2115c719fa93'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Closed-loop stimulation for memory — cohort 9.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '48f2a9d4-d9ba-501f-8766-5ecbcf77aa98'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Closed-loop stimulation for memory — cohort 9.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '73be6dda-66ed-5e48-afec-7a94f58b9172'::uuid,
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7d8bf902-f6ac-5dc6-a34e-ea6eb3ec5c26'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Closed-loop stimulation for memory — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'ad5c0cbc-9e41-56d0-b0ae-200c31b5995a'::uuid,
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '47f2c5b1-1905-5a02-92a5-982dfec3bc35'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Closed-loop stimulation for memory — cohort 9.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f5e57286-ad5e-57fd-a476-e96c83ddae9d'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'Update project README (3)',
  'Tracked work item for Closed-loop stimulation for memory — cohort 9.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '22fee49a-7318-59fc-89f7-b6b1710d7fdc'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  true,
  'planning',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a9da1714-46ef-567e-8bfd-3dade373689b'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  true,
  'analysis',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd9d81995-ed64-5757-9c90-a738146cfadb'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  true,
  'writing',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e8f343ce-c46e-574e-9ac2-fd698bb54d9c'::uuid,
  '6c7be1b5-2864-5891-aa96-8a655709c3b9'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
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
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'Community vaccine confidence study — cohort 9',
  'Community vaccine confidence study is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around surveys, equity, vaccines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  ARRAY['surveys','equity','vaccines']::text[],
  'planning',
  'Public Health',
  ARRAY['Epidemiology','R','Survey design']::text[],
  'remote',
  'medium_term',
  13,
  true,
  'Oxford, UK',
  now() - interval '163 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1de02851-7ce3-5bab-a97c-0b54e14c4792'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  'owner',
  'active',
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '46a2f728-f5c0-5cd1-a7d9-a8b7bf2db51c'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  'editor',
  'active',
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7e5a740a-652d-5a74-b67f-6d5f99057e0a'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  'viewer',
  'active',
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '296ec22b-45c9-53ef-b82e-7b8896ad1179'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid,
  'viewer',
  'active',
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '217cbde0-841c-54e2-b6e8-6310f48d1f6c'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'ec425ec6-5f9a-57bd-a9ad-785e91c63bf0'::uuid,
  'viewer',
  'active',
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '03b8d1cc-c9ac-50f8-a720-45b1a9f40e31'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'f2ef0fef-2844-5e39-a9d9-6622ac5587fb'::uuid,
  'viewer',
  'active',
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a8183216-98e9-52d2-87a7-1c95b637a155'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  '803e2dbf-90f2-5971-8873-a4ee6e96bedd'::uuid,
  'viewer',
  'active',
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '080535d7-f717-5a97-80e7-c2d581287935'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'Prepare figure panels',
  'Tracked work item for Community vaccine confidence study — cohort 9.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ae056a64-1c06-5eca-89f6-5a8e78f440b4'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Community vaccine confidence study — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8e180443-e116-59d1-b4bb-18e001ba898a'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Community vaccine confidence study — cohort 9.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '63b3fe3c-2476-59b6-8c6a-def8bed00d4d'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Community vaccine confidence study — cohort 9.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '05cb6b2f-2480-56e5-9b90-84393c7b9444'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Community vaccine confidence study — cohort 9.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'ec425ec6-5f9a-57bd-a9ad-785e91c63bf0'::uuid,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e21fb321-36e2-50df-a06d-1ec121d71da6'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Community vaccine confidence study — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'f2ef0fef-2844-5e39-a9d9-6622ac5587fb'::uuid,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0575ddde-e713-5e4c-8b94-6bddd8bfc7ec'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Community vaccine confidence study — cohort 9.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '803e2dbf-90f2-5971-8873-a4ee6e96bedd'::uuid,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2d2ac0fb-0e2c-5286-bc6e-98aa471bd140'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'Update project README (3)',
  'Tracked work item for Community vaccine confidence study — cohort 9.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c4725cfb-4fee-5d51-9519-b74bb10161a1'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  true,
  'planning',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8e91c9f7-c11b-56a9-8cab-4725672a0ae9'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  true,
  'analysis',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c19b4c07-9e30-55cd-a3b7-d5681eccb7ba'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  true,
  'writing',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '321be267-b4c1-5277-8e46-2da74fdcf51a'::uuid,
  'cff710c8-0dfc-5fd7-9dab-9ace36a549ed'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid,
  'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid,
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
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  'Near-term quantum error mitigation — cohort 9',
  'Near-term quantum error mitigation is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around NISQ, algorithms. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  ARRAY['NISQ','algorithms']::text[],
  'active',
  'Quantum Information',
  ARRAY['Qiskit','Linear algebra','Optics']::text[],
  'hybrid',
  'long_term',
  14,
  true,
  'Singapore',
  now() - interval '163 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'bcbb3d1a-6d11-58d6-a4a4-e40c562d288e'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  'owner',
  'active',
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '13a5f3b2-3858-58a4-9018-7382dbe5669b'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  'editor',
  'active',
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a682bbad-49c4-584f-808f-fd92c7a8a4a0'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid,
  'viewer',
  'active',
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9542064f-54c7-5a02-b70b-a097c056799f'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid,
  'viewer',
  'active',
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0d425df2-c406-5739-8e3e-acd7de682a2e'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  'd8a33d26-1570-57fc-b4be-dd5e32331b77'::uuid,
  'viewer',
  'active',
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6b565f18-4088-51fd-a8e7-e05080a466ce'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  '75f6df30-5d8f-5dd3-917e-2cb576513e61'::uuid,
  'viewer',
  'active',
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8f7658dd-5a8e-5bdc-b827-019600066cd4'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  '11c84f5e-775c-5b46-af66-1f232d2d9f72'::uuid,
  'viewer',
  'active',
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1464976e-40e8-5d20-b4f5-a9b67264eade'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  '377c353e-df57-5706-9534-8723efe02ecd'::uuid,
  'viewer',
  'active',
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0ff4bc4e-5f99-56ba-99f1-5efa8bc68ea3'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  'Prepare figure panels',
  'Tracked work item for Near-term quantum error mitigation — cohort 9.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '94f49704-6b55-550f-976c-9eb2efc9f524'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Near-term quantum error mitigation — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '18ebb62d-3129-57e9-8d24-25d575bf0669'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Near-term quantum error mitigation — cohort 9.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f8d4aba0-685e-5e15-b623-b41d83c935c1'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Near-term quantum error mitigation — cohort 9.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '60ebb980-66d2-50ff-9e61-824cb6011b15'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Near-term quantum error mitigation — cohort 9.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'd8a33d26-1570-57fc-b4be-dd5e32331b77'::uuid,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6d8b4482-b456-586c-abe8-d62ded2323a3'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Near-term quantum error mitigation — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '75f6df30-5d8f-5dd3-917e-2cb576513e61'::uuid,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '455a5cb9-af16-5d1c-b5de-95e2c5482717'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Near-term quantum error mitigation — cohort 9.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '11c84f5e-775c-5b46-af66-1f232d2d9f72'::uuid,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bd84896c-592f-5416-87b5-30d39934c6c7'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  'Update project README (3)',
  'Tracked work item for Near-term quantum error mitigation — cohort 9.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '377c353e-df57-5706-9534-8723efe02ecd'::uuid,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ea4ebd8f-8d64-505c-8b70-7456707bd8e9'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  true,
  'planning',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8383d770-7942-592d-a95d-ff4a230ef5e1'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  true,
  'analysis',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd5a6ad35-ebd9-537e-91cb-b7aac5e9c4a7'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid,
  'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid,
  true,
  'writing',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4f55c4fd-5e61-501f-ac73-5bb2895dd0d2'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid,
  '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid,
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
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'Robust evaluation for clinical LLMs — cohort 9',
  'Robust evaluation for clinical LLMs is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around LLMs, evaluation, safety. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  ARRAY['LLMs','evaluation','safety']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'local',
  'long_term',
  15,
  true,
  'Melbourne, AU',
  now() - interval '163 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b33b8121-88cf-588f-9268-f466a9e0ee12'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  'owner',
  'active',
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '75b6eb0b-eeb6-5789-9ecb-e1edd111033e'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  'editor',
  'active',
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '953ea574-41a2-5166-922e-b171685ba5ea'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  '9583a091-71fc-59e2-a837-c827f33c072a'::uuid,
  'viewer',
  'active',
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '47bfcd6d-29bd-59df-8f3c-08f767eb3e79'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid,
  'viewer',
  'active',
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b5035424-6329-57bc-ab41-fd9040bfbb54'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  '370327fd-3558-57cf-8945-bc80d916c857'::uuid,
  'viewer',
  'active',
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'da8976b4-581d-523c-a234-c41c0ebde3df'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  '2ca134b1-2119-5e9e-8c0e-f36ce476cf56'::uuid,
  'viewer',
  'active',
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5146df60-1309-5f33-bb3d-6dd40d326a8c'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  '04960929-8e6d-526f-902a-3f56fae228ea'::uuid,
  'viewer',
  'active',
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '85845e77-db22-562b-90d6-1ebb0edca55a'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'd753bc68-7b16-56ec-967a-6c9f5215fab8'::uuid,
  'viewer',
  'active',
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c453246c-e2f7-522f-93eb-34d51322cdf9'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid,
  'viewer',
  'active',
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f0cfbf82-1e5f-5172-b7cc-83f6557e4e27'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'Prepare figure panels',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 9.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c8f68df2-0188-5ad5-9e07-0123b9f07850'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3b332705-5f46-53e1-a7a9-e748a7f2049e'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 9.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '9583a091-71fc-59e2-a837-c827f33c072a'::uuid,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd94eb4cf-5c18-53e2-ad02-4f11cf2c66dd'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 9.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2e95df4f-66b4-5cc9-acc4-3b7d5a2699df'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 9.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '370327fd-3558-57cf-8945-bc80d916c857'::uuid,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '060b846d-9754-5e2f-8e3f-2f322bea7431'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '2ca134b1-2119-5e9e-8c0e-f36ce476cf56'::uuid,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '55530987-4a3c-59a5-9534-ea7c07b7d8e7'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 9.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '04960929-8e6d-526f-902a-3f56fae228ea'::uuid,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2304029d-909f-5aec-99ae-d71b3aa185bb'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'Update project README (3)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 9.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'd753bc68-7b16-56ec-967a-6c9f5215fab8'::uuid,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b26f0524-6154-5d0a-8be4-f89912e1ca21'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  true,
  'planning',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '35c7a9d4-82f8-5026-8548-9122f25be89c'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  true,
  'analysis',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5e6363d8-53a4-5877-b78d-bd146c4bb1ce'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '9583a091-71fc-59e2-a837-c827f33c072a'::uuid,
  '9583a091-71fc-59e2-a837-c827f33c072a'::uuid,
  true,
  'writing',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '00c5f70e-f1b8-5487-bee8-9b18079a3ace'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid,
  'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid,
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
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'Photoredox catalysis for late-stage edits — cohort 9',
  'Photoredox catalysis for late-stage edits is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around catalysis, synthesis. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  ARRAY['catalysis','synthesis']::text[],
  'active',
  'Chemistry',
  ARRAY['Organic synthesis','Spectroscopy','Cheminformatics']::text[],
  'remote',
  'short_term',
  4,
  true,
  'Cambridge, MA',
  now() - interval '163 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1933453f-1e2d-5f90-90e5-a929c5c2fa4d'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  'owner',
  'active',
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7f7f3959-a0fc-5049-b850-aec7c598a49f'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'f7d3bba5-3aee-58bf-94fe-011c7853e82d'::uuid,
  'editor',
  'active',
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3fa305f4-827a-5e95-915c-e32e03e09052'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  '093ae4a7-64b9-54f9-9c88-8b9150c9d1af'::uuid,
  'viewer',
  'active',
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8227d8ee-c07b-5c68-bc5b-2ec9e52f9504'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'b5c5f827-63ef-5230-bb5e-5e5d81dec47c'::uuid,
  'viewer',
  'active',
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '44d1aa42-6e35-54f3-ab55-81c0ef4cba97'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'Prepare figure panels',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 9.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4f0e77bb-52ba-59b3-b8b3-c2ce1c2c5d83'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'f7d3bba5-3aee-58bf-94fe-011c7853e82d'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a86177be-4300-545d-9efd-e4567df17d49'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 9.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '093ae4a7-64b9-54f9-9c88-8b9150c9d1af'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5268b4df-b314-53c2-bac0-578a2e4190a9'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 9.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'b5c5f827-63ef-5230-bb5e-5e5d81dec47c'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2a3577b5-3d1b-5066-8bb7-9482449b6281'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 9.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c002f1e1-e70d-578e-b2d1-97e71622f76b'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'f7d3bba5-3aee-58bf-94fe-011c7853e82d'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5eaf1039-9d90-52ff-a21b-76d69bd27529'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 9.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '093ae4a7-64b9-54f9-9c88-8b9150c9d1af'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3b45f543-d3e2-52f6-8e5d-2783532fc6ab'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'Update project README (3)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 9.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'b5c5f827-63ef-5230-bb5e-5e5d81dec47c'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '84dd0911-bef9-589a-981c-24025dc64a3b'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  true,
  'planning',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2da95ea3-a331-5829-b904-d97571f05d3b'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'f7d3bba5-3aee-58bf-94fe-011c7853e82d'::uuid,
  'f7d3bba5-3aee-58bf-94fe-011c7853e82d'::uuid,
  true,
  'analysis',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'fd447085-6c67-53eb-be31-0ac390268917'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '093ae4a7-64b9-54f9-9c88-8b9150c9d1af'::uuid,
  '093ae4a7-64b9-54f9-9c88-8b9150c9d1af'::uuid,
  true,
  'writing',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ddf76613-ff25-5b75-9bad-e2d0d0629077'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'b5c5f827-63ef-5230-bb5e-5e5d81dec47c'::uuid,
  'b5c5f827-63ef-5230-bb5e-5e5d81dec47c'::uuid,
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
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'STEM identity in first-gen undergraduates — cohort 9',
  'STEM identity in first-gen undergraduates is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around equity, mixed methods. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  ARRAY['equity','mixed methods']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'hybrid',
  'medium_term',
  5,
  true,
  'Palo Alto, CA',
  now() - interval '163 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9b2c1d43-3173-5be5-a5c9-9a7c6fed7e32'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  'owner',
  'active',
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '758a513c-cf30-5877-93c0-b9ebf00aa011'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  '737fe981-e236-58bd-8b5f-7d72782f3913'::uuid,
  'editor',
  'active',
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5553bcfc-2b13-5971-9797-9c2991861491'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid,
  'viewer',
  'active',
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e73c3a48-feee-5192-8b5c-bad6b7e03ded'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid,
  'viewer',
  'active',
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'da1a8fe6-12a1-58d7-b426-4e3c2be542fe'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  '93006b3a-19e8-5e78-8f8e-4e880c4429ef'::uuid,
  'viewer',
  'active',
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9b29c74f-7214-5661-84b0-4cb59bcc3185'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'Prepare figure panels',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 9.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ea3ebf14-1bf3-51b5-959e-c5d1a93a20fa'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '737fe981-e236-58bd-8b5f-7d72782f3913'::uuid,
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '442d4ae2-3e2a-5671-8988-18e51ee732f2'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'Upload supplementary tables',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 9.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid,
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1abf6911-e652-5513-bb5c-4acedc40f784'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 9.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid,
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '55fadfae-1547-551d-a3f1-d3a817ca9d8d'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'Validate QC pipeline',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 9.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '93006b3a-19e8-5e78-8f8e-4e880c4429ef'::uuid,
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '90f4f3fe-d512-5e91-a7c4-ec88e08bbf6e'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'Collect pilot feedback',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ae22c2db-6b28-5c3a-ab8b-80881bfbbdac'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'Submit internal review (2)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 9.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '737fe981-e236-58bd-8b5f-7d72782f3913'::uuid,
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5051602d-d815-5e10-bfcb-1d163515af57'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'Update project README (3)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 9.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid,
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '343da318-46fb-5535-a36a-aaa5f3abc52c'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  true,
  'planning',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6ea54895-d89f-55ae-a47c-de63d06c80fd'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '737fe981-e236-58bd-8b5f-7d72782f3913'::uuid,
  '737fe981-e236-58bd-8b5f-7d72782f3913'::uuid,
  true,
  'analysis',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'bfba1cbe-9468-5cf5-b354-676558061537'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid,
  'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid,
  true,
  'writing',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1ec91b2d-cdac-540e-916d-92291ddd70a0'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid,
  'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid,
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
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  'Dexterous packing under uncertainty — cohort 9',
  'Dexterous packing under uncertainty is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around manipulation, sim2real. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  ARRAY['manipulation','sim2real']::text[],
  'planning',
  'Robotics',
  ARRAY['ROS','Control systems','C++']::text[],
  'local',
  'long_term',
  6,
  true,
  'Berkeley, CA',
  now() - interval '163 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5771f33f-c9a6-5ea4-92dd-3b557bafd931'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  'owner',
  'active',
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'fb6a20bf-2c21-5a31-901b-0d0214404773'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid,
  'editor',
  'active',
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'af508a7a-b99e-5ae0-99bd-18c4f63c2ded'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  '4e11607f-ef7e-5682-8c99-50cc32c882c8'::uuid,
  'viewer',
  'active',
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1c1851ec-24ef-5427-80ab-11a89fe658d7'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid,
  'viewer',
  'active',
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '03e5778e-47da-5298-a45a-72579135746d'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  '2619904e-3b06-54b6-bb0f-ea16e3de5f6d'::uuid,
  'viewer',
  'active',
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2ac66067-11b4-5943-bcf7-62f64c25c809'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  'feac598c-38ed-5b4e-8173-ae60d6e102db'::uuid,
  'viewer',
  'active',
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '291d3c2f-aabe-5bfd-9089-432f06bb5dfc'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  'Prepare figure panels',
  'Tracked work item for Dexterous packing under uncertainty — cohort 9.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '744e1d73-81ab-52a8-85dd-02bfeacc0097'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Dexterous packing under uncertainty — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c5b30932-56dd-5a74-ad4e-28c873b287a4'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Dexterous packing under uncertainty — cohort 9.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '4e11607f-ef7e-5682-8c99-50cc32c882c8'::uuid,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2f36bece-9470-5fd4-8613-d2d9b5df7395'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Dexterous packing under uncertainty — cohort 9.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ffdc3de6-d97e-5ce0-9767-bd2c861cfd84'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Dexterous packing under uncertainty — cohort 9.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '2619904e-3b06-54b6-bb0f-ea16e3de5f6d'::uuid,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c95f27d1-a1dc-566a-9181-7174a0b1d225'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Dexterous packing under uncertainty — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'feac598c-38ed-5b4e-8173-ae60d6e102db'::uuid,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bd0bc442-a0e1-5ca7-ba1f-8152b1b34c9a'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 9.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e40ea07e-b271-5770-88a8-205b4dc01a1b'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  'Update project README (3)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 9.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0f9f8b72-f1fe-58aa-9d46-6296ed306f7a'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  true,
  'planning',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3abaec9d-cb4a-5603-a008-5f3de25aa2be'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid,
  'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid,
  true,
  'analysis',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'fe41a510-ca72-5156-9c17-1c823dd26c3a'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '4e11607f-ef7e-5682-8c99-50cc32c882c8'::uuid,
  '4e11607f-ef7e-5682-8c99-50cc32c882c8'::uuid,
  true,
  'writing',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '84a9e8d9-ea07-50ad-bc7f-99dcac544fea'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid,
  '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid,
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
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'Transit spectroscopy pipeline for JWST — cohort 9',
  'Transit spectroscopy pipeline for JWST is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around exoplanets, pipelines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  ARRAY['exoplanets','pipelines']::text[],
  'active',
  'Astrophysics',
  ARRAY['Data pipelines','Python','Bayesian inference']::text[],
  'remote',
  'long_term',
  7,
  true,
  'Boston, MA',
  now() - interval '163 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ab63f676-f052-5d80-9f43-56882e7f89f1'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  'owner',
  'active',
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'bdadfc72-e92d-556c-8f86-af5451eb8f31'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  '65673952-33ec-5b72-b075-0d350bcdb2da'::uuid,
  'editor',
  'active',
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7ff0ffcd-1acb-5a15-b574-313ff68e6a5a'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid,
  'viewer',
  'active',
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'cd363f65-be4c-56ca-94d2-68347b809460'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid,
  'viewer',
  'active',
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'cfaab852-c337-5d54-baa6-a50e27518772'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  '900b4bc0-9225-59ed-bdb7-b994730f07e8'::uuid,
  'viewer',
  'active',
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '17c6b78b-d064-573f-bc8a-3f2f9c3a3102'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'd87f4c56-0da4-5e92-b739-b5649237064a'::uuid,
  'viewer',
  'active',
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '55cb61ea-0d58-5dc8-ac9f-48dc6f3d0c7a'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  '59fc5e89-4210-5535-9f42-ed5204636320'::uuid,
  'viewer',
  'active',
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ad66ebcd-deaa-5cef-8752-a6a9390b01bd'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'Prepare figure panels',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 9.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7036c2fb-18f8-555d-84bd-b4f8ab6957bc'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '65673952-33ec-5b72-b075-0d350bcdb2da'::uuid,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fe03b60a-0262-579e-9994-43b97a6140b2'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 9.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ce490e83-5c9d-5c1e-8355-efc69a00e792'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 9.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2cd90d37-0b0b-50f4-b1cf-f80d53daa17b'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 9.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '900b4bc0-9225-59ed-bdb7-b994730f07e8'::uuid,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7d14b0e1-efd2-527b-b9c2-6a7dc1c1e1aa'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'd87f4c56-0da4-5e92-b739-b5649237064a'::uuid,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'cde01d86-27f6-5c4e-b444-64258468e438'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 9.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '59fc5e89-4210-5535-9f42-ed5204636320'::uuid,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '18088ffa-833b-5445-acb4-8a2ef814e6e3'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'Update project README (3)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 9.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b2e5dc8c-3650-5136-ad57-f7f12f7e14e3'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  true,
  'planning',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3b2e8fcf-7a6e-5a6c-a578-f9181ac108a0'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '65673952-33ec-5b72-b075-0d350bcdb2da'::uuid,
  '65673952-33ec-5b72-b075-0d350bcdb2da'::uuid,
  true,
  'analysis',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '237dfb55-16e8-5e28-ab5c-e46ef910ac2f'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid,
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid,
  true,
  'writing',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b64e3f23-5a29-54b5-9b5d-40f5bf9b4093'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid,
  'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid,
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
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'Vascularized cardiac organoids — cohort 9',
  'Vascularized cardiac organoids is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around organoids, tissue eng. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  ARRAY['organoids','tissue eng']::text[],
  'active',
  'Bioengineering',
  ARRAY['Tissue culture','CAD','Microfluidics']::text[],
  'hybrid',
  'short_term',
  8,
  true,
  'Toronto, ON',
  now() - interval '163 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '40f9e24a-ed10-5dd3-9330-1736e96e6cdf'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  'owner',
  'active',
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '33b45b95-6783-59ed-9d00-7107d1a2e4c4'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  '1ab26a18-9f1d-5d13-b635-8e7bfec05e0e'::uuid,
  'editor',
  'active',
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e7db0844-1f8a-570c-beb5-11d3babbdab4'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  '5bb68fe5-96ce-5240-8f10-cf1202286b31'::uuid,
  'viewer',
  'active',
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'bcad7a2a-520f-56f8-8b47-d4d01f82f94d'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid,
  'viewer',
  'active',
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9310a7d8-f39b-5485-9709-0c313cb5069e'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'b6fd1d0a-577c-50d9-af00-76be7ac0fe27'::uuid,
  'viewer',
  'active',
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a35d6902-593d-5825-88a2-fc2ca4679bc2'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  '71e76d95-9bb6-5da0-b840-adff1e3b3e09'::uuid,
  'viewer',
  'active',
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c0ec1bd8-9556-5e5c-ac8c-f8b49fa44fc4'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'fd521a38-e933-583e-9739-3570f7da8371'::uuid,
  'viewer',
  'active',
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8f5dc36e-49be-53b5-8d77-513753ebac8a'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'bc6f828c-01a3-54cb-8689-2ba2d88d126d'::uuid,
  'viewer',
  'active',
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0bd0c3ed-d225-589e-beeb-23e1cf302244'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'Prepare figure panels',
  'Tracked work item for Vascularized cardiac organoids — cohort 9.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5739d0ec-c193-5325-90ce-944812d2f95a'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Vascularized cardiac organoids — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '1ab26a18-9f1d-5d13-b635-8e7bfec05e0e'::uuid,
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'de94cc7a-29c4-5c3d-9972-5849801f0e62'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Vascularized cardiac organoids — cohort 9.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '5bb68fe5-96ce-5240-8f10-cf1202286b31'::uuid,
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '81d7e09f-3541-5652-9a1d-1d257134a7ea'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Vascularized cardiac organoids — cohort 9.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid,
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8185b10c-2a07-55dd-9036-59d47c839265'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Vascularized cardiac organoids — cohort 9.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'b6fd1d0a-577c-50d9-af00-76be7ac0fe27'::uuid,
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0143f250-79b7-5bb7-8930-ec44011e13d7'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Vascularized cardiac organoids — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '71e76d95-9bb6-5da0-b840-adff1e3b3e09'::uuid,
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a192fcd1-2a1a-5e4a-8bb0-c084a89788b8'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Vascularized cardiac organoids — cohort 9.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'fd521a38-e933-583e-9739-3570f7da8371'::uuid,
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '123262a6-4c62-5e19-99b3-1f40eba87e01'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'Update project README (3)',
  'Tracked work item for Vascularized cardiac organoids — cohort 9.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'bc6f828c-01a3-54cb-8689-2ba2d88d126d'::uuid,
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd6357796-d04e-5fd9-b829-865d4e9f1419'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  true,
  'planning',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5fdb6bc4-7503-53da-b2a7-42bb2edce8bc'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '1ab26a18-9f1d-5d13-b635-8e7bfec05e0e'::uuid,
  '1ab26a18-9f1d-5d13-b635-8e7bfec05e0e'::uuid,
  true,
  'analysis',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '64488e56-e99e-52d0-afa4-699a70830474'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '5bb68fe5-96ce-5240-8f10-cf1202286b31'::uuid,
  '5bb68fe5-96ce-5240-8f10-cf1202286b31'::uuid,
  true,
  'writing',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a224297a-b9c0-56ae-9aa6-c44a44f49622'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid,
  '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid,
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
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'Labor market effects of credentialing — cohort 9',
  'Labor market effects of credentialing is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around causal, policy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  ARRAY['causal','policy']::text[],
  'active',
  'Economics',
  ARRAY['Econometrics','Stata','Causal ML']::text[],
  'local',
  'medium_term',
  9,
  true,
  'Zurich, CH',
  now() - interval '163 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '29460eec-b4c7-5a2a-83a5-39a331112bdf'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  'owner',
  'active',
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3ec276db-4b79-581d-93aa-b37f9fb60baf'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid,
  'editor',
  'active',
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c00ec293-9159-57cc-8f97-b4281a253981'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'f1960a0a-78f4-50df-a9b5-52f5cecb2a7f'::uuid,
  'viewer',
  'active',
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '251f0ef2-4055-5527-91e7-71e2da1abbbb'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  '83ca350d-88aa-5712-a84d-d53fb5dfe34a'::uuid,
  'viewer',
  'active',
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '650e922a-1363-5aed-a5fd-2ac8d76d93fd'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid,
  'viewer',
  'active',
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6d6eff55-275c-5e2e-ae89-11128300d467'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'e3fbeb3d-2a6c-5b72-9ae7-02c84c034471'::uuid,
  'viewer',
  'active',
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '64eb70cc-8410-520b-b68c-6d8c6857fdf6'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  '1b70bae1-1102-5059-84fb-4d69136b5032'::uuid,
  'viewer',
  'active',
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'be88685e-62f9-5773-a444-792b20566f06'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'd63df04e-24ab-5901-bf95-b865f4575782'::uuid,
  'viewer',
  'active',
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e77db5b2-f52c-5d89-ade9-8eca4639fd51'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  '606612b1-7686-5c2f-8974-1cab41c30b32'::uuid,
  'viewer',
  'active',
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '68bcc5b8-f133-5fbb-a89c-faf43e407795'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'Prepare figure panels',
  'Tracked work item for Labor market effects of credentialing — cohort 9.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bed2c900-804e-570b-a7e6-4643e1318957'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Labor market effects of credentialing — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '503f7a55-a525-5971-8587-965336020d24'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Labor market effects of credentialing — cohort 9.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'f1960a0a-78f4-50df-a9b5-52f5cecb2a7f'::uuid,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4eff2a0e-5bc5-5b53-8866-839d4e4b9e90'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Labor market effects of credentialing — cohort 9.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '83ca350d-88aa-5712-a84d-d53fb5dfe34a'::uuid,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '064c3902-903c-53f7-9dde-79fa0d3f5083'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Labor market effects of credentialing — cohort 9.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f3fbe618-9137-53fc-ac1f-2739f72943f1'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Labor market effects of credentialing — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'e3fbeb3d-2a6c-5b72-9ae7-02c84c034471'::uuid,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2dc9ab89-799f-5de3-91bb-780f70190dbe'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Labor market effects of credentialing — cohort 9.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '1b70bae1-1102-5059-84fb-4d69136b5032'::uuid,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ee2345c4-3d04-5ea3-b7c4-4f9fd78bd0f5'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'Update project README (3)',
  'Tracked work item for Labor market effects of credentialing — cohort 9.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'd63df04e-24ab-5901-bf95-b865f4575782'::uuid,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3405b02e-865a-53d9-8a74-4a71fd61e9b7'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  true,
  'planning',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3757cdaf-ef18-52da-8254-a0c65cad495a'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid,
  'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid,
  true,
  'analysis',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd6097bf7-e6a7-502c-83ea-c93b76b099cb'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'f1960a0a-78f4-50df-a9b5-52f5cecb2a7f'::uuid,
  'f1960a0a-78f4-50df-a9b5-52f5cecb2a7f'::uuid,
  true,
  'writing',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e0681a2b-56e3-5a5f-aaba-4f4d22379990'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '83ca350d-88aa-5712-a84d-d53fb5dfe34a'::uuid,
  '83ca350d-88aa-5712-a84d-d53fb5dfe34a'::uuid,
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
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  'Low-cost water contaminant sensing — cohort 9',
  'Low-cost water contaminant sensing is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around sensors, water. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  ARRAY['sensors','water']::text[],
  'active',
  'Environmental Engineering',
  ARRAY['Hydrology','Sensor networks','Python']::text[],
  'remote',
  'long_term',
  10,
  true,
  'London, UK',
  now() - interval '163 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6783eec4-9194-5ae8-9a70-149a7dde4770'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  'owner',
  'active',
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'bee8cb4d-23c9-5fe8-bca0-2b8b3f263b68'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  '48d761d1-a120-5c9e-8de9-c17b54e987e9'::uuid,
  'editor',
  'active',
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '936535f1-6f0b-5094-b33d-b83e003e4db8'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  '15329dac-2653-5bf8-ab92-979bca93b089'::uuid,
  'viewer',
  'active',
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '857fbbc1-f1cb-5817-ab43-d84af3e6bf13'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8'::uuid,
  'viewer',
  'active',
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '29a27897-18f5-5b5a-a90b-51977d602885'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  'Prepare figure panels',
  'Tracked work item for Low-cost water contaminant sensing — cohort 9.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3c163fa4-a2e7-5fa8-8dfc-f8825cadb4d8'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Low-cost water contaminant sensing — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '48d761d1-a120-5c9e-8de9-c17b54e987e9'::uuid,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '411918c7-bd54-525b-a955-8e37421df3f0'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Low-cost water contaminant sensing — cohort 9.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '15329dac-2653-5bf8-ab92-979bca93b089'::uuid,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'caf6119c-4e5c-5923-ade5-e24d133120e5'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Low-cost water contaminant sensing — cohort 9.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8'::uuid,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e1c759da-f47f-5898-b156-9235bf841426'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Low-cost water contaminant sensing — cohort 9.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'db2d4a0b-09f3-5eee-ae09-1143fa6ac2be'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Low-cost water contaminant sensing — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '48d761d1-a120-5c9e-8de9-c17b54e987e9'::uuid,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '11dfb4aa-327c-554a-8088-9159189ebc15'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 9.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '15329dac-2653-5bf8-ab92-979bca93b089'::uuid,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'db201bf1-7cd1-516e-bc79-ee7ab8dc6d9a'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  'Update project README (3)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 9.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8'::uuid,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2c554fe1-3ec6-53de-975d-81bfdc9c6d41'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  true,
  'planning',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4d32b0c8-5dc7-5b2f-ab6c-db6e44187ab5'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '48d761d1-a120-5c9e-8de9-c17b54e987e9'::uuid,
  '48d761d1-a120-5c9e-8de9-c17b54e987e9'::uuid,
  true,
  'analysis',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f0219d03-a20b-5bbe-ab4a-9d0074c30559'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '15329dac-2653-5bf8-ab92-979bca93b089'::uuid,
  '15329dac-2653-5bf8-ab92-979bca93b089'::uuid,
  true,
  'writing',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'aabf20e4-b3bd-5843-ba05-f98f98c14096'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8'::uuid,
  '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8'::uuid,
  true,
  'ops',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;
