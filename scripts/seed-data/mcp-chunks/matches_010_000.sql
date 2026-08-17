INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('46317663-514f-5c34-9466-67ea711a4877'::uuid, '02513dbb-0dc9-5a45-aaa5-3fd7c0d8c871'::uuid, '5c6a2b16-8772-56c9-9570-5254356f5c19'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('51f307be-5158-5ecd-ae96-754242d5611c'::uuid, '4df46dd0-4046-525a-94ec-1dc05586ff46'::uuid, '69dc47c5-32db-5e03-92bf-7ca4422944f3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5da79c31-e73a-5938-ad52-5f5488add979'::uuid, '69dc47c5-32db-5e03-92bf-7ca4422944f3'::uuid, '4df46dd0-4046-525a-94ec-1dc05586ff46'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('61a40026-9fb6-5ca3-a092-43c7e99419e2'::uuid, '4df46dd0-4046-525a-94ec-1dc05586ff46'::uuid, '69dc47c5-32db-5e03-92bf-7ca4422944f3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '127c0dae-c2f9-50bb-a3d8-ce716afc774c'::uuid,
  '61a40026-9fb6-5ca3-a092-43c7e99419e2'::uuid,
  '4df46dd0-4046-525a-94ec-1dc05586ff46'::uuid,
  '69dc47c5-32db-5e03-92bf-7ca4422944f3'::uuid,
  'Hi Owen — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8407cbf3-3ecb-5212-a469-237c901f1533'::uuid,
  '61a40026-9fb6-5ca3-a092-43c7e99419e2'::uuid,
  '69dc47c5-32db-5e03-92bf-7ca4422944f3'::uuid,
  '4df46dd0-4046-525a-94ec-1dc05586ff46'::uuid,
  'Thanks Sofia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d01032ba-7b1f-5dbc-aa99-373fe06f998b'::uuid, '4df46dd0-4046-525a-94ec-1dc05586ff46'::uuid, '01d4c20f-728c-5f96-8116-bbb132da4fca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('50ee7fdc-3224-5c13-9a6e-2b7dccb49714'::uuid, '01d4c20f-728c-5f96-8116-bbb132da4fca'::uuid, '4df46dd0-4046-525a-94ec-1dc05586ff46'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('92d7810a-b048-53f1-985c-a7e7547d8308'::uuid, '01d4c20f-728c-5f96-8116-bbb132da4fca'::uuid, '4df46dd0-4046-525a-94ec-1dc05586ff46'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('168080da-cfae-561a-99de-c59c7aa28f5f'::uuid, 'cf9c3d0b-7a52-5d3a-82ad-f7cc9d6acdfc'::uuid, '3d805200-315a-549f-9527-ae5519886cbb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bdfade5e-df5e-59f2-94cb-5a91f266782e'::uuid, '3d805200-315a-549f-9527-ae5519886cbb'::uuid, 'cf9c3d0b-7a52-5d3a-82ad-f7cc9d6acdfc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d755c939-ce40-5385-a587-07fb9d25f9d9'::uuid, '3d805200-315a-549f-9527-ae5519886cbb'::uuid, 'cf9c3d0b-7a52-5d3a-82ad-f7cc9d6acdfc'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '38f5afe5-0f77-53dd-b35f-a05133b1a077'::uuid,
  'd755c939-ce40-5385-a587-07fb9d25f9d9'::uuid,
  'cf9c3d0b-7a52-5d3a-82ad-f7cc9d6acdfc'::uuid,
  '3d805200-315a-549f-9527-ae5519886cbb'::uuid,
  'Hi Violet — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '893b72e6-9406-5e0d-8073-f1bd153d1ee6'::uuid,
  'd755c939-ce40-5385-a587-07fb9d25f9d9'::uuid,
  '3d805200-315a-549f-9527-ae5519886cbb'::uuid,
  'cf9c3d0b-7a52-5d3a-82ad-f7cc9d6acdfc'::uuid,
  'Thanks Kenji! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cbc84070-2ed2-5de6-8ecb-36d691cdad16'::uuid, '885eadf1-5032-5f2a-a6ff-cfeab6c5d89e'::uuid, 'd19a231a-9bc3-5d9a-9f36-ba4d2131cb10'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e986a9f2-f68b-59ef-baa0-c20966387afb'::uuid, 'd19a231a-9bc3-5d9a-9f36-ba4d2131cb10'::uuid, '885eadf1-5032-5f2a-a6ff-cfeab6c5d89e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9b6014f0-aae2-5d43-aacb-6ecbf45f2963'::uuid, '885eadf1-5032-5f2a-a6ff-cfeab6c5d89e'::uuid, 'd19a231a-9bc3-5d9a-9f36-ba4d2131cb10'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c7e8dc90-29bd-555c-b9c1-91234d5aaffc'::uuid, 'ea7a5038-ea24-5c53-b37f-6e7af7843a5f'::uuid, 'f271c942-fc21-56d3-93cb-8635126191a1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7a687d49-8bf2-5ba5-b086-27638e4ba00b'::uuid, 'f271c942-fc21-56d3-93cb-8635126191a1'::uuid, 'ea7a5038-ea24-5c53-b37f-6e7af7843a5f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('59eef98c-30f9-5505-babe-3ebd3d206e12'::uuid, 'ea7a5038-ea24-5c53-b37f-6e7af7843a5f'::uuid, 'f271c942-fc21-56d3-93cb-8635126191a1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'eb1a6218-b702-56b2-bd44-9feb39eccbd5'::uuid,
  '59eef98c-30f9-5505-babe-3ebd3d206e12'::uuid,
  'ea7a5038-ea24-5c53-b37f-6e7af7843a5f'::uuid,
  'f271c942-fc21-56d3-93cb-8635126191a1'::uuid,
  'Hi Tara — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c726aec9-bf76-5f8a-8af7-27382e168e26'::uuid,
  '59eef98c-30f9-5505-babe-3ebd3d206e12'::uuid,
  'f271c942-fc21-56d3-93cb-8635126191a1'::uuid,
  'ea7a5038-ea24-5c53-b37f-6e7af7843a5f'::uuid,
  'Thanks Kai! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0ed9268b-890a-5212-89ac-b9c8124e2fe1'::uuid, '157a061e-6fb6-53f2-adab-f285a291df07'::uuid, 'f6b3ecf2-301c-5e02-a0ec-ad57b2dfbed4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6bd8855b-cff8-52f6-ba3f-d48add747021'::uuid, 'f6b3ecf2-301c-5e02-a0ec-ad57b2dfbed4'::uuid, '157a061e-6fb6-53f2-adab-f285a291df07'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('884760b5-c32c-5c43-af9a-49b89c020c3a'::uuid, '157a061e-6fb6-53f2-adab-f285a291df07'::uuid, 'f6b3ecf2-301c-5e02-a0ec-ad57b2dfbed4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e5a2fd1e-afdc-51b7-874d-fd66157e5bdb'::uuid, 'c68305f8-4ba9-51c8-a34b-172abbf098c2'::uuid, '6d5bb006-e4b9-59a3-a281-843bcdf8d1aa'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('63cf1f5b-c09b-588e-9c37-20f6130df0fc'::uuid, '6d5bb006-e4b9-59a3-a281-843bcdf8d1aa'::uuid, 'c68305f8-4ba9-51c8-a34b-172abbf098c2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f4028a39-4843-57af-bdd3-4da14e3d3e7e'::uuid, '6d5bb006-e4b9-59a3-a281-843bcdf8d1aa'::uuid, 'c68305f8-4ba9-51c8-a34b-172abbf098c2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1148c8aa-f4a8-50a9-ae11-64ef8975c69c'::uuid,
  'f4028a39-4843-57af-bdd3-4da14e3d3e7e'::uuid,
  'c68305f8-4ba9-51c8-a34b-172abbf098c2'::uuid,
  '6d5bb006-e4b9-59a3-a281-843bcdf8d1aa'::uuid,
  'Hi Imani — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3410e1eb-89f5-5848-90e7-5f295c929b97'::uuid,
  'f4028a39-4843-57af-bdd3-4da14e3d3e7e'::uuid,
  '6d5bb006-e4b9-59a3-a281-843bcdf8d1aa'::uuid,
  'c68305f8-4ba9-51c8-a34b-172abbf098c2'::uuid,
  'Thanks Benjamin! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1f938794-b4d2-5d8d-aa74-daeb1865d907'::uuid, 'c68305f8-4ba9-51c8-a34b-172abbf098c2'::uuid, 'c0c50da3-b865-5647-ac80-8a3983351bb9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3b85bc2d-f86b-5f5a-af78-699e268afbb0'::uuid, 'c0c50da3-b865-5647-ac80-8a3983351bb9'::uuid, 'c68305f8-4ba9-51c8-a34b-172abbf098c2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8dbdc529-b10a-501b-81a5-d0de823ed1da'::uuid, 'c0c50da3-b865-5647-ac80-8a3983351bb9'::uuid, 'c68305f8-4ba9-51c8-a34b-172abbf098c2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('12d26725-a8c1-587b-a911-b9cce0f6e8ee'::uuid, '8fe0f3e1-b131-5d34-8746-44ea97dd000a'::uuid, 'edf936e0-ccbc-507d-943e-ce31b4b8b532'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('66330e5c-f753-52dc-837a-a2cd2b67bf94'::uuid, 'edf936e0-ccbc-507d-943e-ce31b4b8b532'::uuid, '8fe0f3e1-b131-5d34-8746-44ea97dd000a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1f5557c0-c3c4-5b3b-8aa8-cdb3c0c17d71'::uuid, '8fe0f3e1-b131-5d34-8746-44ea97dd000a'::uuid, 'edf936e0-ccbc-507d-943e-ce31b4b8b532'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd8822da9-2f6e-59b9-844b-1cd4bfb2134b'::uuid,
  '1f5557c0-c3c4-5b3b-8aa8-cdb3c0c17d71'::uuid,
  '8fe0f3e1-b131-5d34-8746-44ea97dd000a'::uuid,
  'edf936e0-ccbc-507d-943e-ce31b4b8b532'::uuid,
  'Hi Noah — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6b36e790-bb51-5b2a-8390-6622589caeda'::uuid,
  '1f5557c0-c3c4-5b3b-8aa8-cdb3c0c17d71'::uuid,
  'edf936e0-ccbc-507d-943e-ce31b4b8b532'::uuid,
  '8fe0f3e1-b131-5d34-8746-44ea97dd000a'::uuid,
  'Thanks Ava! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('79ec4cf6-5196-517c-88f6-31d185565049'::uuid, '5ad5e69f-e707-5b76-8788-6652faf2a416'::uuid, '3d5e4b71-5d33-5e87-b691-528b0554141d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('19f0369d-bdda-54ae-98ac-e5daa5cca99b'::uuid, '3d5e4b71-5d33-5e87-b691-528b0554141d'::uuid, '5ad5e69f-e707-5b76-8788-6652faf2a416'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;