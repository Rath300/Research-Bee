INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3007dae6-ce9c-5706-be10-d91a0252bfa3'::uuid,
  '6016b25d-81cd-5998-abd2-ce6c1e929e05'::uuid,
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  'Thanks Isaac! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('28779808-774e-5436-8405-1770dae26a60'::uuid, '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid, 'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ee8afc7e-adf5-5390-b720-2db7fa9a1aa7'::uuid, '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid, '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('46d46170-618c-59d3-90c0-554bda3f0f22'::uuid, '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid, '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c39be88d-514c-5c3e-99b1-74ec6d2002e9'::uuid, '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid, '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('86897295-f607-5eef-a33a-cf9f19a78321'::uuid, '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid, '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7aabcaab-1beb-52c2-9dee-dc13eaf88be0'::uuid, '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid, 'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('db15daf4-1588-5d63-ac0f-808687afd54c'::uuid, 'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid, '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0b5ddc01-78f7-5f33-9e58-6cede63e521f'::uuid, '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid, 'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f15e4ff0-0ea8-56ce-8cf9-7e10df9d720f'::uuid,
  '0b5ddc01-78f7-5f33-9e58-6cede63e521f'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  'Hi Elena — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd6b58b4d-4840-568e-aac6-a9e5350cf639'::uuid,
  '0b5ddc01-78f7-5f33-9e58-6cede63e521f'::uuid,
  'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  'Thanks Felix! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('780c1182-8367-5721-a53d-846ebf60c8a0'::uuid, '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid, '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f698939b-e2b1-5ed7-bb67-1912cfcfd14b'::uuid, '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid, '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('faa76b90-62f9-5a11-ab08-176efa1b57c4'::uuid, '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid, '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9361411a-d63c-5cda-81cb-db67a15d4b3b'::uuid, '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid, '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f7c23e26-2343-5131-890b-c91797e75ff2'::uuid, 'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid, '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('92070f54-f368-5e37-a7da-68549e9412c6'::uuid, '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid, 'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f6b772cd-f250-5fb3-8c5e-e70b41d17151'::uuid, '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid, 'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ea7c526e-3204-5a66-9c61-162e5c3bcb4d'::uuid,
  'f6b772cd-f250-5fb3-8c5e-e70b41d17151'::uuid,
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  'Hi Rohan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '92251cfb-0f65-5a90-8080-49138dd9318e'::uuid,
  'f6b772cd-f250-5fb3-8c5e-e70b41d17151'::uuid,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid,
  'Thanks Sara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('df9de4bd-c0e1-5a16-b18b-4ea041bed3e9'::uuid, 'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid, 'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a0620241-edea-5f21-8e4c-1e6a35d94ee3'::uuid, 'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid, '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0fe5ffe5-75a7-5869-8dc3-0ad103aca7d1'::uuid, '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid, 'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('20b52e3e-d5df-5487-9bc6-2e3a3bf6bfd7'::uuid, '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid, 'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5cf8d42b-fc6c-51be-8969-7411c8521a7f'::uuid, '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid, 'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fb47bfd6-b191-5c9f-a5c6-14ebd26970a0'::uuid, 'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid, '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('06202135-4586-5060-8e96-4ab439db5e7a'::uuid, '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid, 'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6ba628fe-0c85-5db0-a4ea-b54a332a83d6'::uuid, '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid, 'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1a6600f9-8f24-5766-832a-65579818c867'::uuid,
  '6ba628fe-0c85-5db0-a4ea-b54a332a83d6'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  'Hi Samir — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '20515e4f-9a89-5d6e-83fb-541df5990502'::uuid,
  '6ba628fe-0c85-5db0-a4ea-b54a332a83d6'::uuid,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  'Thanks Grace! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('800f7068-0eb0-5d2d-a23a-4d5e09e9b4e0'::uuid, '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid, 'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d7ffb093-b774-5110-a6d1-aa35e0848a14'::uuid, 'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid, '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('66863450-7625-5679-ae59-df6a593d6fc9'::uuid, '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid, 'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f088d5ce-32e6-5b30-b6b9-3248e0bd7ab7'::uuid, '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid, 'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d3fc988a-7775-5dc6-afc8-99185766c526'::uuid, 'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid, 'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7317e130-6531-5ea5-b49a-a1f057e0e9f2'::uuid, '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid, 'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('eed42061-95bd-5575-badc-a1e12501d6a1'::uuid, 'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid, '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7c734f05-3221-54c9-9dae-dfbeb24c4e60'::uuid, '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid, 'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2f88a73e-9be9-5da8-afb2-fa7fcf6c7365'::uuid,
  '7c734f05-3221-54c9-9dae-dfbeb24c4e60'::uuid,
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  'Hi Daniel — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3c140521-6bc8-546c-bc2d-a33141568e6f'::uuid,
  '7c734f05-3221-54c9-9dae-dfbeb24c4e60'::uuid,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  'Thanks Isla! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;