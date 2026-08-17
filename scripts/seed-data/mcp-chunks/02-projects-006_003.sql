INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'STEM identity in first-gen undergraduates — cohort 7',
  'STEM identity in first-gen undergraduates is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around equity, mixed methods. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  ARRAY['equity','mixed methods']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'remote',
  'medium_term',
  13,
  true,
  'Boston, MA',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4643f976-8d74-59cd-8c37-d1ca207812d7'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  'owner',
  'active',
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7af6d713-0231-5fcd-ad4e-f719fcac7c57'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  '30b17759-7407-5607-a4e6-182ee0e7047f'::uuid,
  'editor',
  'active',
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '33c51473-b6ee-5052-94e9-0fdfc0b1f188'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'a09224b4-4489-5f26-acc8-6d59bf83ca40'::uuid,
  'viewer',
  'active',
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8813e289-a003-5ff4-9496-541d44761197'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  '480656da-679b-5364-a64a-bc03c8916a04'::uuid,
  'viewer',
  'active',
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c3d26904-2864-5db8-8cc1-72fb8b07a43f'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  '4d52405a-0515-50a4-98bd-aa73b67454c6'::uuid,
  'viewer',
  'active',
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '183a7b0b-9737-5ec5-a40f-3a5486fed656'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'a2fe8640-49fd-523e-8579-25086c7dbece'::uuid,
  'viewer',
  'active',
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2fddd427-e31d-5af7-9fb7-35f3d1ad3d15'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'ebda259a-3ff4-5c2d-86f4-3288207f73de'::uuid,
  'viewer',
  'active',
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8217d865-4d34-5b8b-8ef9-cbeca8660a5b'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'Draft related work section',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0c339fe0-ccb1-560e-a8b7-73d5b54784df'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'Clean and version dataset',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '30b17759-7407-5607-a4e6-182ee0e7047f'::uuid,
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '883fc368-e88f-55ac-88ff-87abac4435a2'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'Run baseline model',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'a09224b4-4489-5f26-acc8-6d59bf83ca40'::uuid,
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd6a5495a-72bd-54ae-882b-4ffe71a307b6'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'Write IRB amendment',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '480656da-679b-5364-a64a-bc03c8916a04'::uuid,
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'dd2aca94-1244-52e4-bb1d-68b216e6bfa5'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'Prepare figure panels',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '4d52405a-0515-50a4-98bd-aa73b67454c6'::uuid,
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '70312b15-3e59-5527-b72b-4e5d0a6c4c84'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'a2fe8640-49fd-523e-8579-25086c7dbece'::uuid,
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e7a6faae-bf35-55f6-a23d-37b0fe87b3fe'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'ebda259a-3ff4-5c2d-86f4-3288207f73de'::uuid,
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9e6ab63a-b316-5fa4-948b-8f0d83818313'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0a7e67da-93e8-5e00-a532-fe0372f40a07'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  true,
  'planning',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'cce6303d-870f-5f5b-981c-24dc35929fc3'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '30b17759-7407-5607-a4e6-182ee0e7047f'::uuid,
  '30b17759-7407-5607-a4e6-182ee0e7047f'::uuid,
  true,
  'analysis',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f3d752c0-6ed5-516c-b435-4f614c67107f'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'a09224b4-4489-5f26-acc8-6d59bf83ca40'::uuid,
  'a09224b4-4489-5f26-acc8-6d59bf83ca40'::uuid,
  true,
  'writing',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '85092212-1b7d-5ebe-94da-ccd530bf48bd'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '480656da-679b-5364-a64a-bc03c8916a04'::uuid,
  '480656da-679b-5364-a64a-bc03c8916a04'::uuid,
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
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'Dexterous packing under uncertainty — cohort 7',
  'Dexterous packing under uncertainty is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around manipulation, sim2real. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  ARRAY['manipulation','sim2real']::text[],
  'planning',
  'Robotics',
  ARRAY['ROS','Control systems','C++']::text[],
  'hybrid',
  'long_term',
  14,
  true,
  'Toronto, ON',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c4320bf6-9981-5c7f-812d-bd65230d4dc7'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  'owner',
  'active',
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '683654fd-37b6-5885-9990-eec2cf9cea51'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid,
  'editor',
  'active',
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6c31bced-1ac1-5022-b855-5cab4ccd73b7'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  '16b2384b-ad24-51a7-ae2c-7800b9497576'::uuid,
  'viewer',
  'active',
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a503a61e-c5b4-5821-b3ec-4030cd792877'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'b6d76b9c-c861-5e04-9a0b-242cf40b872e'::uuid,
  'viewer',
  'active',
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '232b23e7-f992-5514-8277-e66f146d922b'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'b9db1144-db8a-57a8-8052-2191f1cc14b1'::uuid,
  'viewer',
  'active',
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7e022277-8597-564a-81ec-4e5133ebac4e'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  '185d66cf-e3cb-5baf-ad04-ce637ae86a78'::uuid,
  'viewer',
  'active',
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '42cb5138-1ad7-5cf3-b0e6-5946f29cee62'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'c907b363-8018-51fd-b157-c7efc9483a3a'::uuid,
  'viewer',
  'active',
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c2d6733f-4a3c-5bb2-b714-59338da46a70'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  '843f469a-8134-5966-bfe0-48584f3270fc'::uuid,
  'viewer',
  'active',
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '76cb9566-07d3-59ab-a6f6-4f2ff49543be'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'Draft related work section',
  'Tracked work item for Dexterous packing under uncertainty — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7f8f781c-a8bc-5236-989c-5b6f2f548e0a'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'Clean and version dataset',
  'Tracked work item for Dexterous packing under uncertainty — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4fe8fcd0-6b64-501c-b86e-bdd2598a1ad2'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'Run baseline model',
  'Tracked work item for Dexterous packing under uncertainty — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '16b2384b-ad24-51a7-ae2c-7800b9497576'::uuid,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9874d628-c8f6-5f58-b362-5c3081285c2b'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'Write IRB amendment',
  'Tracked work item for Dexterous packing under uncertainty — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'b6d76b9c-c861-5e04-9a0b-242cf40b872e'::uuid,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9fad7c0d-ca98-56df-9f9d-8a96b5aceaba'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'Prepare figure panels',
  'Tracked work item for Dexterous packing under uncertainty — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'b9db1144-db8a-57a8-8052-2191f1cc14b1'::uuid,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0cf7fa9e-a66c-5378-8652-646c77c2c733'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Dexterous packing under uncertainty — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '185d66cf-e3cb-5baf-ad04-ce637ae86a78'::uuid,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bf7e68c5-3f6c-53bb-90c1-ef91a7ab4857'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'c907b363-8018-51fd-b157-c7efc9483a3a'::uuid,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '43d0a5be-0fbd-5bb7-aead-70eede90afbf'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '843f469a-8134-5966-bfe0-48584f3270fc'::uuid,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd4fab6e7-b988-52d0-8d18-6bb559b78b5c'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  true,
  'planning',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3ce74453-f58e-5d88-b7e8-d4d5da17aa00'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid,
  'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid,
  true,
  'analysis',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1be3f9ff-7c09-5b97-861c-234539e3f25f'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '16b2384b-ad24-51a7-ae2c-7800b9497576'::uuid,
  '16b2384b-ad24-51a7-ae2c-7800b9497576'::uuid,
  true,
  'writing',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a767a2af-7d9e-5357-b7dd-f414d359d874'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'b6d76b9c-c861-5e04-9a0b-242cf40b872e'::uuid,
  'b6d76b9c-c861-5e04-9a0b-242cf40b872e'::uuid,
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
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'Transit spectroscopy pipeline for JWST — cohort 7',
  'Transit spectroscopy pipeline for JWST is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around exoplanets, pipelines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  ARRAY['exoplanets','pipelines']::text[],
  'active',
  'Astrophysics',
  ARRAY['Data pipelines','Python','Bayesian inference']::text[],
  'local',
  'long_term',
  15,
  true,
  'Zurich, CH',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8c8f7e87-d66a-5b4b-8a6d-567576a9e58c'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  'owner',
  'active',
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'cdd5e116-e4ea-5074-b048-8816ef16364a'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  '1fd23b49-1f61-56f1-87d2-a4baac0eff85'::uuid,
  'editor',
  'active',
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '78b3336d-f500-5ffa-b6a7-fc1d67a18436'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'f0665652-049d-5275-b595-522d436397d7'::uuid,
  'viewer',
  'active',
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b6108f18-f8a2-55df-8d25-4655dca720b4'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  '836980fc-e1b4-537e-960b-d0f74fae417d'::uuid,
  'viewer',
  'active',
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '26cdef40-6245-5801-8b9d-02433a9cd79b'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'b806090a-a7a9-5442-95f8-b0f3a4bcbe13'::uuid,
  'viewer',
  'active',
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '394daf3c-5c82-58b5-8f46-4e955896fcb4'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'c46e7cda-0508-5698-96a2-a7236d3d50ed'::uuid,
  'viewer',
  'active',
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '116ea5e5-b189-54e9-9547-7f1d46730579'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  '583bfe91-cab4-5267-967b-ebddedc1ff8b'::uuid,
  'viewer',
  'active',
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ea604a52-aaf9-5d2e-94f6-71af318f957a'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  '11f67e74-b73c-551c-8bbd-fa79ac4b9609'::uuid,
  'viewer',
  'active',
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '20d9e6a7-2afe-557d-9527-9562df57e899'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  'viewer',
  'active',
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8aa7d3a8-79e4-535d-8e65-42c5b829c296'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'Draft related work section',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3929a9c2-f574-5ca1-bde5-e1174276e1d9'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'Clean and version dataset',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '1fd23b49-1f61-56f1-87d2-a4baac0eff85'::uuid,
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7f485c42-fa6a-5f4e-b2a8-e048697fc47b'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'Run baseline model',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'f0665652-049d-5275-b595-522d436397d7'::uuid,
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bf7fa055-2781-5fc1-a759-b0a711a05dbe'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'Write IRB amendment',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '836980fc-e1b4-537e-960b-d0f74fae417d'::uuid,
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0b6eff10-dc9a-5048-9098-888102c2a281'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'Prepare figure panels',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'b806090a-a7a9-5442-95f8-b0f3a4bcbe13'::uuid,
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd26793db-fdcd-540b-b2da-f105556e1378'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'c46e7cda-0508-5698-96a2-a7236d3d50ed'::uuid,
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a0c13ce1-900b-5079-a9db-4d50a638647b'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '583bfe91-cab4-5267-967b-ebddedc1ff8b'::uuid,
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'db228f9c-3894-54d9-99e1-9b5912d068ad'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '11f67e74-b73c-551c-8bbd-fa79ac4b9609'::uuid,
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e471609f-c4bf-5dfe-a2a0-1fb717e04ff6'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  true,
  'planning',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4fc33ae2-fd49-5611-8308-d14aa049b399'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '1fd23b49-1f61-56f1-87d2-a4baac0eff85'::uuid,
  '1fd23b49-1f61-56f1-87d2-a4baac0eff85'::uuid,
  true,
  'analysis',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5c549fa5-b3aa-56fc-a821-b2d80e5c89d3'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'f0665652-049d-5275-b595-522d436397d7'::uuid,
  'f0665652-049d-5275-b595-522d436397d7'::uuid,
  true,
  'writing',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd1ec1421-e411-5483-90cc-0eb4a3cec8e9'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '836980fc-e1b4-537e-960b-d0f74fae417d'::uuid,
  '836980fc-e1b4-537e-960b-d0f74fae417d'::uuid,
  true,
  'ops',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;