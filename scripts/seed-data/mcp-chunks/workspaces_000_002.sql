INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '64ad9dea-1f30-59f2-b7b4-691ea2596def'::uuid,
  '32af52a1-abdb-57e0-bf5b-46a0c06e222b'::uuid,
  'Refactor analysis notebook',
  'Workspace task',
  'completed',
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'b0de60da-c759-5e1a-8f92-687c33bff66e'::uuid,
  '32af52a1-abdb-57e0-bf5b-46a0c06e222b'::uuid,
  'Validate QC pipeline',
  'Workspace task',
  'todo',
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '6d645f29-f7db-5154-a462-d96b802c140e'::uuid,
  '32af52a1-abdb-57e0-bf5b-46a0c06e222b'::uuid,
  'Collect pilot feedback',
  'Workspace task',
  'in_progress',
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '9c735818-dd7b-502f-b05a-fc71321ac626'::uuid,
  'Paper writing room 7',
  'Shared workspace for documents, tasks, and team chat.',
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('9c735818-dd7b-502f-b05a-fc71321ac626'::uuid, 'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('9c735818-dd7b-502f-b05a-fc71321ac626'::uuid, 'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('9c735818-dd7b-502f-b05a-fc71321ac626'::uuid, 'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('9c735818-dd7b-502f-b05a-fc71321ac626'::uuid, '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('9c735818-dd7b-502f-b05a-fc71321ac626'::uuid, '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '1452bade-bfa0-52d3-b1b6-c5dd5535220c'::uuid,
  '9c735818-dd7b-502f-b05a-fc71321ac626'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan."}'::jsonb,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '149b6bef-f3fe-5a25-9ba5-29218275208e'::uuid,
  '9c735818-dd7b-502f-b05a-fc71321ac626'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds."}'::jsonb,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '77a0a11c-a3a2-560f-8859-e7c2a8bbe511'::uuid,
  '9c735818-dd7b-502f-b05a-fc71321ac626'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline."}'::jsonb,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '50cc310f-a956-5c28-a63d-6893b0df7540'::uuid,
  '9c735818-dd7b-502f-b05a-fc71321ac626'::uuid,
  'Upload supplementary tables',
  'Workspace task',
  'todo',
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'bee5f70e-a0b0-5fc3-ba18-54b59f356f0e'::uuid,
  '9c735818-dd7b-502f-b05a-fc71321ac626'::uuid,
  'Refactor analysis notebook',
  'Workspace task',
  'in_progress',
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '9cf5f782-8646-51fb-bd83-b7a910e4b3bb'::uuid,
  '9c735818-dd7b-502f-b05a-fc71321ac626'::uuid,
  'Validate QC pipeline',
  'Workspace task',
  'completed',
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'bea40693-327b-599f-a868-53cc8bbdb8c6'::uuid,
  '9c735818-dd7b-502f-b05a-fc71321ac626'::uuid,
  'Collect pilot feedback',
  'Workspace task',
  'todo',
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'e9c14305-5ddf-575c-a62a-5fd83f4252b0'::uuid,
  '9c735818-dd7b-502f-b05a-fc71321ac626'::uuid,
  'Submit internal review',
  'Workspace task',
  'in_progress',
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '79b417b2-4cf4-5dc6-8868-084b5a709ce8'::uuid,
  'Grant workspace 8',
  'Shared workspace for documents, tasks, and team chat.',
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('79b417b2-4cf4-5dc6-8868-084b5a709ce8'::uuid, '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('79b417b2-4cf4-5dc6-8868-084b5a709ce8'::uuid, 'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('79b417b2-4cf4-5dc6-8868-084b5a709ce8'::uuid, '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('79b417b2-4cf4-5dc6-8868-084b5a709ce8'::uuid, '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('79b417b2-4cf4-5dc6-8868-084b5a709ce8'::uuid, '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '64567d29-0979-5653-96c2-3ed5c07db340'::uuid,
  '79b417b2-4cf4-5dc6-8868-084b5a709ce8'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Methods draft v0.3 — need reviewer feedback on preprocessing choices and QC thresholds."}'::jsonb,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '4e09f1bd-7d9f-58bd-91c8-6c4567e9c641'::uuid,
  '79b417b2-4cf4-5dc6-8868-084b5a709ce8'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline."}'::jsonb,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '3efda69f-c2e4-5ee6-b8da-1f748ec94fcc'::uuid,
  '79b417b2-4cf4-5dc6-8868-084b5a709ce8'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Open questions: sample size for secondary outcomes; compute budget for ablation study."}'::jsonb,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'd6d79b21-841a-539c-90a2-0feea2476bd1'::uuid,
  '79b417b2-4cf4-5dc6-8868-084b5a709ce8'::uuid,
  'Refactor analysis notebook',
  'Workspace task',
  'todo',
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'fd40906e-1e20-52b2-861b-635b44075ace'::uuid,
  '79b417b2-4cf4-5dc6-8868-084b5a709ce8'::uuid,
  'Validate QC pipeline',
  'Workspace task',
  'in_progress',
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '86e297d4-bd4b-5afe-9dab-ac71fce7de2b'::uuid,
  '79b417b2-4cf4-5dc6-8868-084b5a709ce8'::uuid,
  'Collect pilot feedback',
  'Workspace task',
  'completed',
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'd3a1c80c-f40d-5fa8-9cd3-6cb5fbd9c4a9'::uuid,
  '79b417b2-4cf4-5dc6-8868-084b5a709ce8'::uuid,
  'Submit internal review',
  'Workspace task',
  'todo',
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '4f9e8cd6-c520-50a5-880e-7c72e1aadd15'::uuid,
  '79b417b2-4cf4-5dc6-8868-084b5a709ce8'::uuid,
  'Update project README',
  'Workspace task',
  'in_progress',
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  'f50bf325-9cd4-5f18-aa24-dc55e2ad64cc'::uuid,
  'Methods club 9',
  'Shared workspace for documents, tasks, and team chat.',
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('f50bf325-9cd4-5f18-aa24-dc55e2ad64cc'::uuid, '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('f50bf325-9cd4-5f18-aa24-dc55e2ad64cc'::uuid, '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('f50bf325-9cd4-5f18-aa24-dc55e2ad64cc'::uuid, 'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('f50bf325-9cd4-5f18-aa24-dc55e2ad64cc'::uuid, 'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('f50bf325-9cd4-5f18-aa24-dc55e2ad64cc'::uuid, 'cf10333a-2152-5178-8468-d28b33af4122'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '202bdcb3-640d-5fd1-b111-c20f8926fb78'::uuid,
  'f50bf325-9cd4-5f18-aa24-dc55e2ad64cc'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Literature digest: 8 papers tagged; prioritize replication of the 2024 baseline."}'::jsonb,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '95acd350-6313-514f-bf44-f7498ff76680'::uuid,
  'f50bf325-9cd4-5f18-aa24-dc55e2ad64cc'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Open questions: sample size for secondary outcomes; compute budget for ablation study."}'::jsonb,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'd36ec453-563b-5d75-82cf-5768931be1e0'::uuid,
  'f50bf325-9cd4-5f18-aa24-dc55e2ad64cc'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Data dictionary update: added provenance fields and consent flags."}'::jsonb,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;