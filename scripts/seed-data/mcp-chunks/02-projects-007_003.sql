INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'STEM identity in first-gen undergraduates — cohort 8',
  'STEM identity in first-gen undergraduates is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around equity, mixed methods. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  ARRAY['equity','mixed methods']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'local',
  'medium_term',
  9,
  true,
  'Berkeley, CA',
  now() - interval '143 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '099118bb-fdc0-5d7e-a14d-07166efdb240'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  'owner',
  'active',
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'df7ed269-65f2-5017-8dbf-f6360e79f400'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  'editor',
  'active',
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9d1bd01d-f046-5cc8-a467-979f7c08f657'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  'viewer',
  'active',
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'd53904a6-3e7b-57d1-a407-bf248951e3f1'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  'viewer',
  'active',
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '86c1d9ec-5ce2-5978-8ca2-95cb9b4788a1'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  'viewer',
  'active',
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6b40f2d6-7fe1-5ab0-8acb-4199a5737ac3'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  'viewer',
  'active',
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '834fb3b8-d6f2-521a-a253-f8aff647775f'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  'viewer',
  'active',
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'bdf17a87-0f9d-5bfa-bf57-70b5f261b656'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid,
  'viewer',
  'active',
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8841040e-0179-592b-8de3-77a2888595c3'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid,
  'viewer',
  'active',
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6d4183a9-5064-59fb-bbeb-bee6ed15b31b'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'Validate QC pipeline',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 8.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '591b90bc-9f7e-58ab-aeb2-6e28dc34ff59'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'Collect pilot feedback',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '53bf58de-b88b-5a05-abea-27fbbfe9fc87'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'Submit internal review',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 8.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a103f813-8e3c-5e5d-9f69-d82fbb8b5255'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'Update project README',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 8.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5ba2f0b2-2d6e-54e5-85c5-06b13f3874e9'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'Draft related work section',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 8.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '56bd73fd-7e17-5f9a-8000-ab2d4dc80f3f'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'Clean and version dataset',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bb0177a1-272b-5a3c-a052-958fb408146b'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'Run baseline model (2)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 8.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '911cdce0-6827-5d84-a156-7970c8f4c666'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 8.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid,
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '892fdf3d-79ef-5aae-9363-b0e95d155be6'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid,
  true,
  'planning',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '7f9b6d7a-18c3-5dfc-b4b5-c3782bfeb107'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  true,
  'analysis',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '7d042d5a-fdf5-5dcb-8121-b2c5130f0d4e'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  true,
  'writing',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1c976d48-44a5-5fc8-99de-c7742a513897'::uuid,
  '97ff1eb4-9a60-5b94-8fce-a6708501d5e5'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
  'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid,
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
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  'Dexterous packing under uncertainty — cohort 8',
  'Dexterous packing under uncertainty is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around manipulation, sim2real. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  ARRAY['manipulation','sim2real']::text[],
  'planning',
  'Robotics',
  ARRAY['ROS','Control systems','C++']::text[],
  'remote',
  'long_term',
  10,
  true,
  'Boston, MA',
  now() - interval '143 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ee693d7f-b8b3-5f41-8321-61414d4ba526'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  'owner',
  'active',
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3683726a-a5aa-5627-bf0d-c3f402e9a188'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  'editor',
  'active',
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f55e1c54-1100-5442-b3ae-f223fe6a8063'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  'viewer',
  'active',
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7596e588-4a7b-542a-90af-2afc7d28a668'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  'viewer',
  'active',
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '47aa6b7b-5d2a-5a72-ad16-a2fe4d598f9e'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Dexterous packing under uncertainty — cohort 8.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '18bb9a72-290e-5cf9-a01e-7474275c5d0e'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Dexterous packing under uncertainty — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '72bfbf97-5233-51f2-b959-215afdcdb949'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  'Submit internal review',
  'Tracked work item for Dexterous packing under uncertainty — cohort 8.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'd9056a8d-14dd-5386-a426-9148cce9565f'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  'Update project README',
  'Tracked work item for Dexterous packing under uncertainty — cohort 8.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fae471f6-7446-5457-bbb2-89e48e17810b'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  'Draft related work section',
  'Tracked work item for Dexterous packing under uncertainty — cohort 8.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'aa078393-4c8a-59b4-b096-53710e3c849e'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  'Clean and version dataset',
  'Tracked work item for Dexterous packing under uncertainty — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '957fb33d-a349-5d79-9921-cc77b44aac57'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 8.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'cf6c1106-aa2b-5477-aee3-ed04e43aafbf'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 8.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '22aa8b4a-d520-5a87-ba96-c9c0cd9fec0d'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  true,
  'planning',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e14432ee-6886-5ca5-bd74-9a5d6bd372c2'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  true,
  'analysis',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '74f586ab-3c55-5444-9ada-da185f8d4a45'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  true,
  'writing',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'decb28ab-5307-5d34-b2e6-71eb6f88b363'::uuid,
  '68bc713c-d0db-5594-a963-3a4fcffd853e'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
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
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'Transit spectroscopy pipeline for JWST — cohort 8',
  'Transit spectroscopy pipeline for JWST is an ongoing collaboration led from Cornell University. We are building shared methods, datasets, and publications around exoplanets, pipelines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  ARRAY['exoplanets','pipelines']::text[],
  'active',
  'Astrophysics',
  ARRAY['Data pipelines','Python','Bayesian inference']::text[],
  'hybrid',
  'long_term',
  11,
  true,
  'Toronto, ON',
  now() - interval '143 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f038085f-66bb-57aa-b857-a2b0e1448f3b'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  'owner',
  'active',
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3571fccb-d6aa-505f-a229-3a87b35350f9'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  'editor',
  'active',
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ea5ea06e-36d5-52a6-93f8-36b9f48faf9e'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  'viewer',
  'active',
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9a2b5659-7161-5df9-9643-774def2d1174'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  'viewer',
  'active',
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '52e19cad-e814-5d00-94eb-43f0358d0b5c'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  'viewer',
  'active',
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '00371689-49e5-5b0a-adfc-060d93fd9528'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 8.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0b83fda8-34cb-5cd3-a9f4-63e8ee0d66b9'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '3ebf6cf5-f586-5fc3-a005-eb22aa5b0c96'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'Submit internal review',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 8.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0e09d73f-f538-5507-8c54-d7f422038755'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'Update project README',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 8.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'dd8ea16d-0beb-5cf6-b917-8d8e37cf7c26'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'Draft related work section',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 8.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'a3a49fbe-9a04-5336-a7e7-ec99373617d6'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'Clean and version dataset',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4ab09f69-b4ed-5268-ad86-d0e51259cfd1'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 8.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '6f318c25-9adc-5930-97a3-88159eb4b63b'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 8.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4f68274d-4d03-585f-b816-1e77c3de72f6'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  true,
  'planning',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4eecb636-71c1-5b41-937e-f6b5142fd9d7'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  true,
  'analysis',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'e7214722-0fba-5112-a390-8425e9cbe7ac'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  true,
  'writing',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '89142977-4ec9-5613-8928-08181d862b18'::uuid,
  'ae06a819-c68c-575c-a1e1-ab3bc611a88f'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  true,
  'ops',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;