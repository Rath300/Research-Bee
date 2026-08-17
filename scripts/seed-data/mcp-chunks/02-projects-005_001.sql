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