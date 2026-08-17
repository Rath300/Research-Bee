INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'Classroom AI tutor field study — cohort 6',
  'Classroom AI tutor field study is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around edtech, RCT. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  ARRAY['edtech','RCT']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'hybrid',
  'long_term',
  14,
  true,
  'Chicago, IL',
  now() - interval '103 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5d5999ec-65e7-5b7d-ac03-fe5379a583c5'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  'owner',
  'active',
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a09635c2-fcce-591e-8cc0-a2b68a30b85b'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'bdbffa25-5dda-547c-904d-3abab742a813'::uuid,
  'editor',
  'active',
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '00a3aaf8-3066-526e-9b7f-11a119ec083b'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  '5c62f76c-9d55-5526-baab-65a97b588ff2'::uuid,
  'viewer',
  'active',
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9f036d5b-9939-59c7-9520-04804d9156d3'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'a422bbc4-90f3-569d-90f8-8c220153f0b4'::uuid,
  'viewer',
  'active',
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8af0323e-749e-515f-9081-684371375151'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  '05c0c723-6829-5a0e-abc6-dafc9db5aa7c'::uuid,
  'viewer',
  'active',
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4a79cc65-4c36-5e8d-8ac8-03f669ad9fbf'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'e39e6b56-0b6e-5ec5-80ef-6b410471ac02'::uuid,
  'viewer',
  'active',
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '796f5fd9-c0e1-52a6-99e1-d3b945736bc4'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'fd89cd4b-db01-5882-96e0-d179f823c010'::uuid,
  'viewer',
  'active',
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '98847943-7edd-597e-a94a-228f321c08d9'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'eb6564c3-b3de-5c08-8236-eee1ca3d0923'::uuid,
  'viewer',
  'active',
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '21dd0a66-6cf1-57e0-8f7c-24d58815ea37'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'Prepare figure panels',
  'Tracked work item for Classroom AI tutor field study — cohort 6.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6de23ce5-d4f8-5dd4-8ce7-3b87431727ef'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Classroom AI tutor field study — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'bdbffa25-5dda-547c-904d-3abab742a813'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'eb0c76f3-1513-5cde-91f9-fbc72636d5d6'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Classroom AI tutor field study — cohort 6.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '5c62f76c-9d55-5526-baab-65a97b588ff2'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6aef0a48-c88c-5764-b765-25bc43f79972'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Classroom AI tutor field study — cohort 6.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'a422bbc4-90f3-569d-90f8-8c220153f0b4'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2a534abd-d11d-5c0a-908c-5d9dcbfcccad'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Classroom AI tutor field study — cohort 6.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '05c0c723-6829-5a0e-abc6-dafc9db5aa7c'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '07c86742-2caa-5ea6-b0dd-2b50963f6f40'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Classroom AI tutor field study — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'e39e6b56-0b6e-5ec5-80ef-6b410471ac02'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '803466f1-f2da-53af-9010-33d69f2b85ff'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Classroom AI tutor field study — cohort 6.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'fd89cd4b-db01-5882-96e0-d179f823c010'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f872b247-7b14-58d3-9cc1-efbac978d6d2'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'Update project README (3)',
  'Tracked work item for Classroom AI tutor field study — cohort 6.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'eb6564c3-b3de-5c08-8236-eee1ca3d0923'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2c3922bd-f042-5248-9820-5797cefba502'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  true,
  'planning',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a251a832-89e1-5c44-9344-0642c851bdec'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'bdbffa25-5dda-547c-904d-3abab742a813'::uuid,
  'bdbffa25-5dda-547c-904d-3abab742a813'::uuid,
  true,
  'analysis',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '03066615-40b9-5057-963c-fe7526439111'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '5c62f76c-9d55-5526-baab-65a97b588ff2'::uuid,
  '5c62f76c-9d55-5526-baab-65a97b588ff2'::uuid,
  true,
  'writing',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '379a5ddf-6219-5a2e-8014-e0f65ff8d84d'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'a422bbc4-90f3-569d-90f8-8c220153f0b4'::uuid,
  'a422bbc4-90f3-569d-90f8-8c220153f0b4'::uuid,
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
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'Privacy-preserving wearable analytics — cohort 6',
  'Privacy-preserving wearable analytics is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around wearables, privacy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  ARRAY['wearables','privacy']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'local',
  'long_term',
  15,
  true,
  'Baltimore, MD',
  now() - interval '103 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '00f2cfcc-b6d1-534d-bdd6-34c98e19a2c1'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  'owner',
  'active',
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'fc6ef6fa-a73a-5eb3-a260-c0f618beebd8'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  '082a2d5f-3bf4-561b-af30-d0b06299b4ba'::uuid,
  'editor',
  'active',
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '716526cb-8d95-5b1e-844b-2ca0f725d049'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'e9cf01e2-c731-5f25-a3b2-0abccfa7cfbe'::uuid,
  'viewer',
  'active',
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5f9f644e-5677-50e0-bbd9-b8e3c727ce21'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  '0766e457-77cd-5217-9c3b-2b0dcd4b955f'::uuid,
  'viewer',
  'active',
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0b7adb69-ca44-5978-89f4-d340da6c0b1f'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  '83edcab9-6153-5dfa-86b0-e2e832723741'::uuid,
  'viewer',
  'active',
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '701cde9e-0f43-5958-affc-6be7a866b69a'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'df3e1c62-4247-510c-80e8-205376b04cf6'::uuid,
  'viewer',
  'active',
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a8b53750-c85b-51db-aceb-2fe5c947c9d5'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'b27daf1d-8ab8-5889-9504-0c12a10afbfb'::uuid,
  'viewer',
  'active',
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '50fe15d2-aa80-54a9-96b4-a36c72ee9b5c'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  '6d947ae2-d338-5a25-a719-fc615fbecd70'::uuid,
  'viewer',
  'active',
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7b51bf11-fa39-55df-9c7e-1c874e90caa4'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  '20d3a7aa-cc87-54a7-afae-68bf76bf1481'::uuid,
  'viewer',
  'active',
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9fc260ff-1f24-52d9-a71e-601f08887421'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'Prepare figure panels',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 6.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ab1deca9-4f5a-577c-83cc-784ea8bce717'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '082a2d5f-3bf4-561b-af30-d0b06299b4ba'::uuid,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b6935bb5-c6c2-5a9c-879a-3537b2ea595d'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 6.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'e9cf01e2-c731-5f25-a3b2-0abccfa7cfbe'::uuid,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2876c826-83bb-59f3-98c8-b8409b0260d4'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 6.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '0766e457-77cd-5217-9c3b-2b0dcd4b955f'::uuid,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1ab88d2b-b3ed-5a2e-a673-cb88b41ae07f'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 6.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '83edcab9-6153-5dfa-86b0-e2e832723741'::uuid,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8c41f7ba-d98a-5535-a788-4c90a8ceb8f8'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'df3e1c62-4247-510c-80e8-205376b04cf6'::uuid,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9ab7f577-fd8f-54bf-bcb9-bf36741ecb5d'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 6.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'b27daf1d-8ab8-5889-9504-0c12a10afbfb'::uuid,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9050c103-3848-5a9b-bcf2-81da89e1c2ca'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'Update project README (3)',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 6.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '6d947ae2-d338-5a25-a719-fc615fbecd70'::uuid,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2d3096f2-780d-53f4-b7bc-99074dfb45a8'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  true,
  'planning',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'fafe5fba-0151-531a-a9fe-f6b15adf86b7'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '082a2d5f-3bf4-561b-af30-d0b06299b4ba'::uuid,
  '082a2d5f-3bf4-561b-af30-d0b06299b4ba'::uuid,
  true,
  'analysis',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '17a8d793-4478-56cd-b0a1-db4d12b8e47c'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'e9cf01e2-c731-5f25-a3b2-0abccfa7cfbe'::uuid,
  'e9cf01e2-c731-5f25-a3b2-0abccfa7cfbe'::uuid,
  true,
  'writing',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '54917fa9-cd29-5906-920b-e8b22e5275d0'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '0766e457-77cd-5217-9c3b-2b0dcd4b955f'::uuid,
  '0766e457-77cd-5217-9c3b-2b0dcd4b955f'::uuid,
  true,
  'ops',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;