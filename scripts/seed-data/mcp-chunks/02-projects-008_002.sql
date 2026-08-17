INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  'Near-term quantum error mitigation — cohort 9',
  'Near-term quantum error mitigation is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around NISQ, algorithms. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  ARRAY['NISQ','algorithms']::text[],
  'active',
  'Quantum Information',
  ARRAY['Qiskit','Linear algebra','Optics']::text[],
  'hybrid',
  'long_term',
  14,
  true,
  'Singapore',
  now() - interval '163 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'bcbb3d1a-6d11-58d6-a4a4-e40c562d288e'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  'owner',
  'active',
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '13a5f3b2-3858-58a4-9018-7382dbe5669b'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  'editor',
  'active',
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a682bbad-49c4-584f-808f-fd92c7a8a4a0'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid,
  'viewer',
  'active',
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9542064f-54c7-5a02-b70b-a097c056799f'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid,
  'viewer',
  'active',
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0d425df2-c406-5739-8e3e-acd7de682a2e'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  'd8a33d26-1570-57fc-b4be-dd5e32331b77'::uuid,
  'viewer',
  'active',
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6b565f18-4088-51fd-a8e7-e05080a466ce'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  '75f6df30-5d8f-5dd3-917e-2cb576513e61'::uuid,
  'viewer',
  'active',
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8f7658dd-5a8e-5bdc-b827-019600066cd4'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  '11c84f5e-775c-5b46-af66-1f232d2d9f72'::uuid,
  'viewer',
  'active',
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1464976e-40e8-5d20-b4f5-a9b67264eade'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  '377c353e-df57-5706-9534-8723efe02ecd'::uuid,
  'viewer',
  'active',
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0ff4bc4e-5f99-56ba-99f1-5efa8bc68ea3'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  'Prepare figure panels',
  'Tracked work item for Near-term quantum error mitigation — cohort 9.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '94f49704-6b55-550f-976c-9eb2efc9f524'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Near-term quantum error mitigation — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '18ebb62d-3129-57e9-8d24-25d575bf0669'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Near-term quantum error mitigation — cohort 9.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f8d4aba0-685e-5e15-b623-b41d83c935c1'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Near-term quantum error mitigation — cohort 9.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '60ebb980-66d2-50ff-9e61-824cb6011b15'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Near-term quantum error mitigation — cohort 9.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'd8a33d26-1570-57fc-b4be-dd5e32331b77'::uuid,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6d8b4482-b456-586c-abe8-d62ded2323a3'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Near-term quantum error mitigation — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '75f6df30-5d8f-5dd3-917e-2cb576513e61'::uuid,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '455a5cb9-af16-5d1c-b5de-95e2c5482717'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Near-term quantum error mitigation — cohort 9.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '11c84f5e-775c-5b46-af66-1f232d2d9f72'::uuid,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bd84896c-592f-5416-87b5-30d39934c6c7'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  'Update project README (3)',
  'Tracked work item for Near-term quantum error mitigation — cohort 9.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '377c353e-df57-5706-9534-8723efe02ecd'::uuid,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ea4ebd8f-8d64-505c-8b70-7456707bd8e9'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  true,
  'planning',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8383d770-7942-592d-a95d-ff4a230ef5e1'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  true,
  'analysis',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd5a6ad35-ebd9-537e-91cb-b7aac5e9c4a7'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid,
  'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid,
  true,
  'writing',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4f55c4fd-5e61-501f-ac73-5bb2895dd0d2'::uuid,
  'ba3b3b52-d95e-5cb2-9763-a1e271df6458'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid,
  '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid,
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
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'Robust evaluation for clinical LLMs — cohort 9',
  'Robust evaluation for clinical LLMs is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around LLMs, evaluation, safety. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  ARRAY['LLMs','evaluation','safety']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'local',
  'long_term',
  15,
  true,
  'Melbourne, AU',
  now() - interval '163 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b33b8121-88cf-588f-9268-f466a9e0ee12'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  'owner',
  'active',
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '75b6eb0b-eeb6-5789-9ecb-e1edd111033e'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  'editor',
  'active',
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '953ea574-41a2-5166-922e-b171685ba5ea'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  '9583a091-71fc-59e2-a837-c827f33c072a'::uuid,
  'viewer',
  'active',
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '47bfcd6d-29bd-59df-8f3c-08f767eb3e79'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid,
  'viewer',
  'active',
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b5035424-6329-57bc-ab41-fd9040bfbb54'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  '370327fd-3558-57cf-8945-bc80d916c857'::uuid,
  'viewer',
  'active',
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'da8976b4-581d-523c-a234-c41c0ebde3df'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  '2ca134b1-2119-5e9e-8c0e-f36ce476cf56'::uuid,
  'viewer',
  'active',
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5146df60-1309-5f33-bb3d-6dd40d326a8c'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  '04960929-8e6d-526f-902a-3f56fae228ea'::uuid,
  'viewer',
  'active',
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '85845e77-db22-562b-90d6-1ebb0edca55a'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'd753bc68-7b16-56ec-967a-6c9f5215fab8'::uuid,
  'viewer',
  'active',
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c453246c-e2f7-522f-93eb-34d51322cdf9'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid,
  'viewer',
  'active',
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f0cfbf82-1e5f-5172-b7cc-83f6557e4e27'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'Prepare figure panels',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 9.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c8f68df2-0188-5ad5-9e07-0123b9f07850'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3b332705-5f46-53e1-a7a9-e748a7f2049e'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 9.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '9583a091-71fc-59e2-a837-c827f33c072a'::uuid,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd94eb4cf-5c18-53e2-ad02-4f11cf2c66dd'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 9.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2e95df4f-66b4-5cc9-acc4-3b7d5a2699df'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 9.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '370327fd-3558-57cf-8945-bc80d916c857'::uuid,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '060b846d-9754-5e2f-8e3f-2f322bea7431'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '2ca134b1-2119-5e9e-8c0e-f36ce476cf56'::uuid,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '55530987-4a3c-59a5-9534-ea7c07b7d8e7'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 9.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '04960929-8e6d-526f-902a-3f56fae228ea'::uuid,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2304029d-909f-5aec-99ae-d71b3aa185bb'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'Update project README (3)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 9.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'd753bc68-7b16-56ec-967a-6c9f5215fab8'::uuid,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b26f0524-6154-5d0a-8be4-f89912e1ca21'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid,
  true,
  'planning',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '35c7a9d4-82f8-5026-8548-9122f25be89c'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  true,
  'analysis',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5e6363d8-53a4-5877-b78d-bd146c4bb1ce'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '9583a091-71fc-59e2-a837-c827f33c072a'::uuid,
  '9583a091-71fc-59e2-a837-c827f33c072a'::uuid,
  true,
  'writing',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '00c5f70e-f1b8-5487-bee8-9b18079a3ace'::uuid,
  '05bd6871-4eac-57b0-84c4-e7bbf097ce7d'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid,
  'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid,
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
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'Photoredox catalysis for late-stage edits — cohort 9',
  'Photoredox catalysis for late-stage edits is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around catalysis, synthesis. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  ARRAY['catalysis','synthesis']::text[],
  'active',
  'Chemistry',
  ARRAY['Organic synthesis','Spectroscopy','Cheminformatics']::text[],
  'remote',
  'short_term',
  4,
  true,
  'Cambridge, MA',
  now() - interval '163 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1933453f-1e2d-5f90-90e5-a929c5c2fa4d'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  'owner',
  'active',
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7f7f3959-a0fc-5049-b850-aec7c598a49f'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'f7d3bba5-3aee-58bf-94fe-011c7853e82d'::uuid,
  'editor',
  'active',
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3fa305f4-827a-5e95-915c-e32e03e09052'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  '093ae4a7-64b9-54f9-9c88-8b9150c9d1af'::uuid,
  'viewer',
  'active',
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8227d8ee-c07b-5c68-bc5b-2ec9e52f9504'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'b5c5f827-63ef-5230-bb5e-5e5d81dec47c'::uuid,
  'viewer',
  'active',
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '44d1aa42-6e35-54f3-ab55-81c0ef4cba97'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'Prepare figure panels',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 9.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4f0e77bb-52ba-59b3-b8b3-c2ce1c2c5d83'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'f7d3bba5-3aee-58bf-94fe-011c7853e82d'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a86177be-4300-545d-9efd-e4567df17d49'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 9.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '093ae4a7-64b9-54f9-9c88-8b9150c9d1af'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5268b4df-b314-53c2-bac0-578a2e4190a9'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 9.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'b5c5f827-63ef-5230-bb5e-5e5d81dec47c'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2a3577b5-3d1b-5066-8bb7-9482449b6281'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 9.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c002f1e1-e70d-578e-b2d1-97e71622f76b'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'f7d3bba5-3aee-58bf-94fe-011c7853e82d'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5eaf1039-9d90-52ff-a21b-76d69bd27529'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 9.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '093ae4a7-64b9-54f9-9c88-8b9150c9d1af'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3b45f543-d3e2-52f6-8e5d-2783532fc6ab'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'Update project README (3)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 9.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'b5c5f827-63ef-5230-bb5e-5e5d81dec47c'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '84dd0911-bef9-589a-981c-24025dc64a3b'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  true,
  'planning',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2da95ea3-a331-5829-b904-d97571f05d3b'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'f7d3bba5-3aee-58bf-94fe-011c7853e82d'::uuid,
  'f7d3bba5-3aee-58bf-94fe-011c7853e82d'::uuid,
  true,
  'analysis',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'fd447085-6c67-53eb-be31-0ac390268917'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '093ae4a7-64b9-54f9-9c88-8b9150c9d1af'::uuid,
  '093ae4a7-64b9-54f9-9c88-8b9150c9d1af'::uuid,
  true,
  'writing',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ddf76613-ff25-5b75-9bad-e2d0d0629077'::uuid,
  'cab5337f-4531-5e25-942f-4319472cbf13'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'b5c5f827-63ef-5230-bb5e-5e5d81dec47c'::uuid,
  'b5c5f827-63ef-5230-bb5e-5e5d81dec47c'::uuid,
  true,
  'ops',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;