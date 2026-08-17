INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'STEM identity in first-gen undergraduates — cohort 9',
  'STEM identity in first-gen undergraduates is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around equity, mixed methods. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  ARRAY['equity','mixed methods']::text[],
  'active',
  'Education Research',
  ARRAY['Mixed methods','R','Curriculum design']::text[],
  'hybrid',
  'medium_term',
  5,
  true,
  'Palo Alto, CA',
  now() - interval '163 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '9b2c1d43-3173-5be5-a5c9-9a7c6fed7e32'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  'owner',
  'active',
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '758a513c-cf30-5877-93c0-b9ebf00aa011'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  '737fe981-e236-58bd-8b5f-7d72782f3913'::uuid,
  'editor',
  'active',
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5553bcfc-2b13-5971-9797-9c2991861491'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid,
  'viewer',
  'active',
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e73c3a48-feee-5192-8b5c-bad6b7e03ded'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid,
  'viewer',
  'active',
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'da1a8fe6-12a1-58d7-b426-4e3c2be542fe'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  '93006b3a-19e8-5e78-8f8e-4e880c4429ef'::uuid,
  'viewer',
  'active',
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9b29c74f-7214-5661-84b0-4cb59bcc3185'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'Prepare figure panels',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 9.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ea3ebf14-1bf3-51b5-959e-c5d1a93a20fa'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '737fe981-e236-58bd-8b5f-7d72782f3913'::uuid,
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '442d4ae2-3e2a-5671-8988-18e51ee732f2'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'Upload supplementary tables',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 9.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid,
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1abf6911-e652-5513-bb5c-4acedc40f784'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 9.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid,
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '55fadfae-1547-551d-a3f1-d3a817ca9d8d'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'Validate QC pipeline',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 9.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '93006b3a-19e8-5e78-8f8e-4e880c4429ef'::uuid,
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '90f4f3fe-d512-5e91-a7c4-ec88e08bbf6e'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'Collect pilot feedback',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ae22c2db-6b28-5c3a-ab8b-80881bfbbdac'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'Submit internal review (2)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 9.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '737fe981-e236-58bd-8b5f-7d72782f3913'::uuid,
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '5051602d-d815-5e10-bfcb-1d163515af57'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'Update project README (3)',
  'Tracked work item for STEM identity in first-gen undergraduates — cohort 9.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid,
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '343da318-46fb-5535-a36a-aaa5f3abc52c'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid,
  true,
  'planning',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6ea54895-d89f-55ae-a47c-de63d06c80fd'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '737fe981-e236-58bd-8b5f-7d72782f3913'::uuid,
  '737fe981-e236-58bd-8b5f-7d72782f3913'::uuid,
  true,
  'analysis',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'bfba1cbe-9468-5cf5-b354-676558061537'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid,
  'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid,
  true,
  'writing',
  ARRAY['equity','mixed methods']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1ec91b2d-cdac-540e-916d-92291ddd70a0'::uuid,
  'd18e2b0c-9d09-575d-8076-59330f28de8f'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid,
  'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid,
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
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  'Dexterous packing under uncertainty — cohort 9',
  'Dexterous packing under uncertainty is an ongoing collaboration led from Columbia University. We are building shared methods, datasets, and publications around manipulation, sim2real. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  ARRAY['manipulation','sim2real']::text[],
  'planning',
  'Robotics',
  ARRAY['ROS','Control systems','C++']::text[],
  'local',
  'long_term',
  6,
  true,
  'Berkeley, CA',
  now() - interval '163 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '5771f33f-c9a6-5ea4-92dd-3b557bafd931'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  'owner',
  'active',
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'fb6a20bf-2c21-5a31-901b-0d0214404773'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid,
  'editor',
  'active',
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'af508a7a-b99e-5ae0-99bd-18c4f63c2ded'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  '4e11607f-ef7e-5682-8c99-50cc32c882c8'::uuid,
  'viewer',
  'active',
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1c1851ec-24ef-5427-80ab-11a89fe658d7'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid,
  'viewer',
  'active',
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '03e5778e-47da-5298-a45a-72579135746d'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  '2619904e-3b06-54b6-bb0f-ea16e3de5f6d'::uuid,
  'viewer',
  'active',
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2ac66067-11b4-5943-bcf7-62f64c25c809'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  'feac598c-38ed-5b4e-8173-ae60d6e102db'::uuid,
  'viewer',
  'active',
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '291d3c2f-aabe-5bfd-9089-432f06bb5dfc'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  'Prepare figure panels',
  'Tracked work item for Dexterous packing under uncertainty — cohort 9.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '744e1d73-81ab-52a8-85dd-02bfeacc0097'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Dexterous packing under uncertainty — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c5b30932-56dd-5a74-ad4e-28c873b287a4'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Dexterous packing under uncertainty — cohort 9.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '4e11607f-ef7e-5682-8c99-50cc32c882c8'::uuid,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2f36bece-9470-5fd4-8613-d2d9b5df7395'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Dexterous packing under uncertainty — cohort 9.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ffdc3de6-d97e-5ce0-9767-bd2c861cfd84'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Dexterous packing under uncertainty — cohort 9.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '2619904e-3b06-54b6-bb0f-ea16e3de5f6d'::uuid,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'c95f27d1-a1dc-566a-9181-7174a0b1d225'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Dexterous packing under uncertainty — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'feac598c-38ed-5b4e-8173-ae60d6e102db'::uuid,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bd0bc442-a0e1-5ca7-ba1f-8152b1b34c9a'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 9.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e40ea07e-b271-5770-88a8-205b4dc01a1b'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  'Update project README (3)',
  'Tracked work item for Dexterous packing under uncertainty — cohort 9.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '0f9f8b72-f1fe-58aa-9d46-6296ed306f7a'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  true,
  'planning',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3abaec9d-cb4a-5603-a008-5f3de25aa2be'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid,
  'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid,
  true,
  'analysis',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'fe41a510-ca72-5156-9c17-1c823dd26c3a'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  '4e11607f-ef7e-5682-8c99-50cc32c882c8'::uuid,
  '4e11607f-ef7e-5682-8c99-50cc32c882c8'::uuid,
  true,
  'writing',
  ARRAY['manipulation','sim2real']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '84a9e8d9-ea07-50ad-bc7f-99dcac544fea'::uuid,
  '4aa47764-e832-50d0-b271-5e49f678efa1'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid,
  '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid,
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
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'Transit spectroscopy pipeline for JWST — cohort 9',
  'Transit spectroscopy pipeline for JWST is an ongoing collaboration led from Caltech. We are building shared methods, datasets, and publications around exoplanets, pipelines. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  ARRAY['exoplanets','pipelines']::text[],
  'active',
  'Astrophysics',
  ARRAY['Data pipelines','Python','Bayesian inference']::text[],
  'remote',
  'long_term',
  7,
  true,
  'Boston, MA',
  now() - interval '163 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'ab63f676-f052-5d80-9f43-56882e7f89f1'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  'owner',
  'active',
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'bdadfc72-e92d-556c-8f86-af5451eb8f31'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  '65673952-33ec-5b72-b075-0d350bcdb2da'::uuid,
  'editor',
  'active',
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7ff0ffcd-1acb-5a15-b574-313ff68e6a5a'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid,
  'viewer',
  'active',
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'cd363f65-be4c-56ca-94d2-68347b809460'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid,
  'viewer',
  'active',
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'cfaab852-c337-5d54-baa6-a50e27518772'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  '900b4bc0-9225-59ed-bdb7-b994730f07e8'::uuid,
  'viewer',
  'active',
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '17c6b78b-d064-573f-bc8a-3f2f9c3a3102'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'd87f4c56-0da4-5e92-b739-b5649237064a'::uuid,
  'viewer',
  'active',
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '55cb61ea-0d58-5dc8-ac9f-48dc6f3d0c7a'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  '59fc5e89-4210-5535-9f42-ed5204636320'::uuid,
  'viewer',
  'active',
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ad66ebcd-deaa-5cef-8752-a6a9390b01bd'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'Prepare figure panels',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 9.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7036c2fb-18f8-555d-84bd-b4f8ab6957bc'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'Schedule collaborator sync',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  '65673952-33ec-5b72-b075-0d350bcdb2da'::uuid,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'fe03b60a-0262-579e-9994-43b97a6140b2'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'Upload supplementary tables',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 9.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ce490e83-5c9d-5c1e-8355-efc69a00e792'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'Refactor analysis notebook',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 9.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '2cd90d37-0b0b-50f4-b1cf-f80d53daa17b'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 9.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '900b4bc0-9225-59ed-bdb7-b994730f07e8'::uuid,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7d14b0e1-efd2-527b-b9c2-6a7dc1c1e1aa'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 9.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'd87f4c56-0da4-5e92-b739-b5649237064a'::uuid,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'cde01d86-27f6-5c4e-b444-64258468e438'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'Submit internal review (2)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 9.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '59fc5e89-4210-5535-9f42-ed5204636320'::uuid,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '18088ffa-833b-5445-acb4-8a2ef814e6e3'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'Update project README (3)',
  'Tracked work item for Transit spectroscopy pipeline for JWST — cohort 9.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b2e5dc8c-3650-5136-ad57-f7f12f7e14e3'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'Methods',
  'Data dictionary update: added provenance fields and consent flags.',
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  true,
  'planning',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '3b2e8fcf-7a6e-5a6c-a578-f9181ac108a0'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'Meeting notes',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '65673952-33ec-5b72-b075-0d350bcdb2da'::uuid,
  '65673952-33ec-5b72-b075-0d350bcdb2da'::uuid,
  true,
  'analysis',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '237dfb55-16e8-5e28-ab5c-e46ef910ac2f'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'Reading list',
  'Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan.',
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid,
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid,
  true,
  'writing',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'b64e3f23-5a29-54b5-9b5d-40f5bf9b4093'::uuid,
  '755a8109-4f23-5e4a-a861-9639d3b72f7e'::uuid,
  'Open questions',
  'Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds.',
  'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid,
  'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid,
  true,
  'ops',
  ARRAY['exoplanets','pipelines']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;