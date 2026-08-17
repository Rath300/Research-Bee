INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  'Classroom AI tutor field study — cohort 7',
  'Classroom AI tutor field study is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around edtech, RCT. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  ARRAY['edtech','RCT']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'remote',
  'long_term',
  10,
  true,
  'New York, NY',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7a37730c-9534-516e-b668-63ef0fcc91ca'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  'owner',
  'active',
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '26c34e04-912f-5894-9d66-c3df9edb8bd0'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  '42100420-3e43-57ff-96c6-5945409a49d1'::uuid,
  'editor',
  'active',
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '51a60749-3a35-50f6-9c33-fa67207b36c8'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  '2793edac-d756-588c-b8dd-e83001afa7ec'::uuid,
  'viewer',
  'active',
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e4f852cb-811b-544b-a8a5-20caf6464608'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  'e10e4af7-777d-5432-8c01-a3e0e54c8137'::uuid,
  'viewer',
  'active',
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7638e2c1-1133-54fa-bade-1116a241c6ca'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  'Draft related work section',
  'Tracked work item for Classroom AI tutor field study — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9fa05a32-0c89-5430-990a-d860471e2a90'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  'Clean and version dataset',
  'Tracked work item for Classroom AI tutor field study — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '42100420-3e43-57ff-96c6-5945409a49d1'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '75ee427e-0a47-5cad-9ed9-870d1b5f4128'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  'Run baseline model',
  'Tracked work item for Classroom AI tutor field study — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '2793edac-d756-588c-b8dd-e83001afa7ec'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '97a92185-97ef-5cab-bb3b-550f1cbafff8'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  'Write IRB amendment',
  'Tracked work item for Classroom AI tutor field study — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'e10e4af7-777d-5432-8c01-a3e0e54c8137'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5bcd59ec-d921-50d4-8870-0dc568d16cf9'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  'Prepare figure panels',
  'Tracked work item for Classroom AI tutor field study — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '20fd3abc-885e-589d-8df6-58c5246dca0d'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Classroom AI tutor field study — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '42100420-3e43-57ff-96c6-5945409a49d1'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0a296ee5-de8a-5dc2-be55-2187a402c437'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Classroom AI tutor field study — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '2793edac-d756-588c-b8dd-e83001afa7ec'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6f93486e-b6dc-5748-93bb-43a461930ac6'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Classroom AI tutor field study — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'e10e4af7-777d-5432-8c01-a3e0e54c8137'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '141de65e-5762-5416-ac1a-8f08c439c6f3'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  true,
  'planning',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'fc17ea8c-d15a-5685-9ae3-ede26bdc3c61'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '42100420-3e43-57ff-96c6-5945409a49d1'::uuid,
  '42100420-3e43-57ff-96c6-5945409a49d1'::uuid,
  true,
  'analysis',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'fe97a1ac-55e3-57c2-8347-de84fb20dbf7'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '2793edac-d756-588c-b8dd-e83001afa7ec'::uuid,
  '2793edac-d756-588c-b8dd-e83001afa7ec'::uuid,
  true,
  'writing',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3830fc50-e63e-5adb-927d-4d67aa008dad'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'e10e4af7-777d-5432-8c01-a3e0e54c8137'::uuid,
  'e10e4af7-777d-5432-8c01-a3e0e54c8137'::uuid,
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
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  'Privacy-preserving wearable analytics — cohort 7',
  'Privacy-preserving wearable analytics is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around wearables, privacy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  ARRAY['wearables','privacy']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'hybrid',
  'long_term',
  11,
  true,
  'Chicago, IL',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '506362b6-0269-5dab-b9b2-a6b513595de4'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  'owner',
  'active',
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '396a6f16-9b45-5f49-9dd5-13c50a87e0c6'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  '0392fa60-6bcf-535c-9b0b-61d11c875f58'::uuid,
  'editor',
  'active',
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ebccd383-dbfc-5860-a2fd-6287119381f3'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  'ba58a0d4-31c0-534b-8a30-c476559e8c17'::uuid,
  'viewer',
  'active',
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f22f34cf-5a30-5e43-b778-374cce870e8e'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  '28e8e255-d90a-544e-8200-58d29d4c6ee8'::uuid,
  'viewer',
  'active',
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '78eabce0-b66a-5be5-b01c-a53f8753bac5'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  'viewer',
  'active',
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4de740c2-7abf-5a97-a852-2b6c7deea5e2'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  'Draft related work section',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'abc88038-064e-5bae-b36b-fe9778dbff88'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  'Clean and version dataset',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '0392fa60-6bcf-535c-9b0b-61d11c875f58'::uuid,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6526b9f3-6583-523d-9dbe-afa06a4f413a'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  'Run baseline model',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'ba58a0d4-31c0-534b-8a30-c476559e8c17'::uuid,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a5de4010-a13a-5d68-ba94-f9b31ffdc5a7'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  'Write IRB amendment',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '28e8e255-d90a-544e-8200-58d29d4c6ee8'::uuid,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '940016d5-e3e3-5506-90d5-bb29afd66b93'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  'Prepare figure panels',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8389f62f-fc75-5e37-addf-dfd42c0dcb69'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '56fb639e-0b14-537f-a21c-ad6b3cb15046'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '0392fa60-6bcf-535c-9b0b-61d11c875f58'::uuid,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '546ecb74-4fd6-5fc7-9a74-fff122e380f3'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'ba58a0d4-31c0-534b-8a30-c476559e8c17'::uuid,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2fbb1a3a-0d76-58ec-a956-fa75cd8c4ba5'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  true,
  'planning',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '90d32a42-00b9-5d2c-830e-17459890509b'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '0392fa60-6bcf-535c-9b0b-61d11c875f58'::uuid,
  '0392fa60-6bcf-535c-9b0b-61d11c875f58'::uuid,
  true,
  'analysis',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '229aa06d-aac3-593f-8382-bccb136b29f4'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'ba58a0d4-31c0-534b-8a30-c476559e8c17'::uuid,
  'ba58a0d4-31c0-534b-8a30-c476559e8c17'::uuid,
  true,
  'writing',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '100df7b2-7866-542a-a957-0e18c1a1f8d9'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '28e8e255-d90a-544e-8200-58d29d4c6ee8'::uuid,
  '28e8e255-d90a-544e-8200-58d29d4c6ee8'::uuid,
  true,
  'ops',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;