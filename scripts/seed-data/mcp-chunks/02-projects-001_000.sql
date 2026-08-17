INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '91237cfa-02c0-58ad-88ed-60c42e0263dc'::uuid,
  'Single-cell atlas of treatment response — cohort 2',
  'Single-cell atlas of treatment response is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around genomics, RNA-seq, oncology. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  ARRAY['genomics','RNA-seq','oncology']::text[],
  'planning',
  'Computational Biology',
  ARRAY['Python','R','Genomics']::text[],
  'local',
  'short_term',
  12,
  true,
  'Melbourne, AU',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2b8e6fad-458e-5075-927a-b953a1021290'::uuid,
  '91237cfa-02c0-58ad-88ed-60c42e0263dc'::uuid,
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  'owner',
  'active',
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9144e8fe-ad08-5f6f-af11-b9bfe9e079c6'::uuid,
  '91237cfa-02c0-58ad-88ed-60c42e0263dc'::uuid,
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  'editor',
  'active',
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1698cbd1-0901-57c9-88fb-b6463b58ec29'::uuid,
  '91237cfa-02c0-58ad-88ed-60c42e0263dc'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  'viewer',
  'active',
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ba2a41e0-20f7-5592-abfe-30f1063dabac'::uuid,
  '91237cfa-02c0-58ad-88ed-60c42e0263dc'::uuid,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  'viewer',
  'active',
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e7a14791-3d27-5502-add2-2033cbc58e99'::uuid,
  '91237cfa-02c0-58ad-88ed-60c42e0263dc'::uuid,
  '1ca806bf-7216-5681-8652-8db2434048ce'::uuid,
  'viewer',
  'active',
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8fc93663-515f-57e9-a5c9-6ac76128e86b'::uuid,
  '91237cfa-02c0-58ad-88ed-60c42e0263dc'::uuid,
  '96571827-6ea6-5c4e-919e-3571e4d1410e'::uuid,
  'viewer',
  'active',
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c334b2aa-e92a-5032-81ea-4526b3116955'::uuid,
  '91237cfa-02c0-58ad-88ed-60c42e0263dc'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Single-cell atlas of treatment response — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9afedcbc-fa35-5c5d-a62d-cb4bf6702dd4'::uuid,
  '91237cfa-02c0-58ad-88ed-60c42e0263dc'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Single-cell atlas of treatment response — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a051a675-05e6-5d4c-b1b6-a86016a8054b'::uuid,
  '91237cfa-02c0-58ad-88ed-60c42e0263dc'::uuid,
  'Submit internal review',
  'Tracked work item for Single-cell atlas of treatment response — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6e8f1c04-0e8e-5494-aed6-94790ad077ff'::uuid,
  '91237cfa-02c0-58ad-88ed-60c42e0263dc'::uuid,
  'Update project README',
  'Tracked work item for Single-cell atlas of treatment response — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd23d1c9a-9c4d-58a0-85d2-cfa08b55dde3'::uuid,
  '91237cfa-02c0-58ad-88ed-60c42e0263dc'::uuid,
  'Draft related work section',
  'Tracked work item for Single-cell atlas of treatment response — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '1ca806bf-7216-5681-8652-8db2434048ce'::uuid,
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '608b18b0-7ffb-53f4-b6cd-d9828c5c3694'::uuid,
  '91237cfa-02c0-58ad-88ed-60c42e0263dc'::uuid,
  'Clean and version dataset',
  'Tracked work item for Single-cell atlas of treatment response — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '96571827-6ea6-5c4e-919e-3571e4d1410e'::uuid,
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4d8db9f0-50fb-5dec-9dbb-532fbd72dd22'::uuid,
  '91237cfa-02c0-58ad-88ed-60c42e0263dc'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Single-cell atlas of treatment response — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '97eaac5a-986a-5ef0-afb1-82f0ffe7cd44'::uuid,
  '91237cfa-02c0-58ad-88ed-60c42e0263dc'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Single-cell atlas of treatment response — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8a99e357-a3d3-54c4-9bf7-ffb3f54eac39'::uuid,
  '91237cfa-02c0-58ad-88ed-60c42e0263dc'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  true,
  'planning',
  ARRAY['genomics','RNA-seq']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '759c2398-f61b-568e-8c32-953118f1dc38'::uuid,
  '91237cfa-02c0-58ad-88ed-60c42e0263dc'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  true,
  'analysis',
  ARRAY['genomics','RNA-seq']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '9c0c47c8-45ac-5779-95b6-ea704c4a804e'::uuid,
  '91237cfa-02c0-58ad-88ed-60c42e0263dc'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  true,
  'writing',
  ARRAY['genomics','RNA-seq']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '9535f1e7-8baf-5526-96e8-f28e924b5d4a'::uuid,
  '91237cfa-02c0-58ad-88ed-60c42e0263dc'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
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
  '00a92ecf-d3eb-5ed2-9cc6-a8271cd7f497'::uuid,
  'Urban heat mitigation with satellite ML — cohort 2',
  'Urban heat mitigation with satellite ML is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around remote sensing, cities, ML. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  ARRAY['remote sensing','cities','ML']::text[],
  'active',
  'Climate Science',
  ARRAY['Remote sensing','Python','GIS']::text[],
  'remote',
  'medium_term',
  13,
  true,
  'Cambridge, MA',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c59e3c48-d40b-5101-817d-e0896b304335'::uuid,
  '00a92ecf-d3eb-5ed2-9cc6-a8271cd7f497'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  'owner',
  'active',
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '29c42ef4-28c3-5453-a5d3-eae4199dfe42'::uuid,
  '00a92ecf-d3eb-5ed2-9cc6-a8271cd7f497'::uuid,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  'editor',
  'active',
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1c3fa60c-e5e3-5b24-8285-87d420b14103'::uuid,
  '00a92ecf-d3eb-5ed2-9cc6-a8271cd7f497'::uuid,
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  'viewer',
  'active',
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd4a91d45-d6d7-5528-9cca-7eb3d4bcaec3'::uuid,
  '00a92ecf-d3eb-5ed2-9cc6-a8271cd7f497'::uuid,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  'viewer',
  'active',
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5ad56241-f588-59ba-ab0f-ae007c5c48e7'::uuid,
  '00a92ecf-d3eb-5ed2-9cc6-a8271cd7f497'::uuid,
  '634bbd78-6e13-5abe-8ffc-9d7e43a30d9f'::uuid,
  'viewer',
  'active',
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '78541365-cfb9-5d3b-b461-8feb1c7dbc8f'::uuid,
  '00a92ecf-d3eb-5ed2-9cc6-a8271cd7f497'::uuid,
  '1ff5e22d-0848-5550-a8c3-4df9c4050afb'::uuid,
  'viewer',
  'active',
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '399f0569-de25-5473-97ff-e2a89c39f2ba'::uuid,
  '00a92ecf-d3eb-5ed2-9cc6-a8271cd7f497'::uuid,
  'f72fcbef-f134-582a-b53f-f217bb5d6d55'::uuid,
  'viewer',
  'active',
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '91994b4b-7d35-5b51-abd0-fa58e210e8c7'::uuid,
  '00a92ecf-d3eb-5ed2-9cc6-a8271cd7f497'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6d5d092a-213e-5ed9-ad4a-eb2f6ccb8b95'::uuid,
  '00a92ecf-d3eb-5ed2-9cc6-a8271cd7f497'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '323954b2-4551-5b4b-b2dc-8679dfd70689'::uuid,
  '00a92ecf-d3eb-5ed2-9cc6-a8271cd7f497'::uuid,
  'Submit internal review',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c90cc410-2175-5667-8c79-ddb3f02125b7'::uuid,
  '00a92ecf-d3eb-5ed2-9cc6-a8271cd7f497'::uuid,
  'Update project README',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0148fb4a-7f85-550e-8249-a282a1856965'::uuid,
  '00a92ecf-d3eb-5ed2-9cc6-a8271cd7f497'::uuid,
  'Draft related work section',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '634bbd78-6e13-5abe-8ffc-9d7e43a30d9f'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '63892710-1a36-50fa-857a-52ad66774a5a'::uuid,
  '00a92ecf-d3eb-5ed2-9cc6-a8271cd7f497'::uuid,
  'Clean and version dataset',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '1ff5e22d-0848-5550-a8c3-4df9c4050afb'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4b69fe33-147b-558c-8824-f5e78a9ab108'::uuid,
  '00a92ecf-d3eb-5ed2-9cc6-a8271cd7f497'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'f72fcbef-f134-582a-b53f-f217bb5d6d55'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'afe32e43-886d-50f1-b33b-cf3b189d3a61'::uuid,
  '00a92ecf-d3eb-5ed2-9cc6-a8271cd7f497'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '908de871-a625-5bef-a5ee-a874111c7a7d'::uuid,
  '00a92ecf-d3eb-5ed2-9cc6-a8271cd7f497'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  true,
  'planning',
  ARRAY['remote sensing','cities']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd430318c-c4b2-5ded-becf-5006fbd045cd'::uuid,
  '00a92ecf-d3eb-5ed2-9cc6-a8271cd7f497'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  true,
  'analysis',
  ARRAY['remote sensing','cities']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6b53e120-9100-5abf-8373-48a62938786e'::uuid,
  '00a92ecf-d3eb-5ed2-9cc6-a8271cd7f497'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  true,
  'writing',
  ARRAY['remote sensing','cities']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b29f8d01-e954-5e46-9fe9-9a7bbecc184a'::uuid,
  '00a92ecf-d3eb-5ed2-9cc6-a8271cd7f497'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
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
  '5c06811e-67ba-50cd-bf95-5eec033889aa'::uuid,
  'High-throughput electrolyte screening — cohort 2',
  'High-throughput electrolyte screening is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around batteries, automation, DFT. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  ARRAY['batteries','automation','DFT']::text[],
  'active',
  'Materials Science',
  ARRAY['DFT','Lab automation','Characterization']::text[],
  'hybrid',
  'long_term',
  14,
  true,
  'Palo Alto, CA',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '420b81fa-cf2c-5bab-aee6-11e6f12161ab'::uuid,
  '5c06811e-67ba-50cd-bf95-5eec033889aa'::uuid,
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  'owner',
  'active',
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '395ae7a3-5902-573a-ab57-bb95b889e91b'::uuid,
  '5c06811e-67ba-50cd-bf95-5eec033889aa'::uuid,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  'editor',
  'active',
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2233e8ef-d805-540e-8f07-58d44dd389be'::uuid,
  '5c06811e-67ba-50cd-bf95-5eec033889aa'::uuid,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  'viewer',
  'active',
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6c453ba2-cfdb-5fdb-a5d6-41c138232ec7'::uuid,
  '5c06811e-67ba-50cd-bf95-5eec033889aa'::uuid,
  '66993f2c-3a35-5a4f-9ebe-3d9beb02b962'::uuid,
  'viewer',
  'active',
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '06e4f49f-8d15-5473-9f97-034f73db5132'::uuid,
  '5c06811e-67ba-50cd-bf95-5eec033889aa'::uuid,
  '229d0b26-e5de-59ae-a760-fe89ec623e59'::uuid,
  'viewer',
  'active',
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e24e9132-fda8-58e3-afb1-3c5f289dd11f'::uuid,
  '5c06811e-67ba-50cd-bf95-5eec033889aa'::uuid,
  '32cf71fe-60c4-5273-8a0b-09ee4e6bfff9'::uuid,
  'viewer',
  'active',
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c6d19c2a-7706-5132-9cbb-fc053a604637'::uuid,
  '5c06811e-67ba-50cd-bf95-5eec033889aa'::uuid,
  '76542368-5e9c-52ba-bde0-7bedd7200b02'::uuid,
  'viewer',
  'active',
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '86f5b10d-c043-5f0b-9ec5-9fb8ed0aad19'::uuid,
  '5c06811e-67ba-50cd-bf95-5eec033889aa'::uuid,
  'd380f30b-3eb8-5b9c-8d1b-1650afcd5e01'::uuid,
  'viewer',
  'active',
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1d50fd03-c364-5d67-bebe-e64ddb677ada'::uuid,
  '5c06811e-67ba-50cd-bf95-5eec033889aa'::uuid,
  'Validate QC pipeline',
  'Tracked work item for High-throughput electrolyte screening — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7082a9fd-50af-5763-82c4-a8f9a6d53476'::uuid,
  '5c06811e-67ba-50cd-bf95-5eec033889aa'::uuid,
  'Collect pilot feedback',
  'Tracked work item for High-throughput electrolyte screening — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'cbdd0c1e-bf11-5a35-8f4a-1a22c29770c0'::uuid,
  '5c06811e-67ba-50cd-bf95-5eec033889aa'::uuid,
  'Submit internal review',
  'Tracked work item for High-throughput electrolyte screening — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '58bd7862-6db7-5aae-9cd6-29648558aa20'::uuid,
  '5c06811e-67ba-50cd-bf95-5eec033889aa'::uuid,
  'Update project README',
  'Tracked work item for High-throughput electrolyte screening — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '66993f2c-3a35-5a4f-9ebe-3d9beb02b962'::uuid,
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b597f356-cb31-5711-aa1b-d662fde7cb91'::uuid,
  '5c06811e-67ba-50cd-bf95-5eec033889aa'::uuid,
  'Draft related work section',
  'Tracked work item for High-throughput electrolyte screening — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '229d0b26-e5de-59ae-a760-fe89ec623e59'::uuid,
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5cb2caf9-ce2d-5469-b573-148bfcf6c501'::uuid,
  '5c06811e-67ba-50cd-bf95-5eec033889aa'::uuid,
  'Clean and version dataset',
  'Tracked work item for High-throughput electrolyte screening — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '32cf71fe-60c4-5273-8a0b-09ee4e6bfff9'::uuid,
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bcf14c8a-7772-5913-9219-d60fa26cbaf7'::uuid,
  '5c06811e-67ba-50cd-bf95-5eec033889aa'::uuid,
  'Run baseline model (2)',
  'Tracked work item for High-throughput electrolyte screening — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '76542368-5e9c-52ba-bde0-7bedd7200b02'::uuid,
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5534d8b8-73a0-53c9-8c9a-d1c82633dbd4'::uuid,
  '5c06811e-67ba-50cd-bf95-5eec033889aa'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for High-throughput electrolyte screening — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'd380f30b-3eb8-5b9c-8d1b-1650afcd5e01'::uuid,
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b0108c11-38bc-57f7-8992-4e0083f42695'::uuid,
  '5c06811e-67ba-50cd-bf95-5eec033889aa'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  true,
  'planning',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '614d2637-25a0-55c4-8c9e-02c5e6418be2'::uuid,
  '5c06811e-67ba-50cd-bf95-5eec033889aa'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid,
  true,
  'analysis',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e4df502d-580b-5b98-8b3b-ea8c9dd1e510'::uuid,
  '5c06811e-67ba-50cd-bf95-5eec033889aa'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  true,
  'writing',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '93074d37-af6e-510b-9b5e-26ab8614798a'::uuid,
  '5c06811e-67ba-50cd-bf95-5eec033889aa'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '66993f2c-3a35-5a4f-9ebe-3d9beb02b962'::uuid,
  '66993f2c-3a35-5a4f-9ebe-3d9beb02b962'::uuid,
  true,
  'ops',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;