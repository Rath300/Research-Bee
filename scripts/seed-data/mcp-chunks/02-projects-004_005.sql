INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'Federated learning for rare disease cohorts — cohort 5',
  'Federated learning for rare disease cohorts is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around privacy, ML. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  ARRAY['privacy','ML']::text[],
  'planning',
  'Computational Biology',
  ARRAY['Python','R','Genomics']::text[],
  'local',
  'long_term',
  15,
  true,
  'Los Angeles, CA',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '87175191-d70a-5f7a-808e-84f1f362432b'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  'owner',
  'active',
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '27144460-bfe8-5195-a23c-7b62083225cb'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid,
  'editor',
  'active',
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e7628692-0a03-53a3-abb2-d0eb834cad67'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'c704b89c-6279-5bf5-bac9-fa83da3ecb7b'::uuid,
  'viewer',
  'active',
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f53ff8d3-488a-56ba-b814-4c091e60f090'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'ad066c06-b3f9-5ca4-9d49-3f295138bde6'::uuid,
  'viewer',
  'active',
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f1c7be14-8434-59fc-a703-8d4a6093a016'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'd5b0211b-c5f4-597f-acb9-7622a4effdc1'::uuid,
  'viewer',
  'active',
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5c2aca67-19ed-5858-8e70-4524ff700396'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  '1a61d961-51b5-5a7b-a66f-f3270ebcf8b4'::uuid,
  'viewer',
  'active',
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '71ce82b2-21de-5ea4-b51d-db5f7da68065'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  '4affe376-3337-5316-8b8e-7c109b527c78'::uuid,
  'viewer',
  'active',
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5fe7c59c-f84a-528d-81b8-bd0a79551aba'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  '7cc7401c-94bd-5f9c-ae2e-38ffaaeeb8e9'::uuid,
  'viewer',
  'active',
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1435a451-293c-5564-969e-98fe865209b5'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  '596f1efc-5edd-5271-b22f-b2020762115f'::uuid,
  'viewer',
  'active',
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '869a82b5-9bff-5e86-b18c-3785794bd2fa'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '88c62509-46b2-5a92-9c68-610cbfbdf35c'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '190553fe-6e45-515f-8066-a4284a658e9c'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'Submit internal review',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'c704b89c-6279-5bf5-bac9-fa83da3ecb7b'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2da04a3f-3022-5315-9378-88037e90f19b'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'Update project README',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'ad066c06-b3f9-5ca4-9d49-3f295138bde6'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e03255d2-57f9-5f2e-900b-6e94e71283c4'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'Draft related work section',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'd5b0211b-c5f4-597f-acb9-7622a4effdc1'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fc8623e8-e33b-513f-905c-fe5da07063d7'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'Clean and version dataset',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '1a61d961-51b5-5a7b-a66f-f3270ebcf8b4'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ea609bcd-dcee-592e-aa44-cfb3fdcb58dc'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '4affe376-3337-5316-8b8e-7c109b527c78'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c5dfcacd-70e9-56a9-97b9-f3f010e09e0e'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '7cc7401c-94bd-5f9c-ae2e-38ffaaeeb8e9'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '357f854d-8fff-5ab9-8e90-1d5918c4f904'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  true,
  'planning',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'bce7971a-7a2f-53a7-9263-759c57a96472'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid,
  'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid,
  true,
  'analysis',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f419469c-36e7-5342-9ee3-a566c80caf59'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'c704b89c-6279-5bf5-bac9-fa83da3ecb7b'::uuid,
  'c704b89c-6279-5bf5-bac9-fa83da3ecb7b'::uuid,
  true,
  'writing',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '45305f89-2c85-5f77-867b-1b93ce1f9325'::uuid,
  'dd2832f3-56ac-5431-8b82-f5b5a2aa37d9'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'ad066c06-b3f9-5ca4-9d49-3f295138bde6'::uuid,
  'ad066c06-b3f9-5ca4-9d49-3f295138bde6'::uuid,
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
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'Wildfire smoke exposure forecasting — cohort 5',
  'Wildfire smoke exposure forecasting is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around air quality, forecasting. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  ARRAY['air quality','forecasting']::text[],
  'active',
  'Climate Science',
  ARRAY['Remote sensing','Python','GIS']::text[],
  'remote',
  'short_term',
  4,
  true,
  'New York, NY',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3fa06111-6a2a-5639-a3f5-df8b6044e012'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  'owner',
  'active',
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a4ce816f-2ac0-53a2-a181-e65f83cc6e39'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'e67587c2-8236-57c8-91f8-b6854bd19fce'::uuid,
  'editor',
  'active',
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '156b7047-3d42-5e1b-ae21-727d80890973'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'eceba982-2394-5904-b315-9a2f77d07474'::uuid,
  'viewer',
  'active',
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a87e8919-595c-599e-ba41-657f33b439f3'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  '8b8a20c4-f947-5d73-913d-867c67b89295'::uuid,
  'viewer',
  'active',
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '39b94789-a643-5511-9133-00c524fdfd9d'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8346d074-6b8a-5159-8de6-bfa120b36650'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'e67587c2-8236-57c8-91f8-b6854bd19fce'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a6aa86ef-1f03-5280-9299-b9d0bae7e08c'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'Submit internal review',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'eceba982-2394-5904-b315-9a2f77d07474'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e55ea813-d984-5477-992a-82a49c948328'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'Update project README',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '8b8a20c4-f947-5d73-913d-867c67b89295'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a42b4c7b-73bc-58b7-a784-24bc9d71cd5d'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'Draft related work section',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fb9bb51b-cea5-5353-b026-62c1871ddce9'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'Clean and version dataset',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'e67587c2-8236-57c8-91f8-b6854bd19fce'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5ce89ed7-b69d-567c-8cf6-56ba6b328691'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'eceba982-2394-5904-b315-9a2f77d07474'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '73e0674f-3c39-50bf-8cb0-cfdbfe282c8d'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '8b8a20c4-f947-5d73-913d-867c67b89295'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '81783b12-c964-549c-ade2-c929cd83736f'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  true,
  'planning',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1376aec5-f3de-5ffe-aae5-f23c759f0f11'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'e67587c2-8236-57c8-91f8-b6854bd19fce'::uuid,
  'e67587c2-8236-57c8-91f8-b6854bd19fce'::uuid,
  true,
  'analysis',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f10df904-1cb6-5c6f-a283-cc4ede8f368d'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'eceba982-2394-5904-b315-9a2f77d07474'::uuid,
  'eceba982-2394-5904-b315-9a2f77d07474'::uuid,
  true,
  'writing',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '49623579-4cb9-5d5b-94a9-affb3724580b'::uuid,
  '3b2a2fb6-3869-5b82-9a96-165dcde1267d'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '8b8a20c4-f947-5d73-913d-867c67b89295'::uuid,
  '8b8a20c4-f947-5d73-913d-867c67b89295'::uuid,
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
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  'Solid-state battery interface imaging — cohort 5',
  'Solid-state battery interface imaging is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around interfaces, microscopy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  ARRAY['interfaces','microscopy']::text[],
  'active',
  'Materials Science',
  ARRAY['DFT','Lab automation','Characterization']::text[],
  'hybrid',
  'medium_term',
  5,
  true,
  'Chicago, IL',
  now() - interval '83 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b61453a2-af28-59f5-b72a-6f4b630985fa'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  'owner',
  'active',
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b79f98c0-15e4-5e9d-9169-b6e9d3afa973'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  'fd3bbf1d-8c31-5117-93f3-38b2f7a04a68'::uuid,
  'editor',
  'active',
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '484a2c0f-5948-58ee-9369-1f84818260df'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  '73d21f69-f082-53ec-a793-9805a6962209'::uuid,
  'viewer',
  'active',
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6bd6524f-5d45-5cab-98cb-178808bd8923'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid,
  'viewer',
  'active',
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e8d2ef00-9e11-5e22-b116-9ce9facf3f7f'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  '1aa11d0d-a4fb-5943-ab0e-531198751050'::uuid,
  'viewer',
  'active',
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6df2d02b-8501-5a5c-a887-2369bef08756'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Solid-state battery interface imaging — cohort 5.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2a4530c7-660a-5e32-aa75-19d703d2694e'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Solid-state battery interface imaging — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'fd3bbf1d-8c31-5117-93f3-38b2f7a04a68'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '71646b9c-1ab0-58e6-b09c-86a3bd5e9981'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  'Submit internal review',
  'Tracked work item for Solid-state battery interface imaging — cohort 5.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '73d21f69-f082-53ec-a793-9805a6962209'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e50bbcfe-f186-5f06-a80b-c86c7de2fca9'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  'Update project README',
  'Tracked work item for Solid-state battery interface imaging — cohort 5.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0b5af83e-cefe-5a5c-8fcc-e380902fb14f'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  'Draft related work section',
  'Tracked work item for Solid-state battery interface imaging — cohort 5.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '1aa11d0d-a4fb-5943-ab0e-531198751050'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b243b5ff-6e03-548f-846a-1d6d53d4aa6e'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  'Clean and version dataset',
  'Tracked work item for Solid-state battery interface imaging — cohort 5.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '70ab1ffc-110f-503e-a6cf-b770c14852df'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Solid-state battery interface imaging — cohort 5.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'fd3bbf1d-8c31-5117-93f3-38b2f7a04a68'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '00529b04-462c-541d-9412-eb69739d7c83'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Solid-state battery interface imaging — cohort 5.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '73d21f69-f082-53ec-a793-9805a6962209'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '687b48b9-540e-52d9-ae16-60b659ce3c90'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  true,
  'planning',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c79e3d2c-507e-54eb-8fc1-3b1a346ea378'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'fd3bbf1d-8c31-5117-93f3-38b2f7a04a68'::uuid,
  'fd3bbf1d-8c31-5117-93f3-38b2f7a04a68'::uuid,
  true,
  'analysis',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'cec85161-9911-5546-8635-6369f87fe409'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '73d21f69-f082-53ec-a793-9805a6962209'::uuid,
  '73d21f69-f082-53ec-a793-9805a6962209'::uuid,
  true,
  'writing',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3c4519f3-713d-57df-af98-5e3e66a7810a'::uuid,
  'c492e3a5-bae7-557b-8040-2e8e0ffe7571'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid,
  '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid,
  true,
  'ops',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;