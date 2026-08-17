INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '1b825679-a97d-57dc-880f-6793d18b1ddc'::uuid,
  'Federated learning for rare disease cohorts — cohort 3',
  'Federated learning for rare disease cohorts is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around privacy, ML. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  ARRAY['privacy','ML']::text[],
  'planning',
  'Computational Biology',
  ARRAY['Python','R','Genomics']::text[],
  'hybrid',
  'long_term',
  11,
  true,
  'Chicago, IL',
  now() - interval '43 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '80c40e2e-5eea-5870-bacb-45b6670af8ab'::uuid,
  '1b825679-a97d-57dc-880f-6793d18b1ddc'::uuid,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  'owner',
  'active',
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '811d427b-db0f-5ad7-85d9-0aef368b31d3'::uuid,
  '1b825679-a97d-57dc-880f-6793d18b1ddc'::uuid,
  '67d547f3-901b-54ad-bb0d-bce73112f05c'::uuid,
  'editor',
  'active',
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '44fb7912-15e3-57be-8218-72785bd9087f'::uuid,
  '1b825679-a97d-57dc-880f-6793d18b1ddc'::uuid,
  'c93a94da-3c5b-5826-8ce6-38ae54fa34c9'::uuid,
  'viewer',
  'active',
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a299545f-ed73-5d89-9c8e-25a97edc921f'::uuid,
  '1b825679-a97d-57dc-880f-6793d18b1ddc'::uuid,
  '0e2dce4b-fb79-5d9a-a1c1-45ef1aeb568e'::uuid,
  'viewer',
  'active',
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'df307751-7124-5134-aacd-7f0543a8e060'::uuid,
  '1b825679-a97d-57dc-880f-6793d18b1ddc'::uuid,
  '71f19248-9b47-5e00-bc96-ea56d2f0fa29'::uuid,
  'viewer',
  'active',
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd4877a78-a39e-5a19-84a5-e4b6c372e15d'::uuid,
  '1b825679-a97d-57dc-880f-6793d18b1ddc'::uuid,
  'Prepare figure panels',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 3.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '998c1dac-25a4-55e2-89ab-3bb8a44f1cb7'::uuid,
  '1b825679-a97d-57dc-880f-6793d18b1ddc'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '67d547f3-901b-54ad-bb0d-bce73112f05c'::uuid,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bb468545-4bb1-5dc8-9d89-ccc0d6fdda2b'::uuid,
  '1b825679-a97d-57dc-880f-6793d18b1ddc'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 3.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'c93a94da-3c5b-5826-8ce6-38ae54fa34c9'::uuid,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f91f2d89-4866-5884-a2b1-74ee0e224887'::uuid,
  '1b825679-a97d-57dc-880f-6793d18b1ddc'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 3.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '0e2dce4b-fb79-5d9a-a1c1-45ef1aeb568e'::uuid,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8b0909d3-7add-5651-a0fb-bf734d115e43'::uuid,
  '1b825679-a97d-57dc-880f-6793d18b1ddc'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 3.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '71f19248-9b47-5e00-bc96-ea56d2f0fa29'::uuid,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '51c8f2e9-6120-54c7-8634-67a693449d86'::uuid,
  '1b825679-a97d-57dc-880f-6793d18b1ddc'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e2be575e-d4fc-510e-8262-f55b776f2bfb'::uuid,
  '1b825679-a97d-57dc-880f-6793d18b1ddc'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 3.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '67d547f3-901b-54ad-bb0d-bce73112f05c'::uuid,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e0780ef6-095e-55f0-b8cc-930c455e58b5'::uuid,
  '1b825679-a97d-57dc-880f-6793d18b1ddc'::uuid,
  'Update project README (3)',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 3.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'c93a94da-3c5b-5826-8ce6-38ae54fa34c9'::uuid,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4b6671f0-8515-53a9-81cf-d8f206e8d503'::uuid,
  '1b825679-a97d-57dc-880f-6793d18b1ddc'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  true,
  'planning',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e6e0563c-6362-5ac1-bea2-710c882af881'::uuid,
  '1b825679-a97d-57dc-880f-6793d18b1ddc'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '67d547f3-901b-54ad-bb0d-bce73112f05c'::uuid,
  '67d547f3-901b-54ad-bb0d-bce73112f05c'::uuid,
  true,
  'analysis',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e261cd80-eab8-5169-84f5-0383b962eaac'::uuid,
  '1b825679-a97d-57dc-880f-6793d18b1ddc'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'c93a94da-3c5b-5826-8ce6-38ae54fa34c9'::uuid,
  'c93a94da-3c5b-5826-8ce6-38ae54fa34c9'::uuid,
  true,
  'writing',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'abe798fb-5972-54a0-a1ad-afcb4f09be93'::uuid,
  '1b825679-a97d-57dc-880f-6793d18b1ddc'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '0e2dce4b-fb79-5d9a-a1c1-45ef1aeb568e'::uuid,
  '0e2dce4b-fb79-5d9a-a1c1-45ef1aeb568e'::uuid,
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
  '411496db-7b55-5b6a-934c-71078d1f7583'::uuid,
  'Wildfire smoke exposure forecasting — cohort 3',
  'Wildfire smoke exposure forecasting is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around air quality, forecasting. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  ARRAY['air quality','forecasting']::text[],
  'active',
  'Climate Science',
  ARRAY['Remote sensing','Python','GIS']::text[],
  'local',
  'short_term',
  12,
  true,
  'Baltimore, MD',
  now() - interval '43 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8134081f-05fe-5bb6-b507-2ab8ce5e82cb'::uuid,
  '411496db-7b55-5b6a-934c-71078d1f7583'::uuid,
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  'owner',
  'active',
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '398f8e99-e4d1-5667-85ba-ca431b1a7778'::uuid,
  '411496db-7b55-5b6a-934c-71078d1f7583'::uuid,
  '3ecd233d-b88a-58b2-8d79-3eeb7b0ba031'::uuid,
  'editor',
  'active',
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b8399db1-d3b6-5658-8564-0a563b3689dc'::uuid,
  '411496db-7b55-5b6a-934c-71078d1f7583'::uuid,
  '603e0ceb-34f7-596c-8bb3-f211c4655fe5'::uuid,
  'viewer',
  'active',
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0eb9e8cd-eccc-5112-86d8-b74455258651'::uuid,
  '411496db-7b55-5b6a-934c-71078d1f7583'::uuid,
  '05e52214-ccd1-51a2-b96f-6714b58b4584'::uuid,
  'viewer',
  'active',
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e4660ca6-c95c-5137-953d-aa0e5b3ffb34'::uuid,
  '411496db-7b55-5b6a-934c-71078d1f7583'::uuid,
  'ef33091a-beec-514c-aef8-2bb5236c7ea0'::uuid,
  'viewer',
  'active',
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '06f990f4-a341-5998-aae4-506ce86a1a9e'::uuid,
  '411496db-7b55-5b6a-934c-71078d1f7583'::uuid,
  '523b980a-c957-5e7a-8cd0-abb466412214'::uuid,
  'viewer',
  'active',
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd4fbbf69-06e6-55b0-961b-11c694cc9e8e'::uuid,
  '411496db-7b55-5b6a-934c-71078d1f7583'::uuid,
  'Prepare figure panels',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 3.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2a9af8bb-9d71-5ef2-ba81-618e05230f5c'::uuid,
  '411496db-7b55-5b6a-934c-71078d1f7583'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '3ecd233d-b88a-58b2-8d79-3eeb7b0ba031'::uuid,
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e0eda251-6824-5077-9434-deea491a3bdb'::uuid,
  '411496db-7b55-5b6a-934c-71078d1f7583'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 3.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '603e0ceb-34f7-596c-8bb3-f211c4655fe5'::uuid,
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '94df357a-6825-58f0-8210-6db2bfaefbca'::uuid,
  '411496db-7b55-5b6a-934c-71078d1f7583'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 3.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '05e52214-ccd1-51a2-b96f-6714b58b4584'::uuid,
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8dac02a3-1ac5-5185-bbd7-5117c19fd36f'::uuid,
  '411496db-7b55-5b6a-934c-71078d1f7583'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 3.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'ef33091a-beec-514c-aef8-2bb5236c7ea0'::uuid,
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '02994e5c-5950-595a-858b-caad5def20c7'::uuid,
  '411496db-7b55-5b6a-934c-71078d1f7583'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '523b980a-c957-5e7a-8cd0-abb466412214'::uuid,
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '92c6388e-ef4d-5f24-a5b9-f844c31f1763'::uuid,
  '411496db-7b55-5b6a-934c-71078d1f7583'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 3.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '280442a3-37f9-5944-8ff2-da9baeab20b4'::uuid,
  '411496db-7b55-5b6a-934c-71078d1f7583'::uuid,
  'Update project README (3)',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 3.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '3ecd233d-b88a-58b2-8d79-3eeb7b0ba031'::uuid,
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd6bb04e4-df21-507a-805c-fca522f3cc3e'::uuid,
  '411496db-7b55-5b6a-934c-71078d1f7583'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  true,
  'planning',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd57b420c-3890-5d6b-9af7-69414a07523e'::uuid,
  '411496db-7b55-5b6a-934c-71078d1f7583'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '3ecd233d-b88a-58b2-8d79-3eeb7b0ba031'::uuid,
  '3ecd233d-b88a-58b2-8d79-3eeb7b0ba031'::uuid,
  true,
  'analysis',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '07e1c06b-856e-515a-9330-68156262a3ea'::uuid,
  '411496db-7b55-5b6a-934c-71078d1f7583'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '603e0ceb-34f7-596c-8bb3-f211c4655fe5'::uuid,
  '603e0ceb-34f7-596c-8bb3-f211c4655fe5'::uuid,
  true,
  'writing',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '172dda65-ce43-5e49-b037-c07d76630e20'::uuid,
  '411496db-7b55-5b6a-934c-71078d1f7583'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '05e52214-ccd1-51a2-b96f-6714b58b4584'::uuid,
  '05e52214-ccd1-51a2-b96f-6714b58b4584'::uuid,
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
  '38669eea-5422-5a02-b33f-61b82a060b2b'::uuid,
  'Solid-state battery interface imaging — cohort 3',
  'Solid-state battery interface imaging is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around interfaces, microscopy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  ARRAY['interfaces','microscopy']::text[],
  'active',
  'Materials Science',
  ARRAY['DFT','Lab automation','Characterization']::text[],
  'remote',
  'medium_term',
  13,
  true,
  'New Haven, CT',
  now() - interval '43 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '847a62be-67e7-5c43-b997-91db16150f26'::uuid,
  '38669eea-5422-5a02-b33f-61b82a060b2b'::uuid,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  'owner',
  'active',
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '209edf68-1531-5faf-96fc-2081dc1f9095'::uuid,
  '38669eea-5422-5a02-b33f-61b82a060b2b'::uuid,
  'ff878e2b-1aec-594f-ad30-e0ed7c4c90ef'::uuid,
  'editor',
  'active',
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'fa2e1cae-9b53-502a-807e-e4aab5a3e4e2'::uuid,
  '38669eea-5422-5a02-b33f-61b82a060b2b'::uuid,
  '9c47f15c-ad03-576b-8893-806c67f766a8'::uuid,
  'viewer',
  'active',
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '57d133f0-c104-5180-99f8-709535218987'::uuid,
  '38669eea-5422-5a02-b33f-61b82a060b2b'::uuid,
  '0f2d40d5-1ce2-5b45-8b3f-13e509818a14'::uuid,
  'viewer',
  'active',
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '34248465-b1cd-52e3-b8f1-ba6eea8f4568'::uuid,
  '38669eea-5422-5a02-b33f-61b82a060b2b'::uuid,
  '74683992-9a31-552a-8e82-cd7205332508'::uuid,
  'viewer',
  'active',
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3330380c-6fd8-555d-8bf3-60ea717a03b2'::uuid,
  '38669eea-5422-5a02-b33f-61b82a060b2b'::uuid,
  'e5ad392c-bed6-53b1-959c-110347ae87fe'::uuid,
  'viewer',
  'active',
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4d7f454c-23c3-52c8-85d0-25f9b06c7ee6'::uuid,
  '38669eea-5422-5a02-b33f-61b82a060b2b'::uuid,
  'e8959cb7-aa69-5b68-afde-e4bb16d5a608'::uuid,
  'viewer',
  'active',
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2a618bf3-63fb-58a8-9dcc-225d55b52df2'::uuid,
  '38669eea-5422-5a02-b33f-61b82a060b2b'::uuid,
  'Prepare figure panels',
  'Tracked work item for Solid-state battery interface imaging — cohort 3.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '32a1e854-0f09-5eab-a6dd-bd8eb4991377'::uuid,
  '38669eea-5422-5a02-b33f-61b82a060b2b'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Solid-state battery interface imaging — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'ff878e2b-1aec-594f-ad30-e0ed7c4c90ef'::uuid,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '72201a4d-2e67-558f-814a-7f158dbf769f'::uuid,
  '38669eea-5422-5a02-b33f-61b82a060b2b'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Solid-state battery interface imaging — cohort 3.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '9c47f15c-ad03-576b-8893-806c67f766a8'::uuid,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ce14fcb2-20e9-55ba-b32b-ad2d9c2f87e7'::uuid,
  '38669eea-5422-5a02-b33f-61b82a060b2b'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Solid-state battery interface imaging — cohort 3.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '0f2d40d5-1ce2-5b45-8b3f-13e509818a14'::uuid,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f479da3f-0993-579b-bbcf-f6d8a419e04a'::uuid,
  '38669eea-5422-5a02-b33f-61b82a060b2b'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Solid-state battery interface imaging — cohort 3.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '74683992-9a31-552a-8e82-cd7205332508'::uuid,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '54b054df-d586-5195-b898-5867ca3da160'::uuid,
  '38669eea-5422-5a02-b33f-61b82a060b2b'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Solid-state battery interface imaging — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'e5ad392c-bed6-53b1-959c-110347ae87fe'::uuid,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '28fb1868-2ee1-52fd-99cc-ecae18fb7289'::uuid,
  '38669eea-5422-5a02-b33f-61b82a060b2b'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Solid-state battery interface imaging — cohort 3.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'e8959cb7-aa69-5b68-afde-e4bb16d5a608'::uuid,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '41b4225d-2a25-5655-ba97-8443a72a3b21'::uuid,
  '38669eea-5422-5a02-b33f-61b82a060b2b'::uuid,
  'Update project README (3)',
  'Tracked work item for Solid-state battery interface imaging — cohort 3.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6e8fc83b-1f6c-5b07-888d-e13a7c266fe4'::uuid,
  '38669eea-5422-5a02-b33f-61b82a060b2b'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  true,
  'planning',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '44c50e60-de7e-58c0-937c-c41ca348be29'::uuid,
  '38669eea-5422-5a02-b33f-61b82a060b2b'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'ff878e2b-1aec-594f-ad30-e0ed7c4c90ef'::uuid,
  'ff878e2b-1aec-594f-ad30-e0ed7c4c90ef'::uuid,
  true,
  'analysis',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c5f228fa-57d6-5f0c-bc46-49e8ee256b26'::uuid,
  '38669eea-5422-5a02-b33f-61b82a060b2b'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '9c47f15c-ad03-576b-8893-806c67f766a8'::uuid,
  '9c47f15c-ad03-576b-8893-806c67f766a8'::uuid,
  true,
  'writing',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ccb4a492-f413-5749-9fd1-fc9ab2a058b9'::uuid,
  '38669eea-5422-5a02-b33f-61b82a060b2b'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '0f2d40d5-1ce2-5b45-8b3f-13e509818a14'::uuid,
  '0f2d40d5-1ce2-5b45-8b3f-13e509818a14'::uuid,
  true,
  'ops',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;