-- projects 20..39

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


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'Accessible clinical note summarization — cohort 2',
  'Accessible clinical note summarization is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around NLP, healthcare, UX. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  ARRAY['NLP','healthcare','UX']::text[],
  'active',
  'Human-Computer Interaction',
  ARRAY['User research','Prototyping','Statistics']::text[],
  'local',
  'long_term',
  15,
  true,
  'Berkeley, CA',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '57b1c821-855b-5c58-8760-cf99edef276f'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  'owner',
  'active',
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7c1edadf-d41f-5087-9197-40145383e61b'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  'editor',
  'active',
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f46abaad-ed54-5f47-8096-f56373078720'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  'viewer',
  'active',
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '92da9626-39ac-57b1-b771-6f2fead751db'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  '73be6dda-66ed-5e48-afec-7a94f58b9172'::uuid,
  'viewer',
  'active',
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0a5d71d1-14b2-58c5-9325-7ea1d92d16ba'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'ad5c0cbc-9e41-56d0-b0ae-200c31b5995a'::uuid,
  'viewer',
  'active',
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b95f9ad2-31ad-5ee3-98a5-ef6829c60470'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'b99d3e95-19c1-5d94-8f9d-fb6d9ccc63c0'::uuid,
  'viewer',
  'active',
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '93dae7ca-0522-5b27-ae9e-62e3564cf044'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'f644a779-f61f-50ac-9f62-0022190689d9'::uuid,
  'viewer',
  'active',
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'cd8b109f-a71f-57fb-9d7d-68de2b53f02e'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'b7e832e2-7e38-5beb-ac9e-250ae24b06b4'::uuid,
  'viewer',
  'active',
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ba8ef263-63ce-5a40-b7bf-a56a5a5cb26a'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'c51f57c8-ceb6-5800-8535-3bfb0d73bd50'::uuid,
  'viewer',
  'active',
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'af88f062-6fc9-5bc7-b75e-89af8c1e2ca9'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Accessible clinical note summarization — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8c8ad9aa-fbbc-553d-8513-3ecceef4f7e1'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Accessible clinical note summarization — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd5f1a275-7b3f-5cda-ba1f-19859ed835c7'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'Submit internal review',
  'Tracked work item for Accessible clinical note summarization — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2f0d5bb1-8f93-59b5-94da-deee960e0657'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'Update project README',
  'Tracked work item for Accessible clinical note summarization — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '73be6dda-66ed-5e48-afec-7a94f58b9172'::uuid,
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ca6bc6f7-8b2e-5fb6-a391-3f53f7fe451a'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'Draft related work section',
  'Tracked work item for Accessible clinical note summarization — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'ad5c0cbc-9e41-56d0-b0ae-200c31b5995a'::uuid,
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6fc938bc-a797-5fcf-8f39-c020ed7c3a8e'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'Clean and version dataset',
  'Tracked work item for Accessible clinical note summarization — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'b99d3e95-19c1-5d94-8f9d-fb6d9ccc63c0'::uuid,
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '028d85d3-fd55-5646-b63a-163c7f10f175'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Accessible clinical note summarization — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'f644a779-f61f-50ac-9f62-0022190689d9'::uuid,
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f28f23f1-33fa-5db0-a327-183a81aa711a'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Accessible clinical note summarization — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'b7e832e2-7e38-5beb-ac9e-250ae24b06b4'::uuid,
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '970a16f0-efee-5626-8bcd-07e022a4f7c4'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  '4adc31e6-1696-54de-b1d3-788d08357dda'::uuid,
  true,
  'planning',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b26fc35c-7c5b-5e9d-82ff-111f77d5f165'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  true,
  'analysis',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '26fe4331-f605-5fad-87f3-780b44034f8e'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  true,
  'writing',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '424e1b96-27a2-5504-92cd-945b639c1ef9'::uuid,
  'be8143ad-d929-5042-965a-0a34d182975f'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '73be6dda-66ed-5e48-afec-7a94f58b9172'::uuid,
  '73be6dda-66ed-5e48-afec-7a94f58b9172'::uuid,
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
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'Closed-loop stimulation for memory — cohort 2',
  'Closed-loop stimulation for memory is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around neurotech, memory, EEG. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  ARRAY['neurotech','memory','EEG']::text[],
  'active',
  'Neuroscience',
  ARRAY['fMRI','Electrophysiology','Python']::text[],
  'remote',
  'short_term',
  4,
  true,
  'Boston, MA',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '18eb176f-ff43-5458-9ab7-95eb1b4d2b8f'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  'owner',
  'active',
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0b0ccbce-109c-5e92-a803-950ee0dbc845'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  'editor',
  'active',
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '61f72309-f0b1-57a9-aa2d-0c4ac6c8954c'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid,
  'viewer',
  'active',
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '011a1bc3-6a09-52f2-8384-ef2d71327962'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'ec425ec6-5f9a-57bd-a9ad-785e91c63bf0'::uuid,
  'viewer',
  'active',
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2aff5f56-493c-50b8-99e0-5387fc89ea00'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Closed-loop stimulation for memory — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '69883ddc-5fb3-54da-8f1d-a94cac422ed2'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Closed-loop stimulation for memory — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7bf02e49-f78c-5344-8575-eda9e8620f64'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'Submit internal review',
  'Tracked work item for Closed-loop stimulation for memory — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '27b3eded-71a0-57ba-92da-b6269e7f0df8'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'Update project README',
  'Tracked work item for Closed-loop stimulation for memory — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'ec425ec6-5f9a-57bd-a9ad-785e91c63bf0'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '589d4a6d-0c31-569f-a5d4-b387d848319a'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'Draft related work section',
  'Tracked work item for Closed-loop stimulation for memory — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'cc75cc72-5d8b-5bd2-a50f-3ade6c368024'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'Clean and version dataset',
  'Tracked work item for Closed-loop stimulation for memory — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '66db2f15-1fb5-5e46-92d3-1015779c156b'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Closed-loop stimulation for memory — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '27045d75-43d1-5dad-8d81-c097d5d6f828'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Closed-loop stimulation for memory — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'ec425ec6-5f9a-57bd-a9ad-785e91c63bf0'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2118549d-56a5-5f7f-9fa5-4de02fd51354'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  true,
  'planning',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1e65646f-2d3b-5c99-8497-50076e873cdb'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  true,
  'analysis',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '26258fb2-7b6d-58bc-9e0f-aafa7357b061'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid,
  'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid,
  true,
  'writing',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a0b3c270-75f2-59bf-be90-2ac8c4a3e18d'::uuid,
  '084a7114-e3d1-5b39-b320-f4588221365b'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'ec425ec6-5f9a-57bd-a9ad-785e91c63bf0'::uuid,
  'ec425ec6-5f9a-57bd-a9ad-785e91c63bf0'::uuid,
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
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  'Community vaccine confidence study — cohort 2',
  'Community vaccine confidence study is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around surveys, equity, vaccines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  ARRAY['surveys','equity','vaccines']::text[],
  'planning',
  'Public Health',
  ARRAY['Epidemiology','R','Survey design']::text[],
  'hybrid',
  'medium_term',
  5,
  true,
  'Toronto, ON',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '875ef3c7-4a58-56f6-b27c-5d52f8eb02e4'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  'owner',
  'active',
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '43f84807-5df8-5f52-aa6d-ac231e5e1b80'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid,
  'editor',
  'active',
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e7e067d6-9aeb-5ae3-9ddc-11d1f263f42f'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid,
  'viewer',
  'active',
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'eb9b0820-f64b-5fea-9589-210e1cde7d35'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  'd8a33d26-1570-57fc-b4be-dd5e32331b77'::uuid,
  'viewer',
  'active',
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7f2556f6-022e-51d0-8e87-a9bc62bdb915'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  '75f6df30-5d8f-5dd3-917e-2cb576513e61'::uuid,
  'viewer',
  'active',
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ee55d534-09a9-5963-bdfd-5d6d83f164c1'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Community vaccine confidence study — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1276274a-7919-525a-8584-b76b818db323'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Community vaccine confidence study — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid,
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5346edf4-f9e7-54af-b48b-8a6129ea54b3'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  'Submit internal review',
  'Tracked work item for Community vaccine confidence study — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid,
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7caa0f3f-4812-50e9-be86-57c89094cc43'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  'Update project README',
  'Tracked work item for Community vaccine confidence study — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'd8a33d26-1570-57fc-b4be-dd5e32331b77'::uuid,
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4b5b2988-abc5-53bb-aa38-e3869a1377a1'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  'Draft related work section',
  'Tracked work item for Community vaccine confidence study — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '75f6df30-5d8f-5dd3-917e-2cb576513e61'::uuid,
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1bb2498f-3618-5dc1-ba67-1fc2d9bcdf36'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  'Clean and version dataset',
  'Tracked work item for Community vaccine confidence study — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '36073e87-e8ae-5074-bda6-e1aebfb1f6d1'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Community vaccine confidence study — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid,
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6a035bf6-512a-55c8-9ae4-e6ed4a33f0de'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Community vaccine confidence study — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid,
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '88e86587-1554-5f51-b2c1-3ac667750a6e'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  '9cb52b31-aefd-52b7-8345-eb5e78c8cffa'::uuid,
  true,
  'planning',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3fd5976e-aef6-52e2-8ee6-883b1bd3ca94'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid,
  'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid,
  true,
  'analysis',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f8a3b9ae-a201-57e7-871b-42a0c974ad24'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid,
  '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid,
  true,
  'writing',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd3a0f562-dfc6-5e9b-a3e4-a5d13f91f9ec'::uuid,
  'fc646fe0-e5a2-57aa-9b23-db59971b4079'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'd8a33d26-1570-57fc-b4be-dd5e32331b77'::uuid,
  'd8a33d26-1570-57fc-b4be-dd5e32331b77'::uuid,
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
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  'Near-term quantum error mitigation — cohort 2',
  'Near-term quantum error mitigation is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around NISQ, algorithms. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  ARRAY['NISQ','algorithms']::text[],
  'active',
  'Quantum Information',
  ARRAY['Qiskit','Linear algebra','Optics']::text[],
  'local',
  'long_term',
  6,
  true,
  'Zurich, CH',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '227b063b-ced4-5b78-95c9-d365135e8c4f'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  'owner',
  'active',
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ca7c8cc1-9089-5260-8cff-b8b6a7617782'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  '9583a091-71fc-59e2-a837-c827f33c072a'::uuid,
  'editor',
  'active',
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2be27573-da2c-5959-a97d-ef8b07b7611f'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid,
  'viewer',
  'active',
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e350a122-14d2-5021-b6d6-dd70488912af'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  '370327fd-3558-57cf-8945-bc80d916c857'::uuid,
  'viewer',
  'active',
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4d5055b8-e55e-5f6a-84e3-92ba3711f7f6'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  '2ca134b1-2119-5e9e-8c0e-f36ce476cf56'::uuid,
  'viewer',
  'active',
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ebad7f61-d93e-5f7b-ba51-0a43e3d51f1e'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  '04960929-8e6d-526f-902a-3f56fae228ea'::uuid,
  'viewer',
  'active',
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fd7d0b22-16f1-591c-9c95-5ef4f87a8eb8'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Near-term quantum error mitigation — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a34494ff-c0a5-5cb8-80c6-401a0ec910dc'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Near-term quantum error mitigation — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '9583a091-71fc-59e2-a837-c827f33c072a'::uuid,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3fd41ad9-2c15-5f28-9871-11e2752880a0'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  'Submit internal review',
  'Tracked work item for Near-term quantum error mitigation — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1a8971ca-bad4-54e4-8abf-ab933045fb96'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  'Update project README',
  'Tracked work item for Near-term quantum error mitigation — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '370327fd-3558-57cf-8945-bc80d916c857'::uuid,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '911d0363-47a5-5228-a23c-16f081fda3d6'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  'Draft related work section',
  'Tracked work item for Near-term quantum error mitigation — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '2ca134b1-2119-5e9e-8c0e-f36ce476cf56'::uuid,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8b287a24-564f-5cb2-b387-d65b2b9efd8f'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  'Clean and version dataset',
  'Tracked work item for Near-term quantum error mitigation — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '04960929-8e6d-526f-902a-3f56fae228ea'::uuid,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0c44814d-fae9-5378-82b7-5273197b8111'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Near-term quantum error mitigation — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '345d0829-fb6e-5acc-9334-b1ed41dc1e0f'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Near-term quantum error mitigation — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '9583a091-71fc-59e2-a837-c827f33c072a'::uuid,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c477f084-ca14-5596-9105-a7f0af8d6142'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid,
  true,
  'planning',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'eb342cce-8d93-563d-93ca-710b7f463e54'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '9583a091-71fc-59e2-a837-c827f33c072a'::uuid,
  '9583a091-71fc-59e2-a837-c827f33c072a'::uuid,
  true,
  'analysis',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'cfb32fd1-523b-598f-9439-fca078a36a68'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid,
  'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid,
  true,
  'writing',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'de87bd5c-165b-5c56-82a4-e1ffe7248f8c'::uuid,
  '25e21d98-8580-525f-97b5-569bb6293035'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '370327fd-3558-57cf-8945-bc80d916c857'::uuid,
  '370327fd-3558-57cf-8945-bc80d916c857'::uuid,
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
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'Robust evaluation for clinical LLMs — cohort 2',
  'Robust evaluation for clinical LLMs is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around LLMs, evaluation, safety. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  ARRAY['LLMs','evaluation','safety']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'remote',
  'long_term',
  7,
  true,
  'London, UK',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2fe74571-8f92-5ac8-81e8-42335a9d1d92'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  'owner',
  'active',
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '43e66744-d4bc-54fe-a247-722c1935d3eb'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  '093ae4a7-64b9-54f9-9c88-8b9150c9d1af'::uuid,
  'editor',
  'active',
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '50095845-cd85-5f4a-8683-a317731a8dbc'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'b5c5f827-63ef-5230-bb5e-5e5d81dec47c'::uuid,
  'viewer',
  'active',
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '487c103c-2147-5b80-993d-8f3ed0989c91'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid,
  'viewer',
  'active',
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '95ce8f59-ff3e-526e-a02f-39a8522bbf16'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'e10d8f3c-3339-5b7c-aab1-cb38fa334cb4'::uuid,
  'viewer',
  'active',
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '808f1b1f-a812-50b6-a377-29f4f2aa899e'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  '3f854435-9399-5c74-9096-979bd941e61d'::uuid,
  'viewer',
  'active',
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3bb4ee79-b7d5-590f-9b6d-1b4587bd69dc'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'a1026c86-856a-5225-b193-c935211475da'::uuid,
  'viewer',
  'active',
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7eea846a-1348-5f9c-b695-042eef58d407'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '04f34a9e-9ac2-57a1-a789-a47beaa14d33'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '093ae4a7-64b9-54f9-9c88-8b9150c9d1af'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'dea49c2f-7d5d-5893-a1b0-2e231056c7a8'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'Submit internal review',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'b5c5f827-63ef-5230-bb5e-5e5d81dec47c'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f7db81f0-7f12-5d0e-8971-a505123e0380'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'Update project README',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a5773544-7d8a-5560-ac7c-116d9087c87f'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'Draft related work section',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'e10d8f3c-3339-5b7c-aab1-cb38fa334cb4'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e9dad3cc-ff41-502c-8957-e84867da6192'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'Clean and version dataset',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '3f854435-9399-5c74-9096-979bd941e61d'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e1d605d8-a835-5f1e-a634-42737f51963f'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'a1026c86-856a-5225-b193-c935211475da'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '84000e9f-ce5b-5145-9288-7f0ab25e6be3'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f6f822b2-6bdc-5d1c-bbb8-fae95913ab4e'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  true,
  'planning',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '9136b695-0172-5e7d-bdbe-f12ebf52a2c1'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '093ae4a7-64b9-54f9-9c88-8b9150c9d1af'::uuid,
  '093ae4a7-64b9-54f9-9c88-8b9150c9d1af'::uuid,
  true,
  'analysis',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1b0100cf-764a-52b6-be35-e9e7ddddf215'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'b5c5f827-63ef-5230-bb5e-5e5d81dec47c'::uuid,
  'b5c5f827-63ef-5230-bb5e-5e5d81dec47c'::uuid,
  true,
  'writing',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '73216740-02c3-567f-b946-7f27f037270e'::uuid,
  '91ef7266-cda5-504f-bfcb-b3dc9c50724f'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid,
  'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid,
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
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'Photoredox catalysis for late-stage edits — cohort 2',
  'Photoredox catalysis for late-stage edits is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around catalysis, synthesis. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  ARRAY['catalysis','synthesis']::text[],
  'active',
  'Chemistry',
  ARRAY['Organic synthesis','Spectroscopy','Cheminformatics']::text[],
  'hybrid',
  'short_term',
  8,
  true,
  'Seattle, WA',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'cf17538b-cafc-5839-b1b0-183fee55f7a4'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  'owner',
  'active',
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a7942593-fdf6-5d6d-a9b0-a22440f2688e'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid,
  'editor',
  'active',
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '696ba06c-8bbf-537b-9199-f80ed9a3311b'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid,
  'viewer',
  'active',
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9d010bec-9f08-58c7-8442-9e8d454d18fb'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  '93006b3a-19e8-5e78-8f8e-4e880c4429ef'::uuid,
  'viewer',
  'active',
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e1c98855-5921-5135-85e5-e28a2a9bdd4a'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'd43fc93e-7731-5f15-9829-c96382a66268'::uuid,
  'viewer',
  'active',
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '00b991f0-704f-5162-a913-7553b2232461'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  '6a514a41-4c7e-5056-a14d-13305a0c1c48'::uuid,
  'viewer',
  'active',
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '55398a79-38e6-5c6c-9495-975c27f64c67'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'bc3269b7-ccf7-597d-a309-30596d8dbb75'::uuid,
  'viewer',
  'active',
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd9ea03de-3f2b-55cd-9f52-52dd3f7e8ac5'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  '22d0d638-0bfb-521a-b51e-e1919770243e'::uuid,
  'viewer',
  'active',
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ad7685bb-98aa-55cf-91e4-b4f19c41d969'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '939e6b73-d12a-50b6-ad4b-337acf00cc46'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'db375c3f-aa3e-5b93-8adf-c71504220a15'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'Submit internal review',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7e330523-1bb6-50d8-9c38-7edb9d221e53'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'Update project README',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '93006b3a-19e8-5e78-8f8e-4e880c4429ef'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e8ecf247-abc3-5334-80cd-5aff3977bf98'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'Draft related work section',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'd43fc93e-7731-5f15-9829-c96382a66268'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'de6979d6-fca2-5c96-b483-1aba52dce962'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'Clean and version dataset',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '6a514a41-4c7e-5056-a14d-13305a0c1c48'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '42a6ede5-1d88-5d9d-afdb-5b3e9756a19a'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'bc3269b7-ccf7-597d-a309-30596d8dbb75'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '462c9c28-2bf4-5ebe-8a52-7f2f7a986e8b'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '22d0d638-0bfb-521a-b51e-e1919770243e'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b2aec9bf-a096-55c9-abe6-46d470667f98'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  true,
  'planning',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5180ac45-23c1-5d51-9e03-e046e7ce1044'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid,
  'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid,
  true,
  'analysis',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1b51f97f-316d-53e0-9d3d-8a2d9335ff1b'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid,
  'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid,
  true,
  'writing',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'eec75453-ba23-5b76-81c6-e904d567809a'::uuid,
  '8559a29a-947e-53a4-a10a-e984708ba2fe'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '93006b3a-19e8-5e78-8f8e-4e880c4429ef'::uuid,
  '93006b3a-19e8-5e78-8f8e-4e880c4429ef'::uuid,
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
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'STEM identity in first-gen undergraduates — cohort 2',
  'STEM identity in first-gen undergraduates is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around equity, mixed methods. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  ARRAY['equity','mixed methods']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'local',
  'medium_term',
  9,
  true,
  'Pittsburgh, PA',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7b84e5e6-77d2-5814-b329-798709d5f71c'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  'owner',
  'active',
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ee19cc5f-3c97-5f18-9eb6-0d757283758b'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  '4e11607f-ef7e-5682-8c99-50cc32c882c8'::uuid,
  'editor',
  'active',
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '64630679-07c9-5ad0-aa04-a3900759a2dc'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid,
  'viewer',
  'active',
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2a469597-2a07-58f8-9188-f40a036fda8f'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  '2619904e-3b06-54b6-bb0f-ea16e3de5f6d'::uuid,
  'viewer',
  'active',
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd7dcf6d9-e80d-546c-9c14-b2c09385337f'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'feac598c-38ed-5b4e-8173-ae60d6e102db'::uuid,
  'viewer',
  'active',
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '17e777e1-e3d0-58f4-a9dc-f99965610e23'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'adab7a98-c1d6-591f-8b46-750925810a73'::uuid,
  'viewer',
  'active',
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '529c07f7-fe91-5fe6-bcd8-66aa2df9fa3d'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  '4cd21aa9-ca4b-5f90-bc96-fca6ecffef2f'::uuid,
  'viewer',
  'active',
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '28c0b736-4e05-50ea-a7c8-8238a8959a6d'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'd16fc742-2b87-5693-8c11-a7f8b926a752'::uuid,
  'viewer',
  'active',
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f6af5b29-0a00-5510-9afd-ea66a9141931'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  '8539a32a-815b-5a83-a51e-679ee612278d'::uuid,
  'viewer',
  'active',
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '46baf69d-cf36-53ca-90ae-f6917176b345'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'Validate QC pipeline',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'eddde4bf-664d-5129-a028-af1a01143f6c'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'Collect pilot feedback',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '4e11607f-ef7e-5682-8c99-50cc32c882c8'::uuid,
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a8959813-95ea-5f34-b040-06033fcb0815'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'Submit internal review',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid,
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8f026efc-1edb-531c-a6b6-b41fc8b531ef'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'Update project README',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '2619904e-3b06-54b6-bb0f-ea16e3de5f6d'::uuid,
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3f88a09e-5afa-569b-aac0-80adab6095a8'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'Draft related work section',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'feac598c-38ed-5b4e-8173-ae60d6e102db'::uuid,
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'cb3c92cd-ff90-5065-87ee-b18b03935ea2'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'Clean and version dataset',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'adab7a98-c1d6-591f-8b46-750925810a73'::uuid,
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'cacc06fa-d5d9-58a8-9b28-62b1692332c8'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'Run baseline model (2)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '4cd21aa9-ca4b-5f90-bc96-fca6ecffef2f'::uuid,
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f06c17d0-d8de-5544-9607-e3cb96c67cc9'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'd16fc742-2b87-5693-8c11-a7f8b926a752'::uuid,
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '008a11e2-3432-580b-8c5e-67b240aaf20b'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  true,
  'planning',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '52fbcc1f-3bc6-53de-850e-e12971bb66de'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '4e11607f-ef7e-5682-8c99-50cc32c882c8'::uuid,
  '4e11607f-ef7e-5682-8c99-50cc32c882c8'::uuid,
  true,
  'analysis',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'fb5719a5-51dc-5d4d-90c0-6e6d9aff8930'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid,
  '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid,
  true,
  'writing',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '10e8746e-572d-5e56-b7db-6c2b5602a472'::uuid,
  '614a4fd1-c176-5e1c-bbdb-98a5887b9ee5'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '2619904e-3b06-54b6-bb0f-ea16e3de5f6d'::uuid,
  '2619904e-3b06-54b6-bb0f-ea16e3de5f6d'::uuid,
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
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'Dexterous packing under uncertainty — cohort 2',
  'Dexterous packing under uncertainty is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around manipulation, sim2real. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  ARRAY['manipulation','sim2real']::text[],
  'planning',
  'Robotics',
  ARRAY['ROS','Control systems','C++']::text[],
  'remote',
  'long_term',
  10,
  true,
  'Atlanta, GA',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1292ceb3-75cf-5e94-91ad-36290096ef42'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  'owner',
  'active',
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1656d9be-744b-53ba-b57b-46a081330c04'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid,
  'editor',
  'active',
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd9519937-e67a-55e2-a5d2-5d9365341b50'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid,
  'viewer',
  'active',
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b37acdf8-6f9a-5218-b149-419309d23291'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  '900b4bc0-9225-59ed-bdb7-b994730f07e8'::uuid,
  'viewer',
  'active',
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2f968188-2055-5834-a9da-55e87f580495'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Dexterous packing under uncertainty — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1acfc586-5b1b-5a89-a353-c12d424a17ce'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Dexterous packing under uncertainty — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6fc6de54-0bbd-5375-badb-b707a186164b'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'Submit internal review',
  'Tracked work item for Dexterous packing under uncertainty — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '497a2363-ef2a-5a33-b952-33a05776abd1'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'Update project README',
  'Tracked work item for Dexterous packing under uncertainty — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '900b4bc0-9225-59ed-bdb7-b994730f07e8'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8d35649f-0dc8-50f7-8f75-72ad44fd95e1'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'Draft related work section',
  'Tracked work item for Dexterous packing under uncertainty — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '935295fe-2a34-5226-b9bf-429556a11b9d'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'Clean and version dataset',
  'Tracked work item for Dexterous packing under uncertainty — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ba8f92a6-ad1c-5cc9-a1c1-0716b75fbe7b'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '87e43268-8c01-5ce2-8113-d457fd727b6c'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '900b4bc0-9225-59ed-bdb7-b994730f07e8'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1a097b26-b87d-5b7a-b0d9-5b440d23d7e7'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  true,
  'planning',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '73096506-3070-5786-b90c-e8987a21d9b1'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid,
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid,
  true,
  'analysis',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b07830a9-6d1c-5086-b986-3f77d87e35e3'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid,
  'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid,
  true,
  'writing',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '43a5d084-c354-543e-a11b-0694c7a4ab44'::uuid,
  'a98a8f5b-b0f4-5dcd-8859-5e917367616e'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '900b4bc0-9225-59ed-bdb7-b994730f07e8'::uuid,
  '900b4bc0-9225-59ed-bdb7-b994730f07e8'::uuid,
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
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  'Transit spectroscopy pipeline for JWST — cohort 2',
  'Transit spectroscopy pipeline for JWST is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around exoplanets, pipelines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  ARRAY['exoplanets','pipelines']::text[],
  'active',
  'Astrophysics',
  ARRAY['Data pipelines','Python','Bayesian inference']::text[],
  'hybrid',
  'long_term',
  11,
  true,
  'Ann Arbor, MI',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '34901869-3ce7-543c-bced-f7a52837e03f'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  'owner',
  'active',
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5d63910e-ce41-5778-9235-d18c05777d3d'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  '5bb68fe5-96ce-5240-8f10-cf1202286b31'::uuid,
  'editor',
  'active',
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '18804a87-fddf-5117-a9f5-21aeb9fffd9d'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid,
  'viewer',
  'active',
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '756e8991-f577-5073-8853-5b47d26bcc9e'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  'b6fd1d0a-577c-50d9-af00-76be7ac0fe27'::uuid,
  'viewer',
  'active',
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1e33b5ac-7792-51ca-beb0-ff96df765e63'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  '71e76d95-9bb6-5da0-b840-adff1e3b3e09'::uuid,
  'viewer',
  'active',
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8abc02d0-9a85-544d-8c9d-654236d7e021'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '23d4f4b9-9c91-533a-a0b6-8b7f2b21cf7d'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '5bb68fe5-96ce-5240-8f10-cf1202286b31'::uuid,
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f1be4c97-f539-564c-a2aa-6f79aaba7871'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  'Submit internal review',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid,
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4d36272a-cca5-583c-9581-97e2e6aa0664'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  'Update project README',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'b6fd1d0a-577c-50d9-af00-76be7ac0fe27'::uuid,
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5acf26fb-d93f-52db-a11b-5bf382aa25a3'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  'Draft related work section',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '71e76d95-9bb6-5da0-b840-adff1e3b3e09'::uuid,
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '65177981-7489-5ce6-bf08-a89bbd2c42b2'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  'Clean and version dataset',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4a6705c6-c7fd-589f-b5f3-cdfe1232d7ac'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '5bb68fe5-96ce-5240-8f10-cf1202286b31'::uuid,
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd588c789-cb02-5879-855a-25154543cafb'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid,
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6a0d858f-2f3e-5b6c-a8f8-f393036aba75'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  true,
  'planning',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c1a965e6-5d52-569f-acdb-e4304063cee9'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '5bb68fe5-96ce-5240-8f10-cf1202286b31'::uuid,
  '5bb68fe5-96ce-5240-8f10-cf1202286b31'::uuid,
  true,
  'analysis',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c971e39f-d51f-544d-a733-ab2f84d64f23'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid,
  '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid,
  true,
  'writing',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4b1aeb64-1a22-5446-be36-a2e0f41acc97'::uuid,
  'dad9b37f-3ee0-50a9-87fb-507c501fe91e'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'b6fd1d0a-577c-50d9-af00-76be7ac0fe27'::uuid,
  'b6fd1d0a-577c-50d9-af00-76be7ac0fe27'::uuid,
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
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'Vascularized cardiac organoids — cohort 2',
  'Vascularized cardiac organoids is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around organoids, tissue eng. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  ARRAY['organoids','tissue eng']::text[],
  'active',
  'Bioengineering',
  ARRAY['Tissue culture','CAD','Microfluidics']::text[],
  'local',
  'short_term',
  12,
  true,
  'Los Angeles, CA',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '091ad032-1111-55a9-9b39-eaddfcb71389'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  'owner',
  'active',
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6179f0d5-e80e-53b1-a7b0-467a4c820b23'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'f1960a0a-78f4-50df-a9b5-52f5cecb2a7f'::uuid,
  'editor',
  'active',
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f1abf30e-17cb-5aaa-8260-ee6baf886777'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  '83ca350d-88aa-5712-a84d-d53fb5dfe34a'::uuid,
  'viewer',
  'active',
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '206b2794-36af-553e-aef5-9749d35b5e7e'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid,
  'viewer',
  'active',
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '72ee7c61-2490-5d85-9ddd-d077de2f7076'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'e3fbeb3d-2a6c-5b72-9ae7-02c84c034471'::uuid,
  'viewer',
  'active',
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a02a4514-bccb-5ba8-9cfc-73e6121bf231'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  '1b70bae1-1102-5059-84fb-4d69136b5032'::uuid,
  'viewer',
  'active',
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '05202b62-fb6a-50a6-b005-d583abf8f96b'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Vascularized cardiac organoids — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c36e80fd-b8d0-5067-b99c-c157cdef3dbc'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Vascularized cardiac organoids — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'f1960a0a-78f4-50df-a9b5-52f5cecb2a7f'::uuid,
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7f2f7bfd-e546-5f08-8a84-667869cfca29'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'Submit internal review',
  'Tracked work item for Vascularized cardiac organoids — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '83ca350d-88aa-5712-a84d-d53fb5dfe34a'::uuid,
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1b70ec2f-6499-5333-8171-3e871e27daf2'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'Update project README',
  'Tracked work item for Vascularized cardiac organoids — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid,
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0d48edf6-2f59-59f1-a9a4-6cd768772837'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'Draft related work section',
  'Tracked work item for Vascularized cardiac organoids — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'e3fbeb3d-2a6c-5b72-9ae7-02c84c034471'::uuid,
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '684c8f1b-e2d9-558d-9016-bbe03fe635dd'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'Clean and version dataset',
  'Tracked work item for Vascularized cardiac organoids — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '1b70bae1-1102-5059-84fb-4d69136b5032'::uuid,
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '31b798d5-1c34-5e0e-ba6b-3836041b3040'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Vascularized cardiac organoids — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'aa43bb64-51c3-55cc-9b43-b48df9b35b7b'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Vascularized cardiac organoids — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'f1960a0a-78f4-50df-a9b5-52f5cecb2a7f'::uuid,
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '74230813-346a-588a-a51c-898980a20918'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid,
  true,
  'planning',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b8cd2647-c33a-5e1b-b69b-35419de87a36'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'f1960a0a-78f4-50df-a9b5-52f5cecb2a7f'::uuid,
  'f1960a0a-78f4-50df-a9b5-52f5cecb2a7f'::uuid,
  true,
  'analysis',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '7177643e-2d4a-5690-be35-f3bd01dc9ee4'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '83ca350d-88aa-5712-a84d-d53fb5dfe34a'::uuid,
  '83ca350d-88aa-5712-a84d-d53fb5dfe34a'::uuid,
  true,
  'writing',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2314b658-1251-5dba-bce1-7cf948b68e5e'::uuid,
  'ade53c65-20fc-5616-9581-da5cfe7157f6'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid,
  '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid,
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
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  'Labor market effects of credentialing — cohort 2',
  'Labor market effects of credentialing is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around causal, policy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  ARRAY['causal','policy']::text[],
  'active',
  'Economics',
  ARRAY['Econometrics','Stata','Causal ML']::text[],
  'remote',
  'medium_term',
  13,
  true,
  'New York, NY',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '189de0d7-6e2e-527f-8fdc-65f7880eb83a'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  'owner',
  'active',
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '056b6188-46c4-57f0-8793-d17d35132296'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  '15329dac-2653-5bf8-ab92-979bca93b089'::uuid,
  'editor',
  'active',
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b046b9df-4977-5500-b57a-0b307db701f0'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8'::uuid,
  'viewer',
  'active',
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1c0a34f9-8da1-54dc-9d95-142ac7082dc3'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  '7fbc04cc-a2f1-5c77-b110-14896c533a68'::uuid,
  'viewer',
  'active',
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '18932919-2e0a-5ca1-b545-7494d7a27684'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  'e9c87503-b8cf-5632-8ac0-9da60fdc05a2'::uuid,
  'viewer',
  'active',
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '53d6f8eb-fb84-5031-92e3-4035b659a434'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  '986e3fa3-697e-5603-b99c-4e2cd979c814'::uuid,
  'viewer',
  'active',
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '441df8fa-214a-5bd3-bdd0-f8f0cebdc536'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  '59411c6d-89c7-5a03-8b64-1273d8843a53'::uuid,
  'viewer',
  'active',
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5c03a5b3-9d98-55f7-8adf-e4e34cd7756b'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Labor market effects of credentialing — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '78883f0b-4999-5905-b394-aa1d9b24615f'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Labor market effects of credentialing — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '15329dac-2653-5bf8-ab92-979bca93b089'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '51d9b998-9773-5c70-b4cf-2de57e7c5614'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  'Submit internal review',
  'Tracked work item for Labor market effects of credentialing — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6870b6ac-a9ac-509d-940e-1f2e4da29c93'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  'Update project README',
  'Tracked work item for Labor market effects of credentialing — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '7fbc04cc-a2f1-5c77-b110-14896c533a68'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ba44f11a-189c-5ae7-94e2-f9824ac76bb3'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  'Draft related work section',
  'Tracked work item for Labor market effects of credentialing — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'e9c87503-b8cf-5632-8ac0-9da60fdc05a2'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fa61502f-3b15-5094-b803-4b750a150c06'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  'Clean and version dataset',
  'Tracked work item for Labor market effects of credentialing — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '986e3fa3-697e-5603-b99c-4e2cd979c814'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8f02092d-44d8-581e-bb41-2e2500b24153'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Labor market effects of credentialing — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '59411c6d-89c7-5a03-8b64-1273d8843a53'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3b0d8c33-0f37-5469-9cd1-e0a70f5d9f22'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Labor market effects of credentialing — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0f53d904-22ac-5772-a802-8ba53c888b2c'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  true,
  'planning',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '56712be3-95a4-58f0-a1a1-9373765bdc32'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '15329dac-2653-5bf8-ab92-979bca93b089'::uuid,
  '15329dac-2653-5bf8-ab92-979bca93b089'::uuid,
  true,
  'analysis',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '62b80197-8a73-523d-8516-6ce56fb17407'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8'::uuid,
  '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8'::uuid,
  true,
  'writing',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '93d910b2-099f-5d62-8fd6-563b593a00af'::uuid,
  'dfc0781e-89e5-5ce2-a216-f5baeae9c26b'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '7fbc04cc-a2f1-5c77-b110-14896c533a68'::uuid,
  '7fbc04cc-a2f1-5c77-b110-14896c533a68'::uuid,
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
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'Low-cost water contaminant sensing — cohort 2',
  'Low-cost water contaminant sensing is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around sensors, water. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  ARRAY['sensors','water']::text[],
  'active',
  'Environmental Engineering',
  ARRAY['Hydrology','Sensor networks','Python']::text[],
  'hybrid',
  'long_term',
  14,
  true,
  'Chicago, IL',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0b7a6f5d-2402-5a1d-b101-c29f14e38a6a'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  'owner',
  'active',
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4ac5391f-ba4f-543a-ab7e-39dc53f74fe7'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'c3e1b9c8-0619-5fd4-a5b1-9dc8aec4a33b'::uuid,
  'editor',
  'active',
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8f971f7a-c1ea-5f9a-b50e-df853c636fb8'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'd377db0e-bf42-500a-9404-0b006df6e52f'::uuid,
  'viewer',
  'active',
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b1bc6226-6832-5618-ba84-91a26be1beb6'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'f1ea10b0-8c31-5412-bd19-36fe94b2a01d'::uuid,
  'viewer',
  'active',
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '341c973c-50e2-5e97-99a2-bfb37071ae8d'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  '560e33d5-d1d4-54da-84b6-56f71fbcb908'::uuid,
  'viewer',
  'active',
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '45f68adf-25b9-5601-bd5a-f2f024450010'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'c0679564-584a-56e3-82af-67940faa7931'::uuid,
  'viewer',
  'active',
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9aea81ae-a885-59d1-bd47-756fd7296f36'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'b5631b8b-451c-5fe4-b56b-bdb69c9490ae'::uuid,
  'viewer',
  'active',
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7365cd7f-6ca1-5650-945a-6abb508f9c28'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  '1e2a697d-74d0-5ccd-b526-81c2a8412445'::uuid,
  'viewer',
  'active',
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8169feac-6fcb-5e5d-b432-932bbff64cdb'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Low-cost water contaminant sensing — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '432b9424-15e4-5379-ac62-da76d9addc42'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Low-cost water contaminant sensing — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'c3e1b9c8-0619-5fd4-a5b1-9dc8aec4a33b'::uuid,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '507a2286-1919-5dde-b80b-e494a90e2a2d'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'Submit internal review',
  'Tracked work item for Low-cost water contaminant sensing — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'd377db0e-bf42-500a-9404-0b006df6e52f'::uuid,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6ed67bad-9072-5f5d-b81d-be690792105b'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'Update project README',
  'Tracked work item for Low-cost water contaminant sensing — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'f1ea10b0-8c31-5412-bd19-36fe94b2a01d'::uuid,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd95ccb34-1e30-5afe-919f-4f8fc3d853a4'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'Draft related work section',
  'Tracked work item for Low-cost water contaminant sensing — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '560e33d5-d1d4-54da-84b6-56f71fbcb908'::uuid,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1aad4448-7fe5-56e4-848d-627c56f08ca8'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'Clean and version dataset',
  'Tracked work item for Low-cost water contaminant sensing — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'c0679564-584a-56e3-82af-67940faa7931'::uuid,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c13b7bfa-1b08-56e6-8656-8d5104577752'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'b5631b8b-451c-5fe4-b56b-bdb69c9490ae'::uuid,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e367cd66-850f-5b3e-8ccf-e1adb1beedc9'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '1e2a697d-74d0-5ccd-b526-81c2a8412445'::uuid,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6d7bf9ee-a1a6-5dee-aefa-46072eeda780'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid,
  true,
  'planning',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3a475cfa-04b3-514c-bc76-16c8d3cd8552'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'c3e1b9c8-0619-5fd4-a5b1-9dc8aec4a33b'::uuid,
  'c3e1b9c8-0619-5fd4-a5b1-9dc8aec4a33b'::uuid,
  true,
  'analysis',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b483bbf9-dc1e-5581-900a-8ee5e6ca1057'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'd377db0e-bf42-500a-9404-0b006df6e52f'::uuid,
  'd377db0e-bf42-500a-9404-0b006df6e52f'::uuid,
  true,
  'writing',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b4b764db-d245-5c02-9502-78df0df7e9eb'::uuid,
  '52931c65-6064-5a19-b387-9adc6e5ceca8'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'f1ea10b0-8c31-5412-bd19-36fe94b2a01d'::uuid,
  'f1ea10b0-8c31-5412-bd19-36fe94b2a01d'::uuid,
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
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'Federated learning for rare disease cohorts — cohort 2',
  'Federated learning for rare disease cohorts is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around privacy, ML. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  ARRAY['privacy','ML']::text[],
  'planning',
  'Computational Biology',
  ARRAY['Python','R','Genomics']::text[],
  'local',
  'long_term',
  15,
  true,
  'Baltimore, MD',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '08e5fd3c-6f1c-5f33-a6ec-d6dc08a5069c'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  'owner',
  'active',
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '51cfac5d-0db1-5e01-aa56-19b8c50edcf6'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid,
  'editor',
  'active',
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '77efcf0a-b9dd-5c57-8fd6-5efaaab291fd'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'cc3f4ff0-c75f-5419-a48a-b4fd93e58037'::uuid,
  'viewer',
  'active',
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0fdc93f9-c55d-57a6-84e7-41c36c96e8a5'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  '7a25d666-766e-5e81-97a3-36cc7b3d90a2'::uuid,
  'viewer',
  'active',
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '598766ad-db9e-598a-a8b4-423fdbca5e93'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  '05f978d0-0879-58f9-a6dc-805cdda510f6'::uuid,
  'viewer',
  'active',
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ec867ec8-f4a0-5240-a8ac-0407f47fed40'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'c824bafc-8469-53db-bec8-76cb657bd1db'::uuid,
  'viewer',
  'active',
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '391febae-e568-5876-92a3-20e1d544cf7e'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'e39f2983-9db1-5407-971d-ee03cd24169f'::uuid,
  'viewer',
  'active',
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '82f5161b-040a-57ba-b984-6242dce0213d'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'af8dc57b-50ea-53e4-83a2-7fc4513a247e'::uuid,
  'viewer',
  'active',
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '94d63d69-7d38-550d-acdb-0ddab49e9474'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid,
  'viewer',
  'active',
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c802f007-bce0-5dc2-8d28-8df9f558a2c3'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'aab5cb25-5c94-57a2-8d26-ff226d895aa0'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6adc1df7-50f4-5635-a89d-39af33588c2e'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'Submit internal review',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'cc3f4ff0-c75f-5419-a48a-b4fd93e58037'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c53e6969-8b03-5af7-a194-e8c1ecce43cd'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'Update project README',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '7a25d666-766e-5e81-97a3-36cc7b3d90a2'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '269ec676-a50b-5dd5-8ec7-4c052815567f'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'Draft related work section',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '05f978d0-0879-58f9-a6dc-805cdda510f6'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e85ffc79-3ac4-58a7-b3dc-e329f43f6559'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'Clean and version dataset',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'c824bafc-8469-53db-bec8-76cb657bd1db'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '823ef703-39b2-5f73-af6b-00e67b087c1e'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'e39f2983-9db1-5407-971d-ee03cd24169f'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7f3d08de-13cc-575a-bce4-d3c052ccc164'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'af8dc57b-50ea-53e4-83a2-7fc4513a247e'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b445385d-1561-5be7-958d-1e9852a5d8f0'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  true,
  'planning',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2c439585-81f2-511f-a9e9-c9ec39cf9801'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid,
  '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid,
  true,
  'analysis',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '26d4c246-fe8f-51b0-bac0-d0803655c4f1'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'cc3f4ff0-c75f-5419-a48a-b4fd93e58037'::uuid,
  'cc3f4ff0-c75f-5419-a48a-b4fd93e58037'::uuid,
  true,
  'writing',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8964b5f6-1070-5324-a0c1-53b451a7453f'::uuid,
  '850945d1-3baa-569e-97d2-968161c0482a'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '7a25d666-766e-5e81-97a3-36cc7b3d90a2'::uuid,
  '7a25d666-766e-5e81-97a3-36cc7b3d90a2'::uuid,
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
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'Wildfire smoke exposure forecasting — cohort 2',
  'Wildfire smoke exposure forecasting is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around air quality, forecasting. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  ARRAY['air quality','forecasting']::text[],
  'active',
  'Climate Science',
  ARRAY['Remote sensing','Python','GIS']::text[],
  'remote',
  'short_term',
  4,
  true,
  'New Haven, CT',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '16e14a37-0839-5344-963a-519342f55674'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  'owner',
  'active',
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '29eba0db-db1d-50e6-85b5-a863d7470cd7'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'c51f57c8-ceb6-5800-8535-3bfb0d73bd50'::uuid,
  'editor',
  'active',
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9e6cb230-e1c2-5f60-8f8d-ab059861511d'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid,
  'viewer',
  'active',
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '920b53d0-58ae-5935-9a87-eb7dded37809'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'e5b15532-8a50-5880-90f6-f3cfebbfb6ee'::uuid,
  'viewer',
  'active',
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8bd3c8bb-e2f0-57f3-b0b3-11af99b467ae'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f13001ca-b75b-5197-8b29-3f78973ada1e'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'c51f57c8-ceb6-5800-8535-3bfb0d73bd50'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8d0b3e4a-ded6-5f39-991c-e68dfd005479'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'Submit internal review',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c7e2ce17-70aa-525d-82c6-5ab671f47685'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'Update project README',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'e5b15532-8a50-5880-90f6-f3cfebbfb6ee'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6d599db6-3dd1-5a2c-bfde-2948b287b0b1'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'Draft related work section',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '70c79e27-d8bc-57d1-b0d6-2030d11cae2a'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'Clean and version dataset',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'c51f57c8-ceb6-5800-8535-3bfb0d73bd50'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '83de3d53-2789-530e-a4ed-2a7b4d7f3ef5'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'df3cc504-843e-5abc-b835-5d045e6862b3'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'e5b15532-8a50-5880-90f6-f3cfebbfb6ee'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4d345701-fbf4-5f88-af3d-b602e5561584'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  true,
  'planning',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'db13a9ce-f617-5bc5-81ca-6b3d8110228f'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'c51f57c8-ceb6-5800-8535-3bfb0d73bd50'::uuid,
  'c51f57c8-ceb6-5800-8535-3bfb0d73bd50'::uuid,
  true,
  'analysis',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'dbabac05-d457-5a15-8eef-4383ec8c94de'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid,
  '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid,
  true,
  'writing',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3f6158d4-732d-54f8-92d7-9160530eb079'::uuid,
  '683258f5-f796-5b28-8f00-292f17af0a3e'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'e5b15532-8a50-5880-90f6-f3cfebbfb6ee'::uuid,
  'e5b15532-8a50-5880-90f6-f3cfebbfb6ee'::uuid,
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
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'Solid-state battery interface imaging — cohort 2',
  'Solid-state battery interface imaging is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around interfaces, microscopy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  ARRAY['interfaces','microscopy']::text[],
  'active',
  'Materials Science',
  ARRAY['DFT','Lab automation','Characterization']::text[],
  'hybrid',
  'medium_term',
  5,
  true,
  'Princeton, NJ',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0c9debae-399c-5a1d-89d8-77a3f46f194d'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  'owner',
  'active',
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5972fa94-78de-557c-9c3d-ea1e1c2a5027'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'bf844e91-b34b-51f3-9b61-28aac491ce08'::uuid,
  'editor',
  'active',
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b97f5540-e72c-5103-8a3b-a19860bf3dcb'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'e5591a9d-4391-50d2-a26d-ed7a237f52c8'::uuid,
  'viewer',
  'active',
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4d24d440-b8ae-555b-a2ed-b3ced72994d2'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  '3aa7aaa1-77b2-5cd4-b7a2-7f500e41212b'::uuid,
  'viewer',
  'active',
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a894b7d6-ed83-5c1d-8401-33f6a216486a'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'f324dc11-eb21-5df5-a147-1760b8514837'::uuid,
  'viewer',
  'active',
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'dbf90da3-ae4e-5589-9a40-217981259824'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Solid-state battery interface imaging — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0121a0ed-4205-5f21-a239-e939801c0f5a'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Solid-state battery interface imaging — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'bf844e91-b34b-51f3-9b61-28aac491ce08'::uuid,
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ce52ac23-c2f7-5af2-9b8d-04af29f6db36'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'Submit internal review',
  'Tracked work item for Solid-state battery interface imaging — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'e5591a9d-4391-50d2-a26d-ed7a237f52c8'::uuid,
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2c6e4ada-ded8-5952-abd2-6f46f34b1008'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'Update project README',
  'Tracked work item for Solid-state battery interface imaging — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '3aa7aaa1-77b2-5cd4-b7a2-7f500e41212b'::uuid,
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a6527ebd-9fb1-5dd4-a48a-16aaf957462c'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'Draft related work section',
  'Tracked work item for Solid-state battery interface imaging — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'f324dc11-eb21-5df5-a147-1760b8514837'::uuid,
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ace05231-0567-54bf-b317-b8cac767d410'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'Clean and version dataset',
  'Tracked work item for Solid-state battery interface imaging — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ce944c3a-6507-5253-b4da-561f975db66a'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Solid-state battery interface imaging — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'bf844e91-b34b-51f3-9b61-28aac491ce08'::uuid,
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9b11818f-1588-56e7-b185-c80eb5d28e90'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Solid-state battery interface imaging — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'e5591a9d-4391-50d2-a26d-ed7a237f52c8'::uuid,
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c7d6eaac-fd5f-5d10-ae8b-c70f8d2af961'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  true,
  'planning',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4e79b6a2-4e5b-5515-94c5-926ead6ccb5c'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'bf844e91-b34b-51f3-9b61-28aac491ce08'::uuid,
  'bf844e91-b34b-51f3-9b61-28aac491ce08'::uuid,
  true,
  'analysis',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e7b268c2-c578-5feb-8a87-70e60c61f400'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'e5591a9d-4391-50d2-a26d-ed7a237f52c8'::uuid,
  'e5591a9d-4391-50d2-a26d-ed7a237f52c8'::uuid,
  true,
  'writing',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b3e5fedd-baaf-5b35-a17b-a5436bf528f0'::uuid,
  '21835700-29c3-5987-ba9c-2b11aa7d8267'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '3aa7aaa1-77b2-5cd4-b7a2-7f500e41212b'::uuid,
  '3aa7aaa1-77b2-5cd4-b7a2-7f500e41212b'::uuid,
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
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'Classroom AI tutor field study — cohort 2',
  'Classroom AI tutor field study is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around edtech, RCT. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  ARRAY['edtech','RCT']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'local',
  'long_term',
  6,
  true,
  'Pasadena, CA',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a83a636d-444f-53a9-a8db-5424c53ad9a1'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  'owner',
  'active',
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6a7d830a-d3ca-5eca-901f-ca83ece52730'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid,
  'editor',
  'active',
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '07c722a8-5823-5c0c-878c-92bfeee78b19'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  '3c8de87e-de6b-50c7-b5c7-8a4cf5f05ce5'::uuid,
  'viewer',
  'active',
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '86536ca2-04a4-5641-a08a-04292ae4e248'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'a293f5f8-02a6-5269-894f-668baf4f645d'::uuid,
  'viewer',
  'active',
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7c364310-8d6b-5090-af57-63cd121add6f'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  '5f2c2809-9359-5452-9fbe-c34e2c99b711'::uuid,
  'viewer',
  'active',
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '96fdc68d-d836-5fd1-8102-ea267a81fa18'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'ea2fb814-4778-5d39-a00f-eb1d0e27fb92'::uuid,
  'viewer',
  'active',
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '93d6d7ce-9d32-5ad4-82dd-5b2e2522bafb'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Classroom AI tutor field study — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6a57862a-18d4-5743-8e17-115c93cd3921'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Classroom AI tutor field study — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid,
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c84b4cbf-2e2f-5d2d-9c55-053338b31427'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'Submit internal review',
  'Tracked work item for Classroom AI tutor field study — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '3c8de87e-de6b-50c7-b5c7-8a4cf5f05ce5'::uuid,
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a500f472-5f9a-56f3-ab3a-2e26ce7b9e7d'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'Update project README',
  'Tracked work item for Classroom AI tutor field study — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'a293f5f8-02a6-5269-894f-668baf4f645d'::uuid,
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '69a31be8-e459-5511-be6a-2bb36cdcfeb3'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'Draft related work section',
  'Tracked work item for Classroom AI tutor field study — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '5f2c2809-9359-5452-9fbe-c34e2c99b711'::uuid,
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '59f2d33b-6a7e-5d9d-8804-77dd5b3b9c0d'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'Clean and version dataset',
  'Tracked work item for Classroom AI tutor field study — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'ea2fb814-4778-5d39-a00f-eb1d0e27fb92'::uuid,
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3b4d11bf-d6c2-5153-8909-344d1530329f'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Classroom AI tutor field study — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '883ed659-5a3a-5e53-9e50-bbed4279ad4b'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Classroom AI tutor field study — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid,
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '97eeb3ba-d466-5ea5-9db0-ff6c37e9fe88'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  true,
  'planning',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4b8934c0-cacc-54ee-9c90-8c485196eec1'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid,
  '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid,
  true,
  'analysis',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'bf86e715-d77a-53b9-9a2d-b9a0b08ab99e'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '3c8de87e-de6b-50c7-b5c7-8a4cf5f05ce5'::uuid,
  '3c8de87e-de6b-50c7-b5c7-8a4cf5f05ce5'::uuid,
  true,
  'writing',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '36444b60-fee8-57a3-bf6a-b345743da5cf'::uuid,
  '93ac8f40-21eb-5f53-9337-0a27506bb66d'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'a293f5f8-02a6-5269-894f-668baf4f645d'::uuid,
  'a293f5f8-02a6-5269-894f-668baf4f645d'::uuid,
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
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'Privacy-preserving wearable analytics — cohort 2',
  'Privacy-preserving wearable analytics is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around wearables, privacy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  ARRAY['wearables','privacy']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'remote',
  'long_term',
  7,
  true,
  'Oxford, UK',
  now() - interval '23 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '60322ff0-2a61-5231-bf79-1e1f32707c0e'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  'owner',
  'active',
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c6b9abc4-4548-55ac-9eb6-41298cf6d37a'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  '5bb96b4a-a630-5144-be50-35472c9f803c'::uuid,
  'editor',
  'active',
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2d54ae97-04c9-53d6-917d-465b9ed2c713'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'be534e0e-c9dc-5c7c-a2ee-f7889a9429c3'::uuid,
  'viewer',
  'active',
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd6252cbd-b42c-50ad-8229-af331c7b2964'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  '0b9247c6-0623-5a13-adf7-d6eb575f4280'::uuid,
  'viewer',
  'active',
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '19131c03-a141-5ac8-89f3-60953b02a63b'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'eb5ccd8d-a4fb-52c8-a377-d672cd074de2'::uuid,
  'viewer',
  'active',
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2b67007f-91cd-5c85-b19b-ea6ecc4e1ce1'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid,
  'viewer',
  'active',
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c4b1dea0-791e-5024-a159-5766442ac745'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'aa479ed7-f579-59a4-b70d-6c3d8577050a'::uuid,
  'viewer',
  'active',
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4176eb5e-02c4-5895-8317-d42c82780772'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 2.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2e7663de-6853-576b-adc9-f2184833875a'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '5bb96b4a-a630-5144-be50-35472c9f803c'::uuid,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2ca63ca7-7391-55c6-a51c-8a3e900db09e'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'Submit internal review',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 2.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'be534e0e-c9dc-5c7c-a2ee-f7889a9429c3'::uuid,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '828d9b06-f8d4-540f-b79c-ac79b028e910'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'Update project README',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 2.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '0b9247c6-0623-5a13-adf7-d6eb575f4280'::uuid,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '02b2dbc0-e0b4-55bb-b343-16731066e636'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'Draft related work section',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 2.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'eb5ccd8d-a4fb-52c8-a377-d672cd074de2'::uuid,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c5a21703-f6ca-594e-932e-61815897014d'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'Clean and version dataset',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 2.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b9c63fda-a32b-5425-a1dd-3e77c1e1f281'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 2.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'aa479ed7-f579-59a4-b70d-6c3d8577050a'::uuid,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a6ee3984-f1db-5e2a-a057-46a46bbc5942'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 2.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd939c0ba-5281-5bd5-813d-aff5a63ccb4d'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid,
  true,
  'planning',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '91ede839-f5ef-5aa3-a714-5fa111f7fda7'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '5bb96b4a-a630-5144-be50-35472c9f803c'::uuid,
  '5bb96b4a-a630-5144-be50-35472c9f803c'::uuid,
  true,
  'analysis',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5d981d85-ae32-5b6b-af9e-c1bc5bd71295'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'be534e0e-c9dc-5c7c-a2ee-f7889a9429c3'::uuid,
  'be534e0e-c9dc-5c7c-a2ee-f7889a9429c3'::uuid,
  true,
  'writing',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '84753d97-d30c-523d-b8ff-0e790a233a5a'::uuid,
  '7c6195c7-374e-547f-80f2-90b9b688abfd'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '0b9247c6-0623-5a13-adf7-d6eb575f4280'::uuid,
  '0b9247c6-0623-5a13-adf7-d6eb575f4280'::uuid,
  true,
  'ops',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;
