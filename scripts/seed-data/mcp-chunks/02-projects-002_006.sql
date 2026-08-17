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