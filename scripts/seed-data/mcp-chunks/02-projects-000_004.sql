INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  'Vascularized cardiac organoids — cohort 1',
  'Vascularized cardiac organoids is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around organoids, tissue eng. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  ARRAY['organoids','tissue eng']::text[],
  'active',
  'Bioengineering',
  ARRAY['Tissue culture','CAD','Microfluidics']::text[],
  'remote',
  'short_term',
  4,
  true,
  'New York, NY',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '49b191f4-ab06-5a3c-9095-342f58b46fa0'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  'owner',
  'active',
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ae3f6f35-718f-5aff-abfe-383c3ca330bc'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  'editor',
  'active',
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '29108df4-152c-57db-928a-436827c2c5f1'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  'viewer',
  'active',
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '794abbf8-b536-5cef-86d9-732555e62a41'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  'viewer',
  'active',
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e84f627a-705d-572c-b1ce-5d760f9d6c93'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  'Draft related work section',
  'Tracked work item for Vascularized cardiac organoids — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'eef659f3-1821-5c6c-b978-0fc1b9216fd1'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  'Clean and version dataset',
  'Tracked work item for Vascularized cardiac organoids — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3499f447-4c07-549c-9b5d-572a059caa1c'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  'Run baseline model',
  'Tracked work item for Vascularized cardiac organoids — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fef7610e-d4a4-5e8e-afbd-8fc1fd4870c1'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  'Write IRB amendment',
  'Tracked work item for Vascularized cardiac organoids — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2e0c1e2a-dd57-590a-9410-f9b4054c6a19'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  'Prepare figure panels',
  'Tracked work item for Vascularized cardiac organoids — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'beee17d7-2153-552c-a06e-5e8b83d8e660'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Vascularized cardiac organoids — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7c033a75-d6a5-555f-9dc4-2655887daef2'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Vascularized cardiac organoids — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7fb382e4-ed65-5eb2-856b-19d721e74387'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Vascularized cardiac organoids — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '09184a98-cc44-5311-845d-a7cc380b6c40'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  true,
  'planning',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1d864ba2-df92-582c-9b28-aab6698a10e3'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid,
  true,
  'analysis',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6200759f-8299-565a-aa1c-398d97c01c39'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  true,
  'writing',
  ARRAY['organoids','tissue eng']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '005a0d9d-376a-5416-8c99-e20f19f1ac6c'::uuid,
  'a4a9df50-284b-59d8-910e-1c82cbd7dce8'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
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
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'Labor market effects of credentialing — cohort 1',
  'Labor market effects of credentialing is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around causal, policy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  ARRAY['causal','policy']::text[],
  'active',
  'Economics',
  ARRAY['Econometrics','Stata','Causal ML']::text[],
  'hybrid',
  'medium_term',
  5,
  true,
  'Chicago, IL',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3c831631-289a-5c4e-b024-485eb858c1af'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  'owner',
  'active',
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '50cf8cf0-f2c9-5cb5-95e0-a28ffb968c18'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  'editor',
  'active',
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '36a8f0a9-83e1-5537-a19f-50558c20c2c8'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  'viewer',
  'active',
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4b565d08-6ae7-5286-b367-c6c94b66b5b1'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  'viewer',
  'active',
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '99c57f48-1558-5d5e-90c9-ab9489f3cba5'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  'viewer',
  'active',
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ccac6935-08a8-528f-aa02-cbea109198c1'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'Draft related work section',
  'Tracked work item for Labor market effects of credentialing — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ca7490f7-05ac-578b-b99e-9175e871623a'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'Clean and version dataset',
  'Tracked work item for Labor market effects of credentialing — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '678a986e-8dbc-56f7-b942-50aeff058876'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'Run baseline model',
  'Tracked work item for Labor market effects of credentialing — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '61fa96c5-f073-5633-83ec-d34b03dcff0a'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'Write IRB amendment',
  'Tracked work item for Labor market effects of credentialing — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b2855e1a-3f40-5558-ac40-f17e60c3c278'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'Prepare figure panels',
  'Tracked work item for Labor market effects of credentialing — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7f20cb9e-0147-5dbd-8a20-2b882544e462'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Labor market effects of credentialing — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1e4b1c7b-5501-585c-b185-47584b35f3ae'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Labor market effects of credentialing — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f2936d64-56ec-57f2-b6fb-76f4d4d056cc'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Labor market effects of credentialing — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c576cefe-39e7-5123-9f77-6512db6eaa19'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  true,
  'planning',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c9f7e221-27fa-52b2-b6a4-18323af84d90'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  true,
  'analysis',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c9a24d76-8c8a-5ac6-bdd4-bb3aa0ca7e3c'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid,
  true,
  'writing',
  ARRAY['causal','policy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '44eb86c5-faf8-58ce-89c1-e0e108cd2760'::uuid,
  'd47e0ec1-9df1-5511-9d47-4e2d4e6ac303'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
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
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  'Low-cost water contaminant sensing — cohort 1',
  'Low-cost water contaminant sensing is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around sensors, water. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  ARRAY['sensors','water']::text[],
  'active',
  'Environmental Engineering',
  ARRAY['Hydrology','Sensor networks','Python']::text[],
  'local',
  'long_term',
  6,
  true,
  'Baltimore, MD',
  now() - interval '3 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'da6fddbc-ea17-5712-9983-a14acdd85cf1'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  'owner',
  'active',
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '784a1dba-8386-55b2-aa17-61b5a8e25b5d'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  'editor',
  'active',
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '36d54444-4d79-59fd-83f6-9dc0f48ebe9d'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  'viewer',
  'active',
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a99c48e4-a0ec-54f3-aec3-742e72b49c5a'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  'viewer',
  'active',
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '41fedc87-fbf4-5208-b60c-d6d56b1b9526'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  'viewer',
  'active',
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '44bc456d-f603-5174-bb89-2993463ea894'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  'viewer',
  'active',
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '262965c9-bc72-5580-839f-01e1b107a5d4'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  'Draft related work section',
  'Tracked work item for Low-cost water contaminant sensing — cohort 1.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fc61c38e-ce2a-5c5a-8bbd-d67c8cd779bc'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  'Clean and version dataset',
  'Tracked work item for Low-cost water contaminant sensing — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '947e389d-b823-558c-aaa1-dfc4a6db2f13'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  'Run baseline model',
  'Tracked work item for Low-cost water contaminant sensing — cohort 1.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '37099e3a-a51a-51dc-8f4d-374c2514e4d2'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  'Write IRB amendment',
  'Tracked work item for Low-cost water contaminant sensing — cohort 1.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a22ccf41-2525-5627-82ef-0c3438280ea6'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  'Prepare figure panels',
  'Tracked work item for Low-cost water contaminant sensing — cohort 1.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2e1b364d-0b7e-5895-8bc6-57b6f80c9a62'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Low-cost water contaminant sensing — cohort 1.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '88ca30c5-3b97-5e95-89e1-6fdbbeef873b'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 1.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9ea38a56-caa4-5f43-8425-e4b0f145de5d'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Low-cost water contaminant sensing — cohort 1.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '79c0a2bc-c22a-5db5-a7d4-afe4135055a0'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  true,
  'planning',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3e041d5e-45b6-5682-ba4d-bcd0c0a3a5d9'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  true,
  'analysis',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5903ee4d-666c-5694-a2d3-20a4d878c156'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  true,
  'writing',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c7bc00a8-ec40-5b9b-bb24-c80a780c06eb'::uuid,
  'e8d2b101-2a2e-5c57-9ef1-741e49d219ed'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  true,
  'ops',
  ARRAY['sensors','water']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;