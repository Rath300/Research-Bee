INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c68209d1-4c18-52d1-a118-752a6e086fb9'::uuid,
  'da90a559-9c57-5c03-bdb7-d5c6a2ea1164'::uuid,
  'e78a6ddc-5a54-530e-9647-71d739067c0c'::uuid,
  '6c035525-3f92-5b12-a279-9a55e2859c0f'::uuid,
  'Thanks Hana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ee05e6e5-e604-56f6-bc27-5a4a4571995a'::uuid, '6c035525-3f92-5b12-a279-9a55e2859c0f'::uuid, '75da44ef-ebe7-509c-a3fa-d124f2e4b6bd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5add3eff-cb77-5ce9-bcda-e07c9770dba6'::uuid, '75da44ef-ebe7-509c-a3fa-d124f2e4b6bd'::uuid, '6c035525-3f92-5b12-a279-9a55e2859c0f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('adc85b3d-fcdc-5d69-829b-596844ce8c00'::uuid, '6c035525-3f92-5b12-a279-9a55e2859c0f'::uuid, '75da44ef-ebe7-509c-a3fa-d124f2e4b6bd'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6f591323-9982-5ab9-a5d6-0855f31658c0'::uuid, '743deae9-0a26-5472-9f76-6e4aea019515'::uuid, 'd460af56-9bbd-5b2f-8e70-fddb8cf7d6c0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fe3f64aa-85a6-5504-ac60-f74a96ecf9dc'::uuid, 'd460af56-9bbd-5b2f-8e70-fddb8cf7d6c0'::uuid, '743deae9-0a26-5472-9f76-6e4aea019515'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e2e951a3-21a5-5ed0-8e12-724070a24f0c'::uuid, '743deae9-0a26-5472-9f76-6e4aea019515'::uuid, 'd460af56-9bbd-5b2f-8e70-fddb8cf7d6c0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c750167e-7859-5b75-9086-fe0a07aaf97e'::uuid,
  'e2e951a3-21a5-5ed0-8e12-724070a24f0c'::uuid,
  '743deae9-0a26-5472-9f76-6e4aea019515'::uuid,
  'd460af56-9bbd-5b2f-8e70-fddb8cf7d6c0'::uuid,
  'Hi Nadia — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2c0ac365-9bf1-535c-a862-9b089b6a2fe4'::uuid,
  'e2e951a3-21a5-5ed0-8e12-724070a24f0c'::uuid,
  'd460af56-9bbd-5b2f-8e70-fddb8cf7d6c0'::uuid,
  '743deae9-0a26-5472-9f76-6e4aea019515'::uuid,
  'Thanks Maya! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6784c147-0970-5543-90b4-3d7ef7a62414'::uuid, '2e17579b-6b8b-5000-b30d-a2dde2efb47d'::uuid, 'c4ef2b83-74dd-5001-9c23-9219dc342540'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('03c1e87e-cc5b-54a4-b650-bc16e662e019'::uuid, 'c4ef2b83-74dd-5001-9c23-9219dc342540'::uuid, '2e17579b-6b8b-5000-b30d-a2dde2efb47d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e3ae8b30-4865-557e-a150-3b2d5938e364'::uuid, '2e17579b-6b8b-5000-b30d-a2dde2efb47d'::uuid, 'c4ef2b83-74dd-5001-9c23-9219dc342540'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7c614696-656a-5efe-b53e-e944c09ea1f5'::uuid, '91c678b4-6d1b-543c-ab3e-c298a0d3b8e5'::uuid, '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0afb86a0-cd49-56d8-88d4-41764625aa73'::uuid, '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid, '91c678b4-6d1b-543c-ab3e-c298a0d3b8e5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a7a11a7d-ef29-580a-92e3-6d8147e51f6b'::uuid, '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid, '91c678b4-6d1b-543c-ab3e-c298a0d3b8e5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1efb9ccb-79f7-5b01-8701-396aa0953d24'::uuid,
  'a7a11a7d-ef29-580a-92e3-6d8147e51f6b'::uuid,
  '91c678b4-6d1b-543c-ab3e-c298a0d3b8e5'::uuid,
  '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid,
  'Hi Mei — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0cacb491-724e-5092-a224-b4900a888a39'::uuid,
  'a7a11a7d-ef29-580a-92e3-6d8147e51f6b'::uuid,
  '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid,
  '91c678b4-6d1b-543c-ab3e-c298a0d3b8e5'::uuid,
  'Thanks Rohan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('92448945-7f51-5f84-89ee-d55c6268ffe4'::uuid, '882ce91f-dd4d-5798-9c92-ceb3be3c526c'::uuid, '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ba1964f6-cd96-598f-a9ce-b8f561d31749'::uuid, '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid, '882ce91f-dd4d-5798-9c92-ceb3be3c526c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('926b006b-17d0-5821-9166-22a1ec01208f'::uuid, '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid, '882ce91f-dd4d-5798-9c92-ceb3be3c526c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3cd77bfd-a4ee-5ed3-92c1-b802e21d5e01'::uuid, 'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid, '0d1d60a3-6461-5d9d-97bf-d3d4eaa8d252'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('545f8dad-dbdd-5979-a14f-bea0448db7f9'::uuid, '0d1d60a3-6461-5d9d-97bf-d3d4eaa8d252'::uuid, 'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e2c54671-0618-5ab7-ad0f-8915a68f3261'::uuid, '0d1d60a3-6461-5d9d-97bf-d3d4eaa8d252'::uuid, 'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '519b91b9-63a3-5fd3-a5a2-5a78cf698abb'::uuid,
  'e2c54671-0618-5ab7-ad0f-8915a68f3261'::uuid,
  'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid,
  '0d1d60a3-6461-5d9d-97bf-d3d4eaa8d252'::uuid,
  'Hi Riya — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8115edb2-44a4-59d2-b02c-360e41106006'::uuid,
  'e2c54671-0618-5ab7-ad0f-8915a68f3261'::uuid,
  '0d1d60a3-6461-5d9d-97bf-d3d4eaa8d252'::uuid,
  'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid,
  'Thanks Samir! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d240490c-1d5e-5558-acd2-9b167157a6bd'::uuid, 'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid, '3dc0eb9c-b237-5c59-9e37-3d956ac72f8f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('24c1e396-58ed-5f3a-85bc-2a5a9bc06662'::uuid, '3dc0eb9c-b237-5c59-9e37-3d956ac72f8f'::uuid, 'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3a7ca928-0acf-5c79-bdf4-60dbdba52ae3'::uuid, '3dc0eb9c-b237-5c59-9e37-3d956ac72f8f'::uuid, 'f31489f0-dc57-5438-85f8-5bbf509b95a9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6985ef60-6714-53fa-a8ed-fa23dff69d3d'::uuid, '9fb50165-a8eb-59fc-a02a-980426bca98e'::uuid, '0687ee8d-ff4f-5a57-a322-44f46574449a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fd4f5ce0-ff47-5980-a9f3-5ce50e3845e1'::uuid, '0687ee8d-ff4f-5a57-a322-44f46574449a'::uuid, '9fb50165-a8eb-59fc-a02a-980426bca98e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0f76e47b-d90a-5217-be9d-8cb1274a2546'::uuid, '0687ee8d-ff4f-5a57-a322-44f46574449a'::uuid, '9fb50165-a8eb-59fc-a02a-980426bca98e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '27baaafd-1d9c-5fce-8fa8-4d5fb49c11d1'::uuid,
  '0f76e47b-d90a-5217-be9d-8cb1274a2546'::uuid,
  '9fb50165-a8eb-59fc-a02a-980426bca98e'::uuid,
  '0687ee8d-ff4f-5a57-a322-44f46574449a'::uuid,
  'Hi Nathan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '88286491-9b9f-55cf-a24a-562566a35baa'::uuid,
  '0f76e47b-d90a-5217-be9d-8cb1274a2546'::uuid,
  '0687ee8d-ff4f-5a57-a322-44f46574449a'::uuid,
  '9fb50165-a8eb-59fc-a02a-980426bca98e'::uuid,
  'Thanks Camila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a8dd4359-5c00-55c1-94a6-39f9f8acf3b4'::uuid, '51cba535-121a-5cfc-b614-ab625cdd313b'::uuid, 'ab207c01-931d-503e-a7bc-828029810b26'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('16a606b0-9db3-5bca-b125-9dded05f4652'::uuid, 'ab207c01-931d-503e-a7bc-828029810b26'::uuid, '51cba535-121a-5cfc-b614-ab625cdd313b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('05a00378-3f1d-5592-8393-0f28e57bc2f9'::uuid, '51cba535-121a-5cfc-b614-ab625cdd313b'::uuid, 'ab207c01-931d-503e-a7bc-828029810b26'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c20fd8c3-082f-5dd2-b532-ba5083b000e3'::uuid, '4499d8b5-c21e-5f7f-ac58-d210e2423913'::uuid, 'e5b13d72-cb9f-5c3d-9bcc-a7b8cd7499ba'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6478e719-71e0-5552-bba2-cc91f9686a5a'::uuid, 'e5b13d72-cb9f-5c3d-9bcc-a7b8cd7499ba'::uuid, '4499d8b5-c21e-5f7f-ac58-d210e2423913'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b7bff52a-7ccb-5633-8a4c-b21f22ed099c'::uuid, '4499d8b5-c21e-5f7f-ac58-d210e2423913'::uuid, 'e5b13d72-cb9f-5c3d-9bcc-a7b8cd7499ba'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fcdad050-f5e6-50fd-b752-ee963232f1df'::uuid,
  'b7bff52a-7ccb-5633-8a4c-b21f22ed099c'::uuid,
  '4499d8b5-c21e-5f7f-ac58-d210e2423913'::uuid,
  'e5b13d72-cb9f-5c3d-9bcc-a7b8cd7499ba'::uuid,
  'Hi Omar — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;