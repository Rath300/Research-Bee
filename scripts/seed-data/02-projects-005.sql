-- projects 100..119

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


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'e87b7eb0-970a-559f-b0af-b82e57a62827'::uuid,
  'Accessible clinical note summarization — cohort 6',
  'Accessible clinical note summarization is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around NLP, healthcare, UX. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  ARRAY['NLP','healthcare','UX']::text[],
  'active',
  'Human-Computer Interaction',
  ARRAY['User research','Prototyping','Statistics']::text[],
  'hybrid',
  'long_term',
  11,
  true,
  'Singapore',
  now() - interval '103 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '16ec7217-de1a-5b1b-8f23-3d1688c23304'::uuid,
  'e87b7eb0-970a-559f-b0af-b82e57a62827'::uuid,
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  'owner',
  'active',
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9b9ad69c-2602-56eb-bab9-aea0c738d88e'::uuid,
  'e87b7eb0-970a-559f-b0af-b82e57a62827'::uuid,
  'faa48f92-ec4c-50a8-b640-821e64485cdb'::uuid,
  'editor',
  'active',
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd012e691-ff15-54bb-8b13-80b5946c5ed1'::uuid,
  'e87b7eb0-970a-559f-b0af-b82e57a62827'::uuid,
  'f7b3b033-ebce-5a30-8f09-ab76dc00d493'::uuid,
  'viewer',
  'active',
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd76592c4-305e-56e0-ba0f-696b89409b0a'::uuid,
  'e87b7eb0-970a-559f-b0af-b82e57a62827'::uuid,
  'f0b6a384-fa41-5f30-8508-7717e8c5d4fc'::uuid,
  'viewer',
  'active',
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '38e36c75-858a-5d29-9871-5d41a4eb6956'::uuid,
  'e87b7eb0-970a-559f-b0af-b82e57a62827'::uuid,
  'd03250de-48b2-59ba-9295-19028affe265'::uuid,
  'viewer',
  'active',
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e3ecf65c-04ed-521d-bfe7-79272b83ac11'::uuid,
  'e87b7eb0-970a-559f-b0af-b82e57a62827'::uuid,
  'Prepare figure panels',
  'Tracked work item for Accessible clinical note summarization — cohort 6.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '473a13af-6b69-59ca-9e56-6b21e4528c6d'::uuid,
  'e87b7eb0-970a-559f-b0af-b82e57a62827'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Accessible clinical note summarization — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'faa48f92-ec4c-50a8-b640-821e64485cdb'::uuid,
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2f44e53c-7d69-587d-b92a-ee8d3955e937'::uuid,
  'e87b7eb0-970a-559f-b0af-b82e57a62827'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Accessible clinical note summarization — cohort 6.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'f7b3b033-ebce-5a30-8f09-ab76dc00d493'::uuid,
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '236145ac-d4da-5fb4-87d4-de78d4088a2c'::uuid,
  'e87b7eb0-970a-559f-b0af-b82e57a62827'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Accessible clinical note summarization — cohort 6.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'f0b6a384-fa41-5f30-8508-7717e8c5d4fc'::uuid,
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a148471a-3817-5d88-ad2f-3e2fadd4cbe7'::uuid,
  'e87b7eb0-970a-559f-b0af-b82e57a62827'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Accessible clinical note summarization — cohort 6.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'd03250de-48b2-59ba-9295-19028affe265'::uuid,
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bc8bb79c-08e2-5b5b-831f-43dbda4aaa91'::uuid,
  'e87b7eb0-970a-559f-b0af-b82e57a62827'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Accessible clinical note summarization — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6bcdc30c-d9c0-52d3-877a-674b4b54ddd6'::uuid,
  'e87b7eb0-970a-559f-b0af-b82e57a62827'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Accessible clinical note summarization — cohort 6.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'faa48f92-ec4c-50a8-b640-821e64485cdb'::uuid,
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '58c08254-7857-5314-854e-9b915992cfcd'::uuid,
  'e87b7eb0-970a-559f-b0af-b82e57a62827'::uuid,
  'Update project README (3)',
  'Tracked work item for Accessible clinical note summarization — cohort 6.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'f7b3b033-ebce-5a30-8f09-ab76dc00d493'::uuid,
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2c0c6e96-7988-501c-bee7-0ae562c5cff8'::uuid,
  'e87b7eb0-970a-559f-b0af-b82e57a62827'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  true,
  'planning',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '7d22624d-7d2f-57bc-a652-d8f7cfa73f98'::uuid,
  'e87b7eb0-970a-559f-b0af-b82e57a62827'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'faa48f92-ec4c-50a8-b640-821e64485cdb'::uuid,
  'faa48f92-ec4c-50a8-b640-821e64485cdb'::uuid,
  true,
  'analysis',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '77ea2b03-0fe6-515d-8acb-37767daeca07'::uuid,
  'e87b7eb0-970a-559f-b0af-b82e57a62827'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'f7b3b033-ebce-5a30-8f09-ab76dc00d493'::uuid,
  'f7b3b033-ebce-5a30-8f09-ab76dc00d493'::uuid,
  true,
  'writing',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '36c15693-2709-5e40-a6e8-92a7a25614b0'::uuid,
  'e87b7eb0-970a-559f-b0af-b82e57a62827'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'f0b6a384-fa41-5f30-8508-7717e8c5d4fc'::uuid,
  'f0b6a384-fa41-5f30-8508-7717e8c5d4fc'::uuid,
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
  'd7c45cf5-19db-520c-bca9-fb8f365520e1'::uuid,
  'Closed-loop stimulation for memory — cohort 6',
  'Closed-loop stimulation for memory is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around neurotech, memory, EEG. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  ARRAY['neurotech','memory','EEG']::text[],
  'active',
  'Neuroscience',
  ARRAY['fMRI','Electrophysiology','Python']::text[],
  'local',
  'short_term',
  12,
  true,
  'Melbourne, AU',
  now() - interval '103 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9833bf84-5556-5bff-8ca3-51080afaf37e'::uuid,
  'd7c45cf5-19db-520c-bca9-fb8f365520e1'::uuid,
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  'owner',
  'active',
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '52e68063-5270-5390-928c-d31a2b0b2e2d'::uuid,
  'd7c45cf5-19db-520c-bca9-fb8f365520e1'::uuid,
  'fcf09069-b03f-594a-a134-7c45d7478589'::uuid,
  'editor',
  'active',
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '11764f56-29eb-565f-99c4-727d2c7e652e'::uuid,
  'd7c45cf5-19db-520c-bca9-fb8f365520e1'::uuid,
  'b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b'::uuid,
  'viewer',
  'active',
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a6af2498-8512-55dc-b2da-ad3c54b30cf7'::uuid,
  'd7c45cf5-19db-520c-bca9-fb8f365520e1'::uuid,
  '862f430e-1fe4-5ce4-a791-d17a77f2153c'::uuid,
  'viewer',
  'active',
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5c9a4c82-f6f7-5b02-86f6-daf05c9d7343'::uuid,
  'd7c45cf5-19db-520c-bca9-fb8f365520e1'::uuid,
  'b81754bd-ca00-5b38-b9dd-84e4572e645e'::uuid,
  'viewer',
  'active',
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '78405e50-e02b-5adb-85c6-b018de22e4cd'::uuid,
  'd7c45cf5-19db-520c-bca9-fb8f365520e1'::uuid,
  'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid,
  'viewer',
  'active',
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b68ad07c-5396-5848-8d2f-28e23545a4b7'::uuid,
  'd7c45cf5-19db-520c-bca9-fb8f365520e1'::uuid,
  'Prepare figure panels',
  'Tracked work item for Closed-loop stimulation for memory — cohort 6.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '079d7f5f-159a-534b-b593-c1ec4466facf'::uuid,
  'd7c45cf5-19db-520c-bca9-fb8f365520e1'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Closed-loop stimulation for memory — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'fcf09069-b03f-594a-a134-7c45d7478589'::uuid,
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd9207f76-8b53-5ddf-b200-fe3d6f4f34bb'::uuid,
  'd7c45cf5-19db-520c-bca9-fb8f365520e1'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Closed-loop stimulation for memory — cohort 6.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b'::uuid,
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'da1a6c16-5d51-5d52-9c45-87fd36cd874b'::uuid,
  'd7c45cf5-19db-520c-bca9-fb8f365520e1'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Closed-loop stimulation for memory — cohort 6.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '862f430e-1fe4-5ce4-a791-d17a77f2153c'::uuid,
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b1ecffcb-318a-52c4-9b6e-5f29ba02a6a4'::uuid,
  'd7c45cf5-19db-520c-bca9-fb8f365520e1'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Closed-loop stimulation for memory — cohort 6.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'b81754bd-ca00-5b38-b9dd-84e4572e645e'::uuid,
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e3548350-eb4e-5dff-9020-6d3e79985c61'::uuid,
  'd7c45cf5-19db-520c-bca9-fb8f365520e1'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Closed-loop stimulation for memory — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid,
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3861d9f6-1b4e-5172-a38b-d7923d3aab36'::uuid,
  'd7c45cf5-19db-520c-bca9-fb8f365520e1'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Closed-loop stimulation for memory — cohort 6.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '52194d6d-073e-529e-a9d2-4edcb2fe0175'::uuid,
  'd7c45cf5-19db-520c-bca9-fb8f365520e1'::uuid,
  'Update project README (3)',
  'Tracked work item for Closed-loop stimulation for memory — cohort 6.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'fcf09069-b03f-594a-a134-7c45d7478589'::uuid,
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1b152fb5-7134-568e-8168-ff7e38e4074f'::uuid,
  'd7c45cf5-19db-520c-bca9-fb8f365520e1'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  true,
  'planning',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c9e5cf08-456a-54b2-beb7-edae93d867d7'::uuid,
  'd7c45cf5-19db-520c-bca9-fb8f365520e1'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'fcf09069-b03f-594a-a134-7c45d7478589'::uuid,
  'fcf09069-b03f-594a-a134-7c45d7478589'::uuid,
  true,
  'analysis',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '9b3f6f0a-6fd9-580a-b6dc-4533770b0c74'::uuid,
  'd7c45cf5-19db-520c-bca9-fb8f365520e1'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b'::uuid,
  'b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b'::uuid,
  true,
  'writing',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2a507c58-d185-568c-b305-ad63f8cd8e22'::uuid,
  'd7c45cf5-19db-520c-bca9-fb8f365520e1'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '862f430e-1fe4-5ce4-a791-d17a77f2153c'::uuid,
  '862f430e-1fe4-5ce4-a791-d17a77f2153c'::uuid,
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
  '3b77b4e6-3543-512b-94fc-6cc87cf058e8'::uuid,
  'Community vaccine confidence study — cohort 6',
  'Community vaccine confidence study is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around surveys, equity, vaccines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  ARRAY['surveys','equity','vaccines']::text[],
  'planning',
  'Public Health',
  ARRAY['Epidemiology','R','Survey design']::text[],
  'remote',
  'medium_term',
  13,
  true,
  'Cambridge, MA',
  now() - interval '103 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '62fa64c3-6175-551c-91ba-5ae00363afbd'::uuid,
  '3b77b4e6-3543-512b-94fc-6cc87cf058e8'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  'owner',
  'active',
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'daa94103-47c4-585b-b45d-c70d3548bc1f'::uuid,
  '3b77b4e6-3543-512b-94fc-6cc87cf058e8'::uuid,
  'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210'::uuid,
  'editor',
  'active',
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '958dfd2d-108e-5000-ae9c-a7a50ee29d53'::uuid,
  '3b77b4e6-3543-512b-94fc-6cc87cf058e8'::uuid,
  '58f91761-2dc2-582b-8d47-64a7f02a5619'::uuid,
  'viewer',
  'active',
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd8590293-bbde-598e-a176-de38d6c1a50d'::uuid,
  '3b77b4e6-3543-512b-94fc-6cc87cf058e8'::uuid,
  'a6390256-0979-5984-bd9a-7a836b35c744'::uuid,
  'viewer',
  'active',
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '078c9c01-1b9f-5b5f-8d68-0df06d275a48'::uuid,
  '3b77b4e6-3543-512b-94fc-6cc87cf058e8'::uuid,
  '7bb33105-f9a4-5ba2-b9bc-caaf0a756d2b'::uuid,
  'viewer',
  'active',
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'fed54afe-d341-5b43-88b9-bd1b9db7a1d9'::uuid,
  '3b77b4e6-3543-512b-94fc-6cc87cf058e8'::uuid,
  'd708a5b4-b620-51f1-80dc-cab1cf1aba19'::uuid,
  'viewer',
  'active',
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '570f5c8c-c389-5d35-afe6-e0bd80267b93'::uuid,
  '3b77b4e6-3543-512b-94fc-6cc87cf058e8'::uuid,
  '00ef4dfa-c228-537e-9a85-59448ff863f9'::uuid,
  'viewer',
  'active',
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '923f10d7-117c-576f-9ab6-69ed5c72504f'::uuid,
  '3b77b4e6-3543-512b-94fc-6cc87cf058e8'::uuid,
  'Prepare figure panels',
  'Tracked work item for Community vaccine confidence study — cohort 6.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '255ac8a0-2c39-56ef-a052-28f23e84684b'::uuid,
  '3b77b4e6-3543-512b-94fc-6cc87cf058e8'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Community vaccine confidence study — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd9f4db96-c850-5920-8ae3-387f077d9b04'::uuid,
  '3b77b4e6-3543-512b-94fc-6cc87cf058e8'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Community vaccine confidence study — cohort 6.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '58f91761-2dc2-582b-8d47-64a7f02a5619'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '28c34837-0500-59c0-b79a-e4a02e6b800a'::uuid,
  '3b77b4e6-3543-512b-94fc-6cc87cf058e8'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Community vaccine confidence study — cohort 6.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'a6390256-0979-5984-bd9a-7a836b35c744'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '81dfa2d6-a96b-5489-945a-a47552fcdd0d'::uuid,
  '3b77b4e6-3543-512b-94fc-6cc87cf058e8'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Community vaccine confidence study — cohort 6.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '7bb33105-f9a4-5ba2-b9bc-caaf0a756d2b'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'da7bd29a-30e2-5e18-8fe6-ae359a0606fb'::uuid,
  '3b77b4e6-3543-512b-94fc-6cc87cf058e8'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Community vaccine confidence study — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'd708a5b4-b620-51f1-80dc-cab1cf1aba19'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c317f08f-4d2d-523a-bb7b-aeb9817941b4'::uuid,
  '3b77b4e6-3543-512b-94fc-6cc87cf058e8'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Community vaccine confidence study — cohort 6.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '00ef4dfa-c228-537e-9a85-59448ff863f9'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3eef397b-f439-5bb0-bab6-3128a638913c'::uuid,
  '3b77b4e6-3543-512b-94fc-6cc87cf058e8'::uuid,
  'Update project README (3)',
  'Tracked work item for Community vaccine confidence study — cohort 6.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e30d7c1f-f538-5829-8d2a-3a09b243d877'::uuid,
  '3b77b4e6-3543-512b-94fc-6cc87cf058e8'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  true,
  'planning',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6e847550-02b4-5d07-b03e-660f1a15d145'::uuid,
  '3b77b4e6-3543-512b-94fc-6cc87cf058e8'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210'::uuid,
  'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210'::uuid,
  true,
  'analysis',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'fb3f62de-f1c8-5b1d-8a73-12efa8f040ef'::uuid,
  '3b77b4e6-3543-512b-94fc-6cc87cf058e8'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '58f91761-2dc2-582b-8d47-64a7f02a5619'::uuid,
  '58f91761-2dc2-582b-8d47-64a7f02a5619'::uuid,
  true,
  'writing',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a526fe45-2962-52b6-995d-809b478e8d2e'::uuid,
  '3b77b4e6-3543-512b-94fc-6cc87cf058e8'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'a6390256-0979-5984-bd9a-7a836b35c744'::uuid,
  'a6390256-0979-5984-bd9a-7a836b35c744'::uuid,
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
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'Near-term quantum error mitigation — cohort 6',
  'Near-term quantum error mitigation is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around NISQ, algorithms. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  ARRAY['NISQ','algorithms']::text[],
  'active',
  'Quantum Information',
  ARRAY['Qiskit','Linear algebra','Optics']::text[],
  'hybrid',
  'long_term',
  14,
  true,
  'Palo Alto, CA',
  now() - interval '103 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd9efc384-12f2-5aba-bf32-9d4ea995a430'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  'owner',
  'active',
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b7e564ee-9e86-5fef-ac61-0156188830ee'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  '81cf8362-41ca-534d-8d37-48b6fd6c7739'::uuid,
  'editor',
  'active',
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '72621d52-d345-533e-81cb-af785ae0e249'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid,
  'viewer',
  'active',
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6a6f237b-52f8-5e8c-8ddd-5ade2e4f85f9'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'bc781f9c-1d1a-53c6-aaec-f25806c05382'::uuid,
  'viewer',
  'active',
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9bbdee19-ef26-544e-b7f9-1c3093b7f38a'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid,
  'viewer',
  'active',
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2abc6f2b-8ced-5e4a-80c2-958312f61fc1'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  '90318e9c-7673-5d60-8f47-d5f4fd26dbd6'::uuid,
  'viewer',
  'active',
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9d61746c-9578-5d96-be8c-2d4db8f2e24c'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  '0b206d9d-85dd-5e6b-b77d-5850790c8b18'::uuid,
  'viewer',
  'active',
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '21180799-3774-5f72-b3de-82f92ea4b0dc'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'ade99177-449e-5b6c-b3ed-6600e8ee7b8b'::uuid,
  'viewer',
  'active',
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '06eca318-2711-5b5c-86de-bc5f1bdd68c5'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'Prepare figure panels',
  'Tracked work item for Near-term quantum error mitigation — cohort 6.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'faf4ecf8-2272-543e-8a53-f102323de958'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Near-term quantum error mitigation — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '81cf8362-41ca-534d-8d37-48b6fd6c7739'::uuid,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '01c36db2-7ae7-545a-a569-49c59bdb7377'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Near-term quantum error mitigation — cohort 6.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ca4ecaef-5a3e-56dd-9ece-2aaad05c97d7'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Near-term quantum error mitigation — cohort 6.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'bc781f9c-1d1a-53c6-aaec-f25806c05382'::uuid,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '910e9827-7e2b-51a5-92af-fef619753f9c'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Near-term quantum error mitigation — cohort 6.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1d49374c-624a-5c1f-a3a7-12841b2219e6'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Near-term quantum error mitigation — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '90318e9c-7673-5d60-8f47-d5f4fd26dbd6'::uuid,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '015434e8-e697-593f-a581-158c81568df5'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Near-term quantum error mitigation — cohort 6.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '0b206d9d-85dd-5e6b-b77d-5850790c8b18'::uuid,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '47124acc-7785-5f12-8beb-e6071bec77dd'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'Update project README (3)',
  'Tracked work item for Near-term quantum error mitigation — cohort 6.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'ade99177-449e-5b6c-b3ed-6600e8ee7b8b'::uuid,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a9e4c8e4-d460-538a-b06a-66598e57c1aa'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  true,
  'planning',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c70eccde-c76a-59e9-9ea8-17968b94bca6'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '81cf8362-41ca-534d-8d37-48b6fd6c7739'::uuid,
  '81cf8362-41ca-534d-8d37-48b6fd6c7739'::uuid,
  true,
  'analysis',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0aac91ad-8201-5395-8c8f-f6e2babd62c3'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid,
  'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid,
  true,
  'writing',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f8e58b88-1612-5727-99a1-33abc0fe1cf5'::uuid,
  '6f5e7675-757f-57c2-b333-419065c423e0'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'bc781f9c-1d1a-53c6-aaec-f25806c05382'::uuid,
  'bc781f9c-1d1a-53c6-aaec-f25806c05382'::uuid,
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
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'Robust evaluation for clinical LLMs — cohort 6',
  'Robust evaluation for clinical LLMs is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around LLMs, evaluation, safety. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  ARRAY['LLMs','evaluation','safety']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'local',
  'long_term',
  15,
  true,
  'Berkeley, CA',
  now() - interval '103 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c0c2f6db-e849-5cd7-916d-43cd37a23160'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  'owner',
  'active',
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1501e4c5-2de6-5bb2-8e57-16b737cc2744'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  '3d066e72-74c1-5d8d-ba3f-96311bb9e942'::uuid,
  'editor',
  'active',
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '523bc3bd-036c-59fe-a401-d377a5503082'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'ebf6481a-b2e8-5f6f-bfeb-dd1fac2d1f3d'::uuid,
  'viewer',
  'active',
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0e54bee6-627f-5ed7-a70e-ce1bea8bf6f7'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid,
  'viewer',
  'active',
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f29d612a-f6dc-57fd-9ed8-1f89ab8cfe87'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  '13eeb55e-7dde-51bb-b7f5-3db2c62e28e7'::uuid,
  'viewer',
  'active',
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '831c9ed9-07bf-5c1a-b782-efe005ebe49f'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  '8c8802de-eb32-550b-88b8-412797aef970'::uuid,
  'viewer',
  'active',
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'cf271531-fbce-56fe-be33-87dbdcf3ab53'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  '770fdfc7-b37c-557f-aa86-9108d6059d54'::uuid,
  'viewer',
  'active',
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c97f6860-f509-58e6-8a98-ef556b8c795d'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'e57c50be-fd3b-5bcb-a5e2-fc50014c7bf9'::uuid,
  'viewer',
  'active',
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '30290bfa-5bb3-5e87-84cd-2cd0125e8a8d'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'd48b7652-dead-5b7f-9a02-4181503a52e0'::uuid,
  'viewer',
  'active',
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2866e882-326f-5a7d-96f8-6ee17eee4ae7'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'Prepare figure panels',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 6.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bd921e0b-1ac0-5e2c-8bfd-7baae55f1abe'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '3d066e72-74c1-5d8d-ba3f-96311bb9e942'::uuid,
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '184febb2-97be-5bb0-ab75-4ef124728d7b'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 6.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'ebf6481a-b2e8-5f6f-bfeb-dd1fac2d1f3d'::uuid,
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1b59f3fe-b463-5d97-9006-afc194c489d4'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 6.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid,
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2a76bcfe-031a-5e3a-9a4e-051abb5c2213'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 6.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '13eeb55e-7dde-51bb-b7f5-3db2c62e28e7'::uuid,
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '05ed8927-d621-5e4f-853c-7b2ae9e0ea30'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '8c8802de-eb32-550b-88b8-412797aef970'::uuid,
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '20a301d5-28a3-5851-8242-40fbc24eb18d'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 6.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '770fdfc7-b37c-557f-aa86-9108d6059d54'::uuid,
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b8ecd00f-c1f1-531c-8836-660e52f8928a'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'Update project README (3)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 6.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'e57c50be-fd3b-5bcb-a5e2-fc50014c7bf9'::uuid,
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '9e5e09dc-16c5-509c-b081-d0f5ee71e56b'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  true,
  'planning',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8fda3d73-e8a4-5938-b7c2-1ead621a3f3e'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '3d066e72-74c1-5d8d-ba3f-96311bb9e942'::uuid,
  '3d066e72-74c1-5d8d-ba3f-96311bb9e942'::uuid,
  true,
  'analysis',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '75e3443b-de51-5cd2-8a6a-38e9699249de'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'ebf6481a-b2e8-5f6f-bfeb-dd1fac2d1f3d'::uuid,
  'ebf6481a-b2e8-5f6f-bfeb-dd1fac2d1f3d'::uuid,
  true,
  'writing',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '798b7854-df35-5819-828f-0d52c5a7f6d4'::uuid,
  '6ca8778c-4d35-5202-9814-0e9e6a124f8e'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid,
  '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid,
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
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  'Photoredox catalysis for late-stage edits — cohort 6',
  'Photoredox catalysis for late-stage edits is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around catalysis, synthesis. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  ARRAY['catalysis','synthesis']::text[],
  'active',
  'Chemistry',
  ARRAY['Organic synthesis','Spectroscopy','Cheminformatics']::text[],
  'remote',
  'short_term',
  4,
  true,
  'Boston, MA',
  now() - interval '103 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f6836f3e-6705-533c-b59d-1225f3539a39'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  'owner',
  'active',
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1329556b-b308-52a8-bd80-cc81408b2bd5'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  '596f1efc-5edd-5271-b22f-b2020762115f'::uuid,
  'editor',
  'active',
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '244c06df-85e6-5a18-961c-32dc93f119cc'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  'ba7fc771-ba33-54f2-b75c-bf563b08e7e3'::uuid,
  'viewer',
  'active',
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'dc78707e-a6e2-5bcc-8cbb-4d81a9a544a3'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid,
  'viewer',
  'active',
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '31b24be4-ba79-52e9-8bac-7f18663bd539'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  'Prepare figure panels',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 6.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c481706e-0d9c-5144-94cc-4a1cd631d0aa'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '596f1efc-5edd-5271-b22f-b2020762115f'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '54d9fb68-e058-576c-a489-03957ce95ba1'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 6.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'ba7fc771-ba33-54f2-b75c-bf563b08e7e3'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '376e4f43-a237-5ac5-a035-3418ce683faf'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 6.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8bb8be36-abf1-5a16-8b75-2416f911fa96'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 6.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '94390375-a10a-53e3-b166-c611cc251819'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '596f1efc-5edd-5271-b22f-b2020762115f'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ad130623-dd57-5721-8829-1f0b882266c7'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 6.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'ba7fc771-ba33-54f2-b75c-bf563b08e7e3'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b68a30c2-a7e4-55a8-9c2f-f1660d955580'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  'Update project README (3)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 6.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4bc3b74f-e6cd-5c29-b717-d373c07111d5'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  true,
  'planning',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b98f4f58-4944-5fe8-857e-fbd12a2fcc47'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '596f1efc-5edd-5271-b22f-b2020762115f'::uuid,
  '596f1efc-5edd-5271-b22f-b2020762115f'::uuid,
  true,
  'analysis',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'cb743569-933e-5df1-83bf-1a59e0a6dc9c'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'ba7fc771-ba33-54f2-b75c-bf563b08e7e3'::uuid,
  'ba7fc771-ba33-54f2-b75c-bf563b08e7e3'::uuid,
  true,
  'writing',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5b38f483-3739-587f-a3ff-8d35f412ec59'::uuid,
  'cb99dcf8-9adb-5f2f-9b6f-0a9aeb516b7f'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid,
  'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid,
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
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  'STEM identity in first-gen undergraduates — cohort 6',
  'STEM identity in first-gen undergraduates is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around equity, mixed methods. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  ARRAY['equity','mixed methods']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'hybrid',
  'medium_term',
  5,
  true,
  'Toronto, ON',
  now() - interval '103 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0419d4d4-eb40-54ad-9407-e47fd713b84d'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  'owner',
  'active',
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'fa8567a7-e95c-5af3-b163-44115d611311'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  '5cf4ccea-92d5-5091-acda-a50401fee6e4'::uuid,
  'editor',
  'active',
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b244b1bb-2445-5974-87fc-c58c58429a44'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid,
  'viewer',
  'active',
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1f650161-0ef9-5c14-82b7-d36c680d1609'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  '32c996f0-f86e-5230-9f69-860c68c2a67c'::uuid,
  'viewer',
  'active',
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9afd00e2-2810-5f42-855c-758bb94b6e9b'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  'd0ad7377-23be-599e-a7a4-536cf065e51d'::uuid,
  'viewer',
  'active',
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e11d595b-0f27-5f6b-9c04-d5557635d310'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  'Prepare figure panels',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 6.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '953dddc6-43a1-509a-8615-00b8863698ae'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '5cf4ccea-92d5-5091-acda-a50401fee6e4'::uuid,
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3806d920-b80b-5265-8c3f-5fc841975a78'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  'Upload supplementary tables',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 6.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid,
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2ec9606e-f984-54c8-a0c8-83fc76656ee1'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 6.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '32c996f0-f86e-5230-9f69-860c68c2a67c'::uuid,
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '02746317-ee50-556f-9e81-f8ec727c9cba'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  'Validate QC pipeline',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 6.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'd0ad7377-23be-599e-a7a4-536cf065e51d'::uuid,
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '13f13df0-a9ff-5de7-8dde-a01c979d6f94'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  'Collect pilot feedback',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '63811611-c64a-5445-b6d2-0cbb40813b7c'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  'Submit internal review (2)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 6.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '5cf4ccea-92d5-5091-acda-a50401fee6e4'::uuid,
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f04897f6-3152-5abb-855f-aa2454732081'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  'Update project README (3)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 6.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid,
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '9afc941e-6367-52a1-a013-adaac7722499'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid,
  true,
  'planning',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f66c302a-c85d-54f3-9b4c-649127c14b03'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '5cf4ccea-92d5-5091-acda-a50401fee6e4'::uuid,
  '5cf4ccea-92d5-5091-acda-a50401fee6e4'::uuid,
  true,
  'analysis',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5cb39876-7615-577a-bf7a-669e0dacc567'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid,
  'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid,
  true,
  'writing',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '847452db-3fe6-5c7d-8831-9be0aa05733e'::uuid,
  '0984b152-8baf-5455-8215-8cd89a3af377'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '32c996f0-f86e-5230-9f69-860c68c2a67c'::uuid,
  '32c996f0-f86e-5230-9f69-860c68c2a67c'::uuid,
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
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  'Dexterous packing under uncertainty — cohort 6',
  'Dexterous packing under uncertainty is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around manipulation, sim2real. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  ARRAY['manipulation','sim2real']::text[],
  'planning',
  'Robotics',
  ARRAY['ROS','Control systems','C++']::text[],
  'local',
  'long_term',
  6,
  true,
  'Zurich, CH',
  now() - interval '103 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f0c20374-7109-5831-8861-bcb663dfd0d7'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  'owner',
  'active',
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd4ab150a-8cce-521b-9c08-b55a6d511d7f'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  '50ad2705-6c08-5d3c-a6f7-dd4d59b16af6'::uuid,
  'editor',
  'active',
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '557419ae-f618-5e5c-ac18-c1893686f947'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid,
  'viewer',
  'active',
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a31edec2-19f0-5bce-96d2-1078c30babcb'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  '5cd17e21-fe4e-5ed4-b394-0f20f92ff70b'::uuid,
  'viewer',
  'active',
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '06b116cc-b9f6-5cb5-85ec-b170bd90c752'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  '8bb8a23a-9edf-5a77-92bb-92fa6ea26628'::uuid,
  'viewer',
  'active',
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f6973763-1d1f-5c25-a0e5-3ef4e15a413a'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  'e689d62a-1c67-5a79-87ec-81b794bd9c0f'::uuid,
  'viewer',
  'active',
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'af995184-7913-5918-b901-fe915e136197'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  'Prepare figure panels',
  'Tracked work item for Dexterous packing under uncertainty — cohort 6.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a4fa8f74-96c0-57ee-8082-ac90d210e9ae'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Dexterous packing under uncertainty — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '50ad2705-6c08-5d3c-a6f7-dd4d59b16af6'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'dddbc274-c068-5581-a67b-6dfe99d72655'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Dexterous packing under uncertainty — cohort 6.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b5eddd52-c93a-52d0-af83-cfe8f6a3007d'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Dexterous packing under uncertainty — cohort 6.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '5cd17e21-fe4e-5ed4-b394-0f20f92ff70b'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '920ada30-2c52-5c49-862c-6c322c5c2d7c'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Dexterous packing under uncertainty — cohort 6.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '8bb8a23a-9edf-5a77-92bb-92fa6ea26628'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'afd0af64-baa9-5c74-a748-1c84b8601bb1'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Dexterous packing under uncertainty — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'e689d62a-1c67-5a79-87ec-81b794bd9c0f'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f70cb19f-4b6b-59fc-9d2a-4bc48c671d21'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 6.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a9b017d7-0ebc-551a-b298-b373d6d26936'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  'Update project README (3)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 6.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '50ad2705-6c08-5d3c-a6f7-dd4d59b16af6'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6b4d6d2b-f87c-5d70-8586-e7c9545bc403'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  true,
  'planning',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c84ad722-8446-5221-890d-6a79c3e4dbb4'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '50ad2705-6c08-5d3c-a6f7-dd4d59b16af6'::uuid,
  '50ad2705-6c08-5d3c-a6f7-dd4d59b16af6'::uuid,
  true,
  'analysis',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f194f38a-7e95-597e-9fbd-e152e548af87'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid,
  '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid,
  true,
  'writing',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5d73dd49-d7bc-5700-b930-32b54dfcf166'::uuid,
  'cc31f0c4-3b1a-59ef-ad4c-0d800853c95f'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '5cd17e21-fe4e-5ed4-b394-0f20f92ff70b'::uuid,
  '5cd17e21-fe4e-5ed4-b394-0f20f92ff70b'::uuid,
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
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  'Transit spectroscopy pipeline for JWST — cohort 6',
  'Transit spectroscopy pipeline for JWST is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around exoplanets, pipelines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  ARRAY['exoplanets','pipelines']::text[],
  'active',
  'Astrophysics',
  ARRAY['Data pipelines','Python','Bayesian inference']::text[],
  'remote',
  'long_term',
  7,
  true,
  'London, UK',
  now() - interval '103 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9fbb84d9-504a-586d-b540-c42764620b16'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  'owner',
  'active',
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c37c9bdf-8516-50cc-a0c2-64a7b8153ab0'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  '89aa91c4-b9ae-510d-a439-dabca78c14c8'::uuid,
  'editor',
  'active',
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9d639d5a-ca51-56c9-aa6a-69d6f5963229'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  '09f6f046-2d8f-58d1-be5f-2a968e9c243e'::uuid,
  'viewer',
  'active',
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c45adb5c-6614-51a2-a3ed-56252cbe6bde'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  '138b24f6-2614-5f93-970c-fd5a958ff796'::uuid,
  'viewer',
  'active',
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c868fc26-3481-5a3f-82ad-481be0454343'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  '4b5ce663-76c6-53ea-9e74-cedb914dfad3'::uuid,
  'viewer',
  'active',
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ad80d630-8f30-5c49-89ca-896189582a8d'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  '7ef20ab1-ba74-5bbd-8474-5509bd90af81'::uuid,
  'viewer',
  'active',
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0b8407f3-4800-52b4-a213-4a66e33d666e'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  '5adbe397-780c-5a92-baa4-edd6c908ea3d'::uuid,
  'viewer',
  'active',
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '16f8a46b-72d9-557d-a7c3-6965f19fc5af'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  'Prepare figure panels',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 6.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'faea7c9b-e7e5-5ce0-b7fc-24fdd8825de3'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '89aa91c4-b9ae-510d-a439-dabca78c14c8'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f00801fc-71a7-57ff-9282-08c102a74cd0'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 6.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '09f6f046-2d8f-58d1-be5f-2a968e9c243e'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '404c14bf-ff21-52ba-bd69-dd32f5ab7b6e'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 6.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '138b24f6-2614-5f93-970c-fd5a958ff796'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '35582308-eabd-5f01-aad6-0444353f46de'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 6.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '4b5ce663-76c6-53ea-9e74-cedb914dfad3'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '68b7554d-f595-5f5f-b5bf-b482a74ddb95'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '7ef20ab1-ba74-5bbd-8474-5509bd90af81'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7455ccc0-504c-5fd5-bf7e-608f06753073'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 6.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '5adbe397-780c-5a92-baa4-edd6c908ea3d'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '928c4163-5558-5aaa-9648-69e0ffb818b3'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  'Update project README (3)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 6.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '561a02fe-9584-59bb-a957-403e8f13321f'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  true,
  'planning',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '9a8cd299-23e9-53b2-8277-d94a54a02e77'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '89aa91c4-b9ae-510d-a439-dabca78c14c8'::uuid,
  '89aa91c4-b9ae-510d-a439-dabca78c14c8'::uuid,
  true,
  'analysis',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '24a3aba0-c480-5a67-9b1f-adc2fcd12cf4'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '09f6f046-2d8f-58d1-be5f-2a968e9c243e'::uuid,
  '09f6f046-2d8f-58d1-be5f-2a968e9c243e'::uuid,
  true,
  'writing',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b6575430-cc53-53af-9a4f-f19a0b2cd6f9'::uuid,
  '13b36e0c-faed-54df-b673-2364c23d441d'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '138b24f6-2614-5f93-970c-fd5a958ff796'::uuid,
  '138b24f6-2614-5f93-970c-fd5a958ff796'::uuid,
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
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  'Vascularized cardiac organoids — cohort 6',
  'Vascularized cardiac organoids is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around organoids, tissue eng. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  ARRAY['organoids','tissue eng']::text[],
  'active',
  'Bioengineering',
  ARRAY['Tissue culture','CAD','Microfluidics']::text[],
  'hybrid',
  'short_term',
  8,
  true,
  'Seattle, WA',
  now() - interval '103 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ab45e5ed-62d9-53db-8d94-4a7d29e72038'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  'owner',
  'active',
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2d7f2fe4-d8a9-5d8c-903c-296a81110551'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  '1930b2bd-9292-5ae1-8aa8-87ba01cf39b3'::uuid,
  'editor',
  'active',
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '59236d1b-6245-584a-9af6-2ff4b0815192'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  '3d8d5666-d328-525f-af6f-5d62770e273a'::uuid,
  'viewer',
  'active',
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6905d295-5b36-592a-a526-26c8c09ee227'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  'ce7769bd-532f-5bdc-ad75-945193340435'::uuid,
  'viewer',
  'active',
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9b0f9696-daf8-5c80-a9d0-6c274c6a39cf'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  '7b408ed2-1e1b-5814-8f06-42702ec39ff5'::uuid,
  'viewer',
  'active',
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'aba6df02-2484-59fa-b828-b35f6d733b9a'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  '789cb839-9c80-5444-ae46-de39fa27b287'::uuid,
  'viewer',
  'active',
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '39fd8b5b-3b19-5f23-9bce-64b4966c152e'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  '3a305db2-a0f9-5bd9-94ce-ca6892b43188'::uuid,
  'viewer',
  'active',
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'fb128e48-e8fd-5d85-bafb-6e6a3e21d573'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  '345c8171-44e4-513a-98ee-6a601680d628'::uuid,
  'viewer',
  'active',
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '498981a8-9b5c-5657-a71d-33f85399f36c'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  'Prepare figure panels',
  'Tracked work item for Vascularized cardiac organoids — cohort 6.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8a17e266-09dd-5de7-8e14-3c2471e0bd5b'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Vascularized cardiac organoids — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '1930b2bd-9292-5ae1-8aa8-87ba01cf39b3'::uuid,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ea500de5-218e-5fea-8ee2-1f3f00f233f6'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Vascularized cardiac organoids — cohort 6.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '3d8d5666-d328-525f-af6f-5d62770e273a'::uuid,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a55dbdc6-fa13-5b5c-b35e-e188ffd9fee6'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Vascularized cardiac organoids — cohort 6.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'ce7769bd-532f-5bdc-ad75-945193340435'::uuid,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'cb92d3bd-3f5b-5e34-adad-efecb1d73a7b'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Vascularized cardiac organoids — cohort 6.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '7b408ed2-1e1b-5814-8f06-42702ec39ff5'::uuid,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '23d90824-8c14-5d1b-9053-e4e126c136c4'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Vascularized cardiac organoids — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '789cb839-9c80-5444-ae46-de39fa27b287'::uuid,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1a9ef103-f675-5836-a804-2fc2658c6f54'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Vascularized cardiac organoids — cohort 6.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '3a305db2-a0f9-5bd9-94ce-ca6892b43188'::uuid,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a6d39036-44ab-5d6c-acbe-d59adb67c551'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  'Update project README (3)',
  'Tracked work item for Vascularized cardiac organoids — cohort 6.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '345c8171-44e4-513a-98ee-6a601680d628'::uuid,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd8b755cd-17b2-5ac3-9caa-f79f14c77244'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  true,
  'planning',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd680a175-c4a2-55f7-915a-1fc23a599015'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '1930b2bd-9292-5ae1-8aa8-87ba01cf39b3'::uuid,
  '1930b2bd-9292-5ae1-8aa8-87ba01cf39b3'::uuid,
  true,
  'analysis',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '7a7400cb-605d-5538-bc2e-f1fd72246cff'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '3d8d5666-d328-525f-af6f-5d62770e273a'::uuid,
  '3d8d5666-d328-525f-af6f-5d62770e273a'::uuid,
  true,
  'writing',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e3c699d8-552f-53db-9b1d-1db6aeda5412'::uuid,
  '32a2c9e6-592a-5c08-a00a-d82f18f18a05'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'ce7769bd-532f-5bdc-ad75-945193340435'::uuid,
  'ce7769bd-532f-5bdc-ad75-945193340435'::uuid,
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
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'Labor market effects of credentialing — cohort 6',
  'Labor market effects of credentialing is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around causal, policy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  ARRAY['causal','policy']::text[],
  'active',
  'Economics',
  ARRAY['Econometrics','Stata','Causal ML']::text[],
  'local',
  'medium_term',
  9,
  true,
  'Pittsburgh, PA',
  now() - interval '103 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '192db0da-5c9a-5d01-9955-e58c6881ea13'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  'owner',
  'active',
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6a791dc1-b0fb-56bd-9d97-60403008f17a'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  '3ded6ddb-d842-54f0-abf2-3e272b3178be'::uuid,
  'editor',
  'active',
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd1a0f770-c131-5b3a-ad68-e517d8e01ed6'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'b6eb43c5-600f-5ee8-ab63-a5bf5ad349ab'::uuid,
  'viewer',
  'active',
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4abb54ff-1d94-5ef6-9879-87cc7c663a49'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  '2ba9af1f-cad6-5410-9096-568e6ffa5579'::uuid,
  'viewer',
  'active',
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '134d7ad2-21ce-50ee-a835-dbc2b107f1db'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  '43b38cd0-7ecb-53bb-86c7-76bed869d19f'::uuid,
  'viewer',
  'active',
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '855b507c-12ee-5451-bb4a-642921c587c2'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'a0be9746-2732-59d8-9d1c-52829b061343'::uuid,
  'viewer',
  'active',
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8866c6d2-7381-5b30-8559-86b50b212f32'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  '2f7357e8-f852-5e6d-a819-d0062717ec63'::uuid,
  'viewer',
  'active',
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6239bce8-7d79-5322-b8be-284738e42f41'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'a44778cb-c276-5a51-bc92-31e723fba28c'::uuid,
  'viewer',
  'active',
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4e8a66ea-4cfc-5785-931e-0215d482d4c2'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'd607c5db-de3d-5283-938a-378840208167'::uuid,
  'viewer',
  'active',
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fc016f27-dc2c-5340-92e8-271b8a16bf5f'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'Prepare figure panels',
  'Tracked work item for Labor market effects of credentialing — cohort 6.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c12c201f-79eb-57dd-87f9-a720b83a782c'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Labor market effects of credentialing — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '3ded6ddb-d842-54f0-abf2-3e272b3178be'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4dd2d03e-3aa2-5d21-aa6c-482ea8bdf651'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Labor market effects of credentialing — cohort 6.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'b6eb43c5-600f-5ee8-ab63-a5bf5ad349ab'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7fef4233-edf6-5b2c-9e25-1d4e1f6fdecb'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Labor market effects of credentialing — cohort 6.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '2ba9af1f-cad6-5410-9096-568e6ffa5579'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '010ad3b8-2717-5476-a38b-3dd1c89a1cbd'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Labor market effects of credentialing — cohort 6.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '43b38cd0-7ecb-53bb-86c7-76bed869d19f'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6c7079f7-3bcd-552b-afb8-d92764dcb439'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Labor market effects of credentialing — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'a0be9746-2732-59d8-9d1c-52829b061343'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9ef1779c-b043-5c90-97f9-7d7d96c76bf1'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Labor market effects of credentialing — cohort 6.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '2f7357e8-f852-5e6d-a819-d0062717ec63'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'cdf5aecf-8b3e-55a6-8364-21109f828e5d'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'Update project README (3)',
  'Tracked work item for Labor market effects of credentialing — cohort 6.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'a44778cb-c276-5a51-bc92-31e723fba28c'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a15624aa-f766-53cc-81b1-bab79c9ef3a8'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  true,
  'planning',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0d12a089-fe1e-56d6-ae83-869eeafafb5b'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '3ded6ddb-d842-54f0-abf2-3e272b3178be'::uuid,
  '3ded6ddb-d842-54f0-abf2-3e272b3178be'::uuid,
  true,
  'analysis',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f1399dc2-6d1f-543f-b9d8-f122185f9acf'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'b6eb43c5-600f-5ee8-ab63-a5bf5ad349ab'::uuid,
  'b6eb43c5-600f-5ee8-ab63-a5bf5ad349ab'::uuid,
  true,
  'writing',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a987cfd7-8390-5569-8cdf-dd5e1f96940f'::uuid,
  '1fad6a86-74ee-5c1d-8378-7298d40c858e'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '2ba9af1f-cad6-5410-9096-568e6ffa5579'::uuid,
  '2ba9af1f-cad6-5410-9096-568e6ffa5579'::uuid,
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
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  'Low-cost water contaminant sensing — cohort 6',
  'Low-cost water contaminant sensing is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around sensors, water. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  ARRAY['sensors','water']::text[],
  'active',
  'Environmental Engineering',
  ARRAY['Hydrology','Sensor networks','Python']::text[],
  'remote',
  'long_term',
  10,
  true,
  'Atlanta, GA',
  now() - interval '103 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '88678ed6-fdd4-5ca7-b5e8-f2cee3bc6774'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  'owner',
  'active',
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd13120a2-f35c-554e-b08d-3140c23d2ebf'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  'eab6b3ab-8b1a-55f2-98e3-08e308d55581'::uuid,
  'editor',
  'active',
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '993e051c-591f-5cdb-8e8b-a4bd87d2a4a6'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  '2d1a6824-fe3c-5305-a454-69c87e85e8e6'::uuid,
  'viewer',
  'active',
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a2af6c55-7e17-59a2-97a9-31c0f152c247'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  '9324daab-fb79-5728-896a-07ab22a4beb6'::uuid,
  'viewer',
  'active',
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3ca757b0-9090-5dbf-bd9e-a24cda55d93d'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  'Prepare figure panels',
  'Tracked work item for Low-cost water contaminant sensing — cohort 6.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a41df258-fa2b-55b7-9db9-6d530d391fb5'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Low-cost water contaminant sensing — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'eab6b3ab-8b1a-55f2-98e3-08e308d55581'::uuid,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9ce2fd57-4a5a-5cd2-b745-1f93e206364e'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Low-cost water contaminant sensing — cohort 6.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '2d1a6824-fe3c-5305-a454-69c87e85e8e6'::uuid,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bce0b517-27f0-5810-810c-fa501b5f687e'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Low-cost water contaminant sensing — cohort 6.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '9324daab-fb79-5728-896a-07ab22a4beb6'::uuid,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2bcfed20-cd60-5b80-b3c2-351ea406cd77'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Low-cost water contaminant sensing — cohort 6.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ba782d29-2fee-5d86-8b5e-4b74f943a0c8'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Low-cost water contaminant sensing — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'eab6b3ab-8b1a-55f2-98e3-08e308d55581'::uuid,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f7216692-27c6-5027-b5a6-562dea486313'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 6.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '2d1a6824-fe3c-5305-a454-69c87e85e8e6'::uuid,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1c9f9bce-8ab7-5f03-a10f-9899c28f51b9'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  'Update project README (3)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 6.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '9324daab-fb79-5728-896a-07ab22a4beb6'::uuid,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '22dbd7fa-c504-5b33-b602-6499605f8fa5'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  true,
  'planning',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '88ef827a-d3e5-544b-8576-f8ea4236e8b9'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'eab6b3ab-8b1a-55f2-98e3-08e308d55581'::uuid,
  'eab6b3ab-8b1a-55f2-98e3-08e308d55581'::uuid,
  true,
  'analysis',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'efc40fe7-7dfe-5ef1-9ba7-3cdb65100133'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '2d1a6824-fe3c-5305-a454-69c87e85e8e6'::uuid,
  '2d1a6824-fe3c-5305-a454-69c87e85e8e6'::uuid,
  true,
  'writing',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a9975363-bb7a-52b8-81a1-702768bb1474'::uuid,
  'a59f00a3-adc8-5929-a6f6-f35bda5bfc5f'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '9324daab-fb79-5728-896a-07ab22a4beb6'::uuid,
  '9324daab-fb79-5728-896a-07ab22a4beb6'::uuid,
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


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'Classroom AI tutor field study — cohort 6',
  'Classroom AI tutor field study is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around edtech, RCT. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  ARRAY['edtech','RCT']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'hybrid',
  'long_term',
  14,
  true,
  'Chicago, IL',
  now() - interval '103 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5d5999ec-65e7-5b7d-ac03-fe5379a583c5'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  'owner',
  'active',
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a09635c2-fcce-591e-8cc0-a2b68a30b85b'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'bdbffa25-5dda-547c-904d-3abab742a813'::uuid,
  'editor',
  'active',
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '00a3aaf8-3066-526e-9b7f-11a119ec083b'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  '5c62f76c-9d55-5526-baab-65a97b588ff2'::uuid,
  'viewer',
  'active',
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9f036d5b-9939-59c7-9520-04804d9156d3'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'a422bbc4-90f3-569d-90f8-8c220153f0b4'::uuid,
  'viewer',
  'active',
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8af0323e-749e-515f-9081-684371375151'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  '05c0c723-6829-5a0e-abc6-dafc9db5aa7c'::uuid,
  'viewer',
  'active',
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4a79cc65-4c36-5e8d-8ac8-03f669ad9fbf'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'e39e6b56-0b6e-5ec5-80ef-6b410471ac02'::uuid,
  'viewer',
  'active',
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '796f5fd9-c0e1-52a6-99e1-d3b945736bc4'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'fd89cd4b-db01-5882-96e0-d179f823c010'::uuid,
  'viewer',
  'active',
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '98847943-7edd-597e-a94a-228f321c08d9'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'eb6564c3-b3de-5c08-8236-eee1ca3d0923'::uuid,
  'viewer',
  'active',
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '21dd0a66-6cf1-57e0-8f7c-24d58815ea37'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'Prepare figure panels',
  'Tracked work item for Classroom AI tutor field study — cohort 6.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6de23ce5-d4f8-5dd4-8ce7-3b87431727ef'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Classroom AI tutor field study — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'bdbffa25-5dda-547c-904d-3abab742a813'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'eb0c76f3-1513-5cde-91f9-fbc72636d5d6'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Classroom AI tutor field study — cohort 6.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '5c62f76c-9d55-5526-baab-65a97b588ff2'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6aef0a48-c88c-5764-b765-25bc43f79972'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Classroom AI tutor field study — cohort 6.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'a422bbc4-90f3-569d-90f8-8c220153f0b4'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2a534abd-d11d-5c0a-908c-5d9dcbfcccad'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Classroom AI tutor field study — cohort 6.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '05c0c723-6829-5a0e-abc6-dafc9db5aa7c'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '07c86742-2caa-5ea6-b0dd-2b50963f6f40'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Classroom AI tutor field study — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'e39e6b56-0b6e-5ec5-80ef-6b410471ac02'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '803466f1-f2da-53af-9010-33d69f2b85ff'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Classroom AI tutor field study — cohort 6.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'fd89cd4b-db01-5882-96e0-d179f823c010'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f872b247-7b14-58d3-9cc1-efbac978d6d2'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'Update project README (3)',
  'Tracked work item for Classroom AI tutor field study — cohort 6.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'eb6564c3-b3de-5c08-8236-eee1ca3d0923'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2c3922bd-f042-5248-9820-5797cefba502'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  true,
  'planning',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a251a832-89e1-5c44-9344-0642c851bdec'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'bdbffa25-5dda-547c-904d-3abab742a813'::uuid,
  'bdbffa25-5dda-547c-904d-3abab742a813'::uuid,
  true,
  'analysis',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '03066615-40b9-5057-963c-fe7526439111'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '5c62f76c-9d55-5526-baab-65a97b588ff2'::uuid,
  '5c62f76c-9d55-5526-baab-65a97b588ff2'::uuid,
  true,
  'writing',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '379a5ddf-6219-5a2e-8014-e0f65ff8d84d'::uuid,
  'c5105ef8-2bf5-58f2-88ee-7eecd24286ab'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'a422bbc4-90f3-569d-90f8-8c220153f0b4'::uuid,
  'a422bbc4-90f3-569d-90f8-8c220153f0b4'::uuid,
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
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'Privacy-preserving wearable analytics — cohort 6',
  'Privacy-preserving wearable analytics is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around wearables, privacy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  ARRAY['wearables','privacy']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'local',
  'long_term',
  15,
  true,
  'Baltimore, MD',
  now() - interval '103 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '00f2cfcc-b6d1-534d-bdd6-34c98e19a2c1'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  'owner',
  'active',
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'fc6ef6fa-a73a-5eb3-a260-c0f618beebd8'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  '082a2d5f-3bf4-561b-af30-d0b06299b4ba'::uuid,
  'editor',
  'active',
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '716526cb-8d95-5b1e-844b-2ca0f725d049'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'e9cf01e2-c731-5f25-a3b2-0abccfa7cfbe'::uuid,
  'viewer',
  'active',
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5f9f644e-5677-50e0-bbd9-b8e3c727ce21'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  '0766e457-77cd-5217-9c3b-2b0dcd4b955f'::uuid,
  'viewer',
  'active',
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0b7adb69-ca44-5978-89f4-d340da6c0b1f'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  '83edcab9-6153-5dfa-86b0-e2e832723741'::uuid,
  'viewer',
  'active',
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '701cde9e-0f43-5958-affc-6be7a866b69a'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'df3e1c62-4247-510c-80e8-205376b04cf6'::uuid,
  'viewer',
  'active',
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a8b53750-c85b-51db-aceb-2fe5c947c9d5'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'b27daf1d-8ab8-5889-9504-0c12a10afbfb'::uuid,
  'viewer',
  'active',
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '50fe15d2-aa80-54a9-96b4-a36c72ee9b5c'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  '6d947ae2-d338-5a25-a719-fc615fbecd70'::uuid,
  'viewer',
  'active',
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7b51bf11-fa39-55df-9c7e-1c874e90caa4'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  '20d3a7aa-cc87-54a7-afae-68bf76bf1481'::uuid,
  'viewer',
  'active',
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9fc260ff-1f24-52d9-a71e-601f08887421'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'Prepare figure panels',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 6.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ab1deca9-4f5a-577c-83cc-784ea8bce717'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '082a2d5f-3bf4-561b-af30-d0b06299b4ba'::uuid,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b6935bb5-c6c2-5a9c-879a-3537b2ea595d'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 6.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'e9cf01e2-c731-5f25-a3b2-0abccfa7cfbe'::uuid,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2876c826-83bb-59f3-98c8-b8409b0260d4'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 6.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '0766e457-77cd-5217-9c3b-2b0dcd4b955f'::uuid,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1ab88d2b-b3ed-5a2e-a673-cb88b41ae07f'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 6.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '83edcab9-6153-5dfa-86b0-e2e832723741'::uuid,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8c41f7ba-d98a-5535-a788-4c90a8ceb8f8'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 6.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'df3e1c62-4247-510c-80e8-205376b04cf6'::uuid,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9ab7f577-fd8f-54bf-bcb9-bf36741ecb5d'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 6.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'b27daf1d-8ab8-5889-9504-0c12a10afbfb'::uuid,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9050c103-3848-5a9b-bcf2-81da89e1c2ca'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'Update project README (3)',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 6.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '6d947ae2-d338-5a25-a719-fc615fbecd70'::uuid,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2d3096f2-780d-53f4-b7bc-99074dfb45a8'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid,
  true,
  'planning',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'fafe5fba-0151-531a-a9fe-f6b15adf86b7'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '082a2d5f-3bf4-561b-af30-d0b06299b4ba'::uuid,
  '082a2d5f-3bf4-561b-af30-d0b06299b4ba'::uuid,
  true,
  'analysis',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '17a8d793-4478-56cd-b0a1-db4d12b8e47c'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'e9cf01e2-c731-5f25-a3b2-0abccfa7cfbe'::uuid,
  'e9cf01e2-c731-5f25-a3b2-0abccfa7cfbe'::uuid,
  true,
  'writing',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '54917fa9-cd29-5906-920b-e8b22e5275d0'::uuid,
  'ba0d1ba0-4ef6-5803-a91e-aa90fb16aa28'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '0766e457-77cd-5217-9c3b-2b0dcd4b955f'::uuid,
  '0766e457-77cd-5217-9c3b-2b0dcd4b955f'::uuid,
  true,
  'ops',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;
