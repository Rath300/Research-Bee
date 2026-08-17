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