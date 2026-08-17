INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  'Federated learning for rare disease cohorts — cohort 1',
  'Federated learning for rare disease cohorts is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around privacy, ML. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  ARRAY['privacy','ML']::text[],
  'planning',
  'Computational Biology',
  ARRAY['Python','R','Genomics']::text[],
  'remote',
  'long_term',
  7,
  true,
  'New Haven, CT',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2220e660-860f-538c-9608-eda359e296a1'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  'owner',
  'active',
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8ecfc165-8ffa-5e29-901c-859e9b654e63'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  'editor',
  'active',
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8510ba49-33bf-59fb-b90c-a2985fb18fd5'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  'viewer',
  'active',
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '04a035fc-dfec-5be1-b247-404a502a353d'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  'viewer',
  'active',
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7a0cfb72-f200-52ae-8cac-9b6e32567b26'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid,
  'viewer',
  'active',
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a24b305d-1945-57ac-8626-6881ae404139'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid,
  'viewer',
  'active',
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '700a65ed-cf70-56f4-a26f-899e4cec3afa'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  'viewer',
  'active',
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '470f6173-acac-546d-a14d-8ee511022d5f'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  'Draft related work section',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0bbc25d9-9479-53c0-8f09-f4355a4d6073'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  'Clean and version dataset',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c0f0a16f-3b2a-50dd-883a-ac68b8b574a3'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  'Run baseline model',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '09ee3c62-a7f3-578e-9d23-952d22386c68'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  'Write IRB amendment',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '15257f9e-b735-5dda-8a4e-547af7dfbcc8'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  'Prepare figure panels',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c84ad3de-9034-57fc-8229-d815f3b350d6'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5c420586-9a60-5283-8c74-59d7a10847c3'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c3a1832a-5587-5c9d-a513-d4c78dc90091'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5c471c8c-9ebe-5434-8478-b7fa32748c5c'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  true,
  'planning',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '677b0310-53a7-5b94-98a6-41b21218d027'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  true,
  'analysis',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6b7bea79-765c-5d7a-acf0-822d9836adf5'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  true,
  'writing',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ddbe2f71-22a7-51b8-8138-769a429bc30f'::uuid,
  '00746766-f512-57a1-9e6f-23dce3912b42'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
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
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'Wildfire smoke exposure forecasting — cohort 1',
  'Wildfire smoke exposure forecasting is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around air quality, forecasting. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  ARRAY['air quality','forecasting']::text[],
  'active',
  'Climate Science',
  ARRAY['Remote sensing','Python','GIS']::text[],
  'hybrid',
  'short_term',
  8,
  true,
  'Princeton, NJ',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'bc6527d9-5b49-54a3-b9d5-acd772fac259'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  'owner',
  'active',
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd84fa7d6-9af4-5ed2-a11d-49a5c0b2405e'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  'editor',
  'active',
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '71f8cfe7-63ae-5f4a-8947-58ecaa0dc684'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  'viewer',
  'active',
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '452a71e3-aab1-573d-ac59-6f3a79ab3010'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  'viewer',
  'active',
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f17768d3-172d-5f8d-98f2-8d6cc0f1d026'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  'viewer',
  'active',
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'af16f5b4-37ae-5758-b488-37a99705834f'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  'viewer',
  'active',
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '00327111-c677-574f-9673-cce17d324979'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  '709233fc-6dac-5a42-941b-d839482389b8'::uuid,
  'viewer',
  'active',
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3023717c-d308-560c-a5a8-b49718f76a25'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid,
  'viewer',
  'active',
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '29b8a15c-50e4-5db3-a01e-a7a02c9f6ce2'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'Draft related work section',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '40cf8b4b-b0d8-5938-8dc3-8b793cd0642a'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'Clean and version dataset',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9caade05-af58-58ed-ba8a-5cefb62ee126'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'Run baseline model',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '47d394a9-67a0-5a23-a304-f659fb8da5db'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'Write IRB amendment',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fefb775b-3c75-5aa6-9144-d0a3d570df68'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'Prepare figure panels',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5bac3da3-176e-5158-88d5-5e003709b2a8'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid,
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'df5d4abe-19ad-56e6-afd2-519cd1769ed2'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '709233fc-6dac-5a42-941b-d839482389b8'::uuid,
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '72fbd584-7919-5e65-bcd9-7059f61aecbd'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid,
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd3cdc4a1-02d2-5b51-bdcd-f9bbf91e9d76'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  true,
  'planning',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '22030618-e4b6-5271-8b45-d4761b26bb9a'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  true,
  'analysis',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8fcfe044-42ad-5744-ab26-0e3cd7faf7fb'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  true,
  'writing',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a8238a20-fa6f-5bcf-ab09-52e01bbbd75d'::uuid,
  '040900de-b992-5c38-901d-26af2afda76a'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
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
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'Solid-state battery interface imaging — cohort 1',
  'Solid-state battery interface imaging is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around interfaces, microscopy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  ARRAY['interfaces','microscopy']::text[],
  'active',
  'Materials Science',
  ARRAY['DFT','Lab automation','Characterization']::text[],
  'local',
  'medium_term',
  9,
  true,
  'Pasadena, CA',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '16088a3b-7e26-5d80-89d9-acc2e2ae56fd'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  'owner',
  'active',
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5bfd409e-5c3a-5213-8ea7-4d38ad79fc79'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  'editor',
  'active',
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '99cabf7d-980c-5d33-bb83-35dbacb50454'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  'viewer',
  'active',
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'cb4d6a6d-fe1b-5a9f-a362-be409cb46577'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  'viewer',
  'active',
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '29f2d0da-ced1-5629-80f4-1229357c424d'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  'viewer',
  'active',
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'bbdbacce-9ef5-5997-b5ac-7022fee6bcf6'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  'viewer',
  'active',
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'dc076b1c-977e-5595-97f2-60ea3d256d8a'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  '8cbc51da-924c-5c60-b2ff-91e9b5bade3b'::uuid,
  'viewer',
  'active',
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7c89a7b0-3e40-5f24-b1f4-2b2f00dc5432'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  '65673952-33ec-5b72-b075-0d350bcdb2da'::uuid,
  'viewer',
  'active',
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c76ff56c-5ddd-5fa3-a58e-6b80791dc653'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid,
  'viewer',
  'active',
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'eccde645-8d54-545e-a74a-93c6a3257a80'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'Draft related work section',
  'Tracked work item for Solid-state battery interface imaging — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '292759bf-4b50-5747-9396-82e2bfd4dba5'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'Clean and version dataset',
  'Tracked work item for Solid-state battery interface imaging — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3df67a35-84d0-5fdc-87c5-b530f129aba8'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'Run baseline model',
  'Tracked work item for Solid-state battery interface imaging — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '18a33bb6-bfb6-52ba-a30e-f7657136c3ef'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'Write IRB amendment',
  'Tracked work item for Solid-state battery interface imaging — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7087803d-67a9-54af-b70d-5999b8dc21d1'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'Prepare figure panels',
  'Tracked work item for Solid-state battery interface imaging — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '481b8b47-2c37-54cd-85df-ea04e1ade725'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Solid-state battery interface imaging — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'de5d3214-cebd-5618-81ab-75a61942d4c6'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Solid-state battery interface imaging — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '8cbc51da-924c-5c60-b2ff-91e9b5bade3b'::uuid,
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3904f461-bd00-5dd0-b972-da38407319b7'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Solid-state battery interface imaging — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '65673952-33ec-5b72-b075-0d350bcdb2da'::uuid,
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6637008c-23cc-58ac-a3f5-89e88f33a5ee'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  true,
  'planning',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '257d2768-ff92-54f4-b965-37473447e39f'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  true,
  'analysis',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ae41ffb0-c9b3-505c-86aa-b0b4d483a9aa'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  true,
  'writing',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4af0afd4-eb51-576f-bdea-5df09d653ce0'::uuid,
  'a2d2552a-592f-51b2-ac3b-31dedc4d1582'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  true,
  'ops',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;