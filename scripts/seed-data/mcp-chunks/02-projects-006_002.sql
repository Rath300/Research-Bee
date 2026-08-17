INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'Near-term quantum error mitigation — cohort 7',
  'Near-term quantum error mitigation is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around NISQ, algorithms. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  ARRAY['NISQ','algorithms']::text[],
  'active',
  'Quantum Information',
  ARRAY['Qiskit','Linear algebra','Optics']::text[],
  'remote',
  'long_term',
  10,
  true,
  'Cambridge, MA',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7a487024-ef40-5c9e-b6d8-0c396cd36880'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  'owner',
  'active',
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f1b8b139-8b4e-54a1-99c5-bae93fd5d043'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'd607c5db-de3d-5283-938a-378840208167'::uuid,
  'editor',
  'active',
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '42e8964e-dac2-5e7c-888d-f1315849f7be'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'c9a78c52-bd19-5259-91ef-08c71fda445d'::uuid,
  'viewer',
  'active',
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'dce98746-5e4b-59a2-9e5c-2aec4da9bf8d'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'b9bc161a-f1e9-50c1-93ea-4e1ffb4f3b45'::uuid,
  'viewer',
  'active',
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9bd93cfd-f130-5036-9cf7-3cfcae2044cb'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'Draft related work section',
  'Tracked work item for Near-term quantum error mitigation — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a26790ac-f286-5273-a9c4-094091bcca78'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'Clean and version dataset',
  'Tracked work item for Near-term quantum error mitigation — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'd607c5db-de3d-5283-938a-378840208167'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '71e4b8c6-e774-5211-9f21-29d51692a3a3'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'Run baseline model',
  'Tracked work item for Near-term quantum error mitigation — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'c9a78c52-bd19-5259-91ef-08c71fda445d'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8166b063-1f08-5145-b95d-ff8617ca1404'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'Write IRB amendment',
  'Tracked work item for Near-term quantum error mitigation — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'b9bc161a-f1e9-50c1-93ea-4e1ffb4f3b45'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '09012a1a-8452-5328-aaa9-5f29195119a8'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'Prepare figure panels',
  'Tracked work item for Near-term quantum error mitigation — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bf17a4e6-5379-57e0-ae7e-fc08d4ba9982'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Near-term quantum error mitigation — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'd607c5db-de3d-5283-938a-378840208167'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0a26bbbe-3624-5065-8f3e-448344b1aded'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Near-term quantum error mitigation — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'c9a78c52-bd19-5259-91ef-08c71fda445d'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3b67e678-3b49-5639-9174-09e6923ddd4e'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Near-term quantum error mitigation — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'b9bc161a-f1e9-50c1-93ea-4e1ffb4f3b45'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '25aa417e-78b2-5b47-9963-dcf20ac6d57d'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  true,
  'planning',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1a4959e8-f9a1-574a-9842-e4a1cfee7169'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'd607c5db-de3d-5283-938a-378840208167'::uuid,
  'd607c5db-de3d-5283-938a-378840208167'::uuid,
  true,
  'analysis',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd469b564-95b9-5ebe-94a9-ad7da0beb24c'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'c9a78c52-bd19-5259-91ef-08c71fda445d'::uuid,
  'c9a78c52-bd19-5259-91ef-08c71fda445d'::uuid,
  true,
  'writing',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f38a05f2-42af-5106-89dc-0ab4da85a645'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'b9bc161a-f1e9-50c1-93ea-4e1ffb4f3b45'::uuid,
  'b9bc161a-f1e9-50c1-93ea-4e1ffb4f3b45'::uuid,
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
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  'Robust evaluation for clinical LLMs — cohort 7',
  'Robust evaluation for clinical LLMs is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around LLMs, evaluation, safety. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  ARRAY['LLMs','evaluation','safety']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'hybrid',
  'long_term',
  11,
  true,
  'Palo Alto, CA',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3f4af100-7494-533f-bed7-993a5e6ad1d9'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  'owner',
  'active',
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b5f12233-bdcf-53d4-8614-3fedb3e5a9d6'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  '6920da0a-a803-5817-876c-c73449120e9d'::uuid,
  'editor',
  'active',
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b2139811-a162-5212-b59d-66375646b621'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  '99a26567-fc56-5088-8ed4-aaf0cd314f3e'::uuid,
  'viewer',
  'active',
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '25cec012-c518-5252-bacd-17e351bd69f3'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid,
  'viewer',
  'active',
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4974cd6a-d798-5198-8613-acb7e9d56455'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  'f10068dd-3d78-5f14-aae4-f628e51e8ae8'::uuid,
  'viewer',
  'active',
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '228a806e-235d-55ed-9715-fb5272c43173'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  'Draft related work section',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8b96c6b6-4b59-5b4f-ab04-4f3484fbffb1'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  'Clean and version dataset',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '6920da0a-a803-5817-876c-c73449120e9d'::uuid,
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '493d6d3d-892a-59b3-aef3-ec9dfb740f42'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  'Run baseline model',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '99a26567-fc56-5088-8ed4-aaf0cd314f3e'::uuid,
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7be86957-4d56-5345-a596-064625cede7c'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  'Write IRB amendment',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid,
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '61740625-6a55-5eaa-be17-9e1a2c4fd814'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  'Prepare figure panels',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'f10068dd-3d78-5f14-aae4-f628e51e8ae8'::uuid,
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '70014221-80e1-52d7-8e44-ecefc514df75'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0d3d9ef2-cf76-5c0b-9490-59b88209407c'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '6920da0a-a803-5817-876c-c73449120e9d'::uuid,
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3c483567-d846-5a81-a75c-b2d689867e07'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '99a26567-fc56-5088-8ed4-aaf0cd314f3e'::uuid,
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8b82c540-10b9-5e86-9ccc-713eb8301f5a'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  true,
  'planning',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b01a2ab6-2a95-5224-81a2-88a8a0ddccf6'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '6920da0a-a803-5817-876c-c73449120e9d'::uuid,
  '6920da0a-a803-5817-876c-c73449120e9d'::uuid,
  true,
  'analysis',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ad787ba2-4f77-5083-b6a7-2486d598d047'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '99a26567-fc56-5088-8ed4-aaf0cd314f3e'::uuid,
  '99a26567-fc56-5088-8ed4-aaf0cd314f3e'::uuid,
  true,
  'writing',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5c902078-2ddb-5a19-b3ba-38e38bc68f65'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid,
  '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid,
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
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  'Photoredox catalysis for late-stage edits — cohort 7',
  'Photoredox catalysis for late-stage edits is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around catalysis, synthesis. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  ARRAY['catalysis','synthesis']::text[],
  'active',
  'Chemistry',
  ARRAY['Organic synthesis','Spectroscopy','Cheminformatics']::text[],
  'local',
  'short_term',
  12,
  true,
  'Berkeley, CA',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5a8d7f0b-dc48-5545-aaa9-aa08909d77dc'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  'owner',
  'active',
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6bb0f1a9-86ab-5d01-bec7-0fbaa6f8c001'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  '246bcb7d-f6ac-555a-b9a5-8c11a5d0f5d2'::uuid,
  'editor',
  'active',
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9c307dd9-cb58-5394-b0ce-077a7ae3ce68'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  '615aae5c-381c-5bcd-83c3-76cecc3fb911'::uuid,
  'viewer',
  'active',
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a1fad080-f966-5a57-b741-a0150332c5d4'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  'c8f46057-70bf-5ff9-b0da-9eed0f520276'::uuid,
  'viewer',
  'active',
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5c260bca-ce4c-5a40-87c6-e350ba573e40'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  '90d41892-fb72-5023-9fe0-b787e8a2401c'::uuid,
  'viewer',
  'active',
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'abd60706-ed81-595a-a4e5-7cccf546b824'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  '6facfbeb-f04c-54d5-b408-9e8c94854c76'::uuid,
  'viewer',
  'active',
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7d712386-88ab-57af-980a-70f03d674ddb'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  'Draft related work section',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'eff389d5-4fcf-5421-b15e-412eee26b3b5'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  'Clean and version dataset',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '246bcb7d-f6ac-555a-b9a5-8c11a5d0f5d2'::uuid,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f10b851e-a748-5fbd-9ab6-c7e8ff91b70a'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  'Run baseline model',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '615aae5c-381c-5bcd-83c3-76cecc3fb911'::uuid,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0a328a87-b79a-5382-a311-745a6172d8ac'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  'Write IRB amendment',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'c8f46057-70bf-5ff9-b0da-9eed0f520276'::uuid,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5a9a78e4-7e30-51a6-8b24-c0122ae8fb1a'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  'Prepare figure panels',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '90d41892-fb72-5023-9fe0-b787e8a2401c'::uuid,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3e684c20-2b1d-5476-8432-c2ea95279bad'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '6facfbeb-f04c-54d5-b408-9e8c94854c76'::uuid,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '338d53f7-1548-544f-b103-795158123afe'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '87b5afa0-f222-59df-88ec-e5a2687bc8ac'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '246bcb7d-f6ac-555a-b9a5-8c11a5d0f5d2'::uuid,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0152a4dc-da84-5119-b2c8-98cc3294f3d9'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  true,
  'planning',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3c7f49cf-810c-578a-8099-a0f2e27b6929'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '246bcb7d-f6ac-555a-b9a5-8c11a5d0f5d2'::uuid,
  '246bcb7d-f6ac-555a-b9a5-8c11a5d0f5d2'::uuid,
  true,
  'analysis',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ab1b6cff-d857-5c99-9135-1929c50d1f90'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '615aae5c-381c-5bcd-83c3-76cecc3fb911'::uuid,
  '615aae5c-381c-5bcd-83c3-76cecc3fb911'::uuid,
  true,
  'writing',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1456425f-9e68-5a54-b397-8429802c40be'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'c8f46057-70bf-5ff9-b0da-9eed0f520276'::uuid,
  'c8f46057-70bf-5ff9-b0da-9eed0f520276'::uuid,
  true,
  'ops',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;