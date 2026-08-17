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