INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'Federated learning for rare disease cohorts — cohort 4',
  'Federated learning for rare disease cohorts is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around privacy, ML. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  ARRAY['privacy','ML']::text[],
  'planning',
  'Computational Biology',
  ARRAY['Python','R','Genomics']::text[],
  'remote',
  'long_term',
  7,
  true,
  'New York, NY',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6c09f8bb-d8ff-5e11-9747-919e45991955'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  'owner',
  'active',
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c3559dff-07e2-5b5f-bf73-fee030a72f25'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid,
  'editor',
  'active',
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '49ba5859-cf92-525b-b5d0-79a34bec6553'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  '6499e30b-6a75-57c2-9f84-b06b398ee38f'::uuid,
  'viewer',
  'active',
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5c4967e1-04ff-5afd-96c9-a7cfb6bf7b9a'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'dc812569-44a4-5798-a90f-fb9ec9b15fb0'::uuid,
  'viewer',
  'active',
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'cb54d29d-3223-5ff2-b307-85df18e211fb'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'e4161d15-a489-5141-bd1c-b34b92ebab30'::uuid,
  'viewer',
  'active',
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '97ee57ad-f6a6-556a-87eb-2788a40ccacf'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  '3f68d29d-2cdf-5260-9839-0ba7504ac3f1'::uuid,
  'viewer',
  'active',
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b068b95d-ed4a-5702-a559-405986a98980'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  '7fa979d0-8550-56ee-91d7-4eaf982710d7'::uuid,
  'viewer',
  'active',
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7de3a05b-2381-5b31-986e-dcbe769dfb42'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'Draft related work section',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c70bb690-72ae-55b1-b1bb-d45c2eaf2f46'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'Clean and version dataset',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '82a3bcda-e0ec-5df3-bf5b-53c81037967c'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'Run baseline model',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '6499e30b-6a75-57c2-9f84-b06b398ee38f'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4b48ea7d-486d-5119-8b01-008a30d820c0'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'Write IRB amendment',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'dc812569-44a4-5798-a90f-fb9ec9b15fb0'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '391c5fde-9fe2-57fe-9a63-1e86e75bca8e'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'Prepare figure panels',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'e4161d15-a489-5141-bd1c-b34b92ebab30'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'db97b846-b3c7-54ff-bbfc-cd43f0a6dccf'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '3f68d29d-2cdf-5260-9839-0ba7504ac3f1'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '18a0a3cf-adc8-5f64-8e57-a1e6de0eebc6'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '7fa979d0-8550-56ee-91d7-4eaf982710d7'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9fcea6ef-8890-51cc-b01c-dc564e63f571'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '65ea7ec6-0074-54de-8398-6d6cba3364d6'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  true,
  'planning',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6b4a6bb7-c0ee-5f5a-b6e1-d9ed1d44691d'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid,
  '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid,
  true,
  'analysis',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '83153cbe-9777-55c3-8b92-addd8a3d1e13'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '6499e30b-6a75-57c2-9f84-b06b398ee38f'::uuid,
  '6499e30b-6a75-57c2-9f84-b06b398ee38f'::uuid,
  true,
  'writing',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a5a3d1e3-9859-547f-9627-a23b8f42d6b0'::uuid,
  '353a3fbf-0b8f-5084-852f-a3235f5f8ba1'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'dc812569-44a4-5798-a90f-fb9ec9b15fb0'::uuid,
  'dc812569-44a4-5798-a90f-fb9ec9b15fb0'::uuid,
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
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'Wildfire smoke exposure forecasting — cohort 4',
  'Wildfire smoke exposure forecasting is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around air quality, forecasting. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  ARRAY['air quality','forecasting']::text[],
  'active',
  'Climate Science',
  ARRAY['Remote sensing','Python','GIS']::text[],
  'hybrid',
  'short_term',
  8,
  true,
  'Chicago, IL',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a2ea784c-5b69-5b1f-9831-4f5c9df2e52f'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  'owner',
  'active',
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '018fd5b2-3740-5701-b7f8-f14704d48ae6'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'aa0f4626-ae11-54e1-a711-4c9fb811ad54'::uuid,
  'editor',
  'active',
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4d271a41-9c8d-5f61-9c21-68b3ebe9a57c'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid,
  'viewer',
  'active',
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f1e133ff-59b8-56f8-8c0e-60bd8513f7a1'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  '4913360a-0394-5a55-b1d6-85d797e7ae73'::uuid,
  'viewer',
  'active',
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '11abd49a-daf5-529b-83c5-dd589cd1fd96'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  '3304cdb0-f9e3-5358-9673-f15e11dc4e17'::uuid,
  'viewer',
  'active',
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '335e0564-808d-5739-8a3e-e55528b4c0c9'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'cc231435-d9ae-5d15-affd-9d705a76b1a1'::uuid,
  'viewer',
  'active',
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '82be7b7d-5b11-5e0b-b2d2-296f3d10ced5'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  '84128e04-1e76-5553-aee4-1a7c93db7343'::uuid,
  'viewer',
  'active',
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4648e10d-7663-561a-9048-3ccb5a76f3c2'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'b7a397ee-42b4-54dd-9008-e559a0b46399'::uuid,
  'viewer',
  'active',
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2c7b813c-02dd-5d0b-b922-67967975fc24'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'Draft related work section',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6bcedd66-5c06-5948-82b3-8befe2f8efb5'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'Clean and version dataset',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'aa0f4626-ae11-54e1-a711-4c9fb811ad54'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a3e21464-3f53-5d3f-9d70-b0b4fc5b3933'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'Run baseline model',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b541fb03-e513-5794-8b30-d6965f2332f3'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'Write IRB amendment',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '4913360a-0394-5a55-b1d6-85d797e7ae73'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8e2a1b7d-27d4-5160-a4a5-667d744fa50e'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'Prepare figure panels',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '3304cdb0-f9e3-5358-9673-f15e11dc4e17'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e07fe576-78af-5d62-8e6e-6c5c6caf496b'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'cc231435-d9ae-5d15-affd-9d705a76b1a1'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '94a458b9-5480-55d4-b129-e5e4130f0523'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '84128e04-1e76-5553-aee4-1a7c93db7343'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3fb9a4a7-0bab-5063-83ec-14b987cbf0c3'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'b7a397ee-42b4-54dd-9008-e559a0b46399'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e33b4dda-2f19-5a54-b894-bd86789da6ed'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  true,
  'planning',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0ebdabbc-d85a-5530-bc93-ca2ef3cfe628'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'aa0f4626-ae11-54e1-a711-4c9fb811ad54'::uuid,
  'aa0f4626-ae11-54e1-a711-4c9fb811ad54'::uuid,
  true,
  'analysis',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '30ceb269-5a57-5898-b639-a0bcaa95e07d'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid,
  '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid,
  true,
  'writing',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a2848e12-6d96-5ba3-8be9-72b5129d9a69'::uuid,
  '99e17770-9853-5a4a-907f-e54be2670742'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '4913360a-0394-5a55-b1d6-85d797e7ae73'::uuid,
  '4913360a-0394-5a55-b1d6-85d797e7ae73'::uuid,
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
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  'Solid-state battery interface imaging — cohort 4',
  'Solid-state battery interface imaging is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around interfaces, microscopy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  ARRAY['interfaces','microscopy']::text[],
  'active',
  'Materials Science',
  ARRAY['DFT','Lab automation','Characterization']::text[],
  'local',
  'medium_term',
  9,
  true,
  'Baltimore, MD',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'adb761be-ba47-5074-af50-bcf5d8b61bf1'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  'owner',
  'active',
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8ddc52dd-bb6a-5f76-b71d-5833e6bc02f2'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  '9b4dc10b-7d36-5636-ae3b-99ce160b7bed'::uuid,
  'editor',
  'active',
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '69d6b8ac-117d-526f-8a36-294d340b9b46'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  'e6f31c55-2acb-59f4-b10e-e3657979db8f'::uuid,
  'viewer',
  'active',
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f4a3baf2-8985-5aea-a029-5dd0522f854c'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid,
  'viewer',
  'active',
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1039bba2-43d4-5b91-89c8-96eef401c010'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  '37bf800c-4c16-538e-9bf2-8f3f5c8d7d38'::uuid,
  'viewer',
  'active',
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '022f1ec4-2515-5f92-82b4-f1426ea4f866'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  '01d4c20f-728c-5f96-8116-bbb132da4fca'::uuid,
  'viewer',
  'active',
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b21bfcd2-dc37-5996-acaa-c16c01c31638'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  'f5c6f747-5297-5e24-87be-fd7df457b835'::uuid,
  'viewer',
  'active',
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'dffe6f51-0278-596d-880f-84dd6cc5e586'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  '72563df9-2262-5969-9688-d5cf69877f50'::uuid,
  'viewer',
  'active',
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6b12b5d3-3b62-5341-9c87-2b527a1cc4d2'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid,
  'viewer',
  'active',
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c17515d8-09fa-5515-b1e5-d189d981f70a'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  'Draft related work section',
  'Tracked work item for Solid-state battery interface imaging — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '31a138ce-3a1f-588f-9340-a03183f04196'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  'Clean and version dataset',
  'Tracked work item for Solid-state battery interface imaging — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '9b4dc10b-7d36-5636-ae3b-99ce160b7bed'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '80e94d98-54be-59d8-85cc-a529316620c4'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  'Run baseline model',
  'Tracked work item for Solid-state battery interface imaging — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'e6f31c55-2acb-59f4-b10e-e3657979db8f'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4a473f0a-d9d1-5652-a67b-e35ccff3a6d0'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  'Write IRB amendment',
  'Tracked work item for Solid-state battery interface imaging — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6074c04c-8ba1-59f4-856d-aebebee23cd0'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  'Prepare figure panels',
  'Tracked work item for Solid-state battery interface imaging — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '37bf800c-4c16-538e-9bf2-8f3f5c8d7d38'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '89257402-bd8c-5d1e-9d67-ca90c525e48e'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Solid-state battery interface imaging — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '01d4c20f-728c-5f96-8116-bbb132da4fca'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e9786dfb-fa5c-5101-b6d5-01b20f360cc5'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Solid-state battery interface imaging — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'f5c6f747-5297-5e24-87be-fd7df457b835'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4b36690e-1a5d-5650-ba2d-ab5ef3335180'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Solid-state battery interface imaging — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '72563df9-2262-5969-9688-d5cf69877f50'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'dbaf49db-6bd3-57e4-9b7d-e0fd2f58e39a'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  true,
  'planning',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '7accba9d-ed69-51ed-b339-f28d6e8122b6'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '9b4dc10b-7d36-5636-ae3b-99ce160b7bed'::uuid,
  '9b4dc10b-7d36-5636-ae3b-99ce160b7bed'::uuid,
  true,
  'analysis',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ad3b3242-0a03-513c-9224-babaa132af90'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'e6f31c55-2acb-59f4-b10e-e3657979db8f'::uuid,
  'e6f31c55-2acb-59f4-b10e-e3657979db8f'::uuid,
  true,
  'writing',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3be9b379-a2b7-5633-8e42-c0cf19028020'::uuid,
  '4b06c2b0-d019-59a0-8000-15b54806494d'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid,
  '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid,
  true,
  'ops',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;