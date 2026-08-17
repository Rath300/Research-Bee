INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'Federated learning for rare disease cohorts — cohort 7',
  'Federated learning for rare disease cohorts is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around privacy, ML. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  ARRAY['privacy','ML']::text[],
  'planning',
  'Computational Biology',
  ARRAY['Python','R','Genomics']::text[],
  'remote',
  'long_term',
  7,
  true,
  'Atlanta, GA',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e2f6a360-11e4-5d5c-9921-6728517713ed'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  'owner',
  'active',
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6a6f3f2a-18b2-539b-a140-b34ba6a7f92f'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid,
  'editor',
  'active',
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '984dfd32-7eb4-5414-b463-ed66bc32e044'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  '89c35658-db6b-5653-9f13-5b06eb97b083'::uuid,
  'viewer',
  'active',
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '360e97ed-dbca-552e-a34b-c78f5f5e8af7'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'a6d22533-4b09-5974-a116-4c83d9a214f8'::uuid,
  'viewer',
  'active',
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c9b498f1-1f2b-5784-92a2-919348555ed1'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'fade7767-529a-55b3-b6ca-4e25b88b90fb'::uuid,
  'viewer',
  'active',
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3f1e5cf3-d016-572e-baca-621bd887546d'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'f1459b82-7ce3-5cb7-96e8-a9b8d77e4dec'::uuid,
  'viewer',
  'active',
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4310492c-ec5a-5c07-ad70-9baf70cd130a'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  'viewer',
  'active',
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ca78e468-ee61-5291-941c-a0b94f80105e'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'Draft related work section',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9085e14f-48ee-5d6a-9148-9381803f31a0'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'Clean and version dataset',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c34df69a-1bf5-5864-8909-387f20989649'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'Run baseline model',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '89c35658-db6b-5653-9f13-5b06eb97b083'::uuid,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '920d9065-5ce3-55f3-9c64-3a4e4d47da1f'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'Write IRB amendment',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'a6d22533-4b09-5974-a116-4c83d9a214f8'::uuid,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '12bccb5b-3222-5702-b698-cd073ef353b4'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'Prepare figure panels',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'fade7767-529a-55b3-b6ca-4e25b88b90fb'::uuid,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9db1022d-af30-5b79-8cb7-a356641bdc88'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'f1459b82-7ce3-5cb7-96e8-a9b8d77e4dec'::uuid,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2712c330-226c-587d-8923-6515d6222e16'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '08e3a2c1-0b26-5fe8-90fd-e2ca33fd532d'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'efa65c3d-b55c-5818-a48c-79e051c7573c'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  true,
  'planning',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3cf29c55-6b16-5ac3-9eb8-baf66304a2e4'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid,
  'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid,
  true,
  'analysis',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4feb08b8-8293-55e6-9a0a-cb776f2928d3'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '89c35658-db6b-5653-9f13-5b06eb97b083'::uuid,
  '89c35658-db6b-5653-9f13-5b06eb97b083'::uuid,
  true,
  'writing',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b333ada4-e4a8-50dd-be93-4011820d4ccb'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'a6d22533-4b09-5974-a116-4c83d9a214f8'::uuid,
  'a6d22533-4b09-5974-a116-4c83d9a214f8'::uuid,
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
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'Wildfire smoke exposure forecasting — cohort 7',
  'Wildfire smoke exposure forecasting is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around air quality, forecasting. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  ARRAY['air quality','forecasting']::text[],
  'active',
  'Climate Science',
  ARRAY['Remote sensing','Python','GIS']::text[],
  'hybrid',
  'short_term',
  8,
  true,
  'Ann Arbor, MI',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c785d1c3-cc86-50cc-93ce-b20687ee4a57'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  'owner',
  'active',
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1eedd06d-20ee-55a5-beec-554665746ec5'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  '3be3c9dc-0d8f-57c9-9151-cd22c9e93832'::uuid,
  'editor',
  'active',
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'fc32fcb1-6c61-5f60-b6ed-31af2a67c901'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'd896625a-e04e-502e-af2b-a9790bdca6ee'::uuid,
  'viewer',
  'active',
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '54c8c049-b25f-5494-80ec-3da923924265'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  '4868a21a-f8c4-5dde-a114-6b20f5f20ac8'::uuid,
  'viewer',
  'active',
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9ce04ea8-0d40-55e9-abc6-a1ea947619ee'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  '6c9d0537-63f0-513c-9725-e07e525bd742'::uuid,
  'viewer',
  'active',
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b69d6063-e579-5287-bb08-b1357bd1f914'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  'viewer',
  'active',
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'fbea7c12-c2e1-5834-b13b-16dc8616e6d0'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  'viewer',
  'active',
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c0eb8921-ff4a-5ef3-a179-2628a02a699a'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  'viewer',
  'active',
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b6d0933c-3c74-5528-b473-f8e8866c7be1'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'Draft related work section',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8e410dec-dc4e-5ff8-9467-b8e05306f448'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'Clean and version dataset',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '3be3c9dc-0d8f-57c9-9151-cd22c9e93832'::uuid,
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '80ca40f0-e278-50c4-b42c-16cc983d7f0e'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'Run baseline model',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'd896625a-e04e-502e-af2b-a9790bdca6ee'::uuid,
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e152d0d8-357f-5e15-883b-9374f8d32655'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'Write IRB amendment',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '4868a21a-f8c4-5dde-a114-6b20f5f20ac8'::uuid,
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '16e68bf3-f452-5b48-bf00-970e9c635fc6'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'Prepare figure panels',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '6c9d0537-63f0-513c-9725-e07e525bd742'::uuid,
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8da3cfa7-6fda-597c-ab96-988db02ec776'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bd75e4b7-6df8-5a51-be5d-fa3ab4f5e668'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '215258a9-b0fb-5e4e-8789-8601ae103a18'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5ab179b8-ec68-5ce6-b4d9-8c56c77551db'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  true,
  'planning',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '186c7e27-f77b-5b77-82a9-f97735342128'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '3be3c9dc-0d8f-57c9-9151-cd22c9e93832'::uuid,
  '3be3c9dc-0d8f-57c9-9151-cd22c9e93832'::uuid,
  true,
  'analysis',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5f5faf14-7f34-528a-9801-a0b527909232'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'd896625a-e04e-502e-af2b-a9790bdca6ee'::uuid,
  'd896625a-e04e-502e-af2b-a9790bdca6ee'::uuid,
  true,
  'writing',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5f31ba5f-cd76-5d69-b567-a7a0d90da785'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '4868a21a-f8c4-5dde-a114-6b20f5f20ac8'::uuid,
  '4868a21a-f8c4-5dde-a114-6b20f5f20ac8'::uuid,
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
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'Solid-state battery interface imaging — cohort 7',
  'Solid-state battery interface imaging is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around interfaces, microscopy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  ARRAY['interfaces','microscopy']::text[],
  'active',
  'Materials Science',
  ARRAY['DFT','Lab automation','Characterization']::text[],
  'local',
  'medium_term',
  9,
  true,
  'Los Angeles, CA',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a8f955a7-883e-5636-9d12-f0da37f5a6f7'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  'owner',
  'active',
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8fce0d6f-6134-5fca-8b5a-614cd2d0e51e'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'f58278d0-dea2-500a-8a2c-483101aa7a1f'::uuid,
  'editor',
  'active',
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6b939073-b750-5eb8-b577-5ab0332520be'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'b71701ff-0ccc-5cb3-96ca-f0002bc3c753'::uuid,
  'viewer',
  'active',
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'dbd964ba-6ace-536c-aab6-a3d8c3c2196f'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid,
  'viewer',
  'active',
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a79e35c8-b197-531d-8efe-a4f7124db9c4'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'e8e2d114-5ba0-538c-8373-79a21b6c9ce0'::uuid,
  'viewer',
  'active',
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f661bf3a-1638-505e-bf80-0057812a4719'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  'viewer',
  'active',
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2c842f80-47e1-5029-af22-d6003d1c5216'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  'viewer',
  'active',
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0adb1a05-06b5-5a5c-ab97-c60a8ecbafbf'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  'viewer',
  'active',
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '78ee0169-a32b-58a2-8e51-e8c6e1b6bdb9'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  'viewer',
  'active',
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '497c3e52-668d-5cff-aa6c-e9089a057c45'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'Draft related work section',
  'Tracked work item for Solid-state battery interface imaging — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '78802dba-0075-5545-a95b-f3435fc3d498'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'Clean and version dataset',
  'Tracked work item for Solid-state battery interface imaging — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'f58278d0-dea2-500a-8a2c-483101aa7a1f'::uuid,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '437430ac-a089-5e8f-9fd5-0dd14e91d37a'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'Run baseline model',
  'Tracked work item for Solid-state battery interface imaging — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'b71701ff-0ccc-5cb3-96ca-f0002bc3c753'::uuid,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '09397aa3-799a-59c3-920d-5d78e5ac80e1'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'Write IRB amendment',
  'Tracked work item for Solid-state battery interface imaging — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8fe8401e-c592-5380-9a9e-973e3d515b2e'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'Prepare figure panels',
  'Tracked work item for Solid-state battery interface imaging — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'e8e2d114-5ba0-538c-8373-79a21b6c9ce0'::uuid,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a5687aca-2137-559d-b706-d7011d401d1f'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Solid-state battery interface imaging — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7b7fd2b9-f14d-502d-9c1b-11de3e6365bf'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Solid-state battery interface imaging — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '106a3597-93f2-58ac-8ca8-4b3e03461ebb'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Solid-state battery interface imaging — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd20fa36d-489b-531e-aab5-629d7866fbf2'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  true,
  'planning',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '7f0e3204-200b-57cc-a234-ce688be46abf'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'f58278d0-dea2-500a-8a2c-483101aa7a1f'::uuid,
  'f58278d0-dea2-500a-8a2c-483101aa7a1f'::uuid,
  true,
  'analysis',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '47e936b3-30e2-53a0-a593-c62a79d6d739'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'b71701ff-0ccc-5cb3-96ca-f0002bc3c753'::uuid,
  'b71701ff-0ccc-5cb3-96ca-f0002bc3c753'::uuid,
  true,
  'writing',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '00b7344f-d7ed-5317-a972-5bef4cf1f881'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid,
  '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid,
  true,
  'ops',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;