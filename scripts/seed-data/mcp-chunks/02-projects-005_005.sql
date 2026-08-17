INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '5875b89a-376a-5cca-b6b7-49958dfa5d06'::uuid,
  'Federated learning for rare disease cohorts — cohort 6',
  'Federated learning for rare disease cohorts is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around privacy, ML. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid,
  ARRAY['privacy','ML']::text[],
  'planning',
  'Computational Biology',
  ARRAY['Python','R','Genomics']::text[],
  'hybrid',
  'long_term',
  11,
  true,
  'Ann Arbor, MI',
  now() - interval '103 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9d81f4ea-6b45-5d3b-a871-fde49b1d05cf'::uuid,
  '5875b89a-376a-5cca-b6b7-49958dfa5d06'::uuid,
  '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid,
  'owner',
  'active',
  '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '485b70d7-0ecb-5b8d-add0-83f6f854e927'::uuid,
  '5875b89a-376a-5cca-b6b7-49958dfa5d06'::uuid,
  'b1e72a51-f356-529d-b1eb-19edd96f02cb'::uuid,
  'editor',
  'active',
  '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd642c965-eddd-5a9d-b7c7-a7caf36ae84f'::uuid,
  '5875b89a-376a-5cca-b6b7-49958dfa5d06'::uuid,
  'ab5991aa-60c6-564f-94c4-70fdd9a67e7d'::uuid,
  'viewer',
  'active',
  '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '56bf6d5c-497a-56c9-a1ff-9d9917cebdf7'::uuid,
  '5875b89a-376a-5cca-b6b7-49958dfa5d06'::uuid,
  '601a15d3-ba12-5ed0-8b38-d924a5e127f4'::uuid,
  'viewer',
  'active',
  '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ca94cfbb-024b-5a47-890f-80d3c60f6696'::uuid,
  '5875b89a-376a-5cca-b6b7-49958dfa5d06'::uuid,
  'a2a0a60f-90e7-5a6d-bd00-9b45cdf0e153'::uuid,
  'viewer',
  'active',
  '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4d89f24e-d077-554c-89be-1d27344a528c'::uuid,
  '5875b89a-376a-5cca-b6b7-49958dfa5d06'::uuid,
  'Prepare figure panels',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 6.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid,
  '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '225c5ab3-71d4-5a85-a9ea-f6b93e262d04'::uuid,
  '5875b89a-376a-5cca-b6b7-49958dfa5d06'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'b1e72a51-f356-529d-b1eb-19edd96f02cb'::uuid,
  '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '248d35dc-374b-5268-b607-7c8c25a83169'::uuid,
  '5875b89a-376a-5cca-b6b7-49958dfa5d06'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 6.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'ab5991aa-60c6-564f-94c4-70fdd9a67e7d'::uuid,
  '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4b1cab19-9aad-5188-956e-7a15737ce2bc'::uuid,
  '5875b89a-376a-5cca-b6b7-49958dfa5d06'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 6.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '601a15d3-ba12-5ed0-8b38-d924a5e127f4'::uuid,
  '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0fec5ab7-bc7f-541c-8129-610396825956'::uuid,
  '5875b89a-376a-5cca-b6b7-49958dfa5d06'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 6.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'a2a0a60f-90e7-5a6d-bd00-9b45cdf0e153'::uuid,
  '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e9fa6f35-e18f-5ffd-9ef9-5dc2f1761989'::uuid,
  '5875b89a-376a-5cca-b6b7-49958dfa5d06'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid,
  '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2a3c8cc0-6ba6-59e4-92c7-cb87d19fad98'::uuid,
  '5875b89a-376a-5cca-b6b7-49958dfa5d06'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 6.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'b1e72a51-f356-529d-b1eb-19edd96f02cb'::uuid,
  '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'cbd82908-4323-5629-bd8f-a3a8704f9ab3'::uuid,
  '5875b89a-376a-5cca-b6b7-49958dfa5d06'::uuid,
  'Update project README (3)',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 6.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'ab5991aa-60c6-564f-94c4-70fdd9a67e7d'::uuid,
  '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6725cbc6-9fb8-584c-86e5-91f1da682348'::uuid,
  '5875b89a-376a-5cca-b6b7-49958dfa5d06'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid,
  '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid,
  true,
  'planning',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ad697909-378a-5e8e-82be-2a2223febb5a'::uuid,
  '5875b89a-376a-5cca-b6b7-49958dfa5d06'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'b1e72a51-f356-529d-b1eb-19edd96f02cb'::uuid,
  'b1e72a51-f356-529d-b1eb-19edd96f02cb'::uuid,
  true,
  'analysis',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c30a23da-e8f3-5b91-b767-b892dd7a2ac1'::uuid,
  '5875b89a-376a-5cca-b6b7-49958dfa5d06'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'ab5991aa-60c6-564f-94c4-70fdd9a67e7d'::uuid,
  'ab5991aa-60c6-564f-94c4-70fdd9a67e7d'::uuid,
  true,
  'writing',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '07126e6e-fccf-5427-9583-708e31a2d9f8'::uuid,
  '5875b89a-376a-5cca-b6b7-49958dfa5d06'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '601a15d3-ba12-5ed0-8b38-d924a5e127f4'::uuid,
  '601a15d3-ba12-5ed0-8b38-d924a5e127f4'::uuid,
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
  '46ba59c9-b531-5cfe-8b09-fc9c38bbe523'::uuid,
  'Wildfire smoke exposure forecasting — cohort 6',
  'Wildfire smoke exposure forecasting is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around air quality, forecasting. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  ARRAY['air quality','forecasting']::text[],
  'active',
  'Climate Science',
  ARRAY['Remote sensing','Python','GIS']::text[],
  'local',
  'short_term',
  12,
  true,
  'Los Angeles, CA',
  now() - interval '103 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '38c82275-915d-57ef-a6bd-ab87b71a9094'::uuid,
  '46ba59c9-b531-5cfe-8b09-fc9c38bbe523'::uuid,
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  'owner',
  'active',
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8c63ca62-5082-5586-9e86-054de5b967f3'::uuid,
  '46ba59c9-b531-5cfe-8b09-fc9c38bbe523'::uuid,
  'd899293f-c851-5a79-94e1-f335e67d7e3d'::uuid,
  'editor',
  'active',
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '30bc3b79-478f-505a-9552-3500850225ad'::uuid,
  '46ba59c9-b531-5cfe-8b09-fc9c38bbe523'::uuid,
  '613b2f0f-fb54-55e5-95a9-2be7539b4ec3'::uuid,
  'viewer',
  'active',
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '10ed2bd2-92b6-5603-99b6-6ff6062cfb28'::uuid,
  '46ba59c9-b531-5cfe-8b09-fc9c38bbe523'::uuid,
  '89156783-853d-5a14-aea6-b545cfc146a5'::uuid,
  'viewer',
  'active',
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '132c3843-5c1a-5d16-883c-e32fd6f40c65'::uuid,
  '46ba59c9-b531-5cfe-8b09-fc9c38bbe523'::uuid,
  'e3b015fb-e2b1-5f62-9882-ced1747b09f9'::uuid,
  'viewer',
  'active',
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '940fc1b6-a800-51a8-ae4e-a3bcffb4d08b'::uuid,
  '46ba59c9-b531-5cfe-8b09-fc9c38bbe523'::uuid,
  '3bd2ebbe-1d87-59b0-bbcc-11eda780a6bc'::uuid,
  'viewer',
  'active',
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5cf819db-e23d-526b-9397-877ea4c989ba'::uuid,
  '46ba59c9-b531-5cfe-8b09-fc9c38bbe523'::uuid,
  'Prepare figure panels',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 6.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9480d3af-775c-5329-aa07-392bcbce14f7'::uuid,
  '46ba59c9-b531-5cfe-8b09-fc9c38bbe523'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'd899293f-c851-5a79-94e1-f335e67d7e3d'::uuid,
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3481e4e4-3ff8-541d-9e13-28c66858349c'::uuid,
  '46ba59c9-b531-5cfe-8b09-fc9c38bbe523'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 6.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '613b2f0f-fb54-55e5-95a9-2be7539b4ec3'::uuid,
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4dc7be50-e517-5126-bb1f-60c6e7f95132'::uuid,
  '46ba59c9-b531-5cfe-8b09-fc9c38bbe523'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 6.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '89156783-853d-5a14-aea6-b545cfc146a5'::uuid,
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f9b65fd3-8e56-57f4-aeab-700e0e2a6872'::uuid,
  '46ba59c9-b531-5cfe-8b09-fc9c38bbe523'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 6.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'e3b015fb-e2b1-5f62-9882-ced1747b09f9'::uuid,
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '60fd19f7-55d0-5d37-8114-0eaf463f0157'::uuid,
  '46ba59c9-b531-5cfe-8b09-fc9c38bbe523'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '3bd2ebbe-1d87-59b0-bbcc-11eda780a6bc'::uuid,
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '82629532-3420-5a34-a5a0-d39fa696f7db'::uuid,
  '46ba59c9-b531-5cfe-8b09-fc9c38bbe523'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 6.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '33aa9809-f641-53a3-b220-6d1a37cff021'::uuid,
  '46ba59c9-b531-5cfe-8b09-fc9c38bbe523'::uuid,
  'Update project README (3)',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 6.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'd899293f-c851-5a79-94e1-f335e67d7e3d'::uuid,
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c0f7e1f9-61c2-580a-90b6-1a78aef7070b'::uuid,
  '46ba59c9-b531-5cfe-8b09-fc9c38bbe523'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  true,
  'planning',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '05e6df8e-3671-5325-97b7-62657c207152'::uuid,
  '46ba59c9-b531-5cfe-8b09-fc9c38bbe523'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'd899293f-c851-5a79-94e1-f335e67d7e3d'::uuid,
  'd899293f-c851-5a79-94e1-f335e67d7e3d'::uuid,
  true,
  'analysis',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e20060df-3c4d-5538-ad4e-86429de88c9b'::uuid,
  '46ba59c9-b531-5cfe-8b09-fc9c38bbe523'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '613b2f0f-fb54-55e5-95a9-2be7539b4ec3'::uuid,
  '613b2f0f-fb54-55e5-95a9-2be7539b4ec3'::uuid,
  true,
  'writing',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6d8cf079-d751-57eb-8f45-fe9c85e66cdf'::uuid,
  '46ba59c9-b531-5cfe-8b09-fc9c38bbe523'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '89156783-853d-5a14-aea6-b545cfc146a5'::uuid,
  '89156783-853d-5a14-aea6-b545cfc146a5'::uuid,
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
  'a854f1ba-7dfd-5148-bd65-84ac00ada30e'::uuid,
  'Solid-state battery interface imaging — cohort 6',
  'Solid-state battery interface imaging is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around interfaces, microscopy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  ARRAY['interfaces','microscopy']::text[],
  'active',
  'Materials Science',
  ARRAY['DFT','Lab automation','Characterization']::text[],
  'remote',
  'medium_term',
  13,
  true,
  'New York, NY',
  now() - interval '103 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3d8f2842-02cc-5a88-ba11-1b62beb47db8'::uuid,
  'a854f1ba-7dfd-5148-bd65-84ac00ada30e'::uuid,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  'owner',
  'active',
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '62f4a4c8-e22e-5639-afb0-5d61db87af7d'::uuid,
  'a854f1ba-7dfd-5148-bd65-84ac00ada30e'::uuid,
  '251eed55-e7bd-5e13-a2ca-cea6ceee8615'::uuid,
  'editor',
  'active',
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f85be5f8-be58-52cc-b233-ff114456cb3e'::uuid,
  'a854f1ba-7dfd-5148-bd65-84ac00ada30e'::uuid,
  '8d53c389-fe52-5d2a-9fe2-d66af24c329d'::uuid,
  'viewer',
  'active',
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a4de16c1-dbed-5f5c-a74a-4fa95c14e390'::uuid,
  'a854f1ba-7dfd-5148-bd65-84ac00ada30e'::uuid,
  'da23348a-cb61-5775-bac1-f4088289d969'::uuid,
  'viewer',
  'active',
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '63eae20e-9a0c-5474-8217-4f3821c2fa1b'::uuid,
  'a854f1ba-7dfd-5148-bd65-84ac00ada30e'::uuid,
  '5baa9a49-86d9-5b96-8662-a6e76f4aa203'::uuid,
  'viewer',
  'active',
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'dad6ce1c-c5f4-56d6-9933-b87544f9661f'::uuid,
  'a854f1ba-7dfd-5148-bd65-84ac00ada30e'::uuid,
  'c26b5733-2d5f-5503-a13e-2fd663e7bdcd'::uuid,
  'viewer',
  'active',
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '81080c1c-7a65-51ab-8c67-9c03e044af80'::uuid,
  'a854f1ba-7dfd-5148-bd65-84ac00ada30e'::uuid,
  '03d924c7-38c5-5e68-8929-cfb838a4b9a9'::uuid,
  'viewer',
  'active',
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f47f5457-83bf-5f65-9a17-b1a2bcbadab1'::uuid,
  'a854f1ba-7dfd-5148-bd65-84ac00ada30e'::uuid,
  'Prepare figure panels',
  'Tracked work item for Solid-state battery interface imaging — cohort 6.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0330bbb3-948a-570e-a0f0-8332c1395c3a'::uuid,
  'a854f1ba-7dfd-5148-bd65-84ac00ada30e'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Solid-state battery interface imaging — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '251eed55-e7bd-5e13-a2ca-cea6ceee8615'::uuid,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'de38379c-b0f0-59cc-81e2-fcc347356f7b'::uuid,
  'a854f1ba-7dfd-5148-bd65-84ac00ada30e'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Solid-state battery interface imaging — cohort 6.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '8d53c389-fe52-5d2a-9fe2-d66af24c329d'::uuid,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2f486db0-16fb-5df4-b68c-b56b1139d0ef'::uuid,
  'a854f1ba-7dfd-5148-bd65-84ac00ada30e'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Solid-state battery interface imaging — cohort 6.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'da23348a-cb61-5775-bac1-f4088289d969'::uuid,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9d200707-37b1-5106-af37-1ce5a5f27ee0'::uuid,
  'a854f1ba-7dfd-5148-bd65-84ac00ada30e'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Solid-state battery interface imaging — cohort 6.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '5baa9a49-86d9-5b96-8662-a6e76f4aa203'::uuid,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7f787d10-445a-5f64-9688-d6848da97be9'::uuid,
  'a854f1ba-7dfd-5148-bd65-84ac00ada30e'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Solid-state battery interface imaging — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'c26b5733-2d5f-5503-a13e-2fd663e7bdcd'::uuid,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1be35a31-b311-5975-9441-af59f7b82671'::uuid,
  'a854f1ba-7dfd-5148-bd65-84ac00ada30e'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Solid-state battery interface imaging — cohort 6.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '03d924c7-38c5-5e68-8929-cfb838a4b9a9'::uuid,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2c761859-a7d2-5da5-b7fb-85daf6a7b3d4'::uuid,
  'a854f1ba-7dfd-5148-bd65-84ac00ada30e'::uuid,
  'Update project README (3)',
  'Tracked work item for Solid-state battery interface imaging — cohort 6.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0fcf9455-a67a-599d-b8e5-d33b5b234432'::uuid,
  'a854f1ba-7dfd-5148-bd65-84ac00ada30e'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  true,
  'planning',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e590c830-ee41-54b5-a002-293a1ccfba02'::uuid,
  'a854f1ba-7dfd-5148-bd65-84ac00ada30e'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '251eed55-e7bd-5e13-a2ca-cea6ceee8615'::uuid,
  '251eed55-e7bd-5e13-a2ca-cea6ceee8615'::uuid,
  true,
  'analysis',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e0902d36-ceb4-51f1-bd1d-cee57ca0298a'::uuid,
  'a854f1ba-7dfd-5148-bd65-84ac00ada30e'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '8d53c389-fe52-5d2a-9fe2-d66af24c329d'::uuid,
  '8d53c389-fe52-5d2a-9fe2-d66af24c329d'::uuid,
  true,
  'writing',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '861e00d1-e471-5dee-91e4-349643c531a2'::uuid,
  'a854f1ba-7dfd-5148-bd65-84ac00ada30e'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'da23348a-cb61-5775-bac1-f4088289d969'::uuid,
  'da23348a-cb61-5775-bac1-f4088289d969'::uuid,
  true,
  'ops',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;