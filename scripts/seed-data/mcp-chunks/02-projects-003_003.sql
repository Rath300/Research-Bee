INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'STEM identity in first-gen undergraduates — cohort 4',
  'STEM identity in first-gen undergraduates is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around equity, mixed methods. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  ARRAY['equity','mixed methods']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'remote',
  'medium_term',
  13,
  true,
  'London, UK',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'bcf09894-e66a-5aad-9900-1fd20af41d5f'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  'owner',
  'active',
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd6c0ebc0-9623-5a4f-8406-9f0555ce9b1b'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'ea7a5038-ea24-5c53-b37f-6e7af7843a5f'::uuid,
  'editor',
  'active',
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd19f0e3e-9c82-5c49-9493-2225c7251aa1'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'd0295c77-a7ff-5caa-a86e-c288ce62df44'::uuid,
  'viewer',
  'active',
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '07ce8791-4515-5e13-8383-811221f1afca'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'c4ef2b83-74dd-5001-9c23-9219dc342540'::uuid,
  'viewer',
  'active',
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '39e4a505-cc06-5d3f-a65b-82ce6d28c20c'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  '6d5bb006-e4b9-59a3-a281-843bcdf8d1aa'::uuid,
  'viewer',
  'active',
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '77c1fc35-2ecd-5fdd-9d80-f6bdcabf4b48'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  '812f08f9-a001-5282-a6cd-650da7bcc1b7'::uuid,
  'viewer',
  'active',
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '03df85db-91c1-5ba3-a8ea-fe46bf2b21e9'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'a32ba5d6-4384-5565-bc82-72ceeafa3e5d'::uuid,
  'viewer',
  'active',
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '20aaba9e-af93-5d5e-bd7d-eb4e89452fe1'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'Draft related work section',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7a8179ba-43b5-528b-8895-64987c4fb7a3'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'Clean and version dataset',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'ea7a5038-ea24-5c53-b37f-6e7af7843a5f'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a96d37c6-8cb4-5580-a6e3-388ea28a0ea3'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'Run baseline model',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'd0295c77-a7ff-5caa-a86e-c288ce62df44'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '32339fda-0671-5ed8-81a6-f0169e3fa729'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'Write IRB amendment',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'c4ef2b83-74dd-5001-9c23-9219dc342540'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '911673d1-eb51-515d-9343-4e87605b5c82'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'Prepare figure panels',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '6d5bb006-e4b9-59a3-a281-843bcdf8d1aa'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0a14a03e-94d8-5407-bc63-f47c96595fd4'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '812f08f9-a001-5282-a6cd-650da7bcc1b7'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9f3d590d-b0ef-589e-8467-7ec968fea4ae'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'a32ba5d6-4384-5565-bc82-72ceeafa3e5d'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '09481317-baf1-50f5-b134-bff98c7c03fd'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a59ddd0d-8a8a-5f18-b101-59e7b608dbfe'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  true,
  'planning',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b100618a-91c5-5c3a-8faa-7f9e47c1b8d7'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'ea7a5038-ea24-5c53-b37f-6e7af7843a5f'::uuid,
  'ea7a5038-ea24-5c53-b37f-6e7af7843a5f'::uuid,
  true,
  'analysis',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6ce03c0c-bfd9-54c9-a38a-a57296689278'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'd0295c77-a7ff-5caa-a86e-c288ce62df44'::uuid,
  'd0295c77-a7ff-5caa-a86e-c288ce62df44'::uuid,
  true,
  'writing',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0433f31e-ebec-5093-932d-ff7772388c58'::uuid,
  '19856692-8b72-5f8d-bdc7-ce68adf1fca2'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'c4ef2b83-74dd-5001-9c23-9219dc342540'::uuid,
  'c4ef2b83-74dd-5001-9c23-9219dc342540'::uuid,
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
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  'Dexterous packing under uncertainty — cohort 4',
  'Dexterous packing under uncertainty is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around manipulation, sim2real. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  ARRAY['manipulation','sim2real']::text[],
  'planning',
  'Robotics',
  ARRAY['ROS','Control systems','C++']::text[],
  'hybrid',
  'long_term',
  14,
  true,
  'Seattle, WA',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'fd2a048a-50e0-5b79-b1d4-b8e84d65244f'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  'owner',
  'active',
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c60fc86c-ec36-546d-886f-cd37c9c3252e'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid,
  'editor',
  'active',
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '50987600-a32e-5b0a-96f9-ce22b2cfd086'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  '52776ca6-2ffa-5c16-991d-f1758cd740bb'::uuid,
  'viewer',
  'active',
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a364d39b-75ca-5ecc-a570-6f720ba330c4'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  '5c6a2b16-8772-56c9-9570-5254356f5c19'::uuid,
  'viewer',
  'active',
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'cfd4e018-511f-5349-b9e7-9e890aa5fd49'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  '05fcff78-0cbc-5304-80d1-89c5fb51a5ce'::uuid,
  'viewer',
  'active',
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f09f4817-c14a-5f94-8b24-74b22b5e5dcf'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  '74597a4b-13a0-5293-b367-cd56ff9bccd1'::uuid,
  'viewer',
  'active',
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ecd8c6cd-4773-512b-ad20-e93c3a38b537'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  '2df7870b-f77b-5301-b54e-6af2f7ff0758'::uuid,
  'viewer',
  'active',
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6f0a3544-27db-5431-86d6-aa48ef12c3c2'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  '7c6ad270-1e50-52cd-a3b9-c96edf79d00e'::uuid,
  'viewer',
  'active',
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'dc606f1e-e289-515e-925c-6fd1bb2ea495'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  'Draft related work section',
  'Tracked work item for Dexterous packing under uncertainty — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6e889540-e152-55cf-a818-504e4b21e964'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  'Clean and version dataset',
  'Tracked work item for Dexterous packing under uncertainty — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'eb44e8a0-77fe-59ed-bd7d-be6e54d19263'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  'Run baseline model',
  'Tracked work item for Dexterous packing under uncertainty — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '52776ca6-2ffa-5c16-991d-f1758cd740bb'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '86991368-e043-5f36-8060-03d41b8d0b40'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  'Write IRB amendment',
  'Tracked work item for Dexterous packing under uncertainty — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '5c6a2b16-8772-56c9-9570-5254356f5c19'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a0a118a2-f230-59d5-b7e0-0c3fc517b989'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  'Prepare figure panels',
  'Tracked work item for Dexterous packing under uncertainty — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '05fcff78-0cbc-5304-80d1-89c5fb51a5ce'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c46ee902-ae23-5d2d-8e77-a365b6e53e93'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Dexterous packing under uncertainty — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '74597a4b-13a0-5293-b367-cd56ff9bccd1'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '43bf6072-e687-5448-aa68-11d1f077282e'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '2df7870b-f77b-5301-b54e-6af2f7ff0758'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '894d7a16-c001-5ed8-bf71-f180daedb002'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '7c6ad270-1e50-52cd-a3b9-c96edf79d00e'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '78a986bc-9284-5cff-aa23-393cb64dedbe'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  true,
  'planning',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a547e624-8f50-53f5-aa4c-fbee1337207a'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid,
  '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid,
  true,
  'analysis',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3b5bab74-f9ce-5f1f-8441-86a9a30539c6'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '52776ca6-2ffa-5c16-991d-f1758cd740bb'::uuid,
  '52776ca6-2ffa-5c16-991d-f1758cd740bb'::uuid,
  true,
  'writing',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8f8d756a-d40d-5ab2-9473-7825efd1197d'::uuid,
  '2ceb6667-a1cd-552f-9f00-e008c47f256b'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '5c6a2b16-8772-56c9-9570-5254356f5c19'::uuid,
  '5c6a2b16-8772-56c9-9570-5254356f5c19'::uuid,
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
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'Transit spectroscopy pipeline for JWST — cohort 4',
  'Transit spectroscopy pipeline for JWST is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around exoplanets, pipelines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  ARRAY['exoplanets','pipelines']::text[],
  'active',
  'Astrophysics',
  ARRAY['Data pipelines','Python','Bayesian inference']::text[],
  'local',
  'long_term',
  15,
  true,
  'Pittsburgh, PA',
  now() - interval '63 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'aa22e993-8699-5058-a3b3-dd9f85b15bb9'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  'owner',
  'active',
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6e16a8e5-e70e-562f-a342-f06964349e70'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  '4f0d7d5d-dc90-54b0-925b-9d1035573f83'::uuid,
  'editor',
  'active',
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '848f40e3-3e41-5a23-85a2-f1e8d16d41ae'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid,
  'viewer',
  'active',
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd779d834-2044-561e-bfce-85d82cc67fd5'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'edf936e0-ccbc-507d-943e-ce31b4b8b532'::uuid,
  'viewer',
  'active',
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8cf54a26-4023-58f4-9939-b27b6c504537'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  '10f9e18b-4dea-5949-a353-69f4282d6bf7'::uuid,
  'viewer',
  'active',
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c0c5a2a8-6ff3-51da-b2d8-b58055a61670'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  '12fb840a-85f9-51d1-a098-9f48ae2a57b8'::uuid,
  'viewer',
  'active',
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2cb3974c-40b2-5a26-a780-244573dfab15'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'd063655e-9e04-5406-8e3a-ac9c25650b1c'::uuid,
  'viewer',
  'active',
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5e789e3b-898d-568a-83bf-8ab378cf1e1a'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'a8c0d033-8cc7-56d4-ad9a-aa29a1d84869'::uuid,
  'viewer',
  'active',
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'eba28ab6-ece0-5e26-85bd-8b53fcc440f4'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  '60cca69c-84bc-5bfc-b458-9eca431f832f'::uuid,
  'viewer',
  'active',
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7fbba85b-1e2f-57a0-9cc0-990b04f19bd9'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'Draft related work section',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 4.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '733d54f0-3c45-5738-ab95-423ab31ff69b'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'Clean and version dataset',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '4f0d7d5d-dc90-54b0-925b-9d1035573f83'::uuid,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '30f307a0-7e29-580f-be2c-917560f0fa6f'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'Run baseline model',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 4.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2e53a5a3-a9ce-5601-a14c-2c3a4d3f677b'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'Write IRB amendment',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 4.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'edf936e0-ccbc-507d-943e-ce31b4b8b532'::uuid,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6f879b88-0cec-5ff1-a9ce-7ef69c6ba7f3'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'Prepare figure panels',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 4.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '10f9e18b-4dea-5949-a353-69f4282d6bf7'::uuid,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '14e91801-1853-57b6-9da1-fb6d737b55f1'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 4.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '12fb840a-85f9-51d1-a098-9f48ae2a57b8'::uuid,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '11ab7921-c4d2-5abc-9e70-6f80b8778208'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 4.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'd063655e-9e04-5406-8e3a-ac9c25650b1c'::uuid,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '90b42800-50c7-593f-ba11-d14b549b8623'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 4.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'a8c0d033-8cc7-56d4-ad9a-aa29a1d84869'::uuid,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4beac4cc-7ca0-5967-9fc6-a4c47335e1ea'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  true,
  'planning',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ef4957a6-1d71-59af-b6b5-13f35a2f0901'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '4f0d7d5d-dc90-54b0-925b-9d1035573f83'::uuid,
  '4f0d7d5d-dc90-54b0-925b-9d1035573f83'::uuid,
  true,
  'analysis',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0101258b-5c93-5cee-a092-a1879321629f'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid,
  '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid,
  true,
  'writing',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '9384bc60-e624-5582-a6bc-e2fb8a93bae6'::uuid,
  '5478e1b7-5971-51c8-b39f-f79cb548de3e'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'edf936e0-ccbc-507d-943e-ce31b4b8b532'::uuid,
  'edf936e0-ccbc-507d-943e-ce31b4b8b532'::uuid,
  true,
  'ops',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;