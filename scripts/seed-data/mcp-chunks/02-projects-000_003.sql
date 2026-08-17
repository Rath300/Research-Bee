INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'STEM identity in first-gen undergraduates — cohort 1',
  'STEM identity in first-gen undergraduates is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around equity, mixed methods. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  ARRAY['equity','mixed methods']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'remote',
  'medium_term',
  13,
  true,
  'Atlanta, GA',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '63c3d8da-0352-5c5e-9285-624abd43e2f0'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  'owner',
  'active',
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3c0b012a-0aea-5f41-a85e-39ae381f9c93'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  'editor',
  'active',
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1e5f47d9-a59e-5dd2-8706-5a96a8a34b1f'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  'viewer',
  'active',
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7e772bca-58a2-5321-aebd-71eebd3fec34'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  'viewer',
  'active',
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4eaeed27-332b-5321-9415-3be2d99577df'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  'viewer',
  'active',
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '24348b55-dee1-5b1f-8790-468aaf330786'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid,
  'viewer',
  'active',
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b7065679-a3b3-5500-9422-f06a1ae95c43'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  'viewer',
  'active',
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f358b989-038b-5712-914a-1862b3650e2a'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'Draft related work section',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '633f5432-bb47-5678-a3d8-69c41b37e218'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'Clean and version dataset',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'eb141ebb-ebd8-56c5-80cb-de1883d7e28d'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'Run baseline model',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2e64dd72-a629-55e0-bcb8-290ca5c07d44'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'Write IRB amendment',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ce59fb30-79a3-5aed-ab9a-2ce46f553062'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'Prepare figure panels',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9b2a2cdf-73f8-5618-b461-650e621d9791'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e79ed9a3-523e-5370-98cd-bcf9ee393acb'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0a672c80-14cf-5e0b-8a14-510478b70e87'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b6e277a9-f55c-5014-b933-00a1adb0efe6'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  true,
  'planning',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'af92d948-c07f-5fc5-8bcb-fb9bd9afafce'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  true,
  'analysis',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2de23237-a837-5116-b67a-19805f602197'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  true,
  'writing',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd5a03a33-bb33-54f9-b98f-bacd0c1fbac7'::uuid,
  '401d9bd0-b063-59cf-94e0-66235e8738b1'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
  'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid,
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
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  'Dexterous packing under uncertainty — cohort 1',
  'Dexterous packing under uncertainty is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around manipulation, sim2real. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  ARRAY['manipulation','sim2real']::text[],
  'planning',
  'Robotics',
  ARRAY['ROS','Control systems','C++']::text[],
  'hybrid',
  'long_term',
  14,
  true,
  'Ann Arbor, MI',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b4650d44-c912-5e2c-baeb-5da6272c9949'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  'owner',
  'active',
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '40b98432-f983-55ab-8f1a-97cd9404a137'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  'editor',
  'active',
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5f9c9e52-babf-5e57-8e40-0272a7f1ce6f'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  'viewer',
  'active',
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6cfb19dd-ea14-5f14-a734-717c03d90892'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  'viewer',
  'active',
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b2296aea-4874-5628-b5bf-9a862be7b8cf'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  'viewer',
  'active',
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd9d924c2-40c9-5af3-935a-ec4a2b0a3da1'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid,
  'viewer',
  'active',
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '992960f4-f28c-565b-a6c1-cfd55482eebb'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  'viewer',
  'active',
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '04a78abe-b8f4-5eef-a496-717dc876eafa'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  'viewer',
  'active',
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'be3486e9-1da1-5ec4-bcfa-1acb8369222c'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  'Draft related work section',
  'Tracked work item for Dexterous packing under uncertainty — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '04c155fc-b15b-50e5-91e1-329ee189ba40'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  'Clean and version dataset',
  'Tracked work item for Dexterous packing under uncertainty — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd49126d9-05bc-504f-b513-0f5108fb9115'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  'Run baseline model',
  'Tracked work item for Dexterous packing under uncertainty — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '12c4abf6-da80-5c69-98a8-2f905e4f2567'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  'Write IRB amendment',
  'Tracked work item for Dexterous packing under uncertainty — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '81c6a355-233e-57ae-b7c5-4b7142876164'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  'Prepare figure panels',
  'Tracked work item for Dexterous packing under uncertainty — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4a8ae5b6-6a25-5d9a-9b3b-c93a88d90cbf'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Dexterous packing under uncertainty — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4a4940c2-02e4-5842-992c-2f786d37c9de'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8cd12006-d829-5fc7-8dcb-2c304fe98f73'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'bfa37b6c-b2ce-5861-b8d0-fc15be8fca51'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  true,
  'planning',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e8f4c9a1-fa49-50c2-94d8-6696fa7ebb1b'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  true,
  'analysis',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'bcff1533-fc57-54c0-8034-33dca45442df'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  true,
  'writing',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8535635c-41d2-5396-86c3-a13c2954c402'::uuid,
  '2420e793-6a9f-5cc2-8536-9af8a452eca3'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
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
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'Transit spectroscopy pipeline for JWST — cohort 1',
  'Transit spectroscopy pipeline for JWST is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around exoplanets, pipelines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  ARRAY['exoplanets','pipelines']::text[],
  'active',
  'Astrophysics',
  ARRAY['Data pipelines','Python','Bayesian inference']::text[],
  'local',
  'long_term',
  15,
  true,
  'Los Angeles, CA',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '61c05ff9-e37e-5da2-bbce-d3f1f5458d25'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  'owner',
  'active',
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b4cfe180-91ff-5af6-99e5-9066297c0297'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  'editor',
  'active',
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'fe6aa5df-d72f-52db-94b1-b2bd58ca4f14'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  'viewer',
  'active',
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c31f5e91-4a21-5da9-81e4-e72489d2e44f'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  'viewer',
  'active',
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd886443d-c9c0-59b9-8b53-ac2350cfdc4f'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  'viewer',
  'active',
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f0c351da-7f1b-54f0-91c8-93c8851b9522'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  'viewer',
  'active',
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '90eca9fb-2a42-5e2e-abaf-041fc07ac454'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid,
  'viewer',
  'active',
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'bb42eeb7-1dae-52fb-aa30-501843d83e51'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  'viewer',
  'active',
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '13db9602-461f-58b1-b93f-c237687f43f5'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  'viewer',
  'active',
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9b57c4a9-6524-5d27-8309-4b42c84e380a'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'Draft related work section',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '73f0026b-ab01-5ef7-8914-cdf6de57ecc7'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'Clean and version dataset',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ca39629d-61b2-5675-b102-030c91713fc0'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'Run baseline model',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '385c7093-cd70-53e0-be30-c31c377bc10a'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'Write IRB amendment',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '56d6c8bf-53e8-5567-98b9-cb6cb0eb8d89'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'Prepare figure panels',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3864580c-c63a-5eec-b75d-0eafea472d1f'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8cc1ec63-8554-5d41-bf7f-ee089cb495af'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid,
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e25c23d8-aa4b-5871-aa85-e1294623dab5'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'da3c13f5-6ae5-5c40-93cb-92d552869e84'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  true,
  'planning',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e9f855ca-c791-5d24-ac94-0563140d9f94'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  true,
  'analysis',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a9581d97-a384-54cf-99a6-6f20895fced5'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  true,
  'writing',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f1a5d103-3314-56ca-99af-5e518935b533'::uuid,
  '5ef4d040-db55-5d84-a92f-d6ba7eb7c252'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  true,
  'ops',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;