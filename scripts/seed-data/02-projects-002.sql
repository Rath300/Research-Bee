-- projects 40..59

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


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  'Accessible clinical note summarization — cohort 3',
  'Accessible clinical note summarization is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around NLP, healthcare, UX. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  ARRAY['NLP','healthcare','UX']::text[],
  'active',
  'Human-Computer Interaction',
  ARRAY['User research','Prototyping','Statistics']::text[],
  'hybrid',
  'long_term',
  11,
  true,
  'Palo Alto, CA',
  now() - interval '43 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f54feec5-1f75-564e-81b8-5011727abe8b'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  'owner',
  'active',
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '19dbde20-fd72-53b0-8fda-4defbb1f4191'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  '863c8215-2c2a-52a0-9b29-6e4221066e37'::uuid,
  'editor',
  'active',
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'be7fddeb-db7d-5b37-8990-817ed58f1e5a'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  '57cd3ca8-b788-5118-80ff-de66e23f013c'::uuid,
  'viewer',
  'active',
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'cc273686-3c91-575c-b621-2908507e2948'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  '69277a59-ad8b-5c35-96d3-fd6fd63ad891'::uuid,
  'viewer',
  'active',
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '92477c45-c4fa-51ef-8c94-a78879ada0da'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  'e58b467c-3b92-5318-aac0-d48d03143307'::uuid,
  'viewer',
  'active',
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8e5a3da2-9e52-5dd4-82e6-a06dfd327ce6'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  'Prepare figure panels',
  'Tracked work item for Accessible clinical note summarization — cohort 3.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4c622df7-9abc-55fc-834f-b3cfcfecf082'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Accessible clinical note summarization — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '863c8215-2c2a-52a0-9b29-6e4221066e37'::uuid,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '83a5a6a6-7e95-5030-98a7-e91501de0820'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Accessible clinical note summarization — cohort 3.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '57cd3ca8-b788-5118-80ff-de66e23f013c'::uuid,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '649d78df-b4fa-5c95-bdfd-b51fd556cb86'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Accessible clinical note summarization — cohort 3.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '69277a59-ad8b-5c35-96d3-fd6fd63ad891'::uuid,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c4c88e99-d75d-5225-8c88-35fede602cc7'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Accessible clinical note summarization — cohort 3.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'e58b467c-3b92-5318-aac0-d48d03143307'::uuid,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ecdb391c-3bc8-56be-babb-695a9b5e6ea2'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Accessible clinical note summarization — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '75408a35-e10f-5527-b18b-73ce77f5e2a2'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Accessible clinical note summarization — cohort 3.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '863c8215-2c2a-52a0-9b29-6e4221066e37'::uuid,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '85ecf385-dad6-54b2-8829-798f6b12c2fa'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  'Update project README (3)',
  'Tracked work item for Accessible clinical note summarization — cohort 3.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '57cd3ca8-b788-5118-80ff-de66e23f013c'::uuid,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '737fc7fc-a377-5d06-b0e9-17d735feeb3c'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  true,
  'planning',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2321f9ad-26bb-595f-85c2-aa479d5b7ffe'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '863c8215-2c2a-52a0-9b29-6e4221066e37'::uuid,
  '863c8215-2c2a-52a0-9b29-6e4221066e37'::uuid,
  true,
  'analysis',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'af74ca20-6031-581c-b223-f6ced9adf16d'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '57cd3ca8-b788-5118-80ff-de66e23f013c'::uuid,
  '57cd3ca8-b788-5118-80ff-de66e23f013c'::uuid,
  true,
  'writing',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '9cf1bade-b85e-546e-b6d9-6383b89b414c'::uuid,
  '9db9c0a3-c666-5d3a-98a1-0f3605c4f615'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '69277a59-ad8b-5c35-96d3-fd6fd63ad891'::uuid,
  '69277a59-ad8b-5c35-96d3-fd6fd63ad891'::uuid,
  true,
  'ops',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'Closed-loop stimulation for memory — cohort 3',
  'Closed-loop stimulation for memory is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around neurotech, memory, EEG. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  ARRAY['neurotech','memory','EEG']::text[],
  'active',
  'Neuroscience',
  ARRAY['fMRI','Electrophysiology','Python']::text[],
  'local',
  'short_term',
  12,
  true,
  'Berkeley, CA',
  now() - interval '43 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e3d14225-3d7d-5068-b4f9-8e3ce1065b40'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  'owner',
  'active',
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '149d8b39-f6f3-5169-952b-e7757c618699'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'c341f630-65f8-57bd-9566-a7e4bc352746'::uuid,
  'editor',
  'active',
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f26b6c71-bc31-5902-baa3-2f6a21844b44'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'a018203c-46b7-508f-95c6-b6c42580c16c'::uuid,
  'viewer',
  'active',
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4b88a3aa-5824-575f-b5cd-61452607b928'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'be55f1ea-eccd-59f9-8e54-46ada091ac8d'::uuid,
  'viewer',
  'active',
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '48ececfe-86bb-58ff-83ef-571cf318c56a'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  '0ffcb638-a6ff-52c5-9329-92243f0d18c9'::uuid,
  'viewer',
  'active',
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c60308a3-6ed9-5913-a564-093189f12ab0'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'c78b2092-0056-5d5f-a59a-0408b3bbf197'::uuid,
  'viewer',
  'active',
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '873adc6b-1798-58cc-84ad-a024572ab37c'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'Prepare figure panels',
  'Tracked work item for Closed-loop stimulation for memory — cohort 3.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e79e79ab-619d-59c7-b075-5cff7d748c68'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Closed-loop stimulation for memory — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'c341f630-65f8-57bd-9566-a7e4bc352746'::uuid,
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'af6ec8b7-ce1c-541d-96b7-e5b77111ec0d'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Closed-loop stimulation for memory — cohort 3.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'a018203c-46b7-508f-95c6-b6c42580c16c'::uuid,
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '75bdebc9-c87a-5de9-9ef4-df1e1827a760'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Closed-loop stimulation for memory — cohort 3.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'be55f1ea-eccd-59f9-8e54-46ada091ac8d'::uuid,
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a8bd946c-0f5a-5014-abc6-c1cadd9e2632'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Closed-loop stimulation for memory — cohort 3.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '0ffcb638-a6ff-52c5-9329-92243f0d18c9'::uuid,
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4a9881a8-69a6-5eeb-ac46-868efd2a0dab'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Closed-loop stimulation for memory — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'c78b2092-0056-5d5f-a59a-0408b3bbf197'::uuid,
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9faa10cd-b4b0-593c-81b2-73cc94c961e0'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Closed-loop stimulation for memory — cohort 3.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9637aca2-dec3-59ca-ba3e-e090e3e94c5d'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'Update project README (3)',
  'Tracked work item for Closed-loop stimulation for memory — cohort 3.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'c341f630-65f8-57bd-9566-a7e4bc352746'::uuid,
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a23d637b-facf-5dbd-80fc-e6d9b377883e'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  'cbc72d17-40df-503c-9380-64860d555aeb'::uuid,
  true,
  'planning',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1014ddd6-7d49-53e3-9140-11f4578c98e6'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'c341f630-65f8-57bd-9566-a7e4bc352746'::uuid,
  'c341f630-65f8-57bd-9566-a7e4bc352746'::uuid,
  true,
  'analysis',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd6e5c7fc-0e2f-518c-b9cf-ebaf1b5a1935'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'a018203c-46b7-508f-95c6-b6c42580c16c'::uuid,
  'a018203c-46b7-508f-95c6-b6c42580c16c'::uuid,
  true,
  'writing',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5fbbe87e-befe-5be1-8bcd-b28269c06af1'::uuid,
  'f6303786-53e3-56be-bbe1-bd1206d6047d'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'be55f1ea-eccd-59f9-8e54-46ada091ac8d'::uuid,
  'be55f1ea-eccd-59f9-8e54-46ada091ac8d'::uuid,
  true,
  'ops',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  'Community vaccine confidence study — cohort 3',
  'Community vaccine confidence study is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around surveys, equity, vaccines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  ARRAY['surveys','equity','vaccines']::text[],
  'planning',
  'Public Health',
  ARRAY['Epidemiology','R','Survey design']::text[],
  'remote',
  'medium_term',
  13,
  true,
  'Boston, MA',
  now() - interval '43 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd9e413f8-be57-506f-bfa1-54a66223e373'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  'owner',
  'active',
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'eb043932-d871-537f-b276-c73b69473289'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  'd596304e-1fe2-5752-ade9-1ab0dd9683a6'::uuid,
  'editor',
  'active',
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e83651de-b7de-5ab8-afd2-5ea18a705ef4'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  'fdc8933e-6690-5207-97f2-2a058742d9d3'::uuid,
  'viewer',
  'active',
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6758696c-00f4-5f14-90d9-f41f52a27c4a'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  '6967920a-06a3-5d3b-9991-777798ca8208'::uuid,
  'viewer',
  'active',
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f327848d-4fc7-5f1c-b0d2-c6ae1199401f'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  '47cf10ee-a8c2-514f-b576-5ffd0d0d0b0c'::uuid,
  'viewer',
  'active',
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0bfae4e0-4f59-5e5e-ae92-50539ba7c734'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  '17e09f15-8bff-59bc-a0d2-6ddba4ef2622'::uuid,
  'viewer',
  'active',
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c48d8c1e-2c4b-5ed4-a95e-b25b49e008d9'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  '02cfbdcd-95d0-5052-9e37-40b137ae773f'::uuid,
  'viewer',
  'active',
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3b1aee16-bf2e-56d4-98fa-22d556364f05'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  'Prepare figure panels',
  'Tracked work item for Community vaccine confidence study — cohort 3.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8b017740-d67b-5841-be18-183d99105f1f'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Community vaccine confidence study — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'd596304e-1fe2-5752-ade9-1ab0dd9683a6'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f52de48e-4d91-55b7-beed-d5d5d5c95748'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Community vaccine confidence study — cohort 3.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'fdc8933e-6690-5207-97f2-2a058742d9d3'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0e4824b5-1a6d-5808-82f5-d2f45d9e835c'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Community vaccine confidence study — cohort 3.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '6967920a-06a3-5d3b-9991-777798ca8208'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c2109a63-5109-5c6f-a94d-a9c3f31c3b08'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Community vaccine confidence study — cohort 3.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '47cf10ee-a8c2-514f-b576-5ffd0d0d0b0c'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '14668d46-f343-5248-ab56-658790dcdc78'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Community vaccine confidence study — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '17e09f15-8bff-59bc-a0d2-6ddba4ef2622'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6ce514a0-cfa8-51ee-8dec-32807947dbe3'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Community vaccine confidence study — cohort 3.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '02cfbdcd-95d0-5052-9e37-40b137ae773f'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '03cb539c-9a86-5b4c-8f58-ebf5210625d4'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  'Update project README (3)',
  'Tracked work item for Community vaccine confidence study — cohort 3.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c598358a-d394-5cf2-8040-6a90273e922b'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  true,
  'planning',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e8142c0c-87c0-5a05-b772-2895506c7908'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'd596304e-1fe2-5752-ade9-1ab0dd9683a6'::uuid,
  'd596304e-1fe2-5752-ade9-1ab0dd9683a6'::uuid,
  true,
  'analysis',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6c724154-b5eb-5c35-825f-a88611432a22'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'fdc8933e-6690-5207-97f2-2a058742d9d3'::uuid,
  'fdc8933e-6690-5207-97f2-2a058742d9d3'::uuid,
  true,
  'writing',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0a8223e5-7104-5920-af5d-5bf1e9d0456d'::uuid,
  'b48c2459-03bc-541e-b2a3-017671348be1'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '6967920a-06a3-5d3b-9991-777798ca8208'::uuid,
  '6967920a-06a3-5d3b-9991-777798ca8208'::uuid,
  true,
  'ops',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'Near-term quantum error mitigation — cohort 3',
  'Near-term quantum error mitigation is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around NISQ, algorithms. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  ARRAY['NISQ','algorithms']::text[],
  'active',
  'Quantum Information',
  ARRAY['Qiskit','Linear algebra','Optics']::text[],
  'hybrid',
  'long_term',
  14,
  true,
  'Toronto, ON',
  now() - interval '43 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7b97e502-6ff9-5038-9f39-b67cc7bd388a'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  'owner',
  'active',
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '93ce64c2-158d-507a-9aea-4769cce09bb7'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'fa10485d-6ae3-5acc-afcd-cb141834f70e'::uuid,
  'editor',
  'active',
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '33082d2a-fb58-5847-bd14-b47ddaa17607'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid,
  'viewer',
  'active',
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9d0d86ab-cffc-5a13-8f52-08d6c84bed8d'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid,
  'viewer',
  'active',
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '75a77896-aa9c-5518-83c8-28b8df703b0c'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  '42a644d9-ef02-551e-98fd-86c9547f5344'::uuid,
  'viewer',
  'active',
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1bfbfb01-c7ac-5414-9701-cd0475938b07'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  '857a3bf5-dbaf-5df7-98b0-5661480e2727'::uuid,
  'viewer',
  'active',
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5fa34461-1918-59f7-a5e8-2cc29b21de45'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  '70a561b0-2ce9-5dd8-9d43-5ba67b9cd912'::uuid,
  'viewer',
  'active',
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e6194b8f-e0d3-532f-8fb5-e23e1832ca01'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'd24510ff-2229-5382-93e5-5fcb3fc7f432'::uuid,
  'viewer',
  'active',
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6a4e6183-ce24-5b39-bf59-a6436a9f0408'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'Prepare figure panels',
  'Tracked work item for Near-term quantum error mitigation — cohort 3.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4204d4af-e456-541b-ae10-51ce42f0a688'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Near-term quantum error mitigation — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'fa10485d-6ae3-5acc-afcd-cb141834f70e'::uuid,
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '53d11bfb-1351-5d30-81a4-212b206bf186'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Near-term quantum error mitigation — cohort 3.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid,
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6522079c-6c8d-590a-8219-8c5e1c08454f'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Near-term quantum error mitigation — cohort 3.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid,
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '26ca018d-1af3-5214-b179-efa32809afa0'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Near-term quantum error mitigation — cohort 3.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '42a644d9-ef02-551e-98fd-86c9547f5344'::uuid,
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2eafe026-1b70-51c8-b93c-20b1b1b7d88d'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Near-term quantum error mitigation — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '857a3bf5-dbaf-5df7-98b0-5661480e2727'::uuid,
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0fcf97e4-6973-52fe-9f99-7bc05c091e3a'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Near-term quantum error mitigation — cohort 3.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '70a561b0-2ce9-5dd8-9d43-5ba67b9cd912'::uuid,
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '161cdf1d-96f8-5e78-be05-ca668373509c'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'Update project README (3)',
  'Tracked work item for Near-term quantum error mitigation — cohort 3.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'd24510ff-2229-5382-93e5-5fcb3fc7f432'::uuid,
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b965ad45-d29a-531d-a504-b65e9ed06b0c'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  true,
  'planning',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2f7a6914-66e4-54bf-b937-b7c1a71eace6'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'fa10485d-6ae3-5acc-afcd-cb141834f70e'::uuid,
  'fa10485d-6ae3-5acc-afcd-cb141834f70e'::uuid,
  true,
  'analysis',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '71b062df-dcf1-5c96-a4a2-6053f90a3f24'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid,
  'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid,
  true,
  'writing',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'cf3c690c-fee3-51d6-84b3-3227e254e13c'::uuid,
  'd6b05f97-0a8b-5979-b060-9662e21aceed'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid,
  'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid,
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
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'Robust evaluation for clinical LLMs — cohort 3',
  'Robust evaluation for clinical LLMs is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around LLMs, evaluation, safety. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  ARRAY['LLMs','evaluation','safety']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'local',
  'long_term',
  15,
  true,
  'Zurich, CH',
  now() - interval '43 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f564b9c4-26ee-5efb-866a-086bdbfe85c8'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  'owner',
  'active',
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '56747f47-b001-56d0-b184-9aecf2ef84c7'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  '24503db7-b85d-5a77-b0b4-10e285806d5d'::uuid,
  'editor',
  'active',
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ce5a0128-e1d4-5107-a0e9-3375aa4b3a64'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  '2b24a057-2c43-5e19-9879-bc6d9f866992'::uuid,
  'viewer',
  'active',
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e36257af-3902-5e48-b102-d987b419bf56'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  '99f99166-d723-53d1-97e8-bc6671828d19'::uuid,
  'viewer',
  'active',
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a5f38326-94ee-56ed-b81b-35e05e52b9b5'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  '09cf7b11-ff50-5d6c-840c-5ff524073bc4'::uuid,
  'viewer',
  'active',
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ff0c0d01-9195-5e45-8e64-643d2007f68a'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  '5908f7b4-87da-5e6f-98d9-3a27fad2f7ad'::uuid,
  'viewer',
  'active',
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ea2e9e81-42bf-55ac-8c04-52b4bcc95a86'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  '628a4781-3a09-5aca-bc6a-7ae2fc619371'::uuid,
  'viewer',
  'active',
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '98fe134a-7a43-5cb4-bd29-e77fbc375f4e'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'd6322ca4-5eb1-57e4-998e-3358209a363e'::uuid,
  'viewer',
  'active',
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '097289bb-8e1f-56f2-8843-9e67a6cb4e5d'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'f439b08a-0f7c-50c6-afcb-db2b75ff253a'::uuid,
  'viewer',
  'active',
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b019c099-23fd-5e3a-aa89-fa9e9b6aa913'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'Prepare figure panels',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 3.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '166dc9e1-0963-52e2-a8aa-d3d749716baa'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '24503db7-b85d-5a77-b0b4-10e285806d5d'::uuid,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'dbe75fb2-564a-5866-b02b-05b9e5072d35'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 3.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '2b24a057-2c43-5e19-9879-bc6d9f866992'::uuid,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '75dd9348-ae8a-5ca9-bd73-d71fa3163630'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 3.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '99f99166-d723-53d1-97e8-bc6671828d19'::uuid,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1a43b16e-90e7-5973-9dcd-50779eb73625'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 3.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '09cf7b11-ff50-5d6c-840c-5ff524073bc4'::uuid,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd61928e8-2610-52ad-b82f-81829d912713'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '5908f7b4-87da-5e6f-98d9-3a27fad2f7ad'::uuid,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '503bef0b-34fd-5779-9609-0e09f2fc8944'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 3.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '628a4781-3a09-5aca-bc6a-7ae2fc619371'::uuid,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '92e7b646-e30a-5e96-95d7-5573af52e36b'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'Update project README (3)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 3.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'd6322ca4-5eb1-57e4-998e-3358209a363e'::uuid,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f4fde6c1-f240-53de-93af-74886e4400e9'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  true,
  'planning',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd8099381-eabe-5d85-bf0a-41623f7e2177'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '24503db7-b85d-5a77-b0b4-10e285806d5d'::uuid,
  '24503db7-b85d-5a77-b0b4-10e285806d5d'::uuid,
  true,
  'analysis',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8e0c398a-92b5-5f8b-94fa-807feba7741d'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '2b24a057-2c43-5e19-9879-bc6d9f866992'::uuid,
  '2b24a057-2c43-5e19-9879-bc6d9f866992'::uuid,
  true,
  'writing',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a6ee63a5-ae74-5024-b953-c201bfd62b49'::uuid,
  '0ec1104d-ee5f-5212-bf6b-472b29d567f9'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '99f99166-d723-53d1-97e8-bc6671828d19'::uuid,
  '99f99166-d723-53d1-97e8-bc6671828d19'::uuid,
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
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  'Photoredox catalysis for late-stage edits — cohort 3',
  'Photoredox catalysis for late-stage edits is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around catalysis, synthesis. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  ARRAY['catalysis','synthesis']::text[],
  'active',
  'Chemistry',
  ARRAY['Organic synthesis','Spectroscopy','Cheminformatics']::text[],
  'remote',
  'short_term',
  4,
  true,
  'London, UK',
  now() - interval '43 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6fb80e8f-a3a5-584b-b0e8-f5406e14cb7f'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  'owner',
  'active',
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'aaee101d-f584-533f-ad10-c07281509716'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid,
  'editor',
  'active',
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '99823124-edb9-5d27-b6d0-c053178781da'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  'a1e53141-e2a4-5537-b833-38f04e7a7b38'::uuid,
  'viewer',
  'active',
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b4d64292-b261-5d9e-8b3f-b20da6c0c3ac'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  '06f62af9-52f4-52fc-9257-21fc2d7258ca'::uuid,
  'viewer',
  'active',
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '80e31ce1-2947-5f57-a1d9-03fbcc590103'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  'Prepare figure panels',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 3.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '55fbf32e-86dc-546a-a2a4-323b3f416c15'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b487cccf-27eb-5c86-b53b-c4606015330d'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 3.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'a1e53141-e2a4-5537-b833-38f04e7a7b38'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5ce01082-4032-5d08-91aa-11d3a2085018'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 3.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '06f62af9-52f4-52fc-9257-21fc2d7258ca'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0b3be600-f3e2-57e0-9075-fd01dbf343ef'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 3.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'cd353840-e18b-534c-bc93-9cae14e35244'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '39864eb4-67bb-55a2-87a5-a7f99a2f884f'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 3.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'a1e53141-e2a4-5537-b833-38f04e7a7b38'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9b5bb8c6-f20b-5d31-a483-46bd481e45ec'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  'Update project README (3)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 3.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '06f62af9-52f4-52fc-9257-21fc2d7258ca'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '46d65e7e-644f-557e-9520-4b37f0408982'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  true,
  'planning',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ef9abf59-d887-5734-b9b7-a8b3db68ddee'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid,
  '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid,
  true,
  'analysis',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '950b16d8-9173-5308-9b02-7d949763c6a4'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'a1e53141-e2a4-5537-b833-38f04e7a7b38'::uuid,
  'a1e53141-e2a4-5537-b833-38f04e7a7b38'::uuid,
  true,
  'writing',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd1d31f8a-2555-5a85-8091-9833fac2bb03'::uuid,
  'ef0f6363-5ba8-599c-bbfb-088c3bfae236'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '06f62af9-52f4-52fc-9257-21fc2d7258ca'::uuid,
  '06f62af9-52f4-52fc-9257-21fc2d7258ca'::uuid,
  true,
  'ops',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '043d7c71-a035-5200-b390-0816dd5858ff'::uuid,
  'STEM identity in first-gen undergraduates — cohort 3',
  'STEM identity in first-gen undergraduates is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around equity, mixed methods. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  ARRAY['equity','mixed methods']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'hybrid',
  'medium_term',
  5,
  true,
  'Seattle, WA',
  now() - interval '43 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '35be00f3-01e5-5395-9eed-5b83b398fd7b'::uuid,
  '043d7c71-a035-5200-b390-0816dd5858ff'::uuid,
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  'owner',
  'active',
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5172ed7a-aae0-5a99-bd91-23d3c0aec512'::uuid,
  '043d7c71-a035-5200-b390-0816dd5858ff'::uuid,
  '7af7f811-5976-5178-bda2-880a5acb1093'::uuid,
  'editor',
  'active',
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a43bcd6d-205e-58b5-b8ab-60b225cb4d95'::uuid,
  '043d7c71-a035-5200-b390-0816dd5858ff'::uuid,
  '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb'::uuid,
  'viewer',
  'active',
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9a9f27fb-3a27-5986-9e84-8a317731d5e4'::uuid,
  '043d7c71-a035-5200-b390-0816dd5858ff'::uuid,
  'e77bd75c-1999-5e56-92a9-44fe5a7f4f21'::uuid,
  'viewer',
  'active',
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '88127ecd-741f-5cf8-b2f8-59952c11399c'::uuid,
  '043d7c71-a035-5200-b390-0816dd5858ff'::uuid,
  '68b3764d-cec2-57d1-bc8b-48f263aaed8c'::uuid,
  'viewer',
  'active',
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd99d4677-a4e8-5737-8ccc-9b771c8c4cb4'::uuid,
  '043d7c71-a035-5200-b390-0816dd5858ff'::uuid,
  'Prepare figure panels',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 3.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3095c1a7-d724-5a15-a5fb-6c2e7147cc8a'::uuid,
  '043d7c71-a035-5200-b390-0816dd5858ff'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '7af7f811-5976-5178-bda2-880a5acb1093'::uuid,
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4fd04edc-c202-523f-9236-b1965226e936'::uuid,
  '043d7c71-a035-5200-b390-0816dd5858ff'::uuid,
  'Upload supplementary tables',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 3.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb'::uuid,
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3dbb0d7a-3ba3-506d-aed1-fde5f8b98797'::uuid,
  '043d7c71-a035-5200-b390-0816dd5858ff'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 3.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'e77bd75c-1999-5e56-92a9-44fe5a7f4f21'::uuid,
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7c22b430-b77b-5a96-9994-4e9b587c6637'::uuid,
  '043d7c71-a035-5200-b390-0816dd5858ff'::uuid,
  'Validate QC pipeline',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 3.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '68b3764d-cec2-57d1-bc8b-48f263aaed8c'::uuid,
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd445f34b-f230-527b-a2bc-6bcbfecd7e95'::uuid,
  '043d7c71-a035-5200-b390-0816dd5858ff'::uuid,
  'Collect pilot feedback',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b5921df6-7916-5091-9652-18c64ece78b3'::uuid,
  '043d7c71-a035-5200-b390-0816dd5858ff'::uuid,
  'Submit internal review (2)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 3.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '7af7f811-5976-5178-bda2-880a5acb1093'::uuid,
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ac7206bf-2a62-5b06-92e0-6d42e0766ec4'::uuid,
  '043d7c71-a035-5200-b390-0816dd5858ff'::uuid,
  'Update project README (3)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 3.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb'::uuid,
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3865a9a7-21b6-57d6-8774-55a12c796d80'::uuid,
  '043d7c71-a035-5200-b390-0816dd5858ff'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  true,
  'planning',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ee557cb0-67a6-59a1-ad66-e7f18af44efa'::uuid,
  '043d7c71-a035-5200-b390-0816dd5858ff'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '7af7f811-5976-5178-bda2-880a5acb1093'::uuid,
  '7af7f811-5976-5178-bda2-880a5acb1093'::uuid,
  true,
  'analysis',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '47e18a3e-0082-504d-9feb-e5b477415c04'::uuid,
  '043d7c71-a035-5200-b390-0816dd5858ff'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb'::uuid,
  '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb'::uuid,
  true,
  'writing',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '57bd7581-0fd7-57b8-b24d-ee537b6554d1'::uuid,
  '043d7c71-a035-5200-b390-0816dd5858ff'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'e77bd75c-1999-5e56-92a9-44fe5a7f4f21'::uuid,
  'e77bd75c-1999-5e56-92a9-44fe5a7f4f21'::uuid,
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
  '994d9835-e6e8-5c25-b3a0-3c8ded88371b'::uuid,
  'Dexterous packing under uncertainty — cohort 3',
  'Dexterous packing under uncertainty is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around manipulation, sim2real. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  ARRAY['manipulation','sim2real']::text[],
  'planning',
  'Robotics',
  ARRAY['ROS','Control systems','C++']::text[],
  'local',
  'long_term',
  6,
  true,
  'Pittsburgh, PA',
  now() - interval '43 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9124aecb-87b6-5499-9a43-e160d8bb3e0d'::uuid,
  '994d9835-e6e8-5c25-b3a0-3c8ded88371b'::uuid,
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  'owner',
  'active',
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8a5c7e70-9744-5ad9-ace4-8d432ff8cc36'::uuid,
  '994d9835-e6e8-5c25-b3a0-3c8ded88371b'::uuid,
  '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid,
  'editor',
  'active',
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'abb48992-a689-50bc-a441-e27dc3fedb5b'::uuid,
  '994d9835-e6e8-5c25-b3a0-3c8ded88371b'::uuid,
  '188d7ba6-25d8-5a8a-a635-f07c138073d7'::uuid,
  'viewer',
  'active',
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2c14f9b1-9da4-56ce-8b82-581676e358b1'::uuid,
  '994d9835-e6e8-5c25-b3a0-3c8ded88371b'::uuid,
  'a0817194-368d-5771-976a-7836d36b620b'::uuid,
  'viewer',
  'active',
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b3593e0c-850f-52f6-aa4f-e753d515303e'::uuid,
  '994d9835-e6e8-5c25-b3a0-3c8ded88371b'::uuid,
  '011fcd13-5185-5206-809d-115892a24501'::uuid,
  'viewer',
  'active',
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2974bb53-7d16-5c4e-bc42-badc68a1de3e'::uuid,
  '994d9835-e6e8-5c25-b3a0-3c8ded88371b'::uuid,
  'd679fe8c-5b10-5615-a406-180c8b9dedf8'::uuid,
  'viewer',
  'active',
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '936b8335-5899-5cba-9a3e-928210515b61'::uuid,
  '994d9835-e6e8-5c25-b3a0-3c8ded88371b'::uuid,
  'Prepare figure panels',
  'Tracked work item for Dexterous packing under uncertainty — cohort 3.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2e9061b4-7831-5257-a33c-b5916a2ac928'::uuid,
  '994d9835-e6e8-5c25-b3a0-3c8ded88371b'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Dexterous packing under uncertainty — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid,
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2f4c1f5f-514b-5dd2-8d52-f9b3aab492e1'::uuid,
  '994d9835-e6e8-5c25-b3a0-3c8ded88371b'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Dexterous packing under uncertainty — cohort 3.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '188d7ba6-25d8-5a8a-a635-f07c138073d7'::uuid,
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'acd76226-d280-580c-ad58-c6b4a0342689'::uuid,
  '994d9835-e6e8-5c25-b3a0-3c8ded88371b'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Dexterous packing under uncertainty — cohort 3.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'a0817194-368d-5771-976a-7836d36b620b'::uuid,
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5b82233b-3d19-51f0-9beb-3a218ec0944c'::uuid,
  '994d9835-e6e8-5c25-b3a0-3c8ded88371b'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Dexterous packing under uncertainty — cohort 3.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '011fcd13-5185-5206-809d-115892a24501'::uuid,
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5c263b30-1255-5631-b219-f87da20c5817'::uuid,
  '994d9835-e6e8-5c25-b3a0-3c8ded88371b'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Dexterous packing under uncertainty — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'd679fe8c-5b10-5615-a406-180c8b9dedf8'::uuid,
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '49e21d6e-6c37-539a-af4d-fe2b83d1c77e'::uuid,
  '994d9835-e6e8-5c25-b3a0-3c8ded88371b'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 3.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3696d7cd-3ddf-5ebc-9744-d85924c25f0c'::uuid,
  '994d9835-e6e8-5c25-b3a0-3c8ded88371b'::uuid,
  'Update project README (3)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 3.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid,
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5e11debf-27c7-5f22-807d-2a69ea63c838'::uuid,
  '994d9835-e6e8-5c25-b3a0-3c8ded88371b'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  true,
  'planning',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e614593a-f873-5025-bdf7-79577e2d1471'::uuid,
  '994d9835-e6e8-5c25-b3a0-3c8ded88371b'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid,
  '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid,
  true,
  'analysis',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1f847277-5e37-5f09-9be4-e36b5f7d70cf'::uuid,
  '994d9835-e6e8-5c25-b3a0-3c8ded88371b'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '188d7ba6-25d8-5a8a-a635-f07c138073d7'::uuid,
  '188d7ba6-25d8-5a8a-a635-f07c138073d7'::uuid,
  true,
  'writing',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'aa07034b-8342-5eba-8fdb-3b27280b2dee'::uuid,
  '994d9835-e6e8-5c25-b3a0-3c8ded88371b'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'a0817194-368d-5771-976a-7836d36b620b'::uuid,
  'a0817194-368d-5771-976a-7836d36b620b'::uuid,
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
  '445bc8c7-a029-546c-af22-ffc8904ad0e0'::uuid,
  'Transit spectroscopy pipeline for JWST — cohort 3',
  'Transit spectroscopy pipeline for JWST is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around exoplanets, pipelines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  ARRAY['exoplanets','pipelines']::text[],
  'active',
  'Astrophysics',
  ARRAY['Data pipelines','Python','Bayesian inference']::text[],
  'remote',
  'long_term',
  7,
  true,
  'Atlanta, GA',
  now() - interval '43 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2eed6982-4747-5b62-8450-f133ba507eae'::uuid,
  '445bc8c7-a029-546c-af22-ffc8904ad0e0'::uuid,
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  'owner',
  'active',
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0852a8ad-eac1-5fad-9b1d-6c527d54f214'::uuid,
  '445bc8c7-a029-546c-af22-ffc8904ad0e0'::uuid,
  '4ded9d2c-411a-5884-a2f1-9b3d21d137ed'::uuid,
  'editor',
  'active',
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '58821065-db72-5171-83d7-82284e149e62'::uuid,
  '445bc8c7-a029-546c-af22-ffc8904ad0e0'::uuid,
  'ff9dc679-2821-5549-bfdb-f04d06a240a7'::uuid,
  'viewer',
  'active',
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'afb83a06-d164-5d4c-89f9-08b5b3110022'::uuid,
  '445bc8c7-a029-546c-af22-ffc8904ad0e0'::uuid,
  '6717c5bd-123f-57c3-8997-0b9b0977d545'::uuid,
  'viewer',
  'active',
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2bd96bf8-8b95-5069-bffd-479e6a1a50c2'::uuid,
  '445bc8c7-a029-546c-af22-ffc8904ad0e0'::uuid,
  '98402e99-c154-543e-8925-739b5e6ef7e6'::uuid,
  'viewer',
  'active',
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4fa469c3-f5f2-503e-99ca-870312fa8d88'::uuid,
  '445bc8c7-a029-546c-af22-ffc8904ad0e0'::uuid,
  '15325c50-350f-5b7b-935d-79f8d63d9a1a'::uuid,
  'viewer',
  'active',
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '609e9c44-8a2f-541f-886c-8861e761f167'::uuid,
  '445bc8c7-a029-546c-af22-ffc8904ad0e0'::uuid,
  '9faafd0b-f2db-5a81-91bf-81528de61c8e'::uuid,
  'viewer',
  'active',
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '611f9faa-429d-505c-91c5-e38986682e41'::uuid,
  '445bc8c7-a029-546c-af22-ffc8904ad0e0'::uuid,
  'Prepare figure panels',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 3.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '57334985-fa30-587b-9102-525af5d28965'::uuid,
  '445bc8c7-a029-546c-af22-ffc8904ad0e0'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '4ded9d2c-411a-5884-a2f1-9b3d21d137ed'::uuid,
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '29eddaed-e7fe-5880-8bd7-8761a90e7877'::uuid,
  '445bc8c7-a029-546c-af22-ffc8904ad0e0'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 3.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'ff9dc679-2821-5549-bfdb-f04d06a240a7'::uuid,
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1e82730c-5a6f-5d40-ab36-5d71ed91246d'::uuid,
  '445bc8c7-a029-546c-af22-ffc8904ad0e0'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 3.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '6717c5bd-123f-57c3-8997-0b9b0977d545'::uuid,
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7261437c-386e-59ad-911d-ef4449c41033'::uuid,
  '445bc8c7-a029-546c-af22-ffc8904ad0e0'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 3.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '98402e99-c154-543e-8925-739b5e6ef7e6'::uuid,
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9d5056e1-636d-5662-903d-668e68a3c326'::uuid,
  '445bc8c7-a029-546c-af22-ffc8904ad0e0'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '15325c50-350f-5b7b-935d-79f8d63d9a1a'::uuid,
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'cd85111c-7fdb-5edc-861a-8693a6154542'::uuid,
  '445bc8c7-a029-546c-af22-ffc8904ad0e0'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 3.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '9faafd0b-f2db-5a81-91bf-81528de61c8e'::uuid,
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '12fcdb98-104f-5e47-b192-58d5241e63fa'::uuid,
  '445bc8c7-a029-546c-af22-ffc8904ad0e0'::uuid,
  'Update project README (3)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 3.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '974fe467-4a4b-58aa-b4bb-01aad9befe49'::uuid,
  '445bc8c7-a029-546c-af22-ffc8904ad0e0'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  true,
  'planning',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '24ee944c-ebbe-5e64-8b29-618ab455f4c0'::uuid,
  '445bc8c7-a029-546c-af22-ffc8904ad0e0'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '4ded9d2c-411a-5884-a2f1-9b3d21d137ed'::uuid,
  '4ded9d2c-411a-5884-a2f1-9b3d21d137ed'::uuid,
  true,
  'analysis',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5414390e-7795-5c43-a16a-8f32dc3ff4b5'::uuid,
  '445bc8c7-a029-546c-af22-ffc8904ad0e0'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'ff9dc679-2821-5549-bfdb-f04d06a240a7'::uuid,
  'ff9dc679-2821-5549-bfdb-f04d06a240a7'::uuid,
  true,
  'writing',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '825b7aa2-8322-5549-b287-8a031447d452'::uuid,
  '445bc8c7-a029-546c-af22-ffc8904ad0e0'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '6717c5bd-123f-57c3-8997-0b9b0977d545'::uuid,
  '6717c5bd-123f-57c3-8997-0b9b0977d545'::uuid,
  true,
  'ops',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'Vascularized cardiac organoids — cohort 3',
  'Vascularized cardiac organoids is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around organoids, tissue eng. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  ARRAY['organoids','tissue eng']::text[],
  'active',
  'Bioengineering',
  ARRAY['Tissue culture','CAD','Microfluidics']::text[],
  'hybrid',
  'short_term',
  8,
  true,
  'Ann Arbor, MI',
  now() - interval '43 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd617267c-8b46-54da-8b69-6d8f9308d59f'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  'owner',
  'active',
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a189094f-07cb-58b3-8ff8-bd519b1b9aae'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  '9e01d76a-1e4d-50fe-9b8f-86b20984cb69'::uuid,
  'editor',
  'active',
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c45bc111-8d44-5592-9fad-6b2a8c9a8554'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'e8100973-d8f5-5aa3-a6eb-7669b9e4b1e7'::uuid,
  'viewer',
  'active',
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4ea016bc-67de-5bd9-83bc-585cc5601bba'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid,
  'viewer',
  'active',
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '021652e3-5342-518d-9280-dd53bc6f1c2e'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'dd003888-417e-5adb-be0b-88b099d71a72'::uuid,
  'viewer',
  'active',
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6f6f2695-82fd-5d36-9b59-27071f8d6a99'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'da781818-221e-5433-8ed5-0d93efc9d299'::uuid,
  'viewer',
  'active',
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd7c7e54a-da2f-5e72-85fd-bbfeb19d0754'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'a92d4ffb-9625-5c8a-ab6f-18a27c05992d'::uuid,
  'viewer',
  'active',
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd857e235-7d22-594d-83aa-ccbf24f4d7e1'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  '930dbf77-a75a-5e7d-9a6a-555d7e26ff51'::uuid,
  'viewer',
  'active',
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '043ea5fb-5166-5a22-83c5-736f5c7183db'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'Prepare figure panels',
  'Tracked work item for Vascularized cardiac organoids — cohort 3.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '68eea7be-91a9-54f6-a85a-87d1b5152afd'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Vascularized cardiac organoids — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '9e01d76a-1e4d-50fe-9b8f-86b20984cb69'::uuid,
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b3e1fdeb-42f0-550b-9500-b4498c915d03'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Vascularized cardiac organoids — cohort 3.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'e8100973-d8f5-5aa3-a6eb-7669b9e4b1e7'::uuid,
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a994fd67-4993-5c43-8d6a-0e77f231b0f0'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Vascularized cardiac organoids — cohort 3.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid,
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '56b6bacc-2d09-5513-aaed-6e331721f922'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Vascularized cardiac organoids — cohort 3.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'dd003888-417e-5adb-be0b-88b099d71a72'::uuid,
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6e304794-64a4-52e1-8062-678f009cd382'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Vascularized cardiac organoids — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'da781818-221e-5433-8ed5-0d93efc9d299'::uuid,
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '929b2138-65cd-5b1e-b55c-aa1a7cd4a4ba'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Vascularized cardiac organoids — cohort 3.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'a92d4ffb-9625-5c8a-ab6f-18a27c05992d'::uuid,
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '45c2baa8-b90c-5315-8b99-5bfe29d8d99e'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'Update project README (3)',
  'Tracked work item for Vascularized cardiac organoids — cohort 3.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '930dbf77-a75a-5e7d-9a6a-555d7e26ff51'::uuid,
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'cddb1e0f-5368-53aa-8c3a-cd11b5f48ac8'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  true,
  'planning',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '90bdfa02-b277-5fdc-be9d-c9e1b32571e4'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '9e01d76a-1e4d-50fe-9b8f-86b20984cb69'::uuid,
  '9e01d76a-1e4d-50fe-9b8f-86b20984cb69'::uuid,
  true,
  'analysis',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '90a192bb-978a-558f-9cc8-a2a88edcdbae'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'e8100973-d8f5-5aa3-a6eb-7669b9e4b1e7'::uuid,
  'e8100973-d8f5-5aa3-a6eb-7669b9e4b1e7'::uuid,
  true,
  'writing',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '49b23c6a-c1ce-532b-8a46-92f439c9f719'::uuid,
  '4cf1e213-c673-587e-85c8-29a3d1038835'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid,
  'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid,
  true,
  'ops',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'Labor market effects of credentialing — cohort 3',
  'Labor market effects of credentialing is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around causal, policy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  ARRAY['causal','policy']::text[],
  'active',
  'Economics',
  ARRAY['Econometrics','Stata','Causal ML']::text[],
  'local',
  'medium_term',
  9,
  true,
  'Los Angeles, CA',
  now() - interval '43 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd6a128c4-0694-50c5-9e77-48b3b4e2684b'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  'owner',
  'active',
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '40afad49-ee24-5c98-a1d6-5146e180edcc'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'e64abfce-a585-5002-987d-172bddea50c0'::uuid,
  'editor',
  'active',
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '58082c70-1a80-5a6d-864d-2ee8e45453a6'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'd81b3e8e-0894-50b8-a768-1c93c175f5ff'::uuid,
  'viewer',
  'active',
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2500d42e-fd74-5111-9538-5c1e89496823'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  '43b216a6-2290-5cf2-af92-35c3054dc2e2'::uuid,
  'viewer',
  'active',
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8c18694f-df2a-535e-81e2-54fca0c6cc69'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'f91ae4ff-d197-5eed-ace3-4b28eca0c7cf'::uuid,
  'viewer',
  'active',
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '91165499-9160-5efc-b6f9-0d16bffa10b6'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  '52001e7f-c550-5ede-b967-df1f7ffbee52'::uuid,
  'viewer',
  'active',
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b3c37900-f167-590b-a6bd-d72c6eb7ed39'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'aa23ebcd-e9cb-55d1-8431-fc4a5204925f'::uuid,
  'viewer',
  'active',
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3ba0cc86-941a-5fb1-b3ea-01c0b0df6291'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  '8dcc64e5-1781-5d54-acde-4fe2a4718700'::uuid,
  'viewer',
  'active',
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1ee04768-8a07-5bd5-b3f0-5eebd907702f'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  '0cd97540-575a-57c2-a037-9c730567b2e7'::uuid,
  'viewer',
  'active',
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6cc43871-0382-55b8-85f2-22ed9d2b3c9e'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'Prepare figure panels',
  'Tracked work item for Labor market effects of credentialing — cohort 3.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '790a685c-b2f5-5e25-9371-4bc82a07f548'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Labor market effects of credentialing — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'e64abfce-a585-5002-987d-172bddea50c0'::uuid,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'be397b56-028f-53f8-bc89-64b26fdec54b'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Labor market effects of credentialing — cohort 3.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'd81b3e8e-0894-50b8-a768-1c93c175f5ff'::uuid,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '08bbf674-9402-577b-908b-1f17464d3934'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Labor market effects of credentialing — cohort 3.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '43b216a6-2290-5cf2-af92-35c3054dc2e2'::uuid,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'be26c7ce-068d-5db5-81f5-81eb32e01a1b'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Labor market effects of credentialing — cohort 3.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'f91ae4ff-d197-5eed-ace3-4b28eca0c7cf'::uuid,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4d072467-2add-5ef6-83ca-e01adee9debd'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Labor market effects of credentialing — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '52001e7f-c550-5ede-b967-df1f7ffbee52'::uuid,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fd8a1767-1587-5cfe-b6df-9682d7b0b7e9'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Labor market effects of credentialing — cohort 3.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'aa23ebcd-e9cb-55d1-8431-fc4a5204925f'::uuid,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f158272e-f7f1-5f23-a34b-4ca7aba75db7'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'Update project README (3)',
  'Tracked work item for Labor market effects of credentialing — cohort 3.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '8dcc64e5-1781-5d54-acde-4fe2a4718700'::uuid,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd02f0908-7cbb-569b-a1fe-007651f12d07'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  true,
  'planning',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'feb3a6a0-ecc5-5d57-b804-e4a176105674'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'e64abfce-a585-5002-987d-172bddea50c0'::uuid,
  'e64abfce-a585-5002-987d-172bddea50c0'::uuid,
  true,
  'analysis',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3dee8f89-0fd9-5707-99a6-f4aec643a0c8'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'd81b3e8e-0894-50b8-a768-1c93c175f5ff'::uuid,
  'd81b3e8e-0894-50b8-a768-1c93c175f5ff'::uuid,
  true,
  'writing',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '45b7ed54-4189-520d-adc1-1e52ae8d36af'::uuid,
  '03ae3c5f-0178-5670-bc4f-abcca7e206ab'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '43b216a6-2290-5cf2-af92-35c3054dc2e2'::uuid,
  '43b216a6-2290-5cf2-af92-35c3054dc2e2'::uuid,
  true,
  'ops',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  'Low-cost water contaminant sensing — cohort 3',
  'Low-cost water contaminant sensing is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around sensors, water. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  ARRAY['sensors','water']::text[],
  'active',
  'Environmental Engineering',
  ARRAY['Hydrology','Sensor networks','Python']::text[],
  'remote',
  'long_term',
  10,
  true,
  'New York, NY',
  now() - interval '43 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ee278a34-77e5-511e-9e83-cd0f77833cfb'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  'owner',
  'active',
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '001acbec-409e-55b7-951c-22d1a459d99e'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  '43986880-ffc8-55bc-a66c-5b43a562d73d'::uuid,
  'editor',
  'active',
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '653ebdd4-eee6-5788-adad-3861d653c831'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  '170229dc-697e-5b38-8001-6e6980b262ff'::uuid,
  'viewer',
  'active',
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '911a63ec-fe6a-5837-aad3-58f810800adf'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  '6358d0af-c374-5016-a887-36f53d4bd779'::uuid,
  'viewer',
  'active',
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c823a801-8d32-5185-a1b6-adb19b7795c6'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  'Prepare figure panels',
  'Tracked work item for Low-cost water contaminant sensing — cohort 3.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '59815376-5a0b-5002-af56-98e389d2ade5'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Low-cost water contaminant sensing — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '43986880-ffc8-55bc-a66c-5b43a562d73d'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a624b6f7-d4db-5cde-902c-a5ea5fd9edc3'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Low-cost water contaminant sensing — cohort 3.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '170229dc-697e-5b38-8001-6e6980b262ff'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'edf80df0-212d-59d0-94eb-eac073d969c4'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Low-cost water contaminant sensing — cohort 3.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '6358d0af-c374-5016-a887-36f53d4bd779'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f59aa8dd-4e00-5361-a7a1-27ea100c15fa'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Low-cost water contaminant sensing — cohort 3.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'edfa214c-d96a-5965-9883-952eccfaec4b'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Low-cost water contaminant sensing — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '43986880-ffc8-55bc-a66c-5b43a562d73d'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b2751cf2-9be7-5db3-a445-a3cd7492e54c'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 3.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '170229dc-697e-5b38-8001-6e6980b262ff'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ff276d6e-723d-5b14-a8f9-50e1f7713b41'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  'Update project README (3)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 3.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '6358d0af-c374-5016-a887-36f53d4bd779'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '108f094c-6599-5dfd-af66-53c1fc530d90'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid,
  true,
  'planning',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '703d0a34-6803-593d-ab5e-3cc3666927d6'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '43986880-ffc8-55bc-a66c-5b43a562d73d'::uuid,
  '43986880-ffc8-55bc-a66c-5b43a562d73d'::uuid,
  true,
  'analysis',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'cdf4f5cf-a8b7-5323-afd8-85e6f12b4b2f'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '170229dc-697e-5b38-8001-6e6980b262ff'::uuid,
  '170229dc-697e-5b38-8001-6e6980b262ff'::uuid,
  true,
  'writing',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'cc6dd48e-8d3b-598b-b398-0d81aece8cb8'::uuid,
  '27092f10-954d-57fe-82fd-97a9a0658466'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '6358d0af-c374-5016-a887-36f53d4bd779'::uuid,
  '6358d0af-c374-5016-a887-36f53d4bd779'::uuid,
  true,
  'ops',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


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


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '54f9bde4-e146-56cb-b68c-e3d4720b2fbc'::uuid,
  'Classroom AI tutor field study — cohort 3',
  'Classroom AI tutor field study is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around edtech, RCT. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  ARRAY['edtech','RCT']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'hybrid',
  'long_term',
  14,
  true,
  'Princeton, NJ',
  now() - interval '43 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '602e4515-7e23-5828-8a63-0cef2bb050e6'::uuid,
  '54f9bde4-e146-56cb-b68c-e3d4720b2fbc'::uuid,
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  'owner',
  'active',
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ac6e9d1c-14bf-51e5-bf80-d05b2a9a41a8'::uuid,
  '54f9bde4-e146-56cb-b68c-e3d4720b2fbc'::uuid,
  'edd0860b-f11b-58ab-8ecb-22f4be92630e'::uuid,
  'editor',
  'active',
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '80e13083-e55e-596c-bb4e-5b1fb03c8070'::uuid,
  '54f9bde4-e146-56cb-b68c-e3d4720b2fbc'::uuid,
  '726d6063-9596-56fb-ad88-e5a3ee2d8c3a'::uuid,
  'viewer',
  'active',
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '17943bef-0a3a-52bd-a81d-fae3605954cc'::uuid,
  '54f9bde4-e146-56cb-b68c-e3d4720b2fbc'::uuid,
  '545134f1-47eb-57dc-89af-f53e59335d17'::uuid,
  'viewer',
  'active',
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2d454098-a80e-5225-a2cb-0c91bce2c4f6'::uuid,
  '54f9bde4-e146-56cb-b68c-e3d4720b2fbc'::uuid,
  'f85af5a2-2d56-597b-9cc6-74dd7c6ce2e8'::uuid,
  'viewer',
  'active',
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '775a32eb-6382-51bf-9bed-5e05227127e5'::uuid,
  '54f9bde4-e146-56cb-b68c-e3d4720b2fbc'::uuid,
  'babd2038-73bf-59da-ae80-09745173f792'::uuid,
  'viewer',
  'active',
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '087894df-817d-5c23-b1a5-0778c856522b'::uuid,
  '54f9bde4-e146-56cb-b68c-e3d4720b2fbc'::uuid,
  '743deae9-0a26-5472-9f76-6e4aea019515'::uuid,
  'viewer',
  'active',
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9a5d5a0f-d44f-50f0-9fd5-1c55098a125f'::uuid,
  '54f9bde4-e146-56cb-b68c-e3d4720b2fbc'::uuid,
  '157a061e-6fb6-53f2-adab-f285a291df07'::uuid,
  'viewer',
  'active',
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0e055310-4d2f-5e90-94aa-6fdc735e25aa'::uuid,
  '54f9bde4-e146-56cb-b68c-e3d4720b2fbc'::uuid,
  'Prepare figure panels',
  'Tracked work item for Classroom AI tutor field study — cohort 3.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6a90bb37-8f8c-5764-bec8-77f3a4bf1706'::uuid,
  '54f9bde4-e146-56cb-b68c-e3d4720b2fbc'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Classroom AI tutor field study — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'edd0860b-f11b-58ab-8ecb-22f4be92630e'::uuid,
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0f898480-94d1-5723-8034-e1c9561a2c2b'::uuid,
  '54f9bde4-e146-56cb-b68c-e3d4720b2fbc'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Classroom AI tutor field study — cohort 3.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '726d6063-9596-56fb-ad88-e5a3ee2d8c3a'::uuid,
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c3d517cb-24e1-5760-8b98-471dedeea944'::uuid,
  '54f9bde4-e146-56cb-b68c-e3d4720b2fbc'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Classroom AI tutor field study — cohort 3.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '545134f1-47eb-57dc-89af-f53e59335d17'::uuid,
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '523dee65-c23c-592d-9cce-025c5773ab7f'::uuid,
  '54f9bde4-e146-56cb-b68c-e3d4720b2fbc'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Classroom AI tutor field study — cohort 3.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'f85af5a2-2d56-597b-9cc6-74dd7c6ce2e8'::uuid,
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '964f4010-71fb-5b9a-8198-f9ba4a92132f'::uuid,
  '54f9bde4-e146-56cb-b68c-e3d4720b2fbc'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Classroom AI tutor field study — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'babd2038-73bf-59da-ae80-09745173f792'::uuid,
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '698a3e33-a77e-5f65-8fe7-6efc01c3645e'::uuid,
  '54f9bde4-e146-56cb-b68c-e3d4720b2fbc'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Classroom AI tutor field study — cohort 3.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '743deae9-0a26-5472-9f76-6e4aea019515'::uuid,
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'aea8a57f-bba9-5050-83ca-bccd3e2087b4'::uuid,
  '54f9bde4-e146-56cb-b68c-e3d4720b2fbc'::uuid,
  'Update project README (3)',
  'Tracked work item for Classroom AI tutor field study — cohort 3.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '157a061e-6fb6-53f2-adab-f285a291df07'::uuid,
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '69246b86-cd08-54cb-b25a-5e6841d473db'::uuid,
  '54f9bde4-e146-56cb-b68c-e3d4720b2fbc'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  true,
  'planning',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'af125578-0f48-5a9b-9b73-98cc481639b3'::uuid,
  '54f9bde4-e146-56cb-b68c-e3d4720b2fbc'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'edd0860b-f11b-58ab-8ecb-22f4be92630e'::uuid,
  'edd0860b-f11b-58ab-8ecb-22f4be92630e'::uuid,
  true,
  'analysis',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '331b9d84-fb35-5e7e-80ca-1273b270ebcf'::uuid,
  '54f9bde4-e146-56cb-b68c-e3d4720b2fbc'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '726d6063-9596-56fb-ad88-e5a3ee2d8c3a'::uuid,
  '726d6063-9596-56fb-ad88-e5a3ee2d8c3a'::uuid,
  true,
  'writing',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4c0f5b3b-337d-5c98-9a7f-b77f7782e0de'::uuid,
  '54f9bde4-e146-56cb-b68c-e3d4720b2fbc'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '545134f1-47eb-57dc-89af-f53e59335d17'::uuid,
  '545134f1-47eb-57dc-89af-f53e59335d17'::uuid,
  true,
  'ops',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '2dcff12b-c44a-543e-8000-6761c7c8550d'::uuid,
  'Privacy-preserving wearable analytics — cohort 3',
  'Privacy-preserving wearable analytics is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around wearables, privacy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid,
  ARRAY['wearables','privacy']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'local',
  'long_term',
  15,
  true,
  'Pasadena, CA',
  now() - interval '43 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '655df481-bfb5-541f-b9d9-06f4f4e72021'::uuid,
  '2dcff12b-c44a-543e-8000-6761c7c8550d'::uuid,
  '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid,
  'owner',
  'active',
  '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6a7bdd8a-0af9-5061-8439-7768c36fbe48'::uuid,
  '2dcff12b-c44a-543e-8000-6761c7c8550d'::uuid,
  '94792f80-7643-5ea5-8a93-3248a225121b'::uuid,
  'editor',
  'active',
  '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'dd6896c5-ce96-5050-8b9d-39b6acd52214'::uuid,
  '2dcff12b-c44a-543e-8000-6761c7c8550d'::uuid,
  'd5f7807d-fe74-50a6-8c6d-8c9ed5d72b81'::uuid,
  'viewer',
  'active',
  '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0135caff-6bc7-5e41-b030-2a958f848ac9'::uuid,
  '2dcff12b-c44a-543e-8000-6761c7c8550d'::uuid,
  'b822e46a-24e0-5c86-819e-929acfc5a4df'::uuid,
  'viewer',
  'active',
  '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8bb1238a-cf99-5988-9ec2-ce581f1a546f'::uuid,
  '2dcff12b-c44a-543e-8000-6761c7c8550d'::uuid,
  'f9952d7b-1f72-5181-bf0f-fe11a108cc78'::uuid,
  'viewer',
  'active',
  '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3191ab0f-fb84-5639-9aac-b028174c9e06'::uuid,
  '2dcff12b-c44a-543e-8000-6761c7c8550d'::uuid,
  'a130656b-33b4-5818-9d16-667ae077b735'::uuid,
  'viewer',
  'active',
  '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '87b96472-49e8-5cb5-896c-2aae42250e1c'::uuid,
  '2dcff12b-c44a-543e-8000-6761c7c8550d'::uuid,
  '4499d8b5-c21e-5f7f-ac58-d210e2423913'::uuid,
  'viewer',
  'active',
  '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e03a4260-5771-5373-9361-5725a8e7734a'::uuid,
  '2dcff12b-c44a-543e-8000-6761c7c8550d'::uuid,
  '1225191a-019f-56d5-8355-03d7ea853341'::uuid,
  'viewer',
  'active',
  '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b1b838e4-948a-5be7-818c-3e22063fcade'::uuid,
  '2dcff12b-c44a-543e-8000-6761c7c8550d'::uuid,
  'd4b14f46-3fa3-5e98-9836-f65ed0a3f18b'::uuid,
  'viewer',
  'active',
  '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '40bb8150-6400-5a13-9b4b-289089b3de76'::uuid,
  '2dcff12b-c44a-543e-8000-6761c7c8550d'::uuid,
  'Prepare figure panels',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 3.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid,
  '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7f1a8012-8022-5ed6-954c-bc7aab8cb912'::uuid,
  '2dcff12b-c44a-543e-8000-6761c7c8550d'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '94792f80-7643-5ea5-8a93-3248a225121b'::uuid,
  '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9d00a957-7e51-50b9-96b6-8592a06ca38a'::uuid,
  '2dcff12b-c44a-543e-8000-6761c7c8550d'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 3.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'd5f7807d-fe74-50a6-8c6d-8c9ed5d72b81'::uuid,
  '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd8ee46cd-bdb4-57e1-bb99-bb29aafe8f93'::uuid,
  '2dcff12b-c44a-543e-8000-6761c7c8550d'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 3.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'b822e46a-24e0-5c86-819e-929acfc5a4df'::uuid,
  '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '209ae8b0-d34b-5a3d-9bd1-ce7beaf7e1fb'::uuid,
  '2dcff12b-c44a-543e-8000-6761c7c8550d'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 3.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'f9952d7b-1f72-5181-bf0f-fe11a108cc78'::uuid,
  '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '67ea014a-ffe2-5049-89c0-e68c8eabcb2f'::uuid,
  '2dcff12b-c44a-543e-8000-6761c7c8550d'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 3.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'a130656b-33b4-5818-9d16-667ae077b735'::uuid,
  '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '60bce044-f987-55e5-8708-0e33f886231a'::uuid,
  '2dcff12b-c44a-543e-8000-6761c7c8550d'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 3.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '4499d8b5-c21e-5f7f-ac58-d210e2423913'::uuid,
  '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b009ef1a-5995-5610-992d-b35d5a38dc72'::uuid,
  '2dcff12b-c44a-543e-8000-6761c7c8550d'::uuid,
  'Update project README (3)',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 3.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '1225191a-019f-56d5-8355-03d7ea853341'::uuid,
  '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '95e516f1-92ba-5dba-bcd8-40194146b209'::uuid,
  '2dcff12b-c44a-543e-8000-6761c7c8550d'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid,
  '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid,
  true,
  'planning',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '77ada57b-9817-55ec-97ed-c5ceb41b1f79'::uuid,
  '2dcff12b-c44a-543e-8000-6761c7c8550d'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '94792f80-7643-5ea5-8a93-3248a225121b'::uuid,
  '94792f80-7643-5ea5-8a93-3248a225121b'::uuid,
  true,
  'analysis',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b2011be1-a62d-524b-bd24-36c4abb95e50'::uuid,
  '2dcff12b-c44a-543e-8000-6761c7c8550d'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'd5f7807d-fe74-50a6-8c6d-8c9ed5d72b81'::uuid,
  'd5f7807d-fe74-50a6-8c6d-8c9ed5d72b81'::uuid,
  true,
  'writing',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5191127a-7711-5426-a6ff-dd481a99bd6b'::uuid,
  '2dcff12b-c44a-543e-8000-6761c7c8550d'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'b822e46a-24e0-5c86-819e-929acfc5a4df'::uuid,
  'b822e46a-24e0-5c86-819e-929acfc5a4df'::uuid,
  true,
  'ops',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;
