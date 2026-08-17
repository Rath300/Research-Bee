-- projects 120..139

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


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  'Accessible clinical note summarization — cohort 7',
  'Accessible clinical note summarization is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around NLP, healthcare, UX. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  ARRAY['NLP','healthcare','UX']::text[],
  'active',
  'Human-Computer Interaction',
  ARRAY['User research','Prototyping','Statistics']::text[],
  'remote',
  'long_term',
  7,
  true,
  'Oxford, UK',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2f47be7e-5f9a-51c2-adde-a57d0968b8c6'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  'owner',
  'active',
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '42bbe616-6e48-5dd7-9692-fd5c09c08524'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  'eae2b40f-cbad-57de-b268-6c4b724cc18c'::uuid,
  'editor',
  'active',
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5a889cbd-ffcd-58e7-92c7-7d8d0a4a8a44'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  '38543983-3393-5fc5-91f8-ed27a8f5cfee'::uuid,
  'viewer',
  'active',
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e9a2cd26-b709-5c07-bf74-4492abcb9324'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  '2a19e5bf-12b6-5a5c-b22b-83a66f6241e7'::uuid,
  'viewer',
  'active',
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c010c87d-4000-50ff-9708-9ce8b562d911'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  '17f60a9d-3628-5de0-a717-35480b0cc51d'::uuid,
  'viewer',
  'active',
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '930261ec-206e-5f1b-8613-0683cbe7624d'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  '33aec7f2-5690-57b3-9664-6aebc7b43952'::uuid,
  'viewer',
  'active',
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3317cae2-2567-5832-ab54-645b2dc3deca'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  '728e8630-512a-51eb-9316-3e71371d2478'::uuid,
  'viewer',
  'active',
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3df351e9-b087-51ec-83c9-6a7fa9ce5331'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  'Draft related work section',
  'Tracked work item for Accessible clinical note summarization — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '775ca90d-caa4-5c29-8cd6-1730e8804fde'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  'Clean and version dataset',
  'Tracked work item for Accessible clinical note summarization — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'eae2b40f-cbad-57de-b268-6c4b724cc18c'::uuid,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5511d4e2-8f80-51e7-a539-318824204af9'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  'Run baseline model',
  'Tracked work item for Accessible clinical note summarization — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '38543983-3393-5fc5-91f8-ed27a8f5cfee'::uuid,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '61a423ed-8100-5852-9024-6e8119043ec4'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  'Write IRB amendment',
  'Tracked work item for Accessible clinical note summarization — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '2a19e5bf-12b6-5a5c-b22b-83a66f6241e7'::uuid,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1a19cfbb-19d0-5112-93f4-d1d0d07be375'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  'Prepare figure panels',
  'Tracked work item for Accessible clinical note summarization — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '17f60a9d-3628-5de0-a717-35480b0cc51d'::uuid,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7c72220b-b871-57f7-9f22-22365a12f31f'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Accessible clinical note summarization — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '33aec7f2-5690-57b3-9664-6aebc7b43952'::uuid,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4f18913f-b4de-5f17-a3b4-e592544446df'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Accessible clinical note summarization — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '728e8630-512a-51eb-9316-3e71371d2478'::uuid,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ba4c755c-1de0-5044-a731-713a1af1b97d'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Accessible clinical note summarization — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd6e3f62f-c947-5473-9a8f-06a8a25fd3c8'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  true,
  'planning',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '7d46e272-db6a-57a9-9685-fc7e0fcb6245'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'eae2b40f-cbad-57de-b268-6c4b724cc18c'::uuid,
  'eae2b40f-cbad-57de-b268-6c4b724cc18c'::uuid,
  true,
  'analysis',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1d28a47b-78b5-5d69-ada1-0e4f8351be3a'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '38543983-3393-5fc5-91f8-ed27a8f5cfee'::uuid,
  '38543983-3393-5fc5-91f8-ed27a8f5cfee'::uuid,
  true,
  'writing',
  ARRAY['NLP','healthcare']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'c2691cf4-1c13-5e35-8686-3b5b02b476a3'::uuid,
  '1b6196a0-26cb-55fc-9d08-b9697ab9425c'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '2a19e5bf-12b6-5a5c-b22b-83a66f6241e7'::uuid,
  '2a19e5bf-12b6-5a5c-b22b-83a66f6241e7'::uuid,
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
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  'Closed-loop stimulation for memory — cohort 7',
  'Closed-loop stimulation for memory is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around neurotech, memory, EEG. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  ARRAY['neurotech','memory','EEG']::text[],
  'active',
  'Neuroscience',
  ARRAY['fMRI','Electrophysiology','Python']::text[],
  'hybrid',
  'short_term',
  8,
  true,
  'Singapore',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '71224e80-184a-578a-a08e-31dfa6f97223'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  'owner',
  'active',
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '318f21eb-8ba5-5f76-a88f-290fb87b0105'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  '7f1973e3-c24f-5d08-864f-0ad85e4e2f45'::uuid,
  'editor',
  'active',
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '52621cde-28a7-53bf-9708-c8b1cccb8615'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  'e8942547-2905-5750-a298-06aa7d0cac82'::uuid,
  'viewer',
  'active',
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'dcd41f67-ae44-5730-a398-46170601f351'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  'bf0af558-883d-514f-a05c-6d86200699c1'::uuid,
  'viewer',
  'active',
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2b6d4a5a-e04b-591b-84bd-6ffc28888d61'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  '53500f58-1453-5133-8118-eb17c7a347e0'::uuid,
  'viewer',
  'active',
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ba117b91-36c1-5b9d-ae4c-8115b9d610e6'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  '3be530d6-9f24-5f93-978c-7010f5821a79'::uuid,
  'viewer',
  'active',
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5d365c9e-cf51-5950-8d46-1c3ecf1690aa'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  '754240ce-0e49-5193-997e-00dc6cf96e2a'::uuid,
  'viewer',
  'active',
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'cafae610-9fc1-5d7f-a943-d78e9c324d91'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  '3d45d675-a875-5470-942c-38b3923c1d12'::uuid,
  'viewer',
  'active',
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b3346ebe-77b0-554f-a0fe-50b8d114cd06'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  'Draft related work section',
  'Tracked work item for Closed-loop stimulation for memory — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f219a7d0-8414-5f32-8b81-b63872ac8ed9'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  'Clean and version dataset',
  'Tracked work item for Closed-loop stimulation for memory — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '7f1973e3-c24f-5d08-864f-0ad85e4e2f45'::uuid,
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8e840de6-bbb2-5f97-8286-28ded79a2bd3'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  'Run baseline model',
  'Tracked work item for Closed-loop stimulation for memory — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'e8942547-2905-5750-a298-06aa7d0cac82'::uuid,
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4ec94a74-1aa1-5af8-af16-cf39be9cd1bf'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  'Write IRB amendment',
  'Tracked work item for Closed-loop stimulation for memory — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'bf0af558-883d-514f-a05c-6d86200699c1'::uuid,
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '458bc690-7def-5237-8db5-c97ba0878c80'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  'Prepare figure panels',
  'Tracked work item for Closed-loop stimulation for memory — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '53500f58-1453-5133-8118-eb17c7a347e0'::uuid,
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f9a43b02-01eb-56d8-b9ee-585de01345e9'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Closed-loop stimulation for memory — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '3be530d6-9f24-5f93-978c-7010f5821a79'::uuid,
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9ee80870-1980-576e-b879-68429ee4d4dd'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Closed-loop stimulation for memory — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '754240ce-0e49-5193-997e-00dc6cf96e2a'::uuid,
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '17d1a760-492d-5fe7-a292-c99a51f27068'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Closed-loop stimulation for memory — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '3d45d675-a875-5470-942c-38b3923c1d12'::uuid,
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'fbecb110-cc75-57b4-8a8c-4710da35adbe'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  '0c89279c-761b-5955-a37f-d11d903a5859'::uuid,
  true,
  'planning',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '786b797c-8bd9-543f-aa29-98c0ad852acf'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '7f1973e3-c24f-5d08-864f-0ad85e4e2f45'::uuid,
  '7f1973e3-c24f-5d08-864f-0ad85e4e2f45'::uuid,
  true,
  'analysis',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '332cdb12-4afb-5702-8ada-d0b23d1f01b4'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'e8942547-2905-5750-a298-06aa7d0cac82'::uuid,
  'e8942547-2905-5750-a298-06aa7d0cac82'::uuid,
  true,
  'writing',
  ARRAY['neurotech','memory']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4c330ccc-e46c-585a-8729-9e363327d140'::uuid,
  '0e0760b3-fe9f-5fff-8ca7-10b9514130bb'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'bf0af558-883d-514f-a05c-6d86200699c1'::uuid,
  'bf0af558-883d-514f-a05c-6d86200699c1'::uuid,
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
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  'Community vaccine confidence study — cohort 7',
  'Community vaccine confidence study is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around surveys, equity, vaccines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  ARRAY['surveys','equity','vaccines']::text[],
  'planning',
  'Public Health',
  ARRAY['Epidemiology','R','Survey design']::text[],
  'local',
  'medium_term',
  9,
  true,
  'Melbourne, AU',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '623e3528-74c9-59e8-a395-38ec879cf367'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  'owner',
  'active',
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8a1072e5-7708-51c7-a01f-358cdbc411f7'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid,
  'editor',
  'active',
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9c260a17-d545-580b-b990-5b1be84ea510'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  '756be686-ee02-559a-b9e7-8de1b4fe3b29'::uuid,
  'viewer',
  'active',
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c0c0b4bc-fc0a-5708-a49e-9783b449fe72'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  '03d08a86-991b-58ec-aed4-2669d15698ab'::uuid,
  'viewer',
  'active',
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0514aa26-c607-5323-8c24-9c4c486dcfbb'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  '3dd86691-9e6d-5f95-b08a-8f29f3faa19d'::uuid,
  'viewer',
  'active',
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '86bd853d-c310-501c-ba1a-25341fdbb693'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  '19650605-ba6d-5094-8e63-01744f21874e'::uuid,
  'viewer',
  'active',
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '48eabc76-1320-5b37-bcd5-b2dafeed0a71'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  'ce49fddb-87e7-5e2a-8fbd-b10ca7c101b4'::uuid,
  'viewer',
  'active',
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f0c51f83-4451-5008-81fe-4af7487fca6b'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  '2ca79558-c191-5270-98b0-9bae849e53c8'::uuid,
  'viewer',
  'active',
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '016820b6-a13d-560d-9111-75f1a0a62442'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  '42100420-3e43-57ff-96c6-5945409a49d1'::uuid,
  'viewer',
  'active',
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '459801f8-14ea-55a8-bfb9-2e9ee22919b6'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  'Draft related work section',
  'Tracked work item for Community vaccine confidence study — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a5ed0575-1ed6-5615-8836-50102449d696'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  'Clean and version dataset',
  'Tracked work item for Community vaccine confidence study — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9d4e7b76-965d-57e2-a17b-588565fc7693'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  'Run baseline model',
  'Tracked work item for Community vaccine confidence study — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '756be686-ee02-559a-b9e7-8de1b4fe3b29'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '96b7e5d1-cfc4-531b-ad66-7b9ac7aa1b29'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  'Write IRB amendment',
  'Tracked work item for Community vaccine confidence study — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '03d08a86-991b-58ec-aed4-2669d15698ab'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0f5ea2a5-8ef4-5e83-b50e-8437c71367c6'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  'Prepare figure panels',
  'Tracked work item for Community vaccine confidence study — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '3dd86691-9e6d-5f95-b08a-8f29f3faa19d'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2b7dd446-a432-51a4-9ac5-35b9bdceaed1'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Community vaccine confidence study — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '19650605-ba6d-5094-8e63-01744f21874e'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6e86956c-bf31-504f-b2e7-9f4238918889'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Community vaccine confidence study — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'ce49fddb-87e7-5e2a-8fbd-b10ca7c101b4'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5c687c81-5539-5121-b12a-cc202ffb2bc9'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Community vaccine confidence study — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '2ca79558-c191-5270-98b0-9bae849e53c8'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '662fb882-93b9-5d49-b2e8-615ec68e3ec9'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  true,
  'planning',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '016d2588-8746-56c5-958e-444c5e8a1e3e'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid,
  '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid,
  true,
  'analysis',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'accffe01-daa6-5f58-b54d-8c004ae4be82'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '756be686-ee02-559a-b9e7-8de1b4fe3b29'::uuid,
  '756be686-ee02-559a-b9e7-8de1b4fe3b29'::uuid,
  true,
  'writing',
  ARRAY['surveys','equity']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '588968d6-ea9e-5325-9b46-57d7d20c3657'::uuid,
  'b9d96a3c-0e9e-59fc-82dd-ba3646637423'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '03d08a86-991b-58ec-aed4-2669d15698ab'::uuid,
  '03d08a86-991b-58ec-aed4-2669d15698ab'::uuid,
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
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'Near-term quantum error mitigation — cohort 7',
  'Near-term quantum error mitigation is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around NISQ, algorithms. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  ARRAY['NISQ','algorithms']::text[],
  'active',
  'Quantum Information',
  ARRAY['Qiskit','Linear algebra','Optics']::text[],
  'remote',
  'long_term',
  10,
  true,
  'Cambridge, MA',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7a487024-ef40-5c9e-b6d8-0c396cd36880'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  'owner',
  'active',
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f1b8b139-8b4e-54a1-99c5-bae93fd5d043'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'd607c5db-de3d-5283-938a-378840208167'::uuid,
  'editor',
  'active',
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '42e8964e-dac2-5e7c-888d-f1315849f7be'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'c9a78c52-bd19-5259-91ef-08c71fda445d'::uuid,
  'viewer',
  'active',
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'dce98746-5e4b-59a2-9e5c-2aec4da9bf8d'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'b9bc161a-f1e9-50c1-93ea-4e1ffb4f3b45'::uuid,
  'viewer',
  'active',
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9bd93cfd-f130-5036-9cf7-3cfcae2044cb'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'Draft related work section',
  'Tracked work item for Near-term quantum error mitigation — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a26790ac-f286-5273-a9c4-094091bcca78'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'Clean and version dataset',
  'Tracked work item for Near-term quantum error mitigation — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'd607c5db-de3d-5283-938a-378840208167'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '71e4b8c6-e774-5211-9f21-29d51692a3a3'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'Run baseline model',
  'Tracked work item for Near-term quantum error mitigation — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'c9a78c52-bd19-5259-91ef-08c71fda445d'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8166b063-1f08-5145-b95d-ff8617ca1404'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'Write IRB amendment',
  'Tracked work item for Near-term quantum error mitigation — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'b9bc161a-f1e9-50c1-93ea-4e1ffb4f3b45'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '09012a1a-8452-5328-aaa9-5f29195119a8'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'Prepare figure panels',
  'Tracked work item for Near-term quantum error mitigation — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bf17a4e6-5379-57e0-ae7e-fc08d4ba9982'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Near-term quantum error mitigation — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'd607c5db-de3d-5283-938a-378840208167'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0a26bbbe-3624-5065-8f3e-448344b1aded'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Near-term quantum error mitigation — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'c9a78c52-bd19-5259-91ef-08c71fda445d'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3b67e678-3b49-5639-9174-09e6923ddd4e'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Near-term quantum error mitigation — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'b9bc161a-f1e9-50c1-93ea-4e1ffb4f3b45'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '25aa417e-78b2-5b47-9963-dcf20ac6d57d'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  true,
  'planning',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1a4959e8-f9a1-574a-9842-e4a1cfee7169'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'd607c5db-de3d-5283-938a-378840208167'::uuid,
  'd607c5db-de3d-5283-938a-378840208167'::uuid,
  true,
  'analysis',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd469b564-95b9-5ebe-94a9-ad7da0beb24c'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'c9a78c52-bd19-5259-91ef-08c71fda445d'::uuid,
  'c9a78c52-bd19-5259-91ef-08c71fda445d'::uuid,
  true,
  'writing',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f38a05f2-42af-5106-89dc-0ab4da85a645'::uuid,
  '905f847c-ad20-5c46-ac3e-42d39c6fef35'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'b9bc161a-f1e9-50c1-93ea-4e1ffb4f3b45'::uuid,
  'b9bc161a-f1e9-50c1-93ea-4e1ffb4f3b45'::uuid,
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
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  'Robust evaluation for clinical LLMs — cohort 7',
  'Robust evaluation for clinical LLMs is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around LLMs, evaluation, safety. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  ARRAY['LLMs','evaluation','safety']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'hybrid',
  'long_term',
  11,
  true,
  'Palo Alto, CA',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3f4af100-7494-533f-bed7-993a5e6ad1d9'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  'owner',
  'active',
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b5f12233-bdcf-53d4-8614-3fedb3e5a9d6'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  '6920da0a-a803-5817-876c-c73449120e9d'::uuid,
  'editor',
  'active',
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b2139811-a162-5212-b59d-66375646b621'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  '99a26567-fc56-5088-8ed4-aaf0cd314f3e'::uuid,
  'viewer',
  'active',
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '25cec012-c518-5252-bacd-17e351bd69f3'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid,
  'viewer',
  'active',
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4974cd6a-d798-5198-8613-acb7e9d56455'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  'f10068dd-3d78-5f14-aae4-f628e51e8ae8'::uuid,
  'viewer',
  'active',
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '228a806e-235d-55ed-9715-fb5272c43173'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  'Draft related work section',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8b96c6b6-4b59-5b4f-ab04-4f3484fbffb1'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  'Clean and version dataset',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '6920da0a-a803-5817-876c-c73449120e9d'::uuid,
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '493d6d3d-892a-59b3-aef3-ec9dfb740f42'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  'Run baseline model',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '99a26567-fc56-5088-8ed4-aaf0cd314f3e'::uuid,
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7be86957-4d56-5345-a596-064625cede7c'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  'Write IRB amendment',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid,
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '61740625-6a55-5eaa-be17-9e1a2c4fd814'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  'Prepare figure panels',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'f10068dd-3d78-5f14-aae4-f628e51e8ae8'::uuid,
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '70014221-80e1-52d7-8e44-ecefc514df75'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0d3d9ef2-cf76-5c0b-9490-59b88209407c'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '6920da0a-a803-5817-876c-c73449120e9d'::uuid,
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3c483567-d846-5a81-a75c-b2d689867e07'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '99a26567-fc56-5088-8ed4-aaf0cd314f3e'::uuid,
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '8b82c540-10b9-5e86-9ccc-713eb8301f5a'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  true,
  'planning',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b01a2ab6-2a95-5224-81a2-88a8a0ddccf6'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '6920da0a-a803-5817-876c-c73449120e9d'::uuid,
  '6920da0a-a803-5817-876c-c73449120e9d'::uuid,
  true,
  'analysis',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ad787ba2-4f77-5083-b6a7-2486d598d047'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '99a26567-fc56-5088-8ed4-aaf0cd314f3e'::uuid,
  '99a26567-fc56-5088-8ed4-aaf0cd314f3e'::uuid,
  true,
  'writing',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5c902078-2ddb-5a19-b3ba-38e38bc68f65'::uuid,
  'a0ece156-0b60-524b-80d0-252dfb1e465b'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid,
  '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid,
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
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  'Photoredox catalysis for late-stage edits — cohort 7',
  'Photoredox catalysis for late-stage edits is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around catalysis, synthesis. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  ARRAY['catalysis','synthesis']::text[],
  'active',
  'Chemistry',
  ARRAY['Organic synthesis','Spectroscopy','Cheminformatics']::text[],
  'local',
  'short_term',
  12,
  true,
  'Berkeley, CA',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5a8d7f0b-dc48-5545-aaa9-aa08909d77dc'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  'owner',
  'active',
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6bb0f1a9-86ab-5d01-bec7-0fbaa6f8c001'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  '246bcb7d-f6ac-555a-b9a5-8c11a5d0f5d2'::uuid,
  'editor',
  'active',
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9c307dd9-cb58-5394-b0ce-077a7ae3ce68'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  '615aae5c-381c-5bcd-83c3-76cecc3fb911'::uuid,
  'viewer',
  'active',
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a1fad080-f966-5a57-b741-a0150332c5d4'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  'c8f46057-70bf-5ff9-b0da-9eed0f520276'::uuid,
  'viewer',
  'active',
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5c260bca-ce4c-5a40-87c6-e350ba573e40'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  '90d41892-fb72-5023-9fe0-b787e8a2401c'::uuid,
  'viewer',
  'active',
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'abd60706-ed81-595a-a4e5-7cccf546b824'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  '6facfbeb-f04c-54d5-b408-9e8c94854c76'::uuid,
  'viewer',
  'active',
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7d712386-88ab-57af-980a-70f03d674ddb'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  'Draft related work section',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'eff389d5-4fcf-5421-b15e-412eee26b3b5'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  'Clean and version dataset',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '246bcb7d-f6ac-555a-b9a5-8c11a5d0f5d2'::uuid,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f10b851e-a748-5fbd-9ab6-c7e8ff91b70a'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  'Run baseline model',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '615aae5c-381c-5bcd-83c3-76cecc3fb911'::uuid,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0a328a87-b79a-5382-a311-745a6172d8ac'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  'Write IRB amendment',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'c8f46057-70bf-5ff9-b0da-9eed0f520276'::uuid,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5a9a78e4-7e30-51a6-8b24-c0122ae8fb1a'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  'Prepare figure panels',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '90d41892-fb72-5023-9fe0-b787e8a2401c'::uuid,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3e684c20-2b1d-5476-8432-c2ea95279bad'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '6facfbeb-f04c-54d5-b408-9e8c94854c76'::uuid,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '338d53f7-1548-544f-b103-795158123afe'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '87b5afa0-f222-59df-88ec-e5a2687bc8ac'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '246bcb7d-f6ac-555a-b9a5-8c11a5d0f5d2'::uuid,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0152a4dc-da84-5119-b2c8-98cc3294f3d9'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  true,
  'planning',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3c7f49cf-810c-578a-8099-a0f2e27b6929'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '246bcb7d-f6ac-555a-b9a5-8c11a5d0f5d2'::uuid,
  '246bcb7d-f6ac-555a-b9a5-8c11a5d0f5d2'::uuid,
  true,
  'analysis',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'ab1b6cff-d857-5c99-9135-1929c50d1f90'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '615aae5c-381c-5bcd-83c3-76cecc3fb911'::uuid,
  '615aae5c-381c-5bcd-83c3-76cecc3fb911'::uuid,
  true,
  'writing',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1456425f-9e68-5a54-b397-8429802c40be'::uuid,
  '376e33ad-4e79-5657-a0ae-5b619f8de3a2'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'c8f46057-70bf-5ff9-b0da-9eed0f520276'::uuid,
  'c8f46057-70bf-5ff9-b0da-9eed0f520276'::uuid,
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
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'STEM identity in first-gen undergraduates — cohort 7',
  'STEM identity in first-gen undergraduates is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around equity, mixed methods. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  ARRAY['equity','mixed methods']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'remote',
  'medium_term',
  13,
  true,
  'Boston, MA',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4643f976-8d74-59cd-8c37-d1ca207812d7'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  'owner',
  'active',
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7af6d713-0231-5fcd-ad4e-f719fcac7c57'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  '30b17759-7407-5607-a4e6-182ee0e7047f'::uuid,
  'editor',
  'active',
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '33c51473-b6ee-5052-94e9-0fdfc0b1f188'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'a09224b4-4489-5f26-acc8-6d59bf83ca40'::uuid,
  'viewer',
  'active',
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8813e289-a003-5ff4-9496-541d44761197'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  '480656da-679b-5364-a64a-bc03c8916a04'::uuid,
  'viewer',
  'active',
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c3d26904-2864-5db8-8cc1-72fb8b07a43f'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  '4d52405a-0515-50a4-98bd-aa73b67454c6'::uuid,
  'viewer',
  'active',
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '183a7b0b-9737-5ec5-a40f-3a5486fed656'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'a2fe8640-49fd-523e-8579-25086c7dbece'::uuid,
  'viewer',
  'active',
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2fddd427-e31d-5af7-9fb7-35f3d1ad3d15'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'ebda259a-3ff4-5c2d-86f4-3288207f73de'::uuid,
  'viewer',
  'active',
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8217d865-4d34-5b8b-8ef9-cbeca8660a5b'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'Draft related work section',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0c339fe0-ccb1-560e-a8b7-73d5b54784df'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'Clean and version dataset',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '30b17759-7407-5607-a4e6-182ee0e7047f'::uuid,
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '883fc368-e88f-55ac-88ff-87abac4435a2'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'Run baseline model',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'a09224b4-4489-5f26-acc8-6d59bf83ca40'::uuid,
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd6a5495a-72bd-54ae-882b-4ffe71a307b6'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'Write IRB amendment',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '480656da-679b-5364-a64a-bc03c8916a04'::uuid,
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'dd2aca94-1244-52e4-bb1d-68b216e6bfa5'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'Prepare figure panels',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '4d52405a-0515-50a4-98bd-aa73b67454c6'::uuid,
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '70312b15-3e59-5527-b72b-4e5d0a6c4c84'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'a2fe8640-49fd-523e-8579-25086c7dbece'::uuid,
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e7a6faae-bf35-55f6-a23d-37b0fe87b3fe'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'ebda259a-3ff4-5c2d-86f4-3288207f73de'::uuid,
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9e6ab63a-b316-5fa4-948b-8f0d83818313'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0a7e67da-93e8-5e00-a532-fe0372f40a07'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid,
  true,
  'planning',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'cce6303d-870f-5f5b-981c-24dc35929fc3'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '30b17759-7407-5607-a4e6-182ee0e7047f'::uuid,
  '30b17759-7407-5607-a4e6-182ee0e7047f'::uuid,
  true,
  'analysis',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'f3d752c0-6ed5-516c-b435-4f614c67107f'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'a09224b4-4489-5f26-acc8-6d59bf83ca40'::uuid,
  'a09224b4-4489-5f26-acc8-6d59bf83ca40'::uuid,
  true,
  'writing',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '85092212-1b7d-5ebe-94da-ccd530bf48bd'::uuid,
  '8e4793d1-5aa7-5d7f-95ca-5ef2e6a25c64'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '480656da-679b-5364-a64a-bc03c8916a04'::uuid,
  '480656da-679b-5364-a64a-bc03c8916a04'::uuid,
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
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'Dexterous packing under uncertainty — cohort 7',
  'Dexterous packing under uncertainty is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around manipulation, sim2real. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  ARRAY['manipulation','sim2real']::text[],
  'planning',
  'Robotics',
  ARRAY['ROS','Control systems','C++']::text[],
  'hybrid',
  'long_term',
  14,
  true,
  'Toronto, ON',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c4320bf6-9981-5c7f-812d-bd65230d4dc7'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  'owner',
  'active',
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '683654fd-37b6-5885-9990-eec2cf9cea51'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid,
  'editor',
  'active',
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6c31bced-1ac1-5022-b855-5cab4ccd73b7'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  '16b2384b-ad24-51a7-ae2c-7800b9497576'::uuid,
  'viewer',
  'active',
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a503a61e-c5b4-5821-b3ec-4030cd792877'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'b6d76b9c-c861-5e04-9a0b-242cf40b872e'::uuid,
  'viewer',
  'active',
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '232b23e7-f992-5514-8277-e66f146d922b'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'b9db1144-db8a-57a8-8052-2191f1cc14b1'::uuid,
  'viewer',
  'active',
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7e022277-8597-564a-81ec-4e5133ebac4e'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  '185d66cf-e3cb-5baf-ad04-ce637ae86a78'::uuid,
  'viewer',
  'active',
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '42cb5138-1ad7-5cf3-b0e6-5946f29cee62'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'c907b363-8018-51fd-b157-c7efc9483a3a'::uuid,
  'viewer',
  'active',
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c2d6733f-4a3c-5bb2-b714-59338da46a70'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  '843f469a-8134-5966-bfe0-48584f3270fc'::uuid,
  'viewer',
  'active',
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '76cb9566-07d3-59ab-a6f6-4f2ff49543be'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'Draft related work section',
  'Tracked work item for Dexterous packing under uncertainty — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7f8f781c-a8bc-5236-989c-5b6f2f548e0a'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'Clean and version dataset',
  'Tracked work item for Dexterous packing under uncertainty — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4fe8fcd0-6b64-501c-b86e-bdd2598a1ad2'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'Run baseline model',
  'Tracked work item for Dexterous packing under uncertainty — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '16b2384b-ad24-51a7-ae2c-7800b9497576'::uuid,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9874d628-c8f6-5f58-b362-5c3081285c2b'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'Write IRB amendment',
  'Tracked work item for Dexterous packing under uncertainty — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'b6d76b9c-c861-5e04-9a0b-242cf40b872e'::uuid,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9fad7c0d-ca98-56df-9f9d-8a96b5aceaba'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'Prepare figure panels',
  'Tracked work item for Dexterous packing under uncertainty — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'b9db1144-db8a-57a8-8052-2191f1cc14b1'::uuid,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0cf7fa9e-a66c-5378-8652-646c77c2c733'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Dexterous packing under uncertainty — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '185d66cf-e3cb-5baf-ad04-ce637ae86a78'::uuid,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bf7e68c5-3f6c-53bb-90c1-ef91a7ab4857'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'c907b363-8018-51fd-b157-c7efc9483a3a'::uuid,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '43d0a5be-0fbd-5bb7-aead-70eede90afbf'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '843f469a-8134-5966-bfe0-48584f3270fc'::uuid,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd4fab6e7-b988-52d0-8d18-6bb559b78b5c'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  true,
  'planning',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3ce74453-f58e-5d88-b7e8-d4d5da17aa00'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid,
  'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid,
  true,
  'analysis',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1be3f9ff-7c09-5b97-861c-234539e3f25f'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '16b2384b-ad24-51a7-ae2c-7800b9497576'::uuid,
  '16b2384b-ad24-51a7-ae2c-7800b9497576'::uuid,
  true,
  'writing',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a767a2af-7d9e-5357-b7dd-f414d359d874'::uuid,
  '7d27a2f7-f8e8-592c-bbfa-97ef390d9bbf'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'b6d76b9c-c861-5e04-9a0b-242cf40b872e'::uuid,
  'b6d76b9c-c861-5e04-9a0b-242cf40b872e'::uuid,
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
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'Transit spectroscopy pipeline for JWST — cohort 7',
  'Transit spectroscopy pipeline for JWST is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around exoplanets, pipelines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  ARRAY['exoplanets','pipelines']::text[],
  'active',
  'Astrophysics',
  ARRAY['Data pipelines','Python','Bayesian inference']::text[],
  'local',
  'long_term',
  15,
  true,
  'Zurich, CH',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8c8f7e87-d66a-5b4b-8a6d-567576a9e58c'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  'owner',
  'active',
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'cdd5e116-e4ea-5074-b048-8816ef16364a'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  '1fd23b49-1f61-56f1-87d2-a4baac0eff85'::uuid,
  'editor',
  'active',
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '78b3336d-f500-5ffa-b6a7-fc1d67a18436'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'f0665652-049d-5275-b595-522d436397d7'::uuid,
  'viewer',
  'active',
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b6108f18-f8a2-55df-8d25-4655dca720b4'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  '836980fc-e1b4-537e-960b-d0f74fae417d'::uuid,
  'viewer',
  'active',
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '26cdef40-6245-5801-8b9d-02433a9cd79b'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'b806090a-a7a9-5442-95f8-b0f3a4bcbe13'::uuid,
  'viewer',
  'active',
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '394daf3c-5c82-58b5-8f46-4e955896fcb4'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'c46e7cda-0508-5698-96a2-a7236d3d50ed'::uuid,
  'viewer',
  'active',
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '116ea5e5-b189-54e9-9547-7f1d46730579'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  '583bfe91-cab4-5267-967b-ebddedc1ff8b'::uuid,
  'viewer',
  'active',
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ea604a52-aaf9-5d2e-94f6-71af318f957a'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  '11f67e74-b73c-551c-8bbd-fa79ac4b9609'::uuid,
  'viewer',
  'active',
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '20d9e6a7-2afe-557d-9527-9562df57e899'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  'viewer',
  'active',
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8aa7d3a8-79e4-535d-8e65-42c5b829c296'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'Draft related work section',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3929a9c2-f574-5ca1-bde5-e1174276e1d9'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'Clean and version dataset',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '1fd23b49-1f61-56f1-87d2-a4baac0eff85'::uuid,
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7f485c42-fa6a-5f4e-b2a8-e048697fc47b'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'Run baseline model',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'f0665652-049d-5275-b595-522d436397d7'::uuid,
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bf7fa055-2781-5fc1-a759-b0a711a05dbe'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'Write IRB amendment',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '836980fc-e1b4-537e-960b-d0f74fae417d'::uuid,
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0b6eff10-dc9a-5048-9098-888102c2a281'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'Prepare figure panels',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'b806090a-a7a9-5442-95f8-b0f3a4bcbe13'::uuid,
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd26793db-fdcd-540b-b2da-f105556e1378'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'c46e7cda-0508-5698-96a2-a7236d3d50ed'::uuid,
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a0c13ce1-900b-5079-a9db-4d50a638647b'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '583bfe91-cab4-5267-967b-ebddedc1ff8b'::uuid,
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'db228f9c-3894-54d9-99e1-9b5912d068ad'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '11f67e74-b73c-551c-8bbd-fa79ac4b9609'::uuid,
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e471609f-c4bf-5dfe-a2a0-1fb717e04ff6'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid,
  true,
  'planning',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4fc33ae2-fd49-5611-8308-d14aa049b399'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '1fd23b49-1f61-56f1-87d2-a4baac0eff85'::uuid,
  '1fd23b49-1f61-56f1-87d2-a4baac0eff85'::uuid,
  true,
  'analysis',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5c549fa5-b3aa-56fc-a821-b2d80e5c89d3'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'f0665652-049d-5275-b595-522d436397d7'::uuid,
  'f0665652-049d-5275-b595-522d436397d7'::uuid,
  true,
  'writing',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd1ec1421-e411-5483-90cc-0eb4a3cec8e9'::uuid,
  'be78d2c1-7a4e-5e7d-a698-77de6ff1ef64'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '836980fc-e1b4-537e-960b-d0f74fae417d'::uuid,
  '836980fc-e1b4-537e-960b-d0f74fae417d'::uuid,
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


INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'Federated learning for rare disease cohorts — cohort 7',
  'Federated learning for rare disease cohorts is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around privacy, ML. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  ARRAY['privacy','ML']::text[],
  'planning',
  'Computational Biology',
  ARRAY['Python','R','Genomics']::text[],
  'remote',
  'long_term',
  7,
  true,
  'Atlanta, GA',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e2f6a360-11e4-5d5c-9921-6728517713ed'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  'owner',
  'active',
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6a6f3f2a-18b2-539b-a140-b34ba6a7f92f'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid,
  'editor',
  'active',
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '984dfd32-7eb4-5414-b463-ed66bc32e044'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  '89c35658-db6b-5653-9f13-5b06eb97b083'::uuid,
  'viewer',
  'active',
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '360e97ed-dbca-552e-a34b-c78f5f5e8af7'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'a6d22533-4b09-5974-a116-4c83d9a214f8'::uuid,
  'viewer',
  'active',
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c9b498f1-1f2b-5784-92a2-919348555ed1'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'fade7767-529a-55b3-b6ca-4e25b88b90fb'::uuid,
  'viewer',
  'active',
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3f1e5cf3-d016-572e-baca-621bd887546d'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'f1459b82-7ce3-5cb7-96e8-a9b8d77e4dec'::uuid,
  'viewer',
  'active',
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4310492c-ec5a-5c07-ad70-9baf70cd130a'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  'viewer',
  'active',
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ca78e468-ee61-5291-941c-a0b94f80105e'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'Draft related work section',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9085e14f-48ee-5d6a-9148-9381803f31a0'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'Clean and version dataset',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c34df69a-1bf5-5864-8909-387f20989649'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'Run baseline model',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '89c35658-db6b-5653-9f13-5b06eb97b083'::uuid,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '920d9065-5ce3-55f3-9c64-3a4e4d47da1f'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'Write IRB amendment',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'a6d22533-4b09-5974-a116-4c83d9a214f8'::uuid,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '12bccb5b-3222-5702-b698-cd073ef353b4'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'Prepare figure panels',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'fade7767-529a-55b3-b6ca-4e25b88b90fb'::uuid,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9db1022d-af30-5b79-8cb7-a356641bdc88'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'f1459b82-7ce3-5cb7-96e8-a9b8d77e4dec'::uuid,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2712c330-226c-587d-8923-6515d6222e16'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '08e3a2c1-0b26-5fe8-90fd-e2ca33fd532d'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Federated learning for rare disease cohorts — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'efa65c3d-b55c-5818-a48c-79e051c7573c'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  true,
  'planning',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3cf29c55-6b16-5ac3-9eb8-baf66304a2e4'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid,
  'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid,
  true,
  'analysis',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4feb08b8-8293-55e6-9a0a-cb776f2928d3'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '89c35658-db6b-5653-9f13-5b06eb97b083'::uuid,
  '89c35658-db6b-5653-9f13-5b06eb97b083'::uuid,
  true,
  'writing',
  ARRAY['privacy','ML']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b333ada4-e4a8-50dd-be93-4011820d4ccb'::uuid,
  'c27e8b54-01d0-5533-b863-8773466fb847'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'a6d22533-4b09-5974-a116-4c83d9a214f8'::uuid,
  'a6d22533-4b09-5974-a116-4c83d9a214f8'::uuid,
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
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'Wildfire smoke exposure forecasting — cohort 7',
  'Wildfire smoke exposure forecasting is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around air quality, forecasting. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  ARRAY['air quality','forecasting']::text[],
  'active',
  'Climate Science',
  ARRAY['Remote sensing','Python','GIS']::text[],
  'hybrid',
  'short_term',
  8,
  true,
  'Ann Arbor, MI',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c785d1c3-cc86-50cc-93ce-b20687ee4a57'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  'owner',
  'active',
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1eedd06d-20ee-55a5-beec-554665746ec5'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  '3be3c9dc-0d8f-57c9-9151-cd22c9e93832'::uuid,
  'editor',
  'active',
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'fc32fcb1-6c61-5f60-b6ed-31af2a67c901'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'd896625a-e04e-502e-af2b-a9790bdca6ee'::uuid,
  'viewer',
  'active',
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '54c8c049-b25f-5494-80ec-3da923924265'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  '4868a21a-f8c4-5dde-a114-6b20f5f20ac8'::uuid,
  'viewer',
  'active',
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9ce04ea8-0d40-55e9-abc6-a1ea947619ee'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  '6c9d0537-63f0-513c-9725-e07e525bd742'::uuid,
  'viewer',
  'active',
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'b69d6063-e579-5287-bb08-b1357bd1f914'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  'viewer',
  'active',
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'fbea7c12-c2e1-5834-b13b-16dc8616e6d0'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  'viewer',
  'active',
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c0eb8921-ff4a-5ef3-a179-2628a02a699a'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  'viewer',
  'active',
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b6d0933c-3c74-5528-b473-f8e8866c7be1'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'Draft related work section',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8e410dec-dc4e-5ff8-9467-b8e05306f448'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'Clean and version dataset',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '3be3c9dc-0d8f-57c9-9151-cd22c9e93832'::uuid,
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '80ca40f0-e278-50c4-b42c-16cc983d7f0e'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'Run baseline model',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'd896625a-e04e-502e-af2b-a9790bdca6ee'::uuid,
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e152d0d8-357f-5e15-883b-9374f8d32655'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'Write IRB amendment',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '4868a21a-f8c4-5dde-a114-6b20f5f20ac8'::uuid,
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '16e68bf3-f452-5b48-bf00-970e9c635fc6'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'Prepare figure panels',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '6c9d0537-63f0-513c-9725-e07e525bd742'::uuid,
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8da3cfa7-6fda-597c-ab96-988db02ec776'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '38027771-452e-56a6-93ee-0327efca8125'::uuid,
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bd75e4b7-6df8-5a51-be5d-fa3ab4f5e668'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '215258a9-b0fb-5e4e-8789-8601ae103a18'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Wildfire smoke exposure forecasting — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5ab179b8-ec68-5ce6-b4d9-8c56c77551db'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid,
  true,
  'planning',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '186c7e27-f77b-5b77-82a9-f97735342128'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '3be3c9dc-0d8f-57c9-9151-cd22c9e93832'::uuid,
  '3be3c9dc-0d8f-57c9-9151-cd22c9e93832'::uuid,
  true,
  'analysis',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5f5faf14-7f34-528a-9801-a0b527909232'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'd896625a-e04e-502e-af2b-a9790bdca6ee'::uuid,
  'd896625a-e04e-502e-af2b-a9790bdca6ee'::uuid,
  true,
  'writing',
  ARRAY['air quality','forecasting']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '5f31ba5f-cd76-5d69-b567-a7a0d90da785'::uuid,
  '3363e0b9-75bf-5575-8ef1-9b56f223b392'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '4868a21a-f8c4-5dde-a114-6b20f5f20ac8'::uuid,
  '4868a21a-f8c4-5dde-a114-6b20f5f20ac8'::uuid,
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
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'Solid-state battery interface imaging — cohort 7',
  'Solid-state battery interface imaging is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around interfaces, microscopy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  ARRAY['interfaces','microscopy']::text[],
  'active',
  'Materials Science',
  ARRAY['DFT','Lab automation','Characterization']::text[],
  'local',
  'medium_term',
  9,
  true,
  'Los Angeles, CA',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a8f955a7-883e-5636-9d12-f0da37f5a6f7'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  'owner',
  'active',
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8fce0d6f-6134-5fca-8b5a-614cd2d0e51e'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'f58278d0-dea2-500a-8a2c-483101aa7a1f'::uuid,
  'editor',
  'active',
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6b939073-b750-5eb8-b577-5ab0332520be'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'b71701ff-0ccc-5cb3-96ca-f0002bc3c753'::uuid,
  'viewer',
  'active',
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'dbd964ba-6ace-536c-aab6-a3d8c3c2196f'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid,
  'viewer',
  'active',
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a79e35c8-b197-531d-8efe-a4f7124db9c4'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'e8e2d114-5ba0-538c-8373-79a21b6c9ce0'::uuid,
  'viewer',
  'active',
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f661bf3a-1638-505e-bf80-0057812a4719'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  'viewer',
  'active',
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2c842f80-47e1-5029-af22-d6003d1c5216'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  'viewer',
  'active',
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0adb1a05-06b5-5a5c-ab97-c60a8ecbafbf'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  'viewer',
  'active',
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '78ee0169-a32b-58a2-8e51-e8c6e1b6bdb9'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  'viewer',
  'active',
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '497c3e52-668d-5cff-aa6c-e9089a057c45'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'Draft related work section',
  'Tracked work item for Solid-state battery interface imaging — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '78802dba-0075-5545-a95b-f3435fc3d498'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'Clean and version dataset',
  'Tracked work item for Solid-state battery interface imaging — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'f58278d0-dea2-500a-8a2c-483101aa7a1f'::uuid,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '437430ac-a089-5e8f-9fd5-0dd14e91d37a'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'Run baseline model',
  'Tracked work item for Solid-state battery interface imaging — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'b71701ff-0ccc-5cb3-96ca-f0002bc3c753'::uuid,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '09397aa3-799a-59c3-920d-5d78e5ac80e1'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'Write IRB amendment',
  'Tracked work item for Solid-state battery interface imaging — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8fe8401e-c592-5380-9a9e-973e3d515b2e'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'Prepare figure panels',
  'Tracked work item for Solid-state battery interface imaging — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'e8e2d114-5ba0-538c-8373-79a21b6c9ce0'::uuid,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a5687aca-2137-559d-b706-d7011d401d1f'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Solid-state battery interface imaging — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7b7fd2b9-f14d-502d-9c1b-11de3e6365bf'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Solid-state battery interface imaging — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '106a3597-93f2-58ac-8ca8-4b3e03461ebb'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Solid-state battery interface imaging — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'd20fa36d-489b-531e-aab5-629d7866fbf2'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  true,
  'planning',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '7f0e3204-200b-57cc-a234-ce688be46abf'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'f58278d0-dea2-500a-8a2c-483101aa7a1f'::uuid,
  'f58278d0-dea2-500a-8a2c-483101aa7a1f'::uuid,
  true,
  'analysis',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '47e936b3-30e2-53a0-a593-c62a79d6d739'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'b71701ff-0ccc-5cb3-96ca-f0002bc3c753'::uuid,
  'b71701ff-0ccc-5cb3-96ca-f0002bc3c753'::uuid,
  true,
  'writing',
  ARRAY['interfaces','microscopy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '00b7344f-d7ed-5317-a972-5bef4cf1f881'::uuid,
  'e2b8bc45-b868-537b-b76b-e7a3bf90b84c'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid,
  '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid,
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
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  'Classroom AI tutor field study — cohort 7',
  'Classroom AI tutor field study is an ongoing collaboration led from University of Texas at Austin. We are building shared methods, datasets, and publications around edtech, RCT. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  ARRAY['edtech','RCT']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'remote',
  'long_term',
  10,
  true,
  'New York, NY',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7a37730c-9534-516e-b668-63ef0fcc91ca'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  'owner',
  'active',
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '26c34e04-912f-5894-9d66-c3df9edb8bd0'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  '42100420-3e43-57ff-96c6-5945409a49d1'::uuid,
  'editor',
  'active',
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '51a60749-3a35-50f6-9c33-fa67207b36c8'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  '2793edac-d756-588c-b8dd-e83001afa7ec'::uuid,
  'viewer',
  'active',
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e4f852cb-811b-544b-a8a5-20caf6464608'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  'e10e4af7-777d-5432-8c01-a3e0e54c8137'::uuid,
  'viewer',
  'active',
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7638e2c1-1133-54fa-bade-1116a241c6ca'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  'Draft related work section',
  'Tracked work item for Classroom AI tutor field study — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9fa05a32-0c89-5430-990a-d860471e2a90'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  'Clean and version dataset',
  'Tracked work item for Classroom AI tutor field study — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '42100420-3e43-57ff-96c6-5945409a49d1'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '75ee427e-0a47-5cad-9ed9-870d1b5f4128'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  'Run baseline model',
  'Tracked work item for Classroom AI tutor field study — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '2793edac-d756-588c-b8dd-e83001afa7ec'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '97a92185-97ef-5cab-bb3b-550f1cbafff8'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  'Write IRB amendment',
  'Tracked work item for Classroom AI tutor field study — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'e10e4af7-777d-5432-8c01-a3e0e54c8137'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5bcd59ec-d921-50d4-8870-0dc568d16cf9'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  'Prepare figure panels',
  'Tracked work item for Classroom AI tutor field study — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '20fd3abc-885e-589d-8df6-58c5246dca0d'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Classroom AI tutor field study — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '42100420-3e43-57ff-96c6-5945409a49d1'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0a296ee5-de8a-5dc2-be55-2187a402c437'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Classroom AI tutor field study — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '2793edac-d756-588c-b8dd-e83001afa7ec'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6f93486e-b6dc-5748-93bb-43a461930ac6'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Classroom AI tutor field study — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'e10e4af7-777d-5432-8c01-a3e0e54c8137'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '141de65e-5762-5416-ac1a-8f08c439c6f3'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  true,
  'planning',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'fc17ea8c-d15a-5685-9ae3-ede26bdc3c61'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '42100420-3e43-57ff-96c6-5945409a49d1'::uuid,
  '42100420-3e43-57ff-96c6-5945409a49d1'::uuid,
  true,
  'analysis',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'fe97a1ac-55e3-57c2-8347-de84fb20dbf7'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '2793edac-d756-588c-b8dd-e83001afa7ec'::uuid,
  '2793edac-d756-588c-b8dd-e83001afa7ec'::uuid,
  true,
  'writing',
  ARRAY['edtech','RCT']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3830fc50-e63e-5adb-927d-4d67aa008dad'::uuid,
  'fc60331e-d8c1-5ee1-8ce2-83a40147b958'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'e10e4af7-777d-5432-8c01-a3e0e54c8137'::uuid,
  'e10e4af7-777d-5432-8c01-a3e0e54c8137'::uuid,
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
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  'Privacy-preserving wearable analytics — cohort 7',
  'Privacy-preserving wearable analytics is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around wearables, privacy. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  ARRAY['wearables','privacy']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'hybrid',
  'long_term',
  11,
  true,
  'Chicago, IL',
  now() - interval '123 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '506362b6-0269-5dab-b9b2-a6b513595de4'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  'owner',
  'active',
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '396a6f16-9b45-5f49-9dd5-13c50a87e0c6'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  '0392fa60-6bcf-535c-9b0b-61d11c875f58'::uuid,
  'editor',
  'active',
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ebccd383-dbfc-5860-a2fd-6287119381f3'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  'ba58a0d4-31c0-534b-8a30-c476559e8c17'::uuid,
  'viewer',
  'active',
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f22f34cf-5a30-5e43-b778-374cce870e8e'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  '28e8e255-d90a-544e-8200-58d29d4c6ee8'::uuid,
  'viewer',
  'active',
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '78eabce0-b66a-5be5-b01c-a53f8753bac5'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  'viewer',
  'active',
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4de740c2-7abf-5a97-a852-2b6c7deea5e2'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  'Draft related work section',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 7.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'abc88038-064e-5bae-b36b-fe9778dbff88'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  'Clean and version dataset',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '0392fa60-6bcf-535c-9b0b-61d11c875f58'::uuid,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6526b9f3-6583-523d-9dbe-afa06a4f413a'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  'Run baseline model',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 7.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'ba58a0d4-31c0-534b-8a30-c476559e8c17'::uuid,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a5de4010-a13a-5d68-ba94-f9b31ffdc5a7'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  'Write IRB amendment',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 7.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '28e8e255-d90a-544e-8200-58d29d4c6ee8'::uuid,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '940016d5-e3e3-5506-90d5-bb29afd66b93'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  'Prepare figure panels',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 7.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8389f62f-fc75-5e37-addf-dfd42c0dcb69'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 7.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '56fb639e-0b14-537f-a21c-ad6b3cb15046'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  'Upload supplementary tables (2)',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 7.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '0392fa60-6bcf-535c-9b0b-61d11c875f58'::uuid,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '546ecb74-4fd6-5fc7-9a74-fff122e380f3'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  'Refactor analysis notebook (3)',
  'Tracked work item for Privacy-preserving wearable analytics — cohort 7.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'ba58a0d4-31c0-534b-8a30-c476559e8c17'::uuid,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '2fbb1a3a-0d76-58ec-a956-fa75cd8c4ba5'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  'Methods',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  '922c0481-709a-5db3-8ec3-323549ac8205'::uuid,
  true,
  'planning',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '90d32a42-00b9-5d2c-830e-17459890509b'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  'Meeting notes',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '0392fa60-6bcf-535c-9b0b-61d11c875f58'::uuid,
  '0392fa60-6bcf-535c-9b0b-61d11c875f58'::uuid,
  true,
  'analysis',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '229aa06d-aac3-593f-8382-bccb136b29f4'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  'Reading list',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'ba58a0d4-31c0-534b-8a30-c476559e8c17'::uuid,
  'ba58a0d4-31c0-534b-8a30-c476559e8c17'::uuid,
  true,
  'writing',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '100df7b2-7866-542a-a957-0e18c1a1f8d9'::uuid,
  'b72d11b7-3433-5b16-827e-c078d5c5af90'::uuid,
  'Open questions',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '28e8e255-d90a-544e-8200-58d29d4c6ee8'::uuid,
  '28e8e255-d90a-544e-8200-58d29d4c6ee8'::uuid,
  true,
  'ops',
  ARRAY['wearables','privacy']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;
