INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'e9d3cba2-800b-5f90-ad40-b292359f177d'::uuid,
  'f50bf325-9cd4-5f18-aa24-dc55e2ad64cc'::uuid,
  'Validate QC pipeline',
  'Workspace task',
  'todo',
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '64ec4293-045d-5c47-adb7-121255f107f6'::uuid,
  'f50bf325-9cd4-5f18-aa24-dc55e2ad64cc'::uuid,
  'Collect pilot feedback',
  'Workspace task',
  'in_progress',
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '6f96ae06-3c8c-531b-a936-d7f052dd0bc2'::uuid,
  'f50bf325-9cd4-5f18-aa24-dc55e2ad64cc'::uuid,
  'Submit internal review',
  'Workspace task',
  'completed',
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '92f7956d-b8fa-54e2-a021-c2dcea168b54'::uuid,
  'f50bf325-9cd4-5f18-aa24-dc55e2ad64cc'::uuid,
  'Update project README',
  'Workspace task',
  'todo',
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '08119c41-601e-5914-90d0-47c30dc626c6'::uuid,
  'f50bf325-9cd4-5f18-aa24-dc55e2ad64cc'::uuid,
  'Draft related work section',
  'Workspace task',
  'in_progress',
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  '4f5f927c-9f53-5dd4-8ae7-1cf954863409'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  'e62b482d-3f5e-5605-9dd9-60bd69334bb3'::uuid,
  'Data room 10',
  'Shared workspace for documents, tasks, and team chat.',
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('e62b482d-3f5e-5605-9dd9-60bd69334bb3'::uuid, '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('e62b482d-3f5e-5605-9dd9-60bd69334bb3'::uuid, 'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('e62b482d-3f5e-5605-9dd9-60bd69334bb3'::uuid, '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('e62b482d-3f5e-5605-9dd9-60bd69334bb3'::uuid, 'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('e62b482d-3f5e-5605-9dd9-60bd69334bb3'::uuid, 'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'ad6d0aab-8ad7-5be3-b681-b8264018797e'::uuid,
  'e62b482d-3f5e-5605-9dd9-60bd69334bb3'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Open questions: sample size for secondary outcomes; compute budget for ablation study."}'::jsonb,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '0b707189-5b34-5005-bfcf-809efab5bc50'::uuid,
  'e62b482d-3f5e-5605-9dd9-60bd69334bb3'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Data dictionary update: added provenance fields and consent flags."}'::jsonb,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '12a6cd29-78b9-531e-a083-a2cc1a20e6ca'::uuid,
  'e62b482d-3f5e-5605-9dd9-60bd69334bb3'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Pilot results look promising; schedule replication run before expanding cohort."}'::jsonb,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'a13f6cfe-0915-5772-ae28-15d1eee810fd'::uuid,
  'e62b482d-3f5e-5605-9dd9-60bd69334bb3'::uuid,
  'Collect pilot feedback',
  'Workspace task',
  'todo',
  '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'f9900e3f-4ec5-55e0-9d2c-b3f8127789ee'::uuid,
  'e62b482d-3f5e-5605-9dd9-60bd69334bb3'::uuid,
  'Submit internal review',
  'Workspace task',
  'in_progress',
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '72bc797f-0c56-5317-a2f2-eaa75f5875b5'::uuid,
  'e62b482d-3f5e-5605-9dd9-60bd69334bb3'::uuid,
  'Update project README',
  'Workspace task',
  'completed',
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'a90bd2e7-463d-5840-a124-42095513c4cc'::uuid,
  'e62b482d-3f5e-5605-9dd9-60bd69334bb3'::uuid,
  'Draft related work section',
  'Workspace task',
  'todo',
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'a38f2283-d756-5cdd-9aa9-98a6c81e09ae'::uuid,
  'e62b482d-3f5e-5605-9dd9-60bd69334bb3'::uuid,
  'Clean and version dataset',
  'Workspace task',
  'in_progress',
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '14b6f00c-61c6-56dd-8d62-f23c9d0c15f0'::uuid,
  'Lab coordination 11',
  'Shared workspace for documents, tasks, and team chat.',
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('14b6f00c-61c6-56dd-8d62-f23c9d0c15f0'::uuid, 'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('14b6f00c-61c6-56dd-8d62-f23c9d0c15f0'::uuid, '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('14b6f00c-61c6-56dd-8d62-f23c9d0c15f0'::uuid, 'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('14b6f00c-61c6-56dd-8d62-f23c9d0c15f0'::uuid, 'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('14b6f00c-61c6-56dd-8d62-f23c9d0c15f0'::uuid, '920410e2-89ac-581b-95cc-1c86177f436b'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '02d7256b-2e51-5555-bd7e-34bb70cdb504'::uuid,
  '14b6f00c-61c6-56dd-8d62-f23c9d0c15f0'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Data dictionary update: added provenance fields and consent flags."}'::jsonb,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  '88d2d20b-4bd5-5481-a042-09a449fc709c'::uuid,
  '14b6f00c-61c6-56dd-8d62-f23c9d0c15f0'::uuid,
  'Draft outline',
  'Generic Document',
  '{"text":"Pilot results look promising; schedule replication run before expanding cohort."}'::jsonb,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'b20e42c2-5614-5cf8-824e-c5a1ac35a05f'::uuid,
  '14b6f00c-61c6-56dd-8d62-f23c9d0c15f0'::uuid,
  'Shared notes',
  'Generic Document',
  '{"text":"Meeting notes: aligned on inclusion criteria and primary endpoint. Next: draft analysis plan."}'::jsonb,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'ba9a9d0b-dd2a-5bb9-b891-f4954b21088f'::uuid,
  '14b6f00c-61c6-56dd-8d62-f23c9d0c15f0'::uuid,
  'Submit internal review',
  'Workspace task',
  'todo',
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'e410d537-6113-5c1c-ade5-5365ba85a1d6'::uuid,
  '14b6f00c-61c6-56dd-8d62-f23c9d0c15f0'::uuid,
  'Update project README',
  'Workspace task',
  'in_progress',
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '9dcb0510-c555-5563-a42b-93ba969ef2a8'::uuid,
  '14b6f00c-61c6-56dd-8d62-f23c9d0c15f0'::uuid,
  'Draft related work section',
  'Workspace task',
  'completed',
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  '7d1e7cc6-dd00-5221-ae76-4e4ccd2b1fcd'::uuid,
  '14b6f00c-61c6-56dd-8d62-f23c9d0c15f0'::uuid,
  'Clean and version dataset',
  'Workspace task',
  'todo',
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_tasks (id, workspace_id, title, description, status, assigned_to_user_id, created_by_user_id, created_at, updated_at)
VALUES (
  'db848c5a-4c21-546d-b859-a35b058468b7'::uuid,
  '14b6f00c-61c6-56dd-8d62-f23c9d0c15f0'::uuid,
  'Run baseline model',
  'Workspace task',
  'in_progress',
  '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspaces (id, name, description, owner_id, created_at, updated_at)
VALUES (
  '51d0eb1e-ec86-5338-a6e9-7207aa355d8b'::uuid,
  'Paper writing room 12',
  'Shared workspace for documents, tasks, and team chat.',
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('51d0eb1e-ec86-5338-a6e9-7207aa355d8b'::uuid, '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid, 'owner', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('51d0eb1e-ec86-5338-a6e9-7207aa355d8b'::uuid, 'cbc72d17-40df-503c-9380-64860d555aeb'::uuid, 'admin', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('51d0eb1e-ec86-5338-a6e9-7207aa355d8b'::uuid, '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('51d0eb1e-ec86-5338-a6e9-7207aa355d8b'::uuid, '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_members (workspace_id, user_id, role, invitation_status, joined_at)
VALUES ('51d0eb1e-ec86-5338-a6e9-7207aa355d8b'::uuid, '47b81f54-6417-5024-893d-0269a6070530'::uuid, 'editor', 'accepted', now())
ON CONFLICT (workspace_id, user_id) DO NOTHING;

INSERT INTO public.workspace_documents (id, workspace_id, title, document_type, content, created_by_user_id, last_edited_by_user_id, created_at, updated_at)
VALUES (
  'f6be4008-7e53-55c5-bc12-f8dafe885cbb'::uuid,
  '51d0eb1e-ec86-5338-a6e9-7207aa355d8b'::uuid,
  'Agenda',
  'Generic Document',
  '{"text":"Pilot results look promising; schedule replication run before expanding cohort."}'::jsonb,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  now(),
  now()
) ON CONFLICT (id) DO NOTHING;