INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '3db59d3b-4646-5158-a487-c65cee4e8b78'::uuid,
  'Single-cell atlas of treatment response — cohort 7',
  'Single-cell atlas of treatment response is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around genomics, RNA-seq, oncology. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid,
  ARRAY['genomics','RNA-seq','oncology']::text[],
  'planning',
  'Computational Biology',
  ARRAY['Python','R','Genomics']::text[],
  'remote',
  'short_term',
  4,
  true,
  'New Haven, CT',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ea2c1a1b-2bf6-5757-9ff8-811104400515'::uuid,
  '3db59d3b-4646-5158-a487-c65cee4e8b78'::uuid,
  'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid,
  'owner',
  'active',
  'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '61d3f4ee-1add-5a62-962a-17ded164a810'::uuid,
  '3db59d3b-4646-5158-a487-c65cee4e8b78'::uuid,
  'd48b7652-dead-5b7f-9a02-4181503a52e0'::uuid,
  'editor',
  'active',
  'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd6b556dc-c55b-5e0e-9d91-bb987f173517'::uuid,
  '3db59d3b-4646-5158-a487-c65cee4e8b78'::uuid,
  '2f973087-14f2-5e74-b267-236219d92b2b'::uuid,
  'viewer',
  'active',
  'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd0ff5817-f76f-53ce-892c-79b08ddb0ab7'::uuid,
  '3db59d3b-4646-5158-a487-c65cee4e8b78'::uuid,
  '53a7a968-97f9-5f8a-be3a-9717574c6e58'::uuid,
  'viewer',
  'active',
  'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '73c2b8db-0de9-5235-99ac-c2ecf8470402'::uuid,
  '3db59d3b-4646-5158-a487-c65cee4e8b78'::uuid,
  'Draft related work section',
  'Tracked work item for Single-cell atlas of treatment response — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid,
  'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '904592d0-434e-5f6d-96ef-bfa0a440a90c'::uuid,
  '3db59d3b-4646-5158-a487-c65cee4e8b78'::uuid,
  'Clean and version dataset',
  'Tracked work item for Single-cell atlas of treatment response — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'd48b7652-dead-5b7f-9a02-4181503a52e0'::uuid,
  'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd77d7d41-a12d-5ce5-b345-06f4af679c09'::uuid,
  '3db59d3b-4646-5158-a487-c65cee4e8b78'::uuid,
  'Run baseline model',
  'Tracked work item for Single-cell atlas of treatment response — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '2f973087-14f2-5e74-b267-236219d92b2b'::uuid,
  'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '745d2e07-989d-540a-a25c-db325c591edf'::uuid,
  '3db59d3b-4646-5158-a487-c65cee4e8b78'::uuid,
  'Write IRB amendment',
  'Tracked work item for Single-cell atlas of treatment response — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '53a7a968-97f9-5f8a-be3a-9717574c6e58'::uuid,
  'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '10551f4e-071f-5642-ab93-9f0515f8301b'::uuid,
  '3db59d3b-4646-5158-a487-c65cee4e8b78'::uuid,
  'Prepare figure panels',
  'Tracked work item for Single-cell atlas of treatment response — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid,
  'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '59e4dc55-911f-5f91-9ea2-caa63bce6548'::uuid,
  '3db59d3b-4646-5158-a487-c65cee4e8b78'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Single-cell atlas of treatment response — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'd48b7652-dead-5b7f-9a02-4181503a52e0'::uuid,
  'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c2a70377-e774-55d0-a3c1-deba13478175'::uuid,
  '3db59d3b-4646-5158-a487-c65cee4e8b78'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Single-cell atlas of treatment response — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '2f973087-14f2-5e74-b267-236219d92b2b'::uuid,
  'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '136a271c-a672-537e-bc3d-400d060b3950'::uuid,
  '3db59d3b-4646-5158-a487-c65cee4e8b78'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Single-cell atlas of treatment response — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '53a7a968-97f9-5f8a-be3a-9717574c6e58'::uuid,
  'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '14b058ec-0646-53ad-b55c-2997aa671775'::uuid,
  '3db59d3b-4646-5158-a487-c65cee4e8b78'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid,
  'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid,
  true,
  'planning',
  ARRAY['genomics','RNA-seq']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2a26358a-37d4-50c6-9374-faaa713df5a0'::uuid,
  '3db59d3b-4646-5158-a487-c65cee4e8b78'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'd48b7652-dead-5b7f-9a02-4181503a52e0'::uuid,
  'd48b7652-dead-5b7f-9a02-4181503a52e0'::uuid,
  true,
  'analysis',
  ARRAY['genomics','RNA-seq']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1923c548-e008-5d7a-b1eb-a2f8c03bda5b'::uuid,
  '3db59d3b-4646-5158-a487-c65cee4e8b78'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '2f973087-14f2-5e74-b267-236219d92b2b'::uuid,
  '2f973087-14f2-5e74-b267-236219d92b2b'::uuid,
  true,
  'writing',
  ARRAY['genomics','RNA-seq']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '87b2fc5a-203f-5173-88a8-fc8438ceb799'::uuid,
  '3db59d3b-4646-5158-a487-c65cee4e8b78'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '53a7a968-97f9-5f8a-be3a-9717574c6e58'::uuid,
  '53a7a968-97f9-5f8a-be3a-9717574c6e58'::uuid,
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
  '8b01a7e7-6445-55c6-9a20-bc21a1da423f'::uuid,
  'Urban heat mitigation with satellite ML — cohort 7',
  'Urban heat mitigation with satellite ML is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around remote sensing, cities, ML. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid,
  ARRAY['remote sensing','cities','ML']::text[],
  'active',
  'Climate Science',
  ARRAY['Remote sensing','Python','GIS']::text[],
  'hybrid',
  'medium_term',
  5,
  true,
  'Princeton, NJ',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'cf71a18e-e039-50b0-ab7a-e0b622bb4a7c'::uuid,
  '8b01a7e7-6445-55c6-9a20-bc21a1da423f'::uuid,
  'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid,
  'owner',
  'active',
  'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7693fc84-8b15-5289-9b20-6f15e1a410b5'::uuid,
  '8b01a7e7-6445-55c6-9a20-bc21a1da423f'::uuid,
  '456b2ac9-0110-5359-b6a9-24f1909a0f8f'::uuid,
  'editor',
  'active',
  'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f82b49b6-db8f-5787-8035-34b8c24d494e'::uuid,
  '8b01a7e7-6445-55c6-9a20-bc21a1da423f'::uuid,
  'e81750f1-0ea2-5b78-a375-74bb06b5b584'::uuid,
  'viewer',
  'active',
  'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '17cd26af-9fa7-569f-9681-9670fed3a0f6'::uuid,
  '8b01a7e7-6445-55c6-9a20-bc21a1da423f'::uuid,
  '524baf06-4daa-5adc-b266-e2987e12aa98'::uuid,
  'viewer',
  'active',
  'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f05cd650-ef0d-5062-b7f9-29e8629f6c10'::uuid,
  '8b01a7e7-6445-55c6-9a20-bc21a1da423f'::uuid,
  '3e632bb3-c208-5e8f-92a2-9dde3d847af2'::uuid,
  'viewer',
  'active',
  'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c1a4e954-58dd-5bb3-9c6a-7429589a0af0'::uuid,
  '8b01a7e7-6445-55c6-9a20-bc21a1da423f'::uuid,
  'Draft related work section',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid,
  'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'eff7c548-97eb-5749-9093-32976ba9973d'::uuid,
  '8b01a7e7-6445-55c6-9a20-bc21a1da423f'::uuid,
  'Clean and version dataset',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '456b2ac9-0110-5359-b6a9-24f1909a0f8f'::uuid,
  'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7d7c6538-6340-5c70-9c65-adf3d5e1d13a'::uuid,
  '8b01a7e7-6445-55c6-9a20-bc21a1da423f'::uuid,
  'Run baseline model',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'e81750f1-0ea2-5b78-a375-74bb06b5b584'::uuid,
  'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '085a42b9-0b07-59df-8c65-8623d781bf14'::uuid,
  '8b01a7e7-6445-55c6-9a20-bc21a1da423f'::uuid,
  'Write IRB amendment',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '524baf06-4daa-5adc-b266-e2987e12aa98'::uuid,
  'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c8f0903d-3ace-592d-a94a-500f42eadcb3'::uuid,
  '8b01a7e7-6445-55c6-9a20-bc21a1da423f'::uuid,
  'Prepare figure panels',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '3e632bb3-c208-5e8f-92a2-9dde3d847af2'::uuid,
  'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6657442c-5d8a-50cc-bb20-6160115f1245'::uuid,
  '8b01a7e7-6445-55c6-9a20-bc21a1da423f'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid,
  'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '69b70563-d80c-57ee-a51a-dbc8f0838e2e'::uuid,
  '8b01a7e7-6445-55c6-9a20-bc21a1da423f'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '456b2ac9-0110-5359-b6a9-24f1909a0f8f'::uuid,
  'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '03e81644-1b13-5ab4-84a9-62c402e9ddc3'::uuid,
  '8b01a7e7-6445-55c6-9a20-bc21a1da423f'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Urban heat mitigation with satellite ML — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'e81750f1-0ea2-5b78-a375-74bb06b5b584'::uuid,
  'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '77e75664-9049-57ee-91d0-d8d08d704f5d'::uuid,
  '8b01a7e7-6445-55c6-9a20-bc21a1da423f'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid,
  'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid,
  true,
  'planning',
  ARRAY['remote sensing','cities']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2c25f7c3-2b94-5844-af45-32bc7c913b67'::uuid,
  '8b01a7e7-6445-55c6-9a20-bc21a1da423f'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '456b2ac9-0110-5359-b6a9-24f1909a0f8f'::uuid,
  '456b2ac9-0110-5359-b6a9-24f1909a0f8f'::uuid,
  true,
  'analysis',
  ARRAY['remote sensing','cities']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'feb10292-3e19-598b-861a-02c4f8045617'::uuid,
  '8b01a7e7-6445-55c6-9a20-bc21a1da423f'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'e81750f1-0ea2-5b78-a375-74bb06b5b584'::uuid,
  'e81750f1-0ea2-5b78-a375-74bb06b5b584'::uuid,
  true,
  'writing',
  ARRAY['remote sensing','cities']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4a57fbe7-506f-544c-aecc-e24a7b4dae4b'::uuid,
  '8b01a7e7-6445-55c6-9a20-bc21a1da423f'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '524baf06-4daa-5adc-b266-e2987e12aa98'::uuid,
  '524baf06-4daa-5adc-b266-e2987e12aa98'::uuid,
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
  'bc0b1789-d273-554d-b416-f8541533bc1f'::uuid,
  'High-throughput electrolyte screening — cohort 7',
  'High-throughput electrolyte screening is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around batteries, automation, DFT. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid,
  ARRAY['batteries','automation','DFT']::text[],
  'active',
  'Materials Science',
  ARRAY['DFT','Lab automation','Characterization']::text[],
  'local',
  'long_term',
  6,
  true,
  'Pasadena, CA',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3bad52ff-3b46-5d78-8dc2-ae9737572b9b'::uuid,
  'bc0b1789-d273-554d-b416-f8541533bc1f'::uuid,
  '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid,
  'owner',
  'active',
  '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e3e1fcea-eb9d-5eaa-ae7b-a3fe980d862e'::uuid,
  'bc0b1789-d273-554d-b416-f8541533bc1f'::uuid,
  '5b4d74cc-c6ad-59dc-a192-6bc864ef642f'::uuid,
  'editor',
  'active',
  '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c26b505a-233e-5872-bb64-9813271d4890'::uuid,
  'bc0b1789-d273-554d-b416-f8541533bc1f'::uuid,
  '45150839-6840-5863-8a4a-6531e7974e3f'::uuid,
  'viewer',
  'active',
  '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'dd813ba7-da5a-5f3d-853e-fdc7940ae8c7'::uuid,
  'bc0b1789-d273-554d-b416-f8541533bc1f'::uuid,
  '53f80aef-090c-5c26-b62a-6a01e277d754'::uuid,
  'viewer',
  'active',
  '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '77c104bb-2e00-5326-b37f-484601c2f64b'::uuid,
  'bc0b1789-d273-554d-b416-f8541533bc1f'::uuid,
  '23b5ee7f-0bbd-521e-aaa0-3c98767ba963'::uuid,
  'viewer',
  'active',
  '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '81c53086-fa2e-5456-ac8f-cd191001f3bd'::uuid,
  'bc0b1789-d273-554d-b416-f8541533bc1f'::uuid,
  'd3f36a02-cd5b-55ce-ad08-55cabb0f2e7b'::uuid,
  'viewer',
  'active',
  '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '240a5dec-1b0a-56fd-a97e-717a5a26f481'::uuid,
  'bc0b1789-d273-554d-b416-f8541533bc1f'::uuid,
  'Draft related work section',
  'Tracked work item for High-throughput electrolyte screening — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid,
  '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c7ad6333-3db6-52fe-947c-5517d71e6394'::uuid,
  'bc0b1789-d273-554d-b416-f8541533bc1f'::uuid,
  'Clean and version dataset',
  'Tracked work item for High-throughput electrolyte screening — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '5b4d74cc-c6ad-59dc-a192-6bc864ef642f'::uuid,
  '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'eef9479a-7f7d-5e7f-8ade-ba5f17ca4c03'::uuid,
  'bc0b1789-d273-554d-b416-f8541533bc1f'::uuid,
  'Run baseline model',
  'Tracked work item for High-throughput electrolyte screening — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '45150839-6840-5863-8a4a-6531e7974e3f'::uuid,
  '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6be9277e-e654-502b-a03f-078acf07b7d5'::uuid,
  'bc0b1789-d273-554d-b416-f8541533bc1f'::uuid,
  'Write IRB amendment',
  'Tracked work item for High-throughput electrolyte screening — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '53f80aef-090c-5c26-b62a-6a01e277d754'::uuid,
  '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9172d2c6-8aa1-580f-917e-af256f5d7fd7'::uuid,
  'bc0b1789-d273-554d-b416-f8541533bc1f'::uuid,
  'Prepare figure panels',
  'Tracked work item for High-throughput electrolyte screening — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '23b5ee7f-0bbd-521e-aaa0-3c98767ba963'::uuid,
  '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f8375b39-2de4-5fea-9f7f-d89b5b74a916'::uuid,
  'bc0b1789-d273-554d-b416-f8541533bc1f'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for High-throughput electrolyte screening — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'd3f36a02-cd5b-55ce-ad08-55cabb0f2e7b'::uuid,
  '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '54b65ce9-1c4b-5d6c-83e6-bbe9f019eacf'::uuid,
  'bc0b1789-d273-554d-b416-f8541533bc1f'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for High-throughput electrolyte screening — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid,
  '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ae1fecb1-0d1b-5294-a9f0-7c6b3cb1e607'::uuid,
  'bc0b1789-d273-554d-b416-f8541533bc1f'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for High-throughput electrolyte screening — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '5b4d74cc-c6ad-59dc-a192-6bc864ef642f'::uuid,
  '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'eaa19244-d40b-5337-9cd4-86bf19aa9ba8'::uuid,
  'bc0b1789-d273-554d-b416-f8541533bc1f'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid,
  '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid,
  true,
  'planning',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f38a6fb1-fe62-58e4-bb4c-1ebdde6b5831'::uuid,
  'bc0b1789-d273-554d-b416-f8541533bc1f'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '5b4d74cc-c6ad-59dc-a192-6bc864ef642f'::uuid,
  '5b4d74cc-c6ad-59dc-a192-6bc864ef642f'::uuid,
  true,
  'analysis',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd0e04540-293e-5b4e-8d62-fff32baad49c'::uuid,
  'bc0b1789-d273-554d-b416-f8541533bc1f'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '45150839-6840-5863-8a4a-6531e7974e3f'::uuid,
  '45150839-6840-5863-8a4a-6531e7974e3f'::uuid,
  true,
  'writing',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '832c7e34-b719-5a47-acee-740b51bfa85c'::uuid,
  'bc0b1789-d273-554d-b416-f8541533bc1f'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '53f80aef-090c-5c26-b62a-6a01e277d754'::uuid,
  '53f80aef-090c-5c26-b62a-6a01e277d754'::uuid,
  true,
  'ops',
  ARRAY['batteries','automation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;