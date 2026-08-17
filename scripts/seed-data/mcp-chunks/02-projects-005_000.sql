INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '2678fa56-7b34-5a13-b03f-96e95fbbe742'::uuid,
  'Single-cell atlas of treatment response — cohort 6',
  'Single-cell atlas of treatment response is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around genomics, RNA-seq, oncology. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  ARRAY['genomics','RNA-seq','oncology']::text[],
  'planning',
  'Computational Biology',
  ARRAY['Python','R','Genomics']::text[],
  'hybrid',
  'short_term',
  8,
  true,
  'Princeton, NJ',
  now() - interval '103 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1d42dcc4-18e0-56c0-986b-7c063d4095e0'::uuid,
  '2678fa56-7b34-5a13-b03f-96e95fbbe742'::uuid,
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  'owner',
  'active',
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ec233830-4964-5dc0-aa0b-74ba044b2d87'::uuid,
  '2678fa56-7b34-5a13-b03f-96e95fbbe742'::uuid,
  'eebb922f-dd26-57ea-a213-9149abab4313'::uuid,
  'editor',
  'active',
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8396e00f-3581-5d4e-8bc1-f522f35060f4'::uuid,
  '2678fa56-7b34-5a13-b03f-96e95fbbe742'::uuid,
  '279c319c-89db-5ae5-b134-f4418f82a365'::uuid,
  'viewer',
  'active',
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '43891720-d853-5c4b-8f51-4da93fa04d69'::uuid,
  '2678fa56-7b34-5a13-b03f-96e95fbbe742'::uuid,
  '599f91ad-8872-5548-98ef-05309b9d767d'::uuid,
  'viewer',
  'active',
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2893bc8f-c1e0-52cc-8fca-90f07e621053'::uuid,
  '2678fa56-7b34-5a13-b03f-96e95fbbe742'::uuid,
  '4d8cd75d-d374-569f-85a8-6440bd0fe5a2'::uuid,
  'viewer',
  'active',
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b1c3caaa-fc2f-5238-8107-fd4b00b59d36'::uuid,
  '2678fa56-7b34-5a13-b03f-96e95fbbe742'::uuid,
  'eaed69b5-c60d-5133-86c3-ed579a4125f2'::uuid,
  'viewer',
  'active',
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2240dc36-74da-587d-8be6-ca3ae7d2726d'::uuid,
  '2678fa56-7b34-5a13-b03f-96e95fbbe742'::uuid,
  'b6490efa-6d6a-5491-af21-1ed30bf639f0'::uuid,
  'viewer',
  'active',
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0d9d55e0-cf2d-5063-bec1-5c6485bc0258'::uuid,
  '2678fa56-7b34-5a13-b03f-96e95fbbe742'::uuid,
  '85a88a42-7b3b-5fdb-a22a-99a60988005b'::uuid,
  'viewer',
  'active',
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '996aee93-bb95-53d1-8d74-c3e1517e2482'::uuid,
  '2678fa56-7b34-5a13-b03f-96e95fbbe742'::uuid,
  'Prepare figure panels',
  'Tracked work item for Single-cell atlas of treatment response — cohort 6.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '28ba5991-de40-5ba9-ba89-cb7cd355f2fd'::uuid,
  '2678fa56-7b34-5a13-b03f-96e95fbbe742'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Single-cell atlas of treatment response — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'eebb922f-dd26-57ea-a213-9149abab4313'::uuid,
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9f408002-0dae-5794-aade-cb87330ef4e7'::uuid,
  '2678fa56-7b34-5a13-b03f-96e95fbbe742'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Single-cell atlas of treatment response — cohort 6.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '279c319c-89db-5ae5-b134-f4418f82a365'::uuid,
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '182f645a-76f4-571b-ac74-ec93925bf384'::uuid,
  '2678fa56-7b34-5a13-b03f-96e95fbbe742'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Single-cell atlas of treatment response — cohort 6.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '599f91ad-8872-5548-98ef-05309b9d767d'::uuid,
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '679474c5-acdc-5192-a258-0aacb22e40c2'::uuid,
  '2678fa56-7b34-5a13-b03f-96e95fbbe742'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Single-cell atlas of treatment response — cohort 6.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '4d8cd75d-d374-569f-85a8-6440bd0fe5a2'::uuid,
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9aa83b7c-16f9-5140-8c48-4a1d4d01e7a9'::uuid,
  '2678fa56-7b34-5a13-b03f-96e95fbbe742'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Single-cell atlas of treatment response — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'eaed69b5-c60d-5133-86c3-ed579a4125f2'::uuid,
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b565433c-39f0-5ad4-b258-02ed60337cb4'::uuid,
  '2678fa56-7b34-5a13-b03f-96e95fbbe742'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Single-cell atlas of treatment response — cohort 6.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'b6490efa-6d6a-5491-af21-1ed30bf639f0'::uuid,
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2cd58c9c-6b77-59d0-a9d4-50e69c3b06d7'::uuid,
  '2678fa56-7b34-5a13-b03f-96e95fbbe742'::uuid,
  'Update project README (3)',
  'Tracked work item for Single-cell atlas of treatment response — cohort 6.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '85a88a42-7b3b-5fdb-a22a-99a60988005b'::uuid,
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4911e0ef-bf0a-50fb-8cc2-aa8f88f22ee0'::uuid,
  '2678fa56-7b34-5a13-b03f-96e95fbbe742'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  true,
  'planning',
  ARRAY['genomics','RNA-seq']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6a9603de-0eeb-5e53-8050-f8e04f76110e'::uuid,
  '2678fa56-7b34-5a13-b03f-96e95fbbe742'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'eebb922f-dd26-57ea-a213-9149abab4313'::uuid,
  'eebb922f-dd26-57ea-a213-9149abab4313'::uuid,
  true,
  'analysis',
  ARRAY['genomics','RNA-seq']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ecf914e9-c445-5eff-bf9c-811175b96fa8'::uuid,
  '2678fa56-7b34-5a13-b03f-96e95fbbe742'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '279c319c-89db-5ae5-b134-f4418f82a365'::uuid,
  '279c319c-89db-5ae5-b134-f4418f82a365'::uuid,
  true,
  'writing',
  ARRAY['genomics','RNA-seq']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1c85e35d-f21b-5325-81c2-ee2c9f1d23b3'::uuid,
  '2678fa56-7b34-5a13-b03f-96e95fbbe742'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '599f91ad-8872-5548-98ef-05309b9d767d'::uuid,
  '599f91ad-8872-5548-98ef-05309b9d767d'::uuid,
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
  '0a9ae595-b6d9-5747-b184-bc3ac92c6165'::uuid,
  'Urban heat mitigation with satellite ML — cohort 6',
  'Urban heat mitigation with satellite ML is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around remote sensing, cities, ML. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid,
  ARRAY['remote sensing','cities','ML']::text[],
  'active',
  'Climate Science',
  ARRAY['Remote sensing','Python','GIS']::text[],
  'local',
  'medium_term',
  9,
  true,
  'Pasadena, CA',
  now() - interval '103 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c63fd0c3-2d73-5ece-9769-6fd3e05cf5f0'::uuid,
  '0a9ae595-b6d9-5747-b184-bc3ac92c6165'::uuid,
  'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid,
  'owner',
  'active',
  'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'bcfede56-3765-56ab-886b-436f1c8bb1c5'::uuid,
  '0a9ae595-b6d9-5747-b184-bc3ac92c6165'::uuid,
  '2f2b966f-68c3-5cc1-98f6-ce29bf74ba78'::uuid,
  'editor',
  'active',
  'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '14e7cd8e-d9f9-5e3d-bb0d-aac230684a7e'::uuid,
  '0a9ae595-b6d9-5747-b184-bc3ac92c6165'::uuid,
  '223e8288-5d44-542e-b220-e739635a31f1'::uuid,
  'viewer',
  'active',
  'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '23f89faa-0695-5b04-a0cd-b6192215f10f'::uuid,
  '0a9ae595-b6d9-5747-b184-bc3ac92c6165'::uuid,
  'f86df400-9392-5e5e-b646-34ad46c78283'::uuid,
  'viewer',
  'active',
  'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b0a0fb6a-fb9c-5764-9474-b1ed70795d17'::uuid,
  '0a9ae595-b6d9-5747-b184-bc3ac92c6165'::uuid,
  '67542a7b-0a85-5077-bd31-13e04bc34e8f'::uuid,
  'viewer',
  'active',
  'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'bd33f86e-962a-57f0-b4c9-c2344df338cf'::uuid,
  '0a9ae595-b6d9-5747-b184-bc3ac92c6165'::uuid,
  '844bc8c1-568a-5c29-a8ee-695abfcc8b62'::uuid,
  'viewer',
  'active',
  'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'cef6c0e7-e45a-5c8b-9624-2a27054ecd21'::uuid,
  '0a9ae595-b6d9-5747-b184-bc3ac92c6165'::uuid,
  '15865a04-1474-5ed2-83c7-7253a44f846b'::uuid,
  'viewer',
  'active',
  'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b4514e2a-8072-55dd-bdf9-8ff999cc1711'::uuid,
  '0a9ae595-b6d9-5747-b184-bc3ac92c6165'::uuid,
  '113d16a0-5709-5fb9-8d07-e289327584ed'::uuid,
  'viewer',
  'active',
  'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6427b49c-da37-50a0-bf0a-f61bd7ce013e'::uuid,
  '0a9ae595-b6d9-5747-b184-bc3ac92c6165'::uuid,
  'eab6b3ab-8b1a-55f2-98e3-08e308d55581'::uuid,
  'viewer',
  'active',
  'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3f72757a-7fe9-5996-b644-ad2819670fe2'::uuid,
  '0a9ae595-b6d9-5747-b184-bc3ac92c6165'::uuid,
  'Prepare figure panels',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 6.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid,
  'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3ccfb07e-13fe-591c-9d40-4f08d6967bf5'::uuid,
  '0a9ae595-b6d9-5747-b184-bc3ac92c6165'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '2f2b966f-68c3-5cc1-98f6-ce29bf74ba78'::uuid,
  'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd0cde2f3-193b-59fb-a024-9095dc2b1731'::uuid,
  '0a9ae595-b6d9-5747-b184-bc3ac92c6165'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 6.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '223e8288-5d44-542e-b220-e739635a31f1'::uuid,
  'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ad476802-2be4-50a8-83b0-1797aff3c9ff'::uuid,
  '0a9ae595-b6d9-5747-b184-bc3ac92c6165'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 6.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'f86df400-9392-5e5e-b646-34ad46c78283'::uuid,
  'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e9b36337-e5fb-5777-be77-61ff0dc01885'::uuid,
  '0a9ae595-b6d9-5747-b184-bc3ac92c6165'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 6.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '67542a7b-0a85-5077-bd31-13e04bc34e8f'::uuid,
  'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd3436c98-7d71-54df-a045-a79f96881446'::uuid,
  '0a9ae595-b6d9-5747-b184-bc3ac92c6165'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '844bc8c1-568a-5c29-a8ee-695abfcc8b62'::uuid,
  'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '770f9437-a833-510f-80c8-851fc1080963'::uuid,
  '0a9ae595-b6d9-5747-b184-bc3ac92c6165'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 6.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '15865a04-1474-5ed2-83c7-7253a44f846b'::uuid,
  'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3fd807f8-04b5-5102-8035-347b1ef8e14a'::uuid,
  '0a9ae595-b6d9-5747-b184-bc3ac92c6165'::uuid,
  'Update project README (3)',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 6.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '113d16a0-5709-5fb9-8d07-e289327584ed'::uuid,
  'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1e91787b-dbe0-5c86-b7a1-8ea936c435c8'::uuid,
  '0a9ae595-b6d9-5747-b184-bc3ac92c6165'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid,
  'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid,
  true,
  'planning',
  ARRAY['remote sensing','cities']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '305d40b3-381f-59e7-86cb-925a18e01ef9'::uuid,
  '0a9ae595-b6d9-5747-b184-bc3ac92c6165'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '2f2b966f-68c3-5cc1-98f6-ce29bf74ba78'::uuid,
  '2f2b966f-68c3-5cc1-98f6-ce29bf74ba78'::uuid,
  true,
  'analysis',
  ARRAY['remote sensing','cities']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0e33a6bf-b662-5e3e-96e9-5511117eae40'::uuid,
  '0a9ae595-b6d9-5747-b184-bc3ac92c6165'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '223e8288-5d44-542e-b220-e739635a31f1'::uuid,
  '223e8288-5d44-542e-b220-e739635a31f1'::uuid,
  true,
  'writing',
  ARRAY['remote sensing','cities']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '979b2990-c874-531e-a3d0-36316736044c'::uuid,
  '0a9ae595-b6d9-5747-b184-bc3ac92c6165'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'f86df400-9392-5e5e-b646-34ad46c78283'::uuid,
  'f86df400-9392-5e5e-b646-34ad46c78283'::uuid,
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
  '25e9fff6-53c2-5798-a94d-51ee5852dbc5'::uuid,
  'High-throughput electrolyte screening — cohort 6',
  'High-throughput electrolyte screening is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around batteries, automation, DFT. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  ARRAY['batteries','automation','DFT']::text[],
  'active',
  'Materials Science',
  ARRAY['DFT','Lab automation','Characterization']::text[],
  'remote',
  'long_term',
  10,
  true,
  'Oxford, UK',
  now() - interval '103 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '55aa1d46-cd49-5122-9cb6-9d76bdd5f5ce'::uuid,
  '25e9fff6-53c2-5798-a94d-51ee5852dbc5'::uuid,
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  'owner',
  'active',
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '514c0a66-74e6-557e-98d2-5d0b814f0304'::uuid,
  '25e9fff6-53c2-5798-a94d-51ee5852dbc5'::uuid,
  'b1a15199-4e78-51ba-99e1-56bf9f18a970'::uuid,
  'editor',
  'active',
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4f4d7c30-8560-5964-bdea-b81704b8535d'::uuid,
  '25e9fff6-53c2-5798-a94d-51ee5852dbc5'::uuid,
  '2dfbf8df-671d-5edc-840c-fa857d70548e'::uuid,
  'viewer',
  'active',
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '16e048ae-be6f-59f3-b850-ed401faa32b8'::uuid,
  '25e9fff6-53c2-5798-a94d-51ee5852dbc5'::uuid,
  '0c81417a-20bd-5878-bb5d-1d34f41f817b'::uuid,
  'viewer',
  'active',
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '217c9609-5f92-5743-80bf-4d0cdfe0a433'::uuid,
  '25e9fff6-53c2-5798-a94d-51ee5852dbc5'::uuid,
  'Prepare figure panels',
  'Tracked work item for High-throughput electrolyte screening — cohort 6.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4a2c7333-7a18-5511-8bf7-8361cadb6d3a'::uuid,
  '25e9fff6-53c2-5798-a94d-51ee5852dbc5'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for High-throughput electrolyte screening — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'b1a15199-4e78-51ba-99e1-56bf9f18a970'::uuid,
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3e1083d2-adce-5f8a-87ef-451749434ce8'::uuid,
  '25e9fff6-53c2-5798-a94d-51ee5852dbc5'::uuid,
  'Upload supplementary tables',
  'Tracked work item for High-throughput electrolyte screening — cohort 6.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '2dfbf8df-671d-5edc-840c-fa857d70548e'::uuid,
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1592e68e-3d55-5b58-b33b-c27067b61dc6'::uuid,
  '25e9fff6-53c2-5798-a94d-51ee5852dbc5'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for High-throughput electrolyte screening — cohort 6.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '0c81417a-20bd-5878-bb5d-1d34f41f817b'::uuid,
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2f6f7bc9-cb77-5bb4-8da3-19b6244e5b61'::uuid,
  '25e9fff6-53c2-5798-a94d-51ee5852dbc5'::uuid,
  'Validate QC pipeline',
  'Tracked work item for High-throughput electrolyte screening — cohort 6.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c6f971f4-10cd-54de-9475-dd5c667a93e0'::uuid,
  '25e9fff6-53c2-5798-a94d-51ee5852dbc5'::uuid,
  'Collect pilot feedback',
  'Tracked work item for High-throughput electrolyte screening — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'b1a15199-4e78-51ba-99e1-56bf9f18a970'::uuid,
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd0c064f3-cfd6-5bad-9085-702228139299'::uuid,
  '25e9fff6-53c2-5798-a94d-51ee5852dbc5'::uuid,
  'Submit internal review (2)',
  'Tracked work item for High-throughput electrolyte screening — cohort 6.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '2dfbf8df-671d-5edc-840c-fa857d70548e'::uuid,
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2783f46c-0b53-5308-8b4b-93c8d90bc996'::uuid,
  '25e9fff6-53c2-5798-a94d-51ee5852dbc5'::uuid,
  'Update project README (3)',
  'Tracked work item for High-throughput electrolyte screening — cohort 6.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '0c81417a-20bd-5878-bb5d-1d34f41f817b'::uuid,
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '368b9d69-980e-55aa-afad-d7f88b1bd318'::uuid,
  '25e9fff6-53c2-5798-a94d-51ee5852dbc5'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  true,
  'planning',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2012ea03-81c4-5ab3-bba5-47b53f15bba1'::uuid,
  '25e9fff6-53c2-5798-a94d-51ee5852dbc5'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'b1a15199-4e78-51ba-99e1-56bf9f18a970'::uuid,
  'b1a15199-4e78-51ba-99e1-56bf9f18a970'::uuid,
  true,
  'analysis',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b6eea4b4-0168-5795-8541-06c2f12f3e41'::uuid,
  '25e9fff6-53c2-5798-a94d-51ee5852dbc5'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '2dfbf8df-671d-5edc-840c-fa857d70548e'::uuid,
  '2dfbf8df-671d-5edc-840c-fa857d70548e'::uuid,
  true,
  'writing',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0372191d-c666-54ef-a56f-849ab6731b24'::uuid,
  '25e9fff6-53c2-5798-a94d-51ee5852dbc5'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '0c81417a-20bd-5878-bb5d-1d34f41f817b'::uuid,
  '0c81417a-20bd-5878-bb5d-1d34f41f817b'::uuid,
  true,
  'ops',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;