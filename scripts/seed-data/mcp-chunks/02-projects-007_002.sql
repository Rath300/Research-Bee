INSERT INTO public.projects (
  id, title, description, leader_id, tags, status, category, skills_needed,
  collaboration_type, duration, commitment_hours, is_public, location, created_at, updated_at
) VALUES (
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'Near-term quantum error mitigation — cohort 8',
  'Near-term quantum error mitigation is an ongoing collaboration led from EPFL. We are building shared methods, datasets, and publications around NISQ, algorithms. Current phase focuses on reproducible pipelines and multi-site coordination.',
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  ARRAY['NISQ','algorithms']::text[],
  'active',
  'Quantum Information',
  ARRAY['Qiskit','Linear algebra','Optics']::text[],
  'local',
  'long_term',
  6,
  true,
  'Melbourne, AU',
  now() - interval '143 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '68f71801-8c81-51d2-a0f6-9bfe7b3ba304'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  'owner',
  'active',
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '83d6d4e5-dfbb-5791-89cc-a4fd3243260c'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  'editor',
  'active',
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'c75fbd77-bc9d-5973-a2a9-86e58c94e5bb'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  'viewer',
  'active',
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '4c67aa13-2741-5748-b3b2-481e58616a23'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  'viewer',
  'active',
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '46b3691c-c534-5522-a2e5-20429f17dfea'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  'viewer',
  'active',
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '1e6e4cd5-3283-5f77-9211-f3571b5593fe'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  'viewer',
  'active',
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '91e412e0-5e4e-524e-9d34-2ff08145aa98'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Near-term quantum error mitigation — cohort 8.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b980f271-73dd-5a37-a6a9-308c108e950e'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Near-term quantum error mitigation — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '20bcee41-c82a-58a5-8e50-67ef852e33c6'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'Submit internal review',
  'Tracked work item for Near-term quantum error mitigation — cohort 8.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'feebb0e5-7855-5305-a628-cda4a95e50ff'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'Update project README',
  'Tracked work item for Near-term quantum error mitigation — cohort 8.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'be5541bf-9ff2-525f-b5f4-8096eae25940'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'Draft related work section',
  'Tracked work item for Near-term quantum error mitigation — cohort 8.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'ac408c8a-2b95-5ba3-ae3b-837851ec1d40'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'Clean and version dataset',
  'Tracked work item for Near-term quantum error mitigation — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  '920410e2-89ac-581b-95cc-1c86177f436b'::uuid,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '67efd23f-6990-5820-9afe-8140418d45d1'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Near-term quantum error mitigation — cohort 8.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b82c3139-8edb-5ba8-a912-8fc66c090561'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Near-term quantum error mitigation — cohort 8.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '427ae168-d938-5cf7-b685-89f8d108f631'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  true,
  'planning',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '1b29131a-97b9-5599-840d-d0522e986782'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  true,
  'analysis',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '6eb8bca1-7a7c-5846-9333-026f4f71fad3'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  true,
  'writing',
  ARRAY['NISQ','algorithms']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '4e6c9bed-f834-5dc3-a91c-48e077838663'::uuid,
  '7e015e99-e727-5b7c-90bd-3b4166f73b68'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
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
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'Robust evaluation for clinical LLMs — cohort 8',
  'Robust evaluation for clinical LLMs is an ongoing collaboration led from UC Berkeley. We are building shared methods, datasets, and publications around LLMs, evaluation, safety. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  ARRAY['LLMs','evaluation','safety']::text[],
  'active',
  'Machine Learning',
  ARRAY['PyTorch','NLP','Evaluation']::text[],
  'remote',
  'long_term',
  7,
  true,
  'Cambridge, MA',
  now() - interval '143 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7feeb704-f6fe-50d7-8713-09a5e4f490e4'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  'owner',
  'active',
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'e2cafcc2-546c-5b2c-a731-1657d36ec030'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  'editor',
  'active',
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'f4ba010b-a3b6-5a16-94cd-1db3bd012168'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  'viewer',
  'active',
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2bbb05eb-e33a-5d9b-b76c-3471f5c0daf7'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  'viewer',
  'active',
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'a1a03b92-5478-5d8d-bbda-7cc8f69d475b'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  'viewer',
  'active',
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '2570d65b-d862-516d-9d39-088b65208ebb'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  'viewer',
  'active',
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '0e619c95-4003-5024-9262-fef26b61a2cd'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  'viewer',
  'active',
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'eb557ad8-52f1-5015-a0d9-607d0cd34aa2'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 8.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'b66f6c66-bbf6-570e-a806-4e2b94dba432'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e3becc52-f9f0-513a-a07a-3755bcad0eea'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'Submit internal review',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 8.',
  'completed',
  'high',
  NULL,
  2,
  2,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '61734406-4658-5267-b760-b5b3e84e395c'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'Update project README',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 8.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'f173bb95-8fe9-5cbf-a500-d4f3f12966ab'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'Draft related work section',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 8.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '7344e38c-957e-5077-ab0d-4cd9cb361085'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'Clean and version dataset',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'e23f6dd5-66c0-5108-8660-e7674f06cdd6'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 8.',
  'completed',
  'high',
  NULL,
  6,
  6,
  '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '4482af2d-07ac-5a7c-b0e8-e2064ae282bd'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Robust evaluation for clinical LLMs — cohort 8.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'fc6ef076-f198-5a24-a9fc-f9d9bd6a45db'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  true,
  'planning',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '31642693-3bb4-556d-addf-82ef25e9efeb'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid,
  true,
  'analysis',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '7713501e-e53e-5832-bfe8-7a44a085ebda'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  'e82aadde-599d-5823-9c92-7aa26f607621'::uuid,
  true,
  'writing',
  ARRAY['LLMs','evaluation']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'dc1b4577-d56d-5078-ae42-b2dc7c8841c3'::uuid,
  'cd9834ad-0eee-5ff2-a1d2-ff7b24c8b067'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
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
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'Photoredox catalysis for late-stage edits — cohort 8',
  'Photoredox catalysis for late-stage edits is an ongoing collaboration led from University of Washington. We are building shared methods, datasets, and publications around catalysis, synthesis. Current phase focuses on reproducible pipelines and multi-site coordination.',
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  ARRAY['catalysis','synthesis']::text[],
  'active',
  'Chemistry',
  ARRAY['Organic synthesis','Spectroscopy','Cheminformatics']::text[],
  'hybrid',
  'short_term',
  8,
  true,
  'Palo Alto, CA',
  now() - interval '143 days',
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '932f760c-0917-549b-9faf-6cacd667b3cf'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  'owner',
  'active',
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '6676a67c-e836-5203-a881-693fce4453cc'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  'editor',
  'active',
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '7631d12f-0469-5976-8eb4-a95b1bd0eec5'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  'viewer',
  'active',
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '12638920-95ca-567e-b365-7e2ca917dee5'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  'viewer',
  'active',
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '099f5a28-e47f-5ca7-bff5-7e1e59b22373'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  'viewer',
  'active',
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '8cc6adf3-e75f-59b3-991e-0ac3f59c3393'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  'viewer',
  'active',
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  'cea6c761-8437-5305-9a58-9a24b8d99e7c'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid,
  'viewer',
  'active',
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_collaborators (id, project_id, user_id, role, status, invited_by, created_at, updated_at)
VALUES (
  '3439c83e-21a1-5c2d-aefc-a841f6d2aed4'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  'viewer',
  'active',
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now()
) ON CONFLICT DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '632df5e6-caa7-549c-b6c1-ed42a7a8caee'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'Validate QC pipeline',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 8.',
  'todo',
  'low',
  now() + interval '7 days',
  0,
  0,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '1fb3062d-0108-5b54-a691-ba7cce3b18f8'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'Collect pilot feedback',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '8 days',
  1,
  1,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '0e3503a3-4671-5362-983b-7fb63d70cadb'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'Submit internal review',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 8.',
  'completed',
  'high',
  NULL,
  2,
  2,
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  'bedac39d-eddd-5306-957d-02454471eb61'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'Update project README',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 8.',
  'todo',
  'urgent',
  now() + interval '10 days',
  3,
  3,
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '9b2a0e2f-63e9-57bb-922b-c5cf98133d3a'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'Draft related work section',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 8.',
  'todo',
  'low',
  now() + interval '11 days',
  4,
  4,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '641a697a-f1bf-5729-b830-c1994f1c553f'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'Clean and version dataset',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 8.',
  'in_progress',
  'medium',
  now() + interval '12 days',
  5,
  5,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '47adf49c-c6cc-5dd3-8137-4b981cf32ae1'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'Run baseline model (2)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 8.',
  'completed',
  'high',
  NULL,
  6,
  6,
  'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_tasks (
  id, project_id, title, description, status, priority, due_date, "order", task_order,
  assigned_to, created_by, created_at, updated_at, completed_at
) VALUES (
  '8e4a7ba8-b8ff-539d-a2cd-d4a0d7d40562'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'Write IRB amendment (3)',
  'Tracked work item for Photoredox catalysis for late-stage edits — cohort 8.',
  'todo',
  'urgent',
  now() + interval '14 days',
  7,
  7,
  '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  now(),
  now(),
  NULL
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '7559e24e-56d1-5d5a-ae81-256aa4eff90a'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'Methods',
  'Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline.',
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  true,
  'planning',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '17b56208-c15b-5557-bce2-cb01e056fe9f'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'Meeting notes',
  'Open questions: sample size for secondary outcomes; compute budget for ablation study.',
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  true,
  'analysis',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  'a6f92683-2d8a-5f1f-8fd2-1b95fab31a65'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'Reading list',
  'Data dictionary update: added provenance fields and consent flags.',
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid,
  true,
  'writing',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;


INSERT INTO public.project_notes (
  id, project_id, title, content, created_by, last_edited_by, is_public, section, tags, created_at, updated_at
) VALUES (
  '9031efce-25a5-55ab-a76f-5009116b977b'::uuid,
  '3e20cdf2-3c55-5376-af9b-ce7d12fe388b'::uuid,
  'Open questions',
  'Pilot results look promising; schedule replication run before expanding cohort.',
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  true,
  'ops',
  ARRAY['catalysis','synthesis']::text[],
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;