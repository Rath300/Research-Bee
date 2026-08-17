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

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ea693104-dcc1-51e3-ad57-27a7acc917fc'::uuid, '3d5e4b71-5d33-5e87-b691-528b0554141d'::uuid, '5ad5e69f-e707-5b76-8788-6652faf2a416'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ab3175de-c8b7-5170-a09a-6019dca6e2bc'::uuid, '65a74fe8-c38f-5780-8ad2-bf331721a3d9'::uuid, '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('748ddd8c-4b68-540f-922a-e0cb594ae5b7'::uuid, '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid, '65a74fe8-c38f-5780-8ad2-bf331721a3d9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4046e5e4-65b5-5ce5-a924-f553e78e8bb2'::uuid, '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid, '65a74fe8-c38f-5780-8ad2-bf331721a3d9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '78f88ec1-2d48-5ace-af81-414a59878f0d'::uuid,
  '4046e5e4-65b5-5ce5-a924-f553e78e8bb2'::uuid,
  '65a74fe8-c38f-5780-8ad2-bf331721a3d9'::uuid,
  '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid,
  'Hi Ethan — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3f1444e3-6be6-5cea-b4e2-3036c04e9184'::uuid,
  '4046e5e4-65b5-5ce5-a924-f553e78e8bb2'::uuid,
  '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid,
  '65a74fe8-c38f-5780-8ad2-bf331721a3d9'::uuid,
  'Thanks Amina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('55b889e6-b596-5879-b31a-ae5844998de1'::uuid, '24d08bca-e89e-5133-9580-3c3af259e917'::uuid, '8a3ccd43-eedc-52e3-970e-b05b035225e2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('71184c4f-eab8-52be-bc52-49fe364fd708'::uuid, '8a3ccd43-eedc-52e3-970e-b05b035225e2'::uuid, '24d08bca-e89e-5133-9580-3c3af259e917'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5c384c6a-29ff-5711-b93e-1a30f1c4571e'::uuid, '24d08bca-e89e-5133-9580-3c3af259e917'::uuid, '8a3ccd43-eedc-52e3-970e-b05b035225e2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3356dd60-3f67-5b57-82b9-7a366c910a6e'::uuid, '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid, '6aafdcd6-d8d8-557d-9554-bbb27bdb748d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e1701e90-da55-5a96-92de-236929dd8098'::uuid, '6aafdcd6-d8d8-557d-9554-bbb27bdb748d'::uuid, '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f13631dc-882e-5358-a7bf-865c4d7ca17e'::uuid, '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid, '6aafdcd6-d8d8-557d-9554-bbb27bdb748d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3bda7d49-c7bf-52de-aa02-aa7c9049b6bd'::uuid,
  'f13631dc-882e-5358-a7bf-865c4d7ca17e'::uuid,
  '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid,
  '6aafdcd6-d8d8-557d-9554-bbb27bdb748d'::uuid,
  'Hi Caleb — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1883f92f-fdb0-5ec1-9c45-8358077a631c'::uuid,
  'f13631dc-882e-5358-a7bf-865c4d7ca17e'::uuid,
  '6aafdcd6-d8d8-557d-9554-bbb27bdb748d'::uuid,
  '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid,
  'Thanks Hannah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e5b57c80-e108-5c68-a5f3-b381c68e4a91'::uuid, '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid, '56361163-593b-5f6a-8eb2-5269671702e2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('21f0eac9-9f4a-573f-a712-50ce6be48b40'::uuid, '56361163-593b-5f6a-8eb2-5269671702e2'::uuid, '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d04bdd01-318c-5299-91a3-2ba21be0500e'::uuid, '56361163-593b-5f6a-8eb2-5269671702e2'::uuid, '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fb37d05a-43df-5376-86eb-b96a5a085b9b'::uuid, '1225191a-019f-56d5-8355-03d7ea853341'::uuid, '7d4f49fb-43d1-502f-9920-10e2cb21136a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('21084e82-a2db-5c5d-87dd-1402b9dbe37d'::uuid, '7d4f49fb-43d1-502f-9920-10e2cb21136a'::uuid, '1225191a-019f-56d5-8355-03d7ea853341'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0a1cfd03-fa15-5652-8928-a7c159628397'::uuid, '1225191a-019f-56d5-8355-03d7ea853341'::uuid, '7d4f49fb-43d1-502f-9920-10e2cb21136a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd8569da8-6360-50e1-a73a-b64109de836a'::uuid,
  '0a1cfd03-fa15-5652-8928-a7c159628397'::uuid,
  '1225191a-019f-56d5-8355-03d7ea853341'::uuid,
  '7d4f49fb-43d1-502f-9920-10e2cb21136a'::uuid,
  'Hi Sana — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e28c9d32-e448-5b9d-87cb-56e9a710cf50'::uuid,
  '0a1cfd03-fa15-5652-8928-a7c159628397'::uuid,
  '7d4f49fb-43d1-502f-9920-10e2cb21136a'::uuid,
  '1225191a-019f-56d5-8355-03d7ea853341'::uuid,
  'Thanks Julian! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('657ed7d0-9cd2-58ac-83c9-acc8c1858195'::uuid, '6fca6e88-1c4f-5c43-922a-3f20d6ddc049'::uuid, '05fcff78-0cbc-5304-80d1-89c5fb51a5ce'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a7735427-1cd0-56da-8e91-4d30882972d4'::uuid, '05fcff78-0cbc-5304-80d1-89c5fb51a5ce'::uuid, '6fca6e88-1c4f-5c43-922a-3f20d6ddc049'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1eda1112-f749-52e1-8cd6-3fee7aeea014'::uuid, '05fcff78-0cbc-5304-80d1-89c5fb51a5ce'::uuid, '6fca6e88-1c4f-5c43-922a-3f20d6ddc049'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5d356f1d-f199-5bb8-9fd3-947e8badfae7'::uuid, '51687c53-c74e-5a27-8949-dcde640e42d8'::uuid, '374e622b-e91f-54be-9ba0-cf4aa0906fa8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9b9a499a-8d2f-5d1a-bea9-636699f27ee7'::uuid, '374e622b-e91f-54be-9ba0-cf4aa0906fa8'::uuid, '51687c53-c74e-5a27-8949-dcde640e42d8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b57ce8e1-03bc-5d8c-8abd-6e14e076cedf'::uuid, '374e622b-e91f-54be-9ba0-cf4aa0906fa8'::uuid, '51687c53-c74e-5a27-8949-dcde640e42d8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fb55a4e2-ad75-5c9a-b61f-c217a6c394f3'::uuid,
  'b57ce8e1-03bc-5d8c-8abd-6e14e076cedf'::uuid,
  '51687c53-c74e-5a27-8949-dcde640e42d8'::uuid,
  '374e622b-e91f-54be-9ba0-cf4aa0906fa8'::uuid,
  'Hi Hana — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '02037dd0-6184-50fa-8f9a-fb3819faacd2'::uuid,
  'b57ce8e1-03bc-5d8c-8abd-6e14e076cedf'::uuid,
  '374e622b-e91f-54be-9ba0-cf4aa0906fa8'::uuid,
  '51687c53-c74e-5a27-8949-dcde640e42d8'::uuid,
  'Thanks Isaac! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('23ae37d1-176a-5a8a-8334-07be0d9ad493'::uuid, 'a47f9557-3126-5157-8316-17a32c536be0'::uuid, '8c33b28f-c7cc-5e43-9231-990bf3dca6f9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c3c2178a-5c32-5036-8941-4535e9ef22fe'::uuid, '8c33b28f-c7cc-5e43-9231-990bf3dca6f9'::uuid, 'a47f9557-3126-5157-8316-17a32c536be0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('125f48b1-dd8d-5cb7-8d1b-38f732a21183'::uuid, '8c33b28f-c7cc-5e43-9231-990bf3dca6f9'::uuid, 'a47f9557-3126-5157-8316-17a32c536be0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('317a736b-b1d7-5a86-977d-b27c6da02791'::uuid, 'b5b80d38-e67f-5db0-8d01-be0b9a1bd224'::uuid, 'aa0f4626-ae11-54e1-a711-4c9fb811ad54'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('38d5f21f-50ce-5394-a0af-923aa4967a38'::uuid, 'aa0f4626-ae11-54e1-a711-4c9fb811ad54'::uuid, 'b5b80d38-e67f-5db0-8d01-be0b9a1bd224'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('462d1cb7-4ec0-5a00-8f81-b8beaa43794d'::uuid, 'aa0f4626-ae11-54e1-a711-4c9fb811ad54'::uuid, 'b5b80d38-e67f-5db0-8d01-be0b9a1bd224'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '432923a7-d12b-5782-beb9-f247eb529645'::uuid,
  '462d1cb7-4ec0-5a00-8f81-b8beaa43794d'::uuid,
  'b5b80d38-e67f-5db0-8d01-be0b9a1bd224'::uuid,
  'aa0f4626-ae11-54e1-a711-4c9fb811ad54'::uuid,
  'Hi Elena — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c8fad550-93af-504d-9c1d-faf0c91139b8'::uuid,
  '462d1cb7-4ec0-5a00-8f81-b8beaa43794d'::uuid,
  'aa0f4626-ae11-54e1-a711-4c9fb811ad54'::uuid,
  'b5b80d38-e67f-5db0-8d01-be0b9a1bd224'::uuid,
  'Thanks Felix! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8a0c4fb8-04b2-5d14-a501-5b6872b4d21c'::uuid, 'b5b80d38-e67f-5db0-8d01-be0b9a1bd224'::uuid, '286edd8f-7e51-52d7-b45e-551a9821a1dc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('85536111-be3b-5f5c-a2c5-1218beaf8c76'::uuid, '286edd8f-7e51-52d7-b45e-551a9821a1dc'::uuid, 'b5b80d38-e67f-5db0-8d01-be0b9a1bd224'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1ca9817d-b9ed-5350-8523-4bcb85fe8409'::uuid, '286edd8f-7e51-52d7-b45e-551a9821a1dc'::uuid, 'b5b80d38-e67f-5db0-8d01-be0b9a1bd224'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8f3780d8-e8e3-56fa-ba64-9044c22359af'::uuid, 'd0295c77-a7ff-5caa-a86e-c288ce62df44'::uuid, '4ba4df9e-a91f-57ee-8882-f80f02274f08'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cf496777-f15a-5c26-b8f5-9cbdd78f3fe8'::uuid, '4ba4df9e-a91f-57ee-8882-f80f02274f08'::uuid, 'd0295c77-a7ff-5caa-a86e-c288ce62df44'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('24fce3e7-61df-5745-8aff-5b20f682be8a'::uuid, '4ba4df9e-a91f-57ee-8882-f80f02274f08'::uuid, 'd0295c77-a7ff-5caa-a86e-c288ce62df44'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6449416d-c5d0-59f3-b76d-2e4e70ba37ee'::uuid,
  '24fce3e7-61df-5745-8aff-5b20f682be8a'::uuid,
  'd0295c77-a7ff-5caa-a86e-c288ce62df44'::uuid,
  '4ba4df9e-a91f-57ee-8882-f80f02274f08'::uuid,
  'Hi Rohan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2808a9c1-53d2-5ccb-9717-2c530ceb5220'::uuid,
  '24fce3e7-61df-5745-8aff-5b20f682be8a'::uuid,
  '4ba4df9e-a91f-57ee-8882-f80f02274f08'::uuid,
  'd0295c77-a7ff-5caa-a86e-c288ce62df44'::uuid,
  'Thanks Sara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5f3763b9-fc3b-5e8e-92b2-f019257ef764'::uuid, '4f0d7d5d-dc90-54b0-925b-9d1035573f83'::uuid, '095821f3-70c4-5469-a8ee-b42176e19675'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9fdb5413-800a-5f3f-9420-fb3c8b48ece4'::uuid, '095821f3-70c4-5469-a8ee-b42176e19675'::uuid, '4f0d7d5d-dc90-54b0-925b-9d1035573f83'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c7e7ff28-11ca-5f06-82c3-09714d26de4a'::uuid, '095821f3-70c4-5469-a8ee-b42176e19675'::uuid, '4f0d7d5d-dc90-54b0-925b-9d1035573f83'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e289fc53-d984-5987-930c-89c56291279e'::uuid, '5356c221-d65a-5f9c-921b-112439242ea1'::uuid, '812f08f9-a001-5282-a6cd-650da7bcc1b7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c08c0b61-54d9-5607-b102-840ba675a4e4'::uuid, '812f08f9-a001-5282-a6cd-650da7bcc1b7'::uuid, '5356c221-d65a-5f9c-921b-112439242ea1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('46ea7d15-7686-55c7-a5ed-e6b592199708'::uuid, '5356c221-d65a-5f9c-921b-112439242ea1'::uuid, '812f08f9-a001-5282-a6cd-650da7bcc1b7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '37fd3137-53fc-55c9-9360-36cac73b59b4'::uuid,
  '46ea7d15-7686-55c7-a5ed-e6b592199708'::uuid,
  '5356c221-d65a-5f9c-921b-112439242ea1'::uuid,
  '812f08f9-a001-5282-a6cd-650da7bcc1b7'::uuid,
  'Hi Samir — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7698869c-6ab6-541b-8654-b943d42e00fe'::uuid,
  '46ea7d15-7686-55c7-a5ed-e6b592199708'::uuid,
  '812f08f9-a001-5282-a6cd-650da7bcc1b7'::uuid,
  '5356c221-d65a-5f9c-921b-112439242ea1'::uuid,
  'Thanks Grace! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4467fea0-1cb2-562c-b070-1d1ae5048507'::uuid, 'fa2365d8-493b-584a-8249-5fdb62f40ca7'::uuid, '10f9e18b-4dea-5949-a353-69f4282d6bf7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7c1b941c-31f2-573f-a727-6bcf2ae6f1b9'::uuid, '10f9e18b-4dea-5949-a353-69f4282d6bf7'::uuid, 'fa2365d8-493b-584a-8249-5fdb62f40ca7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2cef299f-c321-55e5-9f4c-a3fc464a4bff'::uuid, '10f9e18b-4dea-5949-a353-69f4282d6bf7'::uuid, 'fa2365d8-493b-584a-8249-5fdb62f40ca7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d79f25b9-e24c-52d7-8af5-d441c86bc992'::uuid, 'a3e5aa51-30a9-5d43-8d54-86b2d0be7b2a'::uuid, '83ff2cf2-4e61-55da-bdb2-88feed58633c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8bd5fa2c-11f8-5d3f-abe4-385621908e5c'::uuid, '83ff2cf2-4e61-55da-bdb2-88feed58633c'::uuid, 'a3e5aa51-30a9-5d43-8d54-86b2d0be7b2a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c06c78bf-f7c0-5c7c-9e04-404c3a5338f8'::uuid, '83ff2cf2-4e61-55da-bdb2-88feed58633c'::uuid, 'a3e5aa51-30a9-5d43-8d54-86b2d0be7b2a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1e60a03c-46cc-56ab-9352-0f6590d37478'::uuid,
  'c06c78bf-f7c0-5c7c-9e04-404c3a5338f8'::uuid,
  'a3e5aa51-30a9-5d43-8d54-86b2d0be7b2a'::uuid,
  '83ff2cf2-4e61-55da-bdb2-88feed58633c'::uuid,
  'Hi Daniel — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4a56a758-a9c7-5c61-a4f8-d7fed9310c81'::uuid,
  'c06c78bf-f7c0-5c7c-9e04-404c3a5338f8'::uuid,
  '83ff2cf2-4e61-55da-bdb2-88feed58633c'::uuid,
  'a3e5aa51-30a9-5d43-8d54-86b2d0be7b2a'::uuid,
  'Thanks Isla! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bad099b0-1aac-5ba3-9795-d6c710a6cdfb'::uuid, 'a3e5aa51-30a9-5d43-8d54-86b2d0be7b2a'::uuid, '339b0f28-40df-5d27-a433-e1ef2b74b167'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('237b74db-0091-539b-bfb0-3a4690ed2677'::uuid, '339b0f28-40df-5d27-a433-e1ef2b74b167'::uuid, 'a3e5aa51-30a9-5d43-8d54-86b2d0be7b2a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('76bc6cd2-86c2-58c5-bd0a-ec07fb7be8a1'::uuid, '339b0f28-40df-5d27-a433-e1ef2b74b167'::uuid, 'a3e5aa51-30a9-5d43-8d54-86b2d0be7b2a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bdf4e2ac-66f8-5983-ba19-77a91902bf5b'::uuid, '9712a128-34c1-5b93-8a4f-32494c0e4504'::uuid, '6499e30b-6a75-57c2-9f84-b06b398ee38f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3cd40e78-fd81-513b-834c-5830c88b483e'::uuid, '6499e30b-6a75-57c2-9f84-b06b398ee38f'::uuid, '9712a128-34c1-5b93-8a4f-32494c0e4504'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('66a552df-3ce7-5a1e-84a3-91604d21f418'::uuid, '6499e30b-6a75-57c2-9f84-b06b398ee38f'::uuid, '9712a128-34c1-5b93-8a4f-32494c0e4504'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cf91f740-e258-5c6f-977e-1b0244e42a6e'::uuid,
  '66a552df-3ce7-5a1e-84a3-91604d21f418'::uuid,
  '9712a128-34c1-5b93-8a4f-32494c0e4504'::uuid,
  '6499e30b-6a75-57c2-9f84-b06b398ee38f'::uuid,
  'Hi Nina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'afd43dc4-cb6b-5103-8242-1bbbd7b683e9'::uuid,
  '66a552df-3ce7-5a1e-84a3-91604d21f418'::uuid,
  '6499e30b-6a75-57c2-9f84-b06b398ee38f'::uuid,
  '9712a128-34c1-5b93-8a4f-32494c0e4504'::uuid,
  'Thanks Theo! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4aadc300-c24a-5ffc-8c8f-5cacc29e9f62'::uuid, '3504c8cb-2805-54ab-9a65-613d52401f26'::uuid, '9b4dc10b-7d36-5636-ae3b-99ce160b7bed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('585df42f-f1ea-5ac9-ae60-488e35f5b840'::uuid, '9b4dc10b-7d36-5636-ae3b-99ce160b7bed'::uuid, '3504c8cb-2805-54ab-9a65-613d52401f26'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6cef0d92-6406-5f63-b975-a95e8b0c8b6a'::uuid, '3504c8cb-2805-54ab-9a65-613d52401f26'::uuid, '9b4dc10b-7d36-5636-ae3b-99ce160b7bed'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b9cbbc84-b45b-5d26-8fc0-2b0379e62f59'::uuid, '52776ca6-2ffa-5c16-991d-f1758cd740bb'::uuid, 'a5b75506-2418-55e9-a3f9-7ad6e04bb1af'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d6b16446-629e-5169-b51a-55f0b962a677'::uuid, 'a5b75506-2418-55e9-a3f9-7ad6e04bb1af'::uuid, '52776ca6-2ffa-5c16-991d-f1758cd740bb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c7210637-9c18-51c3-b5f7-44b119052600'::uuid, '52776ca6-2ffa-5c16-991d-f1758cd740bb'::uuid, 'a5b75506-2418-55e9-a3f9-7ad6e04bb1af'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5400e035-1e0e-5123-8fcd-4ebd515b8a8e'::uuid,
  'c7210637-9c18-51c3-b5f7-44b119052600'::uuid,
  '52776ca6-2ffa-5c16-991d-f1758cd740bb'::uuid,
  'a5b75506-2418-55e9-a3f9-7ad6e04bb1af'::uuid,
  'Hi Sofia — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f2aa96c0-e3d1-5ae8-a8f1-f97de163bc46'::uuid,
  'c7210637-9c18-51c3-b5f7-44b119052600'::uuid,
  'a5b75506-2418-55e9-a3f9-7ad6e04bb1af'::uuid,
  '52776ca6-2ffa-5c16-991d-f1758cd740bb'::uuid,
  'Thanks Lucas! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e6c9005d-4af9-50ba-be1b-afa5d4d11c7c'::uuid, 'd4b14f46-3fa3-5e98-9836-f65ed0a3f18b'::uuid, '25876b60-0a7f-5481-8ed9-a2ef324893c4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('37b56964-8c5f-5131-b10c-686578eef631'::uuid, '25876b60-0a7f-5481-8ed9-a2ef324893c4'::uuid, 'd4b14f46-3fa3-5e98-9836-f65ed0a3f18b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a037318b-2045-56e1-8156-9bb0dcd1a4e8'::uuid, '25876b60-0a7f-5481-8ed9-a2ef324893c4'::uuid, 'd4b14f46-3fa3-5e98-9836-f65ed0a3f18b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1dfa3916-dd38-5b19-8f6d-6b40e11b86ba'::uuid, 'ea069e62-92cd-5f19-959e-a420eb23bb5f'::uuid, '74597a4b-13a0-5293-b367-cd56ff9bccd1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9ea6856c-ec49-5006-820c-f781a6e718f3'::uuid, '74597a4b-13a0-5293-b367-cd56ff9bccd1'::uuid, 'ea069e62-92cd-5f19-959e-a420eb23bb5f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8471e4cd-d7c0-5c99-bc1e-ce344721d4a4'::uuid, '74597a4b-13a0-5293-b367-cd56ff9bccd1'::uuid, 'ea069e62-92cd-5f19-959e-a420eb23bb5f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'af587e80-33c5-573e-82d8-c563bbc4abe8'::uuid,
  '8471e4cd-d7c0-5c99-bc1e-ce344721d4a4'::uuid,
  'ea069e62-92cd-5f19-959e-a420eb23bb5f'::uuid,
  '74597a4b-13a0-5293-b367-cd56ff9bccd1'::uuid,
  'Hi Zara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ac4c4dad-ecb4-59c6-9e66-aa96c12a2b6b'::uuid,
  '8471e4cd-d7c0-5c99-bc1e-ce344721d4a4'::uuid,
  '74597a4b-13a0-5293-b367-cd56ff9bccd1'::uuid,
  'ea069e62-92cd-5f19-959e-a420eb23bb5f'::uuid,
  'Thanks David! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9680399c-1f35-5c69-b613-d78afe56bf5f'::uuid, 'ea069e62-92cd-5f19-959e-a420eb23bb5f'::uuid, '5aa58f77-3aa4-5344-97a0-552a5846e561'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5d478117-40ff-5dab-80ec-18538f48344a'::uuid, '5aa58f77-3aa4-5344-97a0-552a5846e561'::uuid, 'ea069e62-92cd-5f19-959e-a420eb23bb5f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9c9b6e8b-2bfb-5276-9daf-b404a1eab5b6'::uuid, '5aa58f77-3aa4-5344-97a0-552a5846e561'::uuid, 'ea069e62-92cd-5f19-959e-a420eb23bb5f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c7995139-a8cc-5ce2-9dda-6fece0100228'::uuid, '9fa6c3ed-6590-56b4-8dbb-73ca44e426eb'::uuid, '9dac7955-0c97-5be3-a251-6ffb31dd43d1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('69bc451b-eb6d-5514-b74e-4b64082db0c2'::uuid, '9dac7955-0c97-5be3-a251-6ffb31dd43d1'::uuid, '9fa6c3ed-6590-56b4-8dbb-73ca44e426eb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('384e361d-380e-5f75-8377-7b91e90abf24'::uuid, '9dac7955-0c97-5be3-a251-6ffb31dd43d1'::uuid, '9fa6c3ed-6590-56b4-8dbb-73ca44e426eb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '67b58555-b50f-5f32-92be-d60dc0a2f5ec'::uuid,
  '384e361d-380e-5f75-8377-7b91e90abf24'::uuid,
  '9fa6c3ed-6590-56b4-8dbb-73ca44e426eb'::uuid,
  '9dac7955-0c97-5be3-a251-6ffb31dd43d1'::uuid,
  'Hi Kai — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '540c776e-084f-5b3a-ac40-17d50585352b'::uuid,
  '384e361d-380e-5f75-8377-7b91e90abf24'::uuid,
  '9dac7955-0c97-5be3-a251-6ffb31dd43d1'::uuid,
  '9fa6c3ed-6590-56b4-8dbb-73ca44e426eb'::uuid,
  'Thanks Aisha! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('471c27e7-c138-5025-98d2-8b4fc90a747e'::uuid, 'e78a6ddc-5a54-530e-9647-71d739067c0c'::uuid, '5dd56626-dcc4-5dc3-ae51-e75530f4ba40'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('db853e69-2878-5d77-aa93-8b7f6e897456'::uuid, '5dd56626-dcc4-5dc3-ae51-e75530f4ba40'::uuid, 'e78a6ddc-5a54-530e-9647-71d739067c0c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bca2d12e-7c93-57a7-844e-8bc1fa6c8466'::uuid, '5dd56626-dcc4-5dc3-ae51-e75530f4ba40'::uuid, 'e78a6ddc-5a54-530e-9647-71d739067c0c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('90783c7a-6898-5c25-9238-3bbce1cdcb3e'::uuid, 'd460af56-9bbd-5b2f-8e70-fddb8cf7d6c0'::uuid, '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('49c5f82d-3d4c-5100-9b4d-c772015e2306'::uuid, '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid, 'd460af56-9bbd-5b2f-8e70-fddb8cf7d6c0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('60dae97a-f275-55c6-a96e-b98218da4dbc'::uuid, '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid, 'd460af56-9bbd-5b2f-8e70-fddb8cf7d6c0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '97fa96f6-77d2-5c25-8e9e-2e8829b2ae95'::uuid,
  '60dae97a-f275-55c6-a96e-b98218da4dbc'::uuid,
  'd460af56-9bbd-5b2f-8e70-fddb8cf7d6c0'::uuid,
  '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid,
  'Hi Benjamin — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4435ff86-f7f9-56b8-ac74-cb8ffd0bd96d'::uuid,
  '60dae97a-f275-55c6-a96e-b98218da4dbc'::uuid,
  '2c7de2e5-354f-585b-95fc-cba899f6ddc6'::uuid,
  'd460af56-9bbd-5b2f-8e70-fddb8cf7d6c0'::uuid,
  'Thanks Nadia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4f6dd6ad-957a-51d2-9476-a3b6dcd6f333'::uuid, 'c4ef2b83-74dd-5001-9c23-9219dc342540'::uuid, 'b11a21f9-aaa6-5e4a-b799-262e6d513bf1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('748f5676-2de9-553b-ac8a-f675b09c947e'::uuid, 'b11a21f9-aaa6-5e4a-b799-262e6d513bf1'::uuid, 'c4ef2b83-74dd-5001-9c23-9219dc342540'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a0992ddc-e894-58dc-b2f3-8a9d3bc3a6ea'::uuid, 'b11a21f9-aaa6-5e4a-b799-262e6d513bf1'::uuid, 'c4ef2b83-74dd-5001-9c23-9219dc342540'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ceb1603d-d3dc-5893-abc7-d4b09c374002'::uuid, '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid, 'a5eb7d26-8083-5569-82c4-2cbb0f496de7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0e8f7c96-387d-5464-ba2d-72fb1bca7554'::uuid, 'a5eb7d26-8083-5569-82c4-2cbb0f496de7'::uuid, '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3b35b7e9-a2f8-563b-bea3-6f233f9dbb8b'::uuid, '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid, 'a5eb7d26-8083-5569-82c4-2cbb0f496de7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5a26571c-4a1f-5736-92fd-a0991cc22a2f'::uuid,
  '3b35b7e9-a2f8-563b-bea3-6f233f9dbb8b'::uuid,
  '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid,
  'a5eb7d26-8083-5569-82c4-2cbb0f496de7'::uuid,
  'Hi Sebastian — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f945588d-0821-5e60-be8a-03c979e7ada2'::uuid,
  '3b35b7e9-a2f8-563b-bea3-6f233f9dbb8b'::uuid,
  'a5eb7d26-8083-5569-82c4-2cbb0f496de7'::uuid,
  '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid,
  'Thanks Mei! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('01ec8209-c839-5731-896c-8d5f7c1e9bd1'::uuid, '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid, '8900a442-2c2b-5b19-b573-436ddfe42ab1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f19277e5-0285-5b28-a305-41bb1ce625f1'::uuid, '8900a442-2c2b-5b19-b573-436ddfe42ab1'::uuid, '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('88500296-b393-5881-81fb-d9f9668726a7'::uuid, '517f2802-4ad6-5dd1-99ed-1747895e0028'::uuid, '8900a442-2c2b-5b19-b573-436ddfe42ab1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6a411a56-1d2f-5f45-9562-0f1665e37acd'::uuid, '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid, 'a32ba5d6-4384-5565-bc82-72ceeafa3e5d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cb3d1f15-269d-5820-9a6f-3d1ce56f0e01'::uuid, 'a32ba5d6-4384-5565-bc82-72ceeafa3e5d'::uuid, '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3ef9fef5-7031-5ae6-9aa2-101e04e17181'::uuid, '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid, 'a32ba5d6-4384-5565-bc82-72ceeafa3e5d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '635a0476-460b-5ef0-94c2-af94890f7ca5'::uuid,
  '3ef9fef5-7031-5ae6-9aa2-101e04e17181'::uuid,
  '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid,
  'a32ba5d6-4384-5565-bc82-72ceeafa3e5d'::uuid,
  'Hi Amina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '65fc9594-00c0-5244-9691-65a69e662459'::uuid,
  '3ef9fef5-7031-5ae6-9aa2-101e04e17181'::uuid,
  'a32ba5d6-4384-5565-bc82-72ceeafa3e5d'::uuid,
  '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid,
  'Thanks Henry! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('38269715-e34f-5bf5-a8bf-cc2080675d04'::uuid, '0d1d60a3-6461-5d9d-97bf-d3d4eaa8d252'::uuid, '12fb840a-85f9-51d1-a098-9f48ae2a57b8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3e7dda20-75d8-5ac5-88e0-946b7718745d'::uuid, '12fb840a-85f9-51d1-a098-9f48ae2a57b8'::uuid, '0d1d60a3-6461-5d9d-97bf-d3d4eaa8d252'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e1c7ab18-f96a-576b-af87-fe5d9397f001'::uuid, '0d1d60a3-6461-5d9d-97bf-d3d4eaa8d252'::uuid, '12fb840a-85f9-51d1-a098-9f48ae2a57b8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c1d4fb9f-d1e0-596f-9f9c-772158523be6'::uuid, '0687ee8d-ff4f-5a57-a322-44f46574449a'::uuid, '2c9ba917-c830-5bfb-b0bc-663f09ef379b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b74c6685-bed5-508a-9893-c1622640dcfb'::uuid, '2c9ba917-c830-5bfb-b0bc-663f09ef379b'::uuid, '0687ee8d-ff4f-5a57-a322-44f46574449a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4b555b2c-cb63-5d47-becf-3e3f99a05253'::uuid, '0687ee8d-ff4f-5a57-a322-44f46574449a'::uuid, '2c9ba917-c830-5bfb-b0bc-663f09ef379b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1f18360a-786e-51b3-8ec7-cee56f657c96'::uuid,
  '4b555b2c-cb63-5d47-becf-3e3f99a05253'::uuid,
  '0687ee8d-ff4f-5a57-a322-44f46574449a'::uuid,
  '2c9ba917-c830-5bfb-b0bc-663f09ef379b'::uuid,
  'Hi Hannah — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ddc9cf09-ac79-5606-9f4f-8a01f098117b'::uuid,
  '4b555b2c-cb63-5d47-becf-3e3f99a05253'::uuid,
  '2c9ba917-c830-5bfb-b0bc-663f09ef379b'::uuid,
  '0687ee8d-ff4f-5a57-a322-44f46574449a'::uuid,
  'Thanks Nathan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b7253764-9250-5f77-95d7-b01497596a1c'::uuid, 'ab207c01-931d-503e-a7bc-828029810b26'::uuid, 'dc812569-44a4-5798-a90f-fb9ec9b15fb0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('58e61b21-743e-5a59-ab76-87c0d7a410d4'::uuid, 'dc812569-44a4-5798-a90f-fb9ec9b15fb0'::uuid, 'ab207c01-931d-503e-a7bc-828029810b26'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7e3a28d8-4a15-5eb2-a7aa-292ce297650e'::uuid, 'ab207c01-931d-503e-a7bc-828029810b26'::uuid, 'dc812569-44a4-5798-a90f-fb9ec9b15fb0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8c8b7cd8-3dd4-5f4e-972e-aaf0db23121c'::uuid, 'e5b13d72-cb9f-5c3d-9bcc-a7b8cd7499ba'::uuid, 'e6f31c55-2acb-59f4-b10e-e3657979db8f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cb38a881-ee9e-50f0-aec3-be90ff4d9447'::uuid, 'e6f31c55-2acb-59f4-b10e-e3657979db8f'::uuid, 'e5b13d72-cb9f-5c3d-9bcc-a7b8cd7499ba'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a2760389-3c95-523c-a003-6cc0b30e7ae9'::uuid, 'e5b13d72-cb9f-5c3d-9bcc-a7b8cd7499ba'::uuid, 'e6f31c55-2acb-59f4-b10e-e3657979db8f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a0154fa9-eac4-5a68-a7e0-f625001fb40a'::uuid,
  'a2760389-3c95-523c-a003-6cc0b30e7ae9'::uuid,
  'e5b13d72-cb9f-5c3d-9bcc-a7b8cd7499ba'::uuid,
  'e6f31c55-2acb-59f4-b10e-e3657979db8f'::uuid,
  'Hi Nora — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '308a4600-bdca-5645-ba97-b85f3004622c'::uuid,
  'a2760389-3c95-523c-a003-6cc0b30e7ae9'::uuid,
  'e6f31c55-2acb-59f4-b10e-e3657979db8f'::uuid,
  'e5b13d72-cb9f-5c3d-9bcc-a7b8cd7499ba'::uuid,
  'Thanks Omar! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e7fed883-973c-5ee1-9da9-3d4e4678c690'::uuid, 'e5b13d72-cb9f-5c3d-9bcc-a7b8cd7499ba'::uuid, 'f78cc4fe-8b90-548b-a652-2631fc1fa61f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7a1e99e3-408f-5e93-8951-13ff8693ac40'::uuid, 'f78cc4fe-8b90-548b-a652-2631fc1fa61f'::uuid, 'e5b13d72-cb9f-5c3d-9bcc-a7b8cd7499ba'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c637a078-d951-5780-a1ee-7f122109eca7'::uuid, 'e5b13d72-cb9f-5c3d-9bcc-a7b8cd7499ba'::uuid, 'f78cc4fe-8b90-548b-a652-2631fc1fa61f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('515fc730-b5fd-55d9-b092-3d3b9bb7a251'::uuid, '5c6a2b16-8772-56c9-9570-5254356f5c19'::uuid, 'a0d489bc-17d8-56b1-a52a-67fedb5755c2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('03bb4542-3bd6-5eba-a290-e7d249ef6dda'::uuid, 'a0d489bc-17d8-56b1-a52a-67fedb5755c2'::uuid, '5c6a2b16-8772-56c9-9570-5254356f5c19'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5375c325-fda8-50a1-ba4a-d341d8353cfb'::uuid, '5c6a2b16-8772-56c9-9570-5254356f5c19'::uuid, 'a0d489bc-17d8-56b1-a52a-67fedb5755c2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f86f0f32-eac6-5cda-8f16-d380a2cff8c8'::uuid,
  '5375c325-fda8-50a1-ba4a-d341d8353cfb'::uuid,
  '5c6a2b16-8772-56c9-9570-5254356f5c19'::uuid,
  'a0d489bc-17d8-56b1-a52a-67fedb5755c2'::uuid,
  'Hi Isaac — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '69b2c2a2-cbd2-5bb2-86fc-ad96962a3adc'::uuid,
  '5375c325-fda8-50a1-ba4a-d341d8353cfb'::uuid,
  'a0d489bc-17d8-56b1-a52a-67fedb5755c2'::uuid,
  '5c6a2b16-8772-56c9-9570-5254356f5c19'::uuid,
  'Thanks Chloe! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2e9a6f78-6e0e-5b2f-86a8-0cff66a76205'::uuid, '69dc47c5-32db-5e03-92bf-7ca4422944f3'::uuid, '717e2f46-9620-5600-b8e0-5187f52e05ee'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('34504853-68a0-5e93-83ce-8df695a77581'::uuid, '717e2f46-9620-5600-b8e0-5187f52e05ee'::uuid, '69dc47c5-32db-5e03-92bf-7ca4422944f3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e28133cb-0579-51cf-abe9-02799ed99cc1'::uuid, '69dc47c5-32db-5e03-92bf-7ca4422944f3'::uuid, '717e2f46-9620-5600-b8e0-5187f52e05ee'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('af30b48a-96fd-589b-a466-c0c7fe436e36'::uuid, '3d805200-315a-549f-9527-ae5519886cbb'::uuid, '2df7870b-f77b-5301-b54e-6af2f7ff0758'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('79893df1-cf0e-5494-9587-4f628af2626d'::uuid, '2df7870b-f77b-5301-b54e-6af2f7ff0758'::uuid, '3d805200-315a-549f-9527-ae5519886cbb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5389059d-8fdf-5348-9a81-6254584631c4'::uuid, '2df7870b-f77b-5301-b54e-6af2f7ff0758'::uuid, '3d805200-315a-549f-9527-ae5519886cbb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0e1925f5-3ece-54e9-852c-b930481e6d1e'::uuid,
  '5389059d-8fdf-5348-9a81-6254584631c4'::uuid,
  '3d805200-315a-549f-9527-ae5519886cbb'::uuid,
  '2df7870b-f77b-5301-b54e-6af2f7ff0758'::uuid,
  'Hi Felix — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8717f37f-4210-5a51-97b3-ad7e68334e61'::uuid,
  '5389059d-8fdf-5348-9a81-6254584631c4'::uuid,
  '2df7870b-f77b-5301-b54e-6af2f7ff0758'::uuid,
  '3d805200-315a-549f-9527-ae5519886cbb'::uuid,
  'Thanks Violet! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e926b3eb-d66e-5646-8781-0302ef646225'::uuid, 'd19a231a-9bc3-5d9a-9f36-ba4d2131cb10'::uuid, '0383e3ef-8b66-5f66-8353-206517213c00'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('aa88ec59-3a72-5b70-809f-51dca564cd15'::uuid, '0383e3ef-8b66-5f66-8353-206517213c00'::uuid, 'd19a231a-9bc3-5d9a-9f36-ba4d2131cb10'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1dc83546-e54b-5b0b-a4a9-fe4235608e9b'::uuid, '0383e3ef-8b66-5f66-8353-206517213c00'::uuid, 'd19a231a-9bc3-5d9a-9f36-ba4d2131cb10'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f437ee6e-d02b-5950-bcb3-6f2e99bb4afc'::uuid, 'f271c942-fc21-56d3-93cb-8635126191a1'::uuid, 'c58b8537-3066-5e38-b2ee-04688319f6de'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('35754ca0-2312-55cf-9199-1c7c0ceb6948'::uuid, 'c58b8537-3066-5e38-b2ee-04688319f6de'::uuid, 'f271c942-fc21-56d3-93cb-8635126191a1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bb4befec-d1ac-50e0-8a54-1bba3e4f1247'::uuid, 'c58b8537-3066-5e38-b2ee-04688319f6de'::uuid, 'f271c942-fc21-56d3-93cb-8635126191a1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'de116abc-5bc6-59dc-92e1-f001d98a8a8e'::uuid,
  'bb4befec-d1ac-50e0-8a54-1bba3e4f1247'::uuid,
  'f271c942-fc21-56d3-93cb-8635126191a1'::uuid,
  'c58b8537-3066-5e38-b2ee-04688319f6de'::uuid,
  'Hi James — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '33e41ff1-58ed-5281-a822-1c92beeb2b37'::uuid,
  'bb4befec-d1ac-50e0-8a54-1bba3e4f1247'::uuid,
  'c58b8537-3066-5e38-b2ee-04688319f6de'::uuid,
  'f271c942-fc21-56d3-93cb-8635126191a1'::uuid,
  'Thanks Tara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('435c2bcc-a33e-5211-bfce-349794b3beb0'::uuid, 'f271c942-fc21-56d3-93cb-8635126191a1'::uuid, '9368db5e-e423-510b-abf1-bd3510893600'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bc582de0-9cf4-5980-b2e4-9bed593d2e32'::uuid, '9368db5e-e423-510b-abf1-bd3510893600'::uuid, 'f271c942-fc21-56d3-93cb-8635126191a1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2375f3c3-1a6e-5946-81e2-d7fd36d6bb02'::uuid, '9368db5e-e423-510b-abf1-bd3510893600'::uuid, 'f271c942-fc21-56d3-93cb-8635126191a1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bb811b35-dc1b-562c-b795-29b56c1b9c3e'::uuid, 'f6b3ecf2-301c-5e02-a0ec-ad57b2dfbed4'::uuid, '4913360a-0394-5a55-b1d6-85d797e7ae73'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a9ce7059-8d9e-5db7-8863-0feba36dab53'::uuid, '4913360a-0394-5a55-b1d6-85d797e7ae73'::uuid, 'f6b3ecf2-301c-5e02-a0ec-ad57b2dfbed4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('717f9d46-f702-582b-baee-ce3fbaa81bc2'::uuid, '4913360a-0394-5a55-b1d6-85d797e7ae73'::uuid, 'f6b3ecf2-301c-5e02-a0ec-ad57b2dfbed4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0de34fc0-9bfc-5e58-aadf-8f772596a053'::uuid,
  '717f9d46-f702-582b-baee-ce3fbaa81bc2'::uuid,
  'f6b3ecf2-301c-5e02-a0ec-ad57b2dfbed4'::uuid,
  '4913360a-0394-5a55-b1d6-85d797e7ae73'::uuid,
  'Hi Grace — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2b7d3c02-1a59-52ec-a520-3da87c872949'::uuid,
  '717f9d46-f702-582b-baee-ce3fbaa81bc2'::uuid,
  '4913360a-0394-5a55-b1d6-85d797e7ae73'::uuid,
  'f6b3ecf2-301c-5e02-a0ec-ad57b2dfbed4'::uuid,
  'Thanks Aaron! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('51a4fbae-d909-52a5-96f1-4a67853dda2b'::uuid, '6d5bb006-e4b9-59a3-a281-843bcdf8d1aa'::uuid, '4195c436-ecd0-5c32-b18c-8fac2b240d47'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7d460e4e-fdde-5b51-b748-c2f2128b434c'::uuid, '4195c436-ecd0-5c32-b18c-8fac2b240d47'::uuid, '6d5bb006-e4b9-59a3-a281-843bcdf8d1aa'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2ca7d7ab-0d0e-53f0-9e2a-6f877c643c78'::uuid, '4195c436-ecd0-5c32-b18c-8fac2b240d47'::uuid, '6d5bb006-e4b9-59a3-a281-843bcdf8d1aa'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3595bc85-0bd9-5d4e-80fd-8afb4c244be9'::uuid, 'edf936e0-ccbc-507d-943e-ce31b4b8b532'::uuid, '1f852cc0-d2df-5ce1-a6f2-85adf73b3859'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('99a51ce5-7a03-564a-a5e2-77b2efacf3d8'::uuid, '1f852cc0-d2df-5ce1-a6f2-85adf73b3859'::uuid, 'edf936e0-ccbc-507d-943e-ce31b4b8b532'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('509317bb-d417-59dc-b338-0eb6ddd2f033'::uuid, '1f852cc0-d2df-5ce1-a6f2-85adf73b3859'::uuid, 'edf936e0-ccbc-507d-943e-ce31b4b8b532'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cb422f38-c2d8-5398-b21f-87c5e678a230'::uuid,
  '509317bb-d417-59dc-b338-0eb6ddd2f033'::uuid,
  'edf936e0-ccbc-507d-943e-ce31b4b8b532'::uuid,
  '1f852cc0-d2df-5ce1-a6f2-85adf73b3859'::uuid,
  'Hi Isla — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6742ee83-ddde-5f18-ad55-29d540ba6168'::uuid,
  '509317bb-d417-59dc-b338-0eb6ddd2f033'::uuid,
  '1f852cc0-d2df-5ce1-a6f2-85adf73b3859'::uuid,
  'edf936e0-ccbc-507d-943e-ce31b4b8b532'::uuid,
  'Thanks Noah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9ca4c257-178b-5005-bc67-52c85884df92'::uuid, '3d5e4b71-5d33-5e87-b691-528b0554141d'::uuid, '0e62eacf-462f-5d52-9989-07f38d304832'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('637b7d00-7e9b-54f6-ac41-3258bcc859a1'::uuid, '0e62eacf-462f-5d52-9989-07f38d304832'::uuid, '3d5e4b71-5d33-5e87-b691-528b0554141d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dc5ea785-0dc0-5eda-ada8-5550f9bb3acb'::uuid, '0e62eacf-462f-5d52-9989-07f38d304832'::uuid, '3d5e4b71-5d33-5e87-b691-528b0554141d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('57a3e7d5-e227-5aee-8793-a9fe771a9f22'::uuid, '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid, 'd063655e-9e04-5406-8e3a-ac9c25650b1c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1b6b052f-cb5b-5716-ad57-b50ce92f2880'::uuid, 'd063655e-9e04-5406-8e3a-ac9c25650b1c'::uuid, '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('20192739-52ab-5c94-a980-73e3c859e459'::uuid, '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid, 'd063655e-9e04-5406-8e3a-ac9c25650b1c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '775e8ca9-13a7-5730-85a2-3f80d1eca25f'::uuid,
  '20192739-52ab-5c94-a980-73e3c859e459'::uuid,
  '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid,
  'd063655e-9e04-5406-8e3a-ac9c25650b1c'::uuid,
  'Hi Yara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9dd4340e-4bfd-5e2c-a3c7-e7190c9e3309'::uuid,
  '20192739-52ab-5c94-a980-73e3c859e459'::uuid,
  'd063655e-9e04-5406-8e3a-ac9c25650b1c'::uuid,
  '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid,
  'Thanks Ethan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('94b859ab-e79c-583a-8dc6-fbee56be1689'::uuid, '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid, '22c0fd65-6843-5b61-919d-37b1292666b9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e12908e8-c175-5bdd-a3a8-b73fd265acb3'::uuid, '22c0fd65-6843-5b61-919d-37b1292666b9'::uuid, '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('89430929-a309-537b-a557-22b03c782576'::uuid, '22c0fd65-6843-5b61-919d-37b1292666b9'::uuid, '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('97b6cb2d-bfbb-514e-91c1-12b5b81b3710'::uuid, '8a3ccd43-eedc-52e3-970e-b05b035225e2'::uuid, '3006f4f6-9b46-5e6a-b99d-d1a94cf76eb8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('810d6975-f8f9-5498-9c81-fc5d43e5007a'::uuid, '3006f4f6-9b46-5e6a-b99d-d1a94cf76eb8'::uuid, '8a3ccd43-eedc-52e3-970e-b05b035225e2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('827a9005-a3aa-5e39-bb9e-59355935b327'::uuid, '3006f4f6-9b46-5e6a-b99d-d1a94cf76eb8'::uuid, '8a3ccd43-eedc-52e3-970e-b05b035225e2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'dd33737d-1233-56ea-a688-2edc8df26459'::uuid,
  '827a9005-a3aa-5e39-bb9e-59355935b327'::uuid,
  '8a3ccd43-eedc-52e3-970e-b05b035225e2'::uuid,
  '3006f4f6-9b46-5e6a-b99d-d1a94cf76eb8'::uuid,
  'Hi Lucas — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '93f6328f-32e9-5f86-8632-c7dbaf0d601a'::uuid,
  '827a9005-a3aa-5e39-bb9e-59355935b327'::uuid,
  '3006f4f6-9b46-5e6a-b99d-d1a94cf76eb8'::uuid,
  '8a3ccd43-eedc-52e3-970e-b05b035225e2'::uuid,
  'Thanks Leila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('697d7a5c-64b2-58a9-bd0e-501bef497827'::uuid, '6aafdcd6-d8d8-557d-9554-bbb27bdb748d'::uuid, 'e4161d15-a489-5141-bd1c-b34b92ebab30'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dd6c9366-59f6-5e3d-bd52-13a28d4f347f'::uuid, 'e4161d15-a489-5141-bd1c-b34b92ebab30'::uuid, '6aafdcd6-d8d8-557d-9554-bbb27bdb748d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f0f527f9-fd49-5ab6-8a4e-c814e0dd0e6a'::uuid, '6aafdcd6-d8d8-557d-9554-bbb27bdb748d'::uuid, 'e4161d15-a489-5141-bd1c-b34b92ebab30'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ac3b343f-2145-583e-8b73-a54213303400'::uuid, '7d4f49fb-43d1-502f-9920-10e2cb21136a'::uuid, '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('52a60e18-fdf7-5ef6-80e9-735fa4c85c64'::uuid, '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid, '7d4f49fb-43d1-502f-9920-10e2cb21136a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('391bde50-71a8-53c3-9764-127b90174182'::uuid, '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid, '7d4f49fb-43d1-502f-9920-10e2cb21136a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3fba624d-3917-5e6d-ad06-41833dcb753f'::uuid,
  '391bde50-71a8-53c3-9764-127b90174182'::uuid,
  '7d4f49fb-43d1-502f-9920-10e2cb21136a'::uuid,
  '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid,
  'Hi David — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1e5835a7-576c-5023-99a6-808fafd59fdf'::uuid,
  '391bde50-71a8-53c3-9764-127b90174182'::uuid,
  '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid,
  '7d4f49fb-43d1-502f-9920-10e2cb21136a'::uuid,
  'Thanks Sana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2d5c8bbb-4c5a-5ea7-86b1-cf6980384493'::uuid, '05fcff78-0cbc-5304-80d1-89c5fb51a5ce'::uuid, 'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2089833a-5662-55e7-bbf2-364bcf52408b'::uuid, 'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid, '05fcff78-0cbc-5304-80d1-89c5fb51a5ce'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('658f327c-e93d-5292-9242-cc34d540001b'::uuid, '05fcff78-0cbc-5304-80d1-89c5fb51a5ce'::uuid, 'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('70bed8f7-7f95-556b-9e14-b5c963f03ad0'::uuid, '374e622b-e91f-54be-9ba0-cf4aa0906fa8'::uuid, '05054208-013e-5ac0-8db9-7b769e41a544'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4a3033c9-325c-50ab-bdcd-ca33e4d34b06'::uuid, '05054208-013e-5ac0-8db9-7b769e41a544'::uuid, '374e622b-e91f-54be-9ba0-cf4aa0906fa8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('08f130ef-ce70-52d8-b6fc-eb4ea293afa5'::uuid, '05054208-013e-5ac0-8db9-7b769e41a544'::uuid, '374e622b-e91f-54be-9ba0-cf4aa0906fa8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;
