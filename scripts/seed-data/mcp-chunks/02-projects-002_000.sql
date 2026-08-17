INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '22e870f7-d324-5495-bde4-d717a5ef5b73'::uuid,
  'Single-cell atlas of treatment response — cohort 3',
  'Single-cell atlas of treatment response is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around genomics, RNA-seq, oncology. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  ARRAY['genomics','RNA-seq','oncology']::text[],
  'planning',
  'Computational Biology',
  ARRAY['Python','R','Genomics']::text[],
  'hybrid',
  'short_term',
  8,
  true,
  'Singapore',
  now() - interval '43 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4ad81dc0-9ce7-5e9c-8c51-2cc33740bec4'::uuid,
  '22e870f7-d324-5495-bde4-d717a5ef5b73'::uuid,
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  'owner',
  'active',
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0be6f950-0259-5250-ab07-eeb121719540'::uuid,
  '22e870f7-d324-5495-bde4-d717a5ef5b73'::uuid,
  'c59ba863-a764-5b9f-91a1-ad1e0093cb27'::uuid,
  'editor',
  'active',
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'caaf2e70-9f31-5231-b8b7-f4b321e1bdab'::uuid,
  '22e870f7-d324-5495-bde4-d717a5ef5b73'::uuid,
  '843a61c1-ff56-52bd-b7ff-edcd4f30be03'::uuid,
  'viewer',
  'active',
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '311f9c5a-dc82-5988-9737-116caf5ef537'::uuid,
  '22e870f7-d324-5495-bde4-d717a5ef5b73'::uuid,
  '862f205c-c86e-5674-b9a7-a6d3756eca94'::uuid,
  'viewer',
  'active',
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'fbc5ef82-6964-5c4f-938e-29e63415f93a'::uuid,
  '22e870f7-d324-5495-bde4-d717a5ef5b73'::uuid,
  '900a2d77-a10d-5ba0-95fc-fe4be7e250a4'::uuid,
  'viewer',
  'active',
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'cb3a4e0d-c4d9-5b62-bd2a-bedfffde83d4'::uuid,
  '22e870f7-d324-5495-bde4-d717a5ef5b73'::uuid,
  '67f6dfe8-0447-57a4-92f8-94fc53ee9c7c'::uuid,
  'viewer',
  'active',
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c78dadf7-01c5-5379-82a9-e2835773ed70'::uuid,
  '22e870f7-d324-5495-bde4-d717a5ef5b73'::uuid,
  '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid,
  'viewer',
  'active',
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a9508dd7-5c1c-578d-b55d-f46c53bf6fb4'::uuid,
  '22e870f7-d324-5495-bde4-d717a5ef5b73'::uuid,
  '1fbcf3d3-ee1a-5331-823b-d5a4758c0204'::uuid,
  'viewer',
  'active',
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4d346147-042a-5dd3-b151-f9c92a10a450'::uuid,
  '22e870f7-d324-5495-bde4-d717a5ef5b73'::uuid,
  'Prepare figure panels',
  'Tracked work item for Single-cell atlas of treatment response — cohort 3.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6d130bb7-f0b2-5fff-950d-f64cec96cc1c'::uuid,
  '22e870f7-d324-5495-bde4-d717a5ef5b73'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Single-cell atlas of treatment response — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'c59ba863-a764-5b9f-91a1-ad1e0093cb27'::uuid,
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a85863b7-4556-581b-afed-a2df796bbfb1'::uuid,
  '22e870f7-d324-5495-bde4-d717a5ef5b73'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Single-cell atlas of treatment response — cohort 3.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '843a61c1-ff56-52bd-b7ff-edcd4f30be03'::uuid,
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8a98e4bd-686b-5fc8-bc04-abfd40b718eb'::uuid,
  '22e870f7-d324-5495-bde4-d717a5ef5b73'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Single-cell atlas of treatment response — cohort 3.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '862f205c-c86e-5674-b9a7-a6d3756eca94'::uuid,
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '54534438-d197-5c60-b6c2-dcd2d4344921'::uuid,
  '22e870f7-d324-5495-bde4-d717a5ef5b73'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Single-cell atlas of treatment response — cohort 3.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '900a2d77-a10d-5ba0-95fc-fe4be7e250a4'::uuid,
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '45dcdede-36b3-562a-8cef-f450ce885f35'::uuid,
  '22e870f7-d324-5495-bde4-d717a5ef5b73'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Single-cell atlas of treatment response — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '67f6dfe8-0447-57a4-92f8-94fc53ee9c7c'::uuid,
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '60e2de7b-1a45-58a2-ae21-a8d33500e375'::uuid,
  '22e870f7-d324-5495-bde4-d717a5ef5b73'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Single-cell atlas of treatment response — cohort 3.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid,
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd5b7644e-7e07-56af-8aef-67429d1672f9'::uuid,
  '22e870f7-d324-5495-bde4-d717a5ef5b73'::uuid,
  'Update project README (3)',
  'Tracked work item for Single-cell atlas of treatment response — cohort 3.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '1fbcf3d3-ee1a-5331-823b-d5a4758c0204'::uuid,
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5fd25793-5cbf-592d-8fb4-7e04e3d850f7'::uuid,
  '22e870f7-d324-5495-bde4-d717a5ef5b73'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  true,
  'planning',
  ARRAY['genomics','RNA-seq']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ce032b6b-05ed-5f30-b809-355bfaab37c9'::uuid,
  '22e870f7-d324-5495-bde4-d717a5ef5b73'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'c59ba863-a764-5b9f-91a1-ad1e0093cb27'::uuid,
  'c59ba863-a764-5b9f-91a1-ad1e0093cb27'::uuid,
  true,
  'analysis',
  ARRAY['genomics','RNA-seq']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f2d2527a-043e-59da-a3fc-aeb891434e30'::uuid,
  '22e870f7-d324-5495-bde4-d717a5ef5b73'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '843a61c1-ff56-52bd-b7ff-edcd4f30be03'::uuid,
  '843a61c1-ff56-52bd-b7ff-edcd4f30be03'::uuid,
  true,
  'writing',
  ARRAY['genomics','RNA-seq']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0b6d45e5-b2da-5c6d-abec-ac00ad007bae'::uuid,
  '22e870f7-d324-5495-bde4-d717a5ef5b73'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '862f205c-c86e-5674-b9a7-a6d3756eca94'::uuid,
  '862f205c-c86e-5674-b9a7-a6d3756eca94'::uuid,
  true,
  'ops',
  ARRAY['genomics','RNA-seq']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '790e361d-97ef-5648-b9fc-ccc6f6e02061'::uuid,
  'Urban heat mitigation with satellite ML — cohort 3',
  'Urban heat mitigation with satellite ML is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around remote sensing, cities, ML. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  ARRAY['remote sensing','cities','ML']::text[],
  'active',
  'Climate Science',
  ARRAY['Remote sensing','Python','GIS']::text[],
  'local',
  'medium_term',
  9,
  true,
  'Melbourne, AU',
  now() - interval '43 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '56265598-4bd9-51b3-94b7-39299187e5ca'::uuid,
  '790e361d-97ef-5648-b9fc-ccc6f6e02061'::uuid,
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  'owner',
  'active',
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '24fae2a4-de6a-5dd5-b6da-5bf9786271be'::uuid,
  '790e361d-97ef-5648-b9fc-ccc6f6e02061'::uuid,
  '45a992e8-a55a-5fd8-983f-0eb444fd41ce'::uuid,
  'editor',
  'active',
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'cf25a0c8-0664-53bd-8ddc-b8b384275387'::uuid,
  '790e361d-97ef-5648-b9fc-ccc6f6e02061'::uuid,
  '09c666a4-3bb7-5163-8075-029e573c454d'::uuid,
  'viewer',
  'active',
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a79fef4f-e6f7-5050-a829-67a2225cf458'::uuid,
  '790e361d-97ef-5648-b9fc-ccc6f6e02061'::uuid,
  '3a01616f-3f3d-5774-a21e-3c0e5c68b450'::uuid,
  'viewer',
  'active',
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1f65362d-e0a8-57c7-83a2-b479f3f9f95d'::uuid,
  '790e361d-97ef-5648-b9fc-ccc6f6e02061'::uuid,
  'fb2d5ae5-7a9f-5875-9562-025ba2ec14d4'::uuid,
  'viewer',
  'active',
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5d4fd2da-dd04-52c6-a853-485179c3a034'::uuid,
  '790e361d-97ef-5648-b9fc-ccc6f6e02061'::uuid,
  '0a84f6cc-24db-56ca-b075-cb47c6b6a9fc'::uuid,
  'viewer',
  'active',
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '28ab8727-047c-574b-811b-7e5096ac30bb'::uuid,
  '790e361d-97ef-5648-b9fc-ccc6f6e02061'::uuid,
  '897b4b33-e19f-51ad-89c2-0e185b508078'::uuid,
  'viewer',
  'active',
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c5a4596e-1caa-504a-93a8-dab2ba4e1723'::uuid,
  '790e361d-97ef-5648-b9fc-ccc6f6e02061'::uuid,
  'd0e2a40d-5b64-5786-b76e-01a152857c03'::uuid,
  'viewer',
  'active',
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3a900540-dcf5-54aa-8704-e127fce0cfbb'::uuid,
  '790e361d-97ef-5648-b9fc-ccc6f6e02061'::uuid,
  '43986880-ffc8-55bc-a66c-5b43a562d73d'::uuid,
  'viewer',
  'active',
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '08704411-a808-5192-a1fc-de4025b4e1a1'::uuid,
  '790e361d-97ef-5648-b9fc-ccc6f6e02061'::uuid,
  'Prepare figure panels',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 3.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b492f905-96bb-5a44-81e5-4b0dd4afaecb'::uuid,
  '790e361d-97ef-5648-b9fc-ccc6f6e02061'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '45a992e8-a55a-5fd8-983f-0eb444fd41ce'::uuid,
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '21373dee-39ca-5f73-b496-c29424b2f7bd'::uuid,
  '790e361d-97ef-5648-b9fc-ccc6f6e02061'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 3.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '09c666a4-3bb7-5163-8075-029e573c454d'::uuid,
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2bb60988-cb8b-52e4-879e-e56945c1ce17'::uuid,
  '790e361d-97ef-5648-b9fc-ccc6f6e02061'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 3.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '3a01616f-3f3d-5774-a21e-3c0e5c68b450'::uuid,
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b3b10f43-0375-57b0-be39-6c316042d455'::uuid,
  '790e361d-97ef-5648-b9fc-ccc6f6e02061'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 3.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'fb2d5ae5-7a9f-5875-9562-025ba2ec14d4'::uuid,
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '75d664e9-f19c-5885-a02c-bfc509294cfe'::uuid,
  '790e361d-97ef-5648-b9fc-ccc6f6e02061'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '0a84f6cc-24db-56ca-b075-cb47c6b6a9fc'::uuid,
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b749af77-d62f-54e7-97ba-bc7073c3f5d3'::uuid,
  '790e361d-97ef-5648-b9fc-ccc6f6e02061'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 3.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '897b4b33-e19f-51ad-89c2-0e185b508078'::uuid,
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9c3487a5-b675-5cda-a085-0bdab6afc85f'::uuid,
  '790e361d-97ef-5648-b9fc-ccc6f6e02061'::uuid,
  'Update project README (3)',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 3.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'd0e2a40d-5b64-5786-b76e-01a152857c03'::uuid,
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a22c72ba-00d0-5735-b6e2-1aa620c322b8'::uuid,
  '790e361d-97ef-5648-b9fc-ccc6f6e02061'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid,
  true,
  'planning',
  ARRAY['remote sensing','cities']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b6fe067d-a0df-5a12-9224-3101a490a45c'::uuid,
  '790e361d-97ef-5648-b9fc-ccc6f6e02061'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '45a992e8-a55a-5fd8-983f-0eb444fd41ce'::uuid,
  '45a992e8-a55a-5fd8-983f-0eb444fd41ce'::uuid,
  true,
  'analysis',
  ARRAY['remote sensing','cities']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '99ef6c48-2fd6-5257-8ded-cc35dfc0251e'::uuid,
  '790e361d-97ef-5648-b9fc-ccc6f6e02061'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '09c666a4-3bb7-5163-8075-029e573c454d'::uuid,
  '09c666a4-3bb7-5163-8075-029e573c454d'::uuid,
  true,
  'writing',
  ARRAY['remote sensing','cities']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'cc6db0f8-9415-5d55-b66e-a2f550dff7c0'::uuid,
  '790e361d-97ef-5648-b9fc-ccc6f6e02061'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '3a01616f-3f3d-5774-a21e-3c0e5c68b450'::uuid,
  '3a01616f-3f3d-5774-a21e-3c0e5c68b450'::uuid,
  true,
  'ops',
  ARRAY['remote sensing','cities']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'e4dd2529-790b-564e-a8db-870cdc0f674c'::uuid,
  'High-throughput electrolyte screening — cohort 3',
  'High-throughput electrolyte screening is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around batteries, automation, DFT. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  ARRAY['batteries','automation','DFT']::text[],
  'active',
  'Materials Science',
  ARRAY['DFT','Lab automation','Characterization']::text[],
  'remote',
  'long_term',
  10,
  true,
  'Cambridge, MA',
  now() - interval '43 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ceb29dde-c31c-5bcb-b6c0-5e986a2686f9'::uuid,
  'e4dd2529-790b-564e-a8db-870cdc0f674c'::uuid,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  'owner',
  'active',
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '370d5596-7a3e-514e-b03f-012962e85813'::uuid,
  'e4dd2529-790b-564e-a8db-870cdc0f674c'::uuid,
  '8539a32a-815b-5a83-a51e-679ee612278d'::uuid,
  'editor',
  'active',
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'bb9e4aa3-3fb7-56fa-830e-cc4a58b09d15'::uuid,
  'e4dd2529-790b-564e-a8db-870cdc0f674c'::uuid,
  '99fd2128-2116-5b9d-af88-638b0bfa8f89'::uuid,
  'viewer',
  'active',
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e2664857-a63f-58bc-88c6-a7b024e4fe97'::uuid,
  'e4dd2529-790b-564e-a8db-870cdc0f674c'::uuid,
  'a4e70726-d19d-5c33-89d1-0754ffd062b1'::uuid,
  'viewer',
  'active',
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e71e0e3a-2a39-58d1-8f1d-7351ed3dabab'::uuid,
  'e4dd2529-790b-564e-a8db-870cdc0f674c'::uuid,
  'Prepare figure panels',
  'Tracked work item for High-throughput electrolyte screening — cohort 3.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2ffd1c4d-af83-509b-9a74-8f4935d8ff90'::uuid,
  'e4dd2529-790b-564e-a8db-870cdc0f674c'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for High-throughput electrolyte screening — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '8539a32a-815b-5a83-a51e-679ee612278d'::uuid,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '74da9335-7137-5979-adc6-13aa9c03a2aa'::uuid,
  'e4dd2529-790b-564e-a8db-870cdc0f674c'::uuid,
  'Upload supplementary tables',
  'Tracked work item for High-throughput electrolyte screening — cohort 3.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '99fd2128-2116-5b9d-af88-638b0bfa8f89'::uuid,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2c2759ac-b24d-5aab-8365-ea660bcff9b6'::uuid,
  'e4dd2529-790b-564e-a8db-870cdc0f674c'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for High-throughput electrolyte screening — cohort 3.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'a4e70726-d19d-5c33-89d1-0754ffd062b1'::uuid,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8f596f4b-1124-52ab-b182-21ce15eaf353'::uuid,
  'e4dd2529-790b-564e-a8db-870cdc0f674c'::uuid,
  'Validate QC pipeline',
  'Tracked work item for High-throughput electrolyte screening — cohort 3.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bebf4142-0497-570c-a280-edc4aefb0edf'::uuid,
  'e4dd2529-790b-564e-a8db-870cdc0f674c'::uuid,
  'Collect pilot feedback',
  'Tracked work item for High-throughput electrolyte screening — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '8539a32a-815b-5a83-a51e-679ee612278d'::uuid,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5db9d886-de7d-598f-ac07-b2bae9179f65'::uuid,
  'e4dd2529-790b-564e-a8db-870cdc0f674c'::uuid,
  'Submit internal review (2)',
  'Tracked work item for High-throughput electrolyte screening — cohort 3.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '99fd2128-2116-5b9d-af88-638b0bfa8f89'::uuid,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f153d1bf-4424-5a51-8cdd-f27fa5382e0e'::uuid,
  'e4dd2529-790b-564e-a8db-870cdc0f674c'::uuid,
  'Update project README (3)',
  'Tracked work item for High-throughput electrolyte screening — cohort 3.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'a4e70726-d19d-5c33-89d1-0754ffd062b1'::uuid,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '9018e27f-f45b-583b-a2a2-71b3f7e60f30'::uuid,
  'e4dd2529-790b-564e-a8db-870cdc0f674c'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  true,
  'planning',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'db639ab7-d272-58fb-a7f8-f0250ed8f610'::uuid,
  'e4dd2529-790b-564e-a8db-870cdc0f674c'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '8539a32a-815b-5a83-a51e-679ee612278d'::uuid,
  '8539a32a-815b-5a83-a51e-679ee612278d'::uuid,
  true,
  'analysis',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'fc16b42a-948d-5629-83cb-c168e33b8a57'::uuid,
  'e4dd2529-790b-564e-a8db-870cdc0f674c'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '99fd2128-2116-5b9d-af88-638b0bfa8f89'::uuid,
  '99fd2128-2116-5b9d-af88-638b0bfa8f89'::uuid,
  true,
  'writing',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '47979317-56ec-51b7-8ddf-783ef3ebc461'::uuid,
  'e4dd2529-790b-564e-a8db-870cdc0f674c'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'a4e70726-d19d-5c33-89d1-0754ffd062b1'::uuid,
  'a4e70726-d19d-5c33-89d1-0754ffd062b1'::uuid,
  true,
  'ops',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;