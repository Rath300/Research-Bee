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