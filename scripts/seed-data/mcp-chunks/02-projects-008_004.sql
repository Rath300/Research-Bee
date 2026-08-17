INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'Vascularized cardiac organoids — cohort 9',
  'Vascularized cardiac organoids is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around organoids, tissue eng. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  ARRAY['organoids','tissue eng']::text[],
  'active',
  'Bioengineering',
  ARRAY['Tissue culture','CAD','Microfluidics']::text[],
  'hybrid',
  'short_term',
  8,
  true,
  'Toronto, ON',
  now() - interval '163 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '40f9e24a-ed10-5dd3-9330-1736e96e6cdf'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  'owner',
  'active',
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '33b45b95-6783-59ed-9d00-7107d1a2e4c4'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  '1ab26a18-9f1d-5d13-b635-8e7bfec05e0e'::uuid,
  'editor',
  'active',
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e7db0844-1f8a-570c-beb5-11d3babbdab4'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  '5bb68fe5-96ce-5240-8f10-cf1202286b31'::uuid,
  'viewer',
  'active',
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'bcad7a2a-520f-56f8-8b47-d4d01f82f94d'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid,
  'viewer',
  'active',
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9310a7d8-f39b-5485-9709-0c313cb5069e'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'b6fd1d0a-577c-50d9-af00-76be7ac0fe27'::uuid,
  'viewer',
  'active',
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a35d6902-593d-5825-88a2-fc2ca4679bc2'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  '71e76d95-9bb6-5da0-b840-adff1e3b3e09'::uuid,
  'viewer',
  'active',
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c0ec1bd8-9556-5e5c-ac8c-f8b49fa44fc4'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'fd521a38-e933-583e-9739-3570f7da8371'::uuid,
  'viewer',
  'active',
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8f5dc36e-49be-53b5-8d77-513753ebac8a'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'bc6f828c-01a3-54cb-8689-2ba2d88d126d'::uuid,
  'viewer',
  'active',
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0bd0c3ed-d225-589e-beeb-23e1cf302244'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'Prepare figure panels',
  'Tracked work item for Vascularized cardiac organoids — cohort 9.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5739d0ec-c193-5325-90ce-944812d2f95a'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Vascularized cardiac organoids — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '1ab26a18-9f1d-5d13-b635-8e7bfec05e0e'::uuid,
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'de94cc7a-29c4-5c3d-9972-5849801f0e62'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Vascularized cardiac organoids — cohort 9.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '5bb68fe5-96ce-5240-8f10-cf1202286b31'::uuid,
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '81d7e09f-3541-5652-9a1d-1d257134a7ea'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Vascularized cardiac organoids — cohort 9.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid,
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8185b10c-2a07-55dd-9036-59d47c839265'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Vascularized cardiac organoids — cohort 9.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'b6fd1d0a-577c-50d9-af00-76be7ac0fe27'::uuid,
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0143f250-79b7-5bb7-8930-ec44011e13d7'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Vascularized cardiac organoids — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '71e76d95-9bb6-5da0-b840-adff1e3b3e09'::uuid,
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a192fcd1-2a1a-5e4a-8bb0-c084a89788b8'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Vascularized cardiac organoids — cohort 9.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'fd521a38-e933-583e-9739-3570f7da8371'::uuid,
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '123262a6-4c62-5e19-99b3-1f40eba87e01'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'Update project README (3)',
  'Tracked work item for Vascularized cardiac organoids — cohort 9.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'bc6f828c-01a3-54cb-8689-2ba2d88d126d'::uuid,
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd6357796-d04e-5fd9-b829-865d4e9f1419'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid,
  true,
  'planning',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5fdb6bc4-7503-53da-b2a7-42bb2edce8bc'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '1ab26a18-9f1d-5d13-b635-8e7bfec05e0e'::uuid,
  '1ab26a18-9f1d-5d13-b635-8e7bfec05e0e'::uuid,
  true,
  'analysis',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '64488e56-e99e-52d0-afa4-699a70830474'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '5bb68fe5-96ce-5240-8f10-cf1202286b31'::uuid,
  '5bb68fe5-96ce-5240-8f10-cf1202286b31'::uuid,
  true,
  'writing',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a224297a-b9c0-56ae-9aa6-c44a44f49622'::uuid,
  '34c854f1-df36-5405-95b6-430b7bd04808'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid,
  '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid,
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
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'Labor market effects of credentialing — cohort 9',
  'Labor market effects of credentialing is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around causal, policy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  ARRAY['causal','policy']::text[],
  'active',
  'Economics',
  ARRAY['Econometrics','Stata','Causal ML']::text[],
  'local',
  'medium_term',
  9,
  true,
  'Zurich, CH',
  now() - interval '163 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '29460eec-b4c7-5a2a-83a5-39a331112bdf'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  'owner',
  'active',
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3ec276db-4b79-581d-93aa-b37f9fb60baf'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid,
  'editor',
  'active',
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c00ec293-9159-57cc-8f97-b4281a253981'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'f1960a0a-78f4-50df-a9b5-52f5cecb2a7f'::uuid,
  'viewer',
  'active',
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '251f0ef2-4055-5527-91e7-71e2da1abbbb'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  '83ca350d-88aa-5712-a84d-d53fb5dfe34a'::uuid,
  'viewer',
  'active',
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '650e922a-1363-5aed-a5fd-2ac8d76d93fd'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid,
  'viewer',
  'active',
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6d6eff55-275c-5e2e-ae89-11128300d467'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'e3fbeb3d-2a6c-5b72-9ae7-02c84c034471'::uuid,
  'viewer',
  'active',
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '64eb70cc-8410-520b-b68c-6d8c6857fdf6'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  '1b70bae1-1102-5059-84fb-4d69136b5032'::uuid,
  'viewer',
  'active',
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'be88685e-62f9-5773-a444-792b20566f06'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'd63df04e-24ab-5901-bf95-b865f4575782'::uuid,
  'viewer',
  'active',
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e77db5b2-f52c-5d89-ade9-8eca4639fd51'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  '606612b1-7686-5c2f-8974-1cab41c30b32'::uuid,
  'viewer',
  'active',
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '68bcc5b8-f133-5fbb-a89c-faf43e407795'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'Prepare figure panels',
  'Tracked work item for Labor market effects of credentialing — cohort 9.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bed2c900-804e-570b-a7e6-4643e1318957'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Labor market effects of credentialing — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '503f7a55-a525-5971-8587-965336020d24'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Labor market effects of credentialing — cohort 9.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'f1960a0a-78f4-50df-a9b5-52f5cecb2a7f'::uuid,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4eff2a0e-5bc5-5b53-8866-839d4e4b9e90'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Labor market effects of credentialing — cohort 9.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '83ca350d-88aa-5712-a84d-d53fb5dfe34a'::uuid,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '064c3902-903c-53f7-9dde-79fa0d3f5083'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Labor market effects of credentialing — cohort 9.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f3fbe618-9137-53fc-ac1f-2739f72943f1'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Labor market effects of credentialing — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'e3fbeb3d-2a6c-5b72-9ae7-02c84c034471'::uuid,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2dc9ab89-799f-5de3-91bb-780f70190dbe'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Labor market effects of credentialing — cohort 9.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '1b70bae1-1102-5059-84fb-4d69136b5032'::uuid,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ee2345c4-3d04-5ea3-b7c4-4f9fd78bd0f5'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'Update project README (3)',
  'Tracked work item for Labor market effects of credentialing — cohort 9.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'd63df04e-24ab-5901-bf95-b865f4575782'::uuid,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3405b02e-865a-53d9-8a74-4a71fd61e9b7'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  true,
  'planning',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3757cdaf-ef18-52da-8254-a0c65cad495a'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid,
  'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid,
  true,
  'analysis',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd6097bf7-e6a7-502c-83ea-c93b76b099cb'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'f1960a0a-78f4-50df-a9b5-52f5cecb2a7f'::uuid,
  'f1960a0a-78f4-50df-a9b5-52f5cecb2a7f'::uuid,
  true,
  'writing',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e0681a2b-56e3-5a5f-aaba-4f4d22379990'::uuid,
  'e7976180-6c96-51df-9343-2718b6e5d3ab'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '83ca350d-88aa-5712-a84d-d53fb5dfe34a'::uuid,
  '83ca350d-88aa-5712-a84d-d53fb5dfe34a'::uuid,
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
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  'Low-cost water contaminant sensing — cohort 9',
  'Low-cost water contaminant sensing is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around sensors, water. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  ARRAY['sensors','water']::text[],
  'active',
  'Environmental Engineering',
  ARRAY['Hydrology','Sensor networks','Python']::text[],
  'remote',
  'long_term',
  10,
  true,
  'London, UK',
  now() - interval '163 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6783eec4-9194-5ae8-9a70-149a7dde4770'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  'owner',
  'active',
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'bee8cb4d-23c9-5fe8-bca0-2b8b3f263b68'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  '48d761d1-a120-5c9e-8de9-c17b54e987e9'::uuid,
  'editor',
  'active',
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '936535f1-6f0b-5094-b33d-b83e003e4db8'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  '15329dac-2653-5bf8-ab92-979bca93b089'::uuid,
  'viewer',
  'active',
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '857fbbc1-f1cb-5817-ab43-d84af3e6bf13'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8'::uuid,
  'viewer',
  'active',
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '29a27897-18f5-5b5a-a90b-51977d602885'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  'Prepare figure panels',
  'Tracked work item for Low-cost water contaminant sensing — cohort 9.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3c163fa4-a2e7-5fa8-8dfc-f8825cadb4d8'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Low-cost water contaminant sensing — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '48d761d1-a120-5c9e-8de9-c17b54e987e9'::uuid,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '411918c7-bd54-525b-a955-8e37421df3f0'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Low-cost water contaminant sensing — cohort 9.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '15329dac-2653-5bf8-ab92-979bca93b089'::uuid,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'caf6119c-4e5c-5923-ade5-e24d133120e5'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Low-cost water contaminant sensing — cohort 9.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8'::uuid,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e1c759da-f47f-5898-b156-9235bf841426'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Low-cost water contaminant sensing — cohort 9.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'db2d4a0b-09f3-5eee-ae09-1143fa6ac2be'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Low-cost water contaminant sensing — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '48d761d1-a120-5c9e-8de9-c17b54e987e9'::uuid,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '11dfb4aa-327c-554a-8088-9159189ebc15'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 9.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '15329dac-2653-5bf8-ab92-979bca93b089'::uuid,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'db201bf1-7cd1-516e-bc79-ee7ab8dc6d9a'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  'Update project README (3)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 9.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8'::uuid,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2c554fe1-3ec6-53de-975d-81bfdc9c6d41'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  '56f8439d-f665-534b-a3ed-49809023f629'::uuid,
  true,
  'planning',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4d32b0c8-5dc7-5b2f-ab6c-db6e44187ab5'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '48d761d1-a120-5c9e-8de9-c17b54e987e9'::uuid,
  '48d761d1-a120-5c9e-8de9-c17b54e987e9'::uuid,
  true,
  'analysis',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f0219d03-a20b-5bbe-ab4a-9d0074c30559'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '15329dac-2653-5bf8-ab92-979bca93b089'::uuid,
  '15329dac-2653-5bf8-ab92-979bca93b089'::uuid,
  true,
  'writing',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'aabf20e4-b3bd-5843-ba05-f98f98c14096'::uuid,
  '4dcf5d62-e8a3-5277-93fc-278f8d325442'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8'::uuid,
  '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8'::uuid,
  true,
  'ops',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;