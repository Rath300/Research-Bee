INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '9cbb6b80-fbf2-52ee-9717-11188dd611ea'::uuid,
  'Vascularized cardiac organoids — cohort 7',
  'Vascularized cardiac organoids is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around organoids, tissue eng. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  ARRAY['organoids','tissue eng']::text[],
  'active',
  'Bioengineering',
  ARRAY['Tissue culture','CAD','Microfluidics']::text[],
  'remote',
  'short_term',
  4,
  true,
  'London, UK',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'fcd55a4b-5dbc-5667-8bbf-8585aa999402'::uuid,
  '9cbb6b80-fbf2-52ee-9717-11188dd611ea'::uuid,
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  'owner',
  'active',
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5f14b03d-e243-5200-a061-17b5b1580fa7'::uuid,
  '9cbb6b80-fbf2-52ee-9717-11188dd611ea'::uuid,
  '20d3a7aa-cc87-54a7-afae-68bf76bf1481'::uuid,
  'editor',
  'active',
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '62f4ec02-18ac-574a-b91d-27de682e8fa5'::uuid,
  '9cbb6b80-fbf2-52ee-9717-11188dd611ea'::uuid,
  '24579fee-fc8d-5280-812e-2f0052792b46'::uuid,
  'viewer',
  'active',
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0c2ffd9e-5aa0-5ca0-abaf-85589b5382f8'::uuid,
  '9cbb6b80-fbf2-52ee-9717-11188dd611ea'::uuid,
  'cf4638c0-452a-5dc7-8b92-3d8a0fec4fbc'::uuid,
  'viewer',
  'active',
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b87a80f7-0891-58d3-8eed-47d624cb408e'::uuid,
  '9cbb6b80-fbf2-52ee-9717-11188dd611ea'::uuid,
  'Draft related work section',
  'Tracked work item for Vascularized cardiac organoids — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '103d87e2-ad58-5607-938c-61b7338bac82'::uuid,
  '9cbb6b80-fbf2-52ee-9717-11188dd611ea'::uuid,
  'Clean and version dataset',
  'Tracked work item for Vascularized cardiac organoids — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '20d3a7aa-cc87-54a7-afae-68bf76bf1481'::uuid,
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7ec98ad1-5182-592e-90ae-d319bc839758'::uuid,
  '9cbb6b80-fbf2-52ee-9717-11188dd611ea'::uuid,
  'Run baseline model',
  'Tracked work item for Vascularized cardiac organoids — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '24579fee-fc8d-5280-812e-2f0052792b46'::uuid,
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6fd0204a-a784-5403-8889-aff15091b623'::uuid,
  '9cbb6b80-fbf2-52ee-9717-11188dd611ea'::uuid,
  'Write IRB amendment',
  'Tracked work item for Vascularized cardiac organoids — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'cf4638c0-452a-5dc7-8b92-3d8a0fec4fbc'::uuid,
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2ffeb97a-1444-5663-9d43-4249448c82c1'::uuid,
  '9cbb6b80-fbf2-52ee-9717-11188dd611ea'::uuid,
  'Prepare figure panels',
  'Tracked work item for Vascularized cardiac organoids — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c0a46aae-e584-5fa1-b1ea-8c3c8e8b5297'::uuid,
  '9cbb6b80-fbf2-52ee-9717-11188dd611ea'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Vascularized cardiac organoids — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '20d3a7aa-cc87-54a7-afae-68bf76bf1481'::uuid,
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b59666f0-bafb-5644-b70c-20027b35235f'::uuid,
  '9cbb6b80-fbf2-52ee-9717-11188dd611ea'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Vascularized cardiac organoids — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '24579fee-fc8d-5280-812e-2f0052792b46'::uuid,
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ed2fb21f-dc5b-5ba9-8a77-b0bbb30b3cb9'::uuid,
  '9cbb6b80-fbf2-52ee-9717-11188dd611ea'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Vascularized cardiac organoids — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'cf4638c0-452a-5dc7-8b92-3d8a0fec4fbc'::uuid,
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f2da0bae-0a42-58a2-8306-133550419ab0'::uuid,
  '9cbb6b80-fbf2-52ee-9717-11188dd611ea'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  true,
  'planning',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3e420c3a-c094-539d-8530-9586abc0f0ec'::uuid,
  '9cbb6b80-fbf2-52ee-9717-11188dd611ea'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '20d3a7aa-cc87-54a7-afae-68bf76bf1481'::uuid,
  '20d3a7aa-cc87-54a7-afae-68bf76bf1481'::uuid,
  true,
  'analysis',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b39e25b0-2db8-5f36-9d74-930837346be8'::uuid,
  '9cbb6b80-fbf2-52ee-9717-11188dd611ea'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '24579fee-fc8d-5280-812e-2f0052792b46'::uuid,
  '24579fee-fc8d-5280-812e-2f0052792b46'::uuid,
  true,
  'writing',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e622e1d5-3f54-51a3-9198-3aacdc7be7bb'::uuid,
  '9cbb6b80-fbf2-52ee-9717-11188dd611ea'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'cf4638c0-452a-5dc7-8b92-3d8a0fec4fbc'::uuid,
  'cf4638c0-452a-5dc7-8b92-3d8a0fec4fbc'::uuid,
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
  '5c974b83-1094-5a84-b9a6-5fa25b25a705'::uuid,
  'Labor market effects of credentialing — cohort 7',
  'Labor market effects of credentialing is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around causal, policy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  ARRAY['causal','policy']::text[],
  'active',
  'Economics',
  ARRAY['Econometrics','Stata','Causal ML']::text[],
  'hybrid',
  'medium_term',
  5,
  true,
  'Seattle, WA',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2e31c642-a349-5516-b1c7-02440bb15b43'::uuid,
  '5c974b83-1094-5a84-b9a6-5fa25b25a705'::uuid,
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  'owner',
  'active',
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '09f59959-c626-5cbd-8454-aecd48ce532c'::uuid,
  '5c974b83-1094-5a84-b9a6-5fa25b25a705'::uuid,
  '2b5709bf-80c1-5736-9f7a-c5245a97240b'::uuid,
  'editor',
  'active',
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'da0f6d01-2299-5c75-9d75-773458058ad6'::uuid,
  '5c974b83-1094-5a84-b9a6-5fa25b25a705'::uuid,
  'ffa55c2e-c6ed-51cc-ad2c-c234fd3474ca'::uuid,
  'viewer',
  'active',
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'cca282bc-749a-5390-89e3-312accbe9390'::uuid,
  '5c974b83-1094-5a84-b9a6-5fa25b25a705'::uuid,
  '585cd420-b530-5bba-8219-1713b623a65f'::uuid,
  'viewer',
  'active',
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '000655c4-a645-5d0b-95c9-9b6e5d00a9a3'::uuid,
  '5c974b83-1094-5a84-b9a6-5fa25b25a705'::uuid,
  'd61f9134-0a6b-57c5-a04b-1a83a5f6fcdd'::uuid,
  'viewer',
  'active',
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1678c62e-e5ce-59b6-a61d-8fc6aa3e94eb'::uuid,
  '5c974b83-1094-5a84-b9a6-5fa25b25a705'::uuid,
  'Draft related work section',
  'Tracked work item for Labor market effects of credentialing — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a6a20b20-f6e9-52c1-8146-08e21925fac4'::uuid,
  '5c974b83-1094-5a84-b9a6-5fa25b25a705'::uuid,
  'Clean and version dataset',
  'Tracked work item for Labor market effects of credentialing — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '2b5709bf-80c1-5736-9f7a-c5245a97240b'::uuid,
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'aa57ea28-6965-5d8c-82ef-001836e0b32b'::uuid,
  '5c974b83-1094-5a84-b9a6-5fa25b25a705'::uuid,
  'Run baseline model',
  'Tracked work item for Labor market effects of credentialing — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'ffa55c2e-c6ed-51cc-ad2c-c234fd3474ca'::uuid,
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3a18ff15-c899-5a9f-b145-47fdc9c0035e'::uuid,
  '5c974b83-1094-5a84-b9a6-5fa25b25a705'::uuid,
  'Write IRB amendment',
  'Tracked work item for Labor market effects of credentialing — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '585cd420-b530-5bba-8219-1713b623a65f'::uuid,
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9ce84903-992c-5031-bce0-1e29e1a6ba14'::uuid,
  '5c974b83-1094-5a84-b9a6-5fa25b25a705'::uuid,
  'Prepare figure panels',
  'Tracked work item for Labor market effects of credentialing — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'd61f9134-0a6b-57c5-a04b-1a83a5f6fcdd'::uuid,
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6977aa3e-c8e5-50d9-a232-66cdef4f4149'::uuid,
  '5c974b83-1094-5a84-b9a6-5fa25b25a705'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Labor market effects of credentialing — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6d5baac9-1d81-56bf-9cbb-4a578492aa70'::uuid,
  '5c974b83-1094-5a84-b9a6-5fa25b25a705'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Labor market effects of credentialing — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '2b5709bf-80c1-5736-9f7a-c5245a97240b'::uuid,
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8c221873-722c-56fb-ba8f-c1df11342cd9'::uuid,
  '5c974b83-1094-5a84-b9a6-5fa25b25a705'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Labor market effects of credentialing — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'ffa55c2e-c6ed-51cc-ad2c-c234fd3474ca'::uuid,
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a0e5c638-b1db-53a8-960f-8d9757a9e05b'::uuid,
  '5c974b83-1094-5a84-b9a6-5fa25b25a705'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  true,
  'planning',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '131e37a6-58eb-5b86-8fed-ec2db23400d0'::uuid,
  '5c974b83-1094-5a84-b9a6-5fa25b25a705'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '2b5709bf-80c1-5736-9f7a-c5245a97240b'::uuid,
  '2b5709bf-80c1-5736-9f7a-c5245a97240b'::uuid,
  true,
  'analysis',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c4f92689-003a-5b99-875c-5bbc97a2a33f'::uuid,
  '5c974b83-1094-5a84-b9a6-5fa25b25a705'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'ffa55c2e-c6ed-51cc-ad2c-c234fd3474ca'::uuid,
  'ffa55c2e-c6ed-51cc-ad2c-c234fd3474ca'::uuid,
  true,
  'writing',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1f389a31-0d8f-5b65-b191-a4fc8b65447e'::uuid,
  '5c974b83-1094-5a84-b9a6-5fa25b25a705'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '585cd420-b530-5bba-8219-1713b623a65f'::uuid,
  '585cd420-b530-5bba-8219-1713b623a65f'::uuid,
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
  '5b94732b-c637-540a-8a30-ff9f0683f906'::uuid,
  'Low-cost water contaminant sensing — cohort 7',
  'Low-cost water contaminant sensing is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around sensors, water. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid,
  ARRAY['sensors','water']::text[],
  'active',
  'Environmental Engineering',
  ARRAY['Hydrology','Sensor networks','Python']::text[],
  'local',
  'long_term',
  6,
  true,
  'Pittsburgh, PA',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd14fd612-b0cb-51a1-a707-90583aedd1ea'::uuid,
  '5b94732b-c637-540a-8a30-ff9f0683f906'::uuid,
  '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid,
  'owner',
  'active',
  '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b04a27c0-b428-5616-8a03-ec58dac92a72'::uuid,
  '5b94732b-c637-540a-8a30-ff9f0683f906'::uuid,
  'da7ea795-6302-569b-a337-84672894f4df'::uuid,
  'editor',
  'active',
  '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8550ff41-a15c-5860-bdef-bfbe5da7480d'::uuid,
  '5b94732b-c637-540a-8a30-ff9f0683f906'::uuid,
  '4aa67be5-efe7-5b07-bb83-6bb1bccd92d4'::uuid,
  'viewer',
  'active',
  '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '23199ef4-082d-58e9-b310-75e6973175fe'::uuid,
  '5b94732b-c637-540a-8a30-ff9f0683f906'::uuid,
  '9dd1dae8-3c5f-5d9b-b989-60af32b5e396'::uuid,
  'viewer',
  'active',
  '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2e529d20-1aa0-5f63-ae83-a809024c521e'::uuid,
  '5b94732b-c637-540a-8a30-ff9f0683f906'::uuid,
  '260a37d7-cab0-5455-a9ea-4fdfc304c263'::uuid,
  'viewer',
  'active',
  '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2bdfe745-2b68-5f77-a6ee-edb80e1ae909'::uuid,
  '5b94732b-c637-540a-8a30-ff9f0683f906'::uuid,
  '6d33514d-cb93-585e-a622-d616d1c49f51'::uuid,
  'viewer',
  'active',
  '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4fdc2008-746a-5ee9-80de-e70409fda850'::uuid,
  '5b94732b-c637-540a-8a30-ff9f0683f906'::uuid,
  'Draft related work section',
  'Tracked work item for Low-cost water contaminant sensing — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid,
  '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a8747843-ef40-53ae-b206-018161b950a9'::uuid,
  '5b94732b-c637-540a-8a30-ff9f0683f906'::uuid,
  'Clean and version dataset',
  'Tracked work item for Low-cost water contaminant sensing — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'da7ea795-6302-569b-a337-84672894f4df'::uuid,
  '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '41c27209-846c-57e3-b00a-b302a2684829'::uuid,
  '5b94732b-c637-540a-8a30-ff9f0683f906'::uuid,
  'Run baseline model',
  'Tracked work item for Low-cost water contaminant sensing — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '4aa67be5-efe7-5b07-bb83-6bb1bccd92d4'::uuid,
  '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e3b959b3-57f2-5844-bd84-166a75b3b784'::uuid,
  '5b94732b-c637-540a-8a30-ff9f0683f906'::uuid,
  'Write IRB amendment',
  'Tracked work item for Low-cost water contaminant sensing — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '9dd1dae8-3c5f-5d9b-b989-60af32b5e396'::uuid,
  '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '97d3834a-8c07-5857-9aef-9442c7da816a'::uuid,
  '5b94732b-c637-540a-8a30-ff9f0683f906'::uuid,
  'Prepare figure panels',
  'Tracked work item for Low-cost water contaminant sensing — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '260a37d7-cab0-5455-a9ea-4fdfc304c263'::uuid,
  '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e406e90d-3af1-555d-acfe-8218ae9b0bae'::uuid,
  '5b94732b-c637-540a-8a30-ff9f0683f906'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Low-cost water contaminant sensing — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '6d33514d-cb93-585e-a622-d616d1c49f51'::uuid,
  '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8d5a6883-19eb-5b86-8475-173cf62e87b1'::uuid,
  '5b94732b-c637-540a-8a30-ff9f0683f906'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid,
  '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '72f8c392-437a-59e9-b49d-381a7373f87a'::uuid,
  '5b94732b-c637-540a-8a30-ff9f0683f906'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'da7ea795-6302-569b-a337-84672894f4df'::uuid,
  '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b62b0f9e-699d-51e3-9c7f-9442150c15a9'::uuid,
  '5b94732b-c637-540a-8a30-ff9f0683f906'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid,
  '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid,
  true,
  'planning',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a1cda76c-5657-5521-9821-c74b011b1903'::uuid,
  '5b94732b-c637-540a-8a30-ff9f0683f906'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'da7ea795-6302-569b-a337-84672894f4df'::uuid,
  'da7ea795-6302-569b-a337-84672894f4df'::uuid,
  true,
  'analysis',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'dea20070-fae9-5689-9767-cd6a52317b4c'::uuid,
  '5b94732b-c637-540a-8a30-ff9f0683f906'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '4aa67be5-efe7-5b07-bb83-6bb1bccd92d4'::uuid,
  '4aa67be5-efe7-5b07-bb83-6bb1bccd92d4'::uuid,
  true,
  'writing',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1c45040c-3338-5f54-8900-cff6ecea89c5'::uuid,
  '5b94732b-c637-540a-8a30-ff9f0683f906'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '9dd1dae8-3c5f-5d9b-b989-60af32b5e396'::uuid,
  '9dd1dae8-3c5f-5d9b-b989-60af32b5e396'::uuid,
  true,
  'ops',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;