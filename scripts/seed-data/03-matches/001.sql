INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c93a08cc-8521-528f-a802-5fd6a00f9abb'::uuid, '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid, 'e82aadde-599d-5823-9c92-7aa26f607621'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7dc36b40-2dac-5fbd-9c85-df13adeb488d'::uuid, '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid, '33258244-df5a-5c2f-933d-31972bac2f03'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('63eb44c5-6f64-56c3-92c0-8ad23848a812'::uuid, '33258244-df5a-5c2f-933d-31972bac2f03'::uuid, '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4de118cb-fe00-5739-8d95-b6f03a0ba81e'::uuid, '33258244-df5a-5c2f-933d-31972bac2f03'::uuid, '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6f42f174-435a-5249-b0fb-035a0d1e156a'::uuid,
  '4de118cb-fe00-5739-8d95-b6f03a0ba81e'::uuid,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  '33258244-df5a-5c2f-933d-31972bac2f03'::uuid,
  'Hi Isla — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '04ebbe83-6b61-53d6-9152-146997a05a5d'::uuid,
  '4de118cb-fe00-5739-8d95-b6f03a0ba81e'::uuid,
  '33258244-df5a-5c2f-933d-31972bac2f03'::uuid,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  'Thanks Noah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5d8aaad7-3dc5-5cfd-9f4a-c4a480e6acd7'::uuid, '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid, '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('57b09d65-6cb0-5cbb-b994-6f56946ffc8b'::uuid, 'cbc72d17-40df-503c-9380-64860d555aeb'::uuid, 'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('504548d2-cfe5-5300-b05b-fac0db825b1a'::uuid, 'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid, 'cbc72d17-40df-503c-9380-64860d555aeb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('283153f0-610f-5e62-b907-84cdb89d8b8f'::uuid, 'cbc72d17-40df-503c-9380-64860d555aeb'::uuid, 'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c9c628ce-de20-5479-9c84-25a0efca4996'::uuid, '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid, 'cbc72d17-40df-503c-9380-64860d555aeb'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('98e08acb-8148-5a59-b0e4-d13d25c1d7ea'::uuid, '89b2a66e-af73-5706-9535-645704dc5830'::uuid, '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f469d3d3-7d03-5de8-aa15-cc2d040ffd04'::uuid, '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid, '89b2a66e-af73-5706-9535-645704dc5830'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('10bc9ac5-8459-516a-bb17-a46b46364816'::uuid, '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid, '89b2a66e-af73-5706-9535-645704dc5830'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cd702bd3-1b74-52bb-b7dc-e571fa4e1a84'::uuid,
  '10bc9ac5-8459-516a-bb17-a46b46364816'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  'Hi Yara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'bd4a4f88-19b0-558a-a1ab-abd33d7a37d3'::uuid,
  '10bc9ac5-8459-516a-bb17-a46b46364816'::uuid,
  '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  'Thanks Ethan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ce67ca43-8338-5dda-abbe-dadf9eb92d86'::uuid, '89b2a66e-af73-5706-9535-645704dc5830'::uuid, '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('eb241496-f718-541b-a374-5e5ab0b67dcc'::uuid, '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid, '89b2a66e-af73-5706-9535-645704dc5830'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1a44e64f-8099-5118-a358-b7bd1311c6ae'::uuid, '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid, '89b2a66e-af73-5706-9535-645704dc5830'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2e4aaa0f-4eca-52ea-96c1-ad66d9ed50f2'::uuid, 'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid, '89b2a66e-af73-5706-9535-645704dc5830'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('75737cae-112a-510e-94e6-3840d3ec24bc'::uuid, 'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid, '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('19ca3369-c122-5cd4-bacc-89a4516bc6a9'::uuid, '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid, 'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ae5ab9c7-9912-58f9-b211-3f8241c59fef'::uuid, '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid, 'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cc5ccb1c-9d41-5c7e-80b3-b2281c3da903'::uuid,
  'ae5ab9c7-9912-58f9-b211-3f8241c59fef'::uuid,
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  'Hi Lucas — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'da910ef3-2ab9-5739-a77b-07b95bb4b2d7'::uuid,
  'ae5ab9c7-9912-58f9-b211-3f8241c59fef'::uuid,
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid,
  'Thanks Leila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3b95f490-dac5-56e6-a28d-07fc2fe0feb3'::uuid, 'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid, 'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('995b3102-4edd-5566-a123-43365076cb29'::uuid, 'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid, '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0b42bb3d-1e68-5629-b34e-35076d0716a4'::uuid, '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid, 'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5584c008-6b75-572e-aaea-5b8cc12ed9ef'::uuid, '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid, 'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f8b58f6f-719c-5e93-8e55-c53f1145ba8f'::uuid, 'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid, 'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('133dfedd-fa17-5d25-a84f-16f7c2f81a12'::uuid, 'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid, '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('30a0c98e-b3ab-572e-9fca-4c47dbb98a7e'::uuid, '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid, 'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4203ebdb-cc24-56e4-b942-9299f8006845'::uuid, '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid, 'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b4a9f65b-2c6d-5eda-bcb0-ba1ea6bd217f'::uuid,
  '4203ebdb-cc24-56e4-b942-9299f8006845'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid,
  'Hi David — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '74838956-ac6a-553d-8bd2-5d4a61988807'::uuid,
  '4203ebdb-cc24-56e4-b942-9299f8006845'::uuid,
  '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  'Thanks Sana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('063fda00-ea83-5a34-9c54-0b080a35f1a7'::uuid, 'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid, 'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8e85df4c-427b-548e-bd84-6d7fa45af28f'::uuid, '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid, 'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('00b4246b-ca39-5ab3-9220-617d2fabd60d'::uuid, 'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid, '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6eaaa11c-b6e9-56d0-89b6-9e7409e3fcf4'::uuid, '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid, 'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e61c1196-15a9-52aa-b633-ea4a366e8ab0'::uuid, '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid, '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('71efe508-05b3-57fd-8261-1eeacd4a47d5'::uuid, '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid, 'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9770c800-d359-591b-b6c0-05917c264a20'::uuid, 'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid, '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('879da286-60d0-5b55-a4d6-6576a8958309'::uuid, '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid, 'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6413d9d4-1606-5bfb-86e0-0e86398ab723'::uuid,
  '879da286-60d0-5b55-a4d6-6576a8958309'::uuid,
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  'Hi Diego — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b2ff379c-d34e-59ec-a0ce-f9a038cfdaba'::uuid,
  '879da286-60d0-5b55-a4d6-6576a8958309'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  'Thanks Hana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('995897cf-cd7c-5b3a-956d-c63531a6f33a'::uuid, '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid, 'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3ecff0f3-78fb-5365-862f-c4412934e13b'::uuid, 'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid, '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ccdd27f3-e71f-5ae5-8dab-f6cf82045d5c'::uuid, '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid, 'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a0c2da0d-898b-5752-a94c-a2ad5fb60443'::uuid, 'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid, '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('eb04d63a-92d4-5f9d-a8bb-e3f3780b6541'::uuid, '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid, 'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cf525e4c-ce48-5e58-ab3a-a34886c77dee'::uuid, 'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid, '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('752d056c-4185-52c4-8fbb-7f3f021f2f99'::uuid, '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid, 'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b5a3986a-8699-5f01-9ad3-9697be2b9bec'::uuid,
  '752d056c-4185-52c4-8fbb-7f3f021f2f99'::uuid,
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  'Hi Nadia — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'dab02ede-4977-51b5-9e0b-9bd68c8a0125'::uuid,
  '752d056c-4185-52c4-8fbb-7f3f021f2f99'::uuid,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  'Thanks Maya! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f0c73e16-1006-50ef-bf80-70b2f60f937b'::uuid, '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid, '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('76d7842e-8595-5e83-b4c6-4bd0baac801a'::uuid, 'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid, 'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b7ad5c81-f5c7-5a38-8abe-73fa03a1a38a'::uuid, 'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid, 'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('35a629ec-f4f7-51de-a9f4-04a26ec91d13'::uuid, 'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid, 'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f16fb8fa-ed3e-5c0d-af63-c44ab5919edc'::uuid, 'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid, 'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b0543ddc-8fcd-5be7-8453-a86379ae942c'::uuid, '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid, '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('795f58a2-4ebd-5740-a157-9793d5535353'::uuid, '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid, '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dceb4b89-47aa-586c-84de-2c8f307e2f7d'::uuid, '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid, '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ff14de9e-2c77-503f-87cc-b101c171be84'::uuid,
  'dceb4b89-47aa-586c-84de-2c8f307e2f7d'::uuid,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  'Hi Mei — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1510f855-2f1c-56f6-a6aa-e5dedced6c4b'::uuid,
  'dceb4b89-47aa-586c-84de-2c8f307e2f7d'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  'Thanks Rohan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cd1261ff-32ad-583f-857f-35dc4930d6b9'::uuid, '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid, '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('649cb82d-7e02-5fea-8707-4672db18bb27'::uuid, '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid, 'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8a977c60-9104-578b-aad7-9f59920c348d'::uuid, 'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid, '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e4e33962-5881-5ce6-ac3c-78dead70b396'::uuid, '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid, 'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c91013c8-8333-539f-92c6-860f6b83cdba'::uuid, 'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid, '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0c9d08d1-351e-51bd-a4e5-f6a1f400f14c'::uuid, '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid, '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e7be033c-6717-532a-8af9-0b9347144dee'::uuid, '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid, '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e3f6b225-58db-56a4-ad3a-c9d5fd260dbf'::uuid, '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid, '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '149f167d-555d-5583-a26f-8754cef688c6'::uuid,
  'e3f6b225-58db-56a4-ad3a-c9d5fd260dbf'::uuid,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  'Hi Riya — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4ec994a2-0059-58b9-a9ea-bb8439682fb7'::uuid,
  'e3f6b225-58db-56a4-ad3a-c9d5fd260dbf'::uuid,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  'Thanks Samir! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('21df107b-b6f3-56d3-ac6b-6cb1cce082d3'::uuid, '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid, '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('24057cca-0b2b-55e3-8599-ff532f98f75e'::uuid, '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid, '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5e0b5f4e-281a-5e30-8fe5-4ec247faf4b1'::uuid, '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid, '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b4b4b79d-20f2-54b7-bb8e-89bad05ae87e'::uuid, 'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid, '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b5dab1bb-e3c2-53f8-b1aa-3a7a6934094c'::uuid, '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid, 'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('34924b55-a9cf-5092-bd30-e429a3b0eb68'::uuid, 'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid, '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c9748083-1ecb-5442-a9db-2f0aa0eb6726'::uuid, '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid, 'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5fec4bfb-af3f-5191-96d0-885bd5c00569'::uuid,
  'c9748083-1ecb-5442-a9db-2f0aa0eb6726'::uuid,
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  'Hi Nathan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ad1eace3-cc1b-5f39-b226-65128a67b2c2'::uuid,
  'c9748083-1ecb-5442-a9db-2f0aa0eb6726'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  'Thanks Camila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9026018a-ad1d-5b66-b138-ee35c1a6dcd8'::uuid, '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid, '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ac93355b-ec7d-5155-a6ff-e1133fbf6d9a'::uuid, 'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid, '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('453e4276-b678-5646-9659-70a587965484'::uuid, '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid, 'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('82d677e1-1714-5780-9009-6f017e48cf09'::uuid, '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid, 'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('08421acc-63d4-5fbe-b460-78fc433b2357'::uuid, '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid, 'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7a779aee-7c84-5e49-8768-2810ebd75d07'::uuid, '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid, 'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e1e2eef6-004d-599e-b7a7-04ce427c694a'::uuid, 'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid, '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b80c025b-ba18-5e8a-bb0d-70c9f237935f'::uuid, '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid, 'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '710a689e-c277-563b-ab59-18b5695e0adf'::uuid,
  'b80c025b-ba18-5e8a-bb0d-70c9f237935f'::uuid,
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  'Hi Omar — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9b29fbdd-abe0-5072-a0ad-f8cec725a515'::uuid,
  'b80c025b-ba18-5e8a-bb0d-70c9f237935f'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  'Thanks Nina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8972005d-d5c4-5dc4-bf70-36232f7a0810'::uuid, 'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid, '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cbf9fbe7-0818-5442-9f36-64f4b476728d'::uuid, '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid, 'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cedebf9f-7be2-5c9b-b8a5-b08f09b3b04f'::uuid, 'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid, '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f831a434-036d-5e85-99bd-ab8513e525d0'::uuid, '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid, 'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5ec25b4f-f12a-5ad5-b254-6039feab3e4e'::uuid, 'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid, '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ccae097a-4f40-5822-a265-9236a1180aca'::uuid, 'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid, '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8173a58c-774b-5797-a03f-f45dfdd111e1'::uuid, '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid, 'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2ca0dbeb-ae7c-5190-83f2-f877440104f4'::uuid, '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid, 'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '66f73338-8fe9-5b24-8c54-794896f39ecf'::uuid,
  '2ca0dbeb-ae7c-5190-83f2-f877440104f4'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  'Hi Owen — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '08e56d78-e91d-5703-bb61-43a4d1464f38'::uuid,
  '2ca0dbeb-ae7c-5190-83f2-f877440104f4'::uuid,
  '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  'Thanks Sofia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('61e6c9a9-2e3e-5cb1-b919-4804b842f731'::uuid, 'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid, '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a9a79d06-0a3e-527a-908b-da136acc810e'::uuid, '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid, 'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e2861d6f-bfac-5631-8c55-2471b0656bc0'::uuid, '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid, 'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0259c970-196b-5abc-b28b-938ece1e5bf2'::uuid, 'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid, 'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f1600722-519b-5f66-b917-6d551dba38ff'::uuid, '3c5bf808-932d-5678-af65-94323984b8c4'::uuid, '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('54c94072-b73d-5a7c-a59b-ebc8d0263e33'::uuid, '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid, '3c5bf808-932d-5678-af65-94323984b8c4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('57df297b-9039-580c-a393-d617dde20a1b'::uuid, '3c5bf808-932d-5678-af65-94323984b8c4'::uuid, '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '390499de-d99a-5f6e-ae5d-a418701e069d'::uuid,
  '57df297b-9039-580c-a393-d617dde20a1b'::uuid,
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  'Hi Violet — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2386f8cc-1160-5a0c-941e-ff17726565df'::uuid,
  '57df297b-9039-580c-a393-d617dde20a1b'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  'Thanks Kenji! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('61d4f83c-8ccf-5ce7-a15b-ba8587537793'::uuid, '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid, '3c5bf808-932d-5678-af65-94323984b8c4'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6a2365f1-f7d8-54c2-91b0-dec5e9688303'::uuid, '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid, 'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c68840f3-8fbf-5881-9651-bfffec953f63'::uuid, 'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid, '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ba15d0f1-2201-5267-b3df-106dbc009cc6'::uuid, '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid, 'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('79a1796c-9ae7-5141-91c9-e684334eae16'::uuid, '943b1eab-1775-54ca-a17c-f0920547e262'::uuid, '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('eb8b4584-f6ab-550c-98d1-1bdf6a3a1b5c'::uuid, 'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid, 'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('10c3e818-3f27-562e-b5d5-7419a6f65804'::uuid, 'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid, 'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('00a00f59-9439-5446-9d80-ba5013872f59'::uuid, 'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid, 'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2e9f5bb6-501a-5345-a7b3-fe83690c42ee'::uuid,
  '00a00f59-9439-5446-9d80-ba5013872f59'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  'Hi Tara — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cf86ba48-8e6d-59cd-98ab-4a1b131119b0'::uuid,
  '00a00f59-9439-5446-9d80-ba5013872f59'::uuid,
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  'Thanks Kai! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cc0240d8-ffd0-547e-b70c-946b3bf97c4e'::uuid, 'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid, 'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7f2d4c00-bebe-571d-ae5a-5dc5717bee25'::uuid, '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid, 'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6a0080a2-300b-55c7-8a8c-071d2dd51c9f'::uuid, 'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid, '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('132718e1-5198-5525-8d03-cf5c6d36e874'::uuid, '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid, 'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('00b81d71-f178-5588-a87a-c4d7969bc729'::uuid, '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid, '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('da7d9a80-73b1-546d-844c-026cff16ea5b'::uuid, '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid, '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6b8eaefa-f2b7-5362-9c0a-d9a14da126cd'::uuid, '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid, '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9072cf5f-a997-5013-973f-a44ec17247e3'::uuid, '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid, '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'da6fa630-f7f7-5266-b7a9-331d870f45c8'::uuid,
  '9072cf5f-a997-5013-973f-a44ec17247e3'::uuid,
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  'Hi Imani — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a86d60e7-05c2-5f47-88bc-42daf4bb8bdc'::uuid,
  '9072cf5f-a997-5013-973f-a44ec17247e3'::uuid,
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  'Thanks Benjamin! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9c2c4c02-04b3-575a-8e24-666db5c87067'::uuid, '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid, 'f7d3bba5-3aee-58bf-94fe-011c7853e82d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('93118acf-0807-5aa6-ae2d-ecd151f61200'::uuid, 'f7d3bba5-3aee-58bf-94fe-011c7853e82d'::uuid, '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('682fca0d-dfc6-5c8c-9d6a-911029e6d07f'::uuid, '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid, 'f7d3bba5-3aee-58bf-94fe-011c7853e82d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('35497a6f-8d01-5dd7-a3f6-57b432e760ef'::uuid, '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid, '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('efb22755-832c-5504-88eb-62d2bbfb9161'::uuid, '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid, '943b1eab-1775-54ca-a17c-f0920547e262'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9d986441-3817-56ab-ba1c-c4ff6f585fb5'::uuid, '943b1eab-1775-54ca-a17c-f0920547e262'::uuid, '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('374f9d5a-fba3-53ac-af9f-f8eca42c21d6'::uuid, '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid, '943b1eab-1775-54ca-a17c-f0920547e262'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '596f28c3-0f76-5cb0-a3e2-d671dbb18ff2'::uuid,
  '374f9d5a-fba3-53ac-af9f-f8eca42c21d6'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  'Hi Noah — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fb598c2d-91cd-50d0-8c0d-23dbdeb45825'::uuid,
  '374f9d5a-fba3-53ac-af9f-f8eca42c21d6'::uuid,
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  'Thanks Ava! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9695c376-390d-5cee-9ec7-e6ff8ca829a1'::uuid, '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid, '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('be203067-e26f-5cc5-aeac-88b61666e1bd'::uuid, 'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid, 'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('785bfe53-dcd0-56cf-a38b-67b406f2e759'::uuid, 'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid, 'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('29f55244-7881-53c6-b35f-e531c2838229'::uuid, 'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid, 'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('23bbbe97-9061-5fcb-aa00-4029d3908cec'::uuid, '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid, 'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e30b32f4-f3a0-52bf-af31-1422fc09a907'::uuid, 'cf10333a-2152-5178-8468-d28b33af4122'::uuid, '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f3521696-5f58-57c3-ba5e-d0811cac3320'::uuid, '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid, 'cf10333a-2152-5178-8468-d28b33af4122'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('34d7c0b2-b773-5f09-aa55-b3b4423b6861'::uuid, '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid, 'cf10333a-2152-5178-8468-d28b33af4122'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '31bb0705-e6fc-5845-bfe3-fda36caf473d'::uuid,
  '34d7c0b2-b773-5f09-aa55-b3b4423b6861'::uuid,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  'Hi Ethan — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '36d062bf-c72e-5071-8f0d-bf7352026e9d'::uuid,
  '34d7c0b2-b773-5f09-aa55-b3b4423b6861'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  'Thanks Amina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('66f9265a-e755-5ee3-98c3-9a10d2fb1085'::uuid, '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid, 'cf10333a-2152-5178-8468-d28b33af4122'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5da15656-b1a8-53ab-aec6-2af59cf3d194'::uuid, 'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid, '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2a5df3a7-2fb7-5507-86bf-c398fa07ca3a'::uuid, '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid, 'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e7d7c33e-7282-5f8a-b7a6-3a2db43891be'::uuid, '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid, 'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('892211dd-f3a5-52a5-93d9-b43995ea6bf3'::uuid, 'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid, 'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ae0722e0-ab33-5216-99f0-fb746418fe8b'::uuid, 'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid, '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4d7638c1-bb7a-5cf7-a3f1-b317eff6662c'::uuid, '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid, 'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a0af273f-c5f6-51c9-9b48-35bbd50e7637'::uuid, '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid, 'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '43f3b5e9-b437-5bf1-b5ad-27e272b7b30e'::uuid,
  'a0af273f-c5f6-51c9-9b48-35bbd50e7637'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  'Hi Caleb — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e5c65f5e-be8f-5799-a46a-e2b43dc73f63'::uuid,
  'a0af273f-c5f6-51c9-9b48-35bbd50e7637'::uuid,
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  'Thanks Hannah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7f2ff11d-c132-52d8-bcac-90656c80661b'::uuid, 'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid, 'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8789578f-1a38-5971-be3d-860128fe8ff3'::uuid, 'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid, 'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6279400b-4060-52e2-ac02-8420137c1fa7'::uuid, 'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid, 'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0c073852-4d23-5093-ac68-0b03f2fe063e'::uuid, 'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid, 'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('606599fa-dd07-5105-b09f-d7aa97c46778'::uuid, 'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid, '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('adf6bd19-158b-5ae8-80e4-c72335ffc6de'::uuid, '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid, 'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('323cc612-c499-5185-bc78-7b7a7a484c9d'::uuid, '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid, 'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '824ff8e5-71c2-5879-b1e5-59d18c136394'::uuid,
  '323cc612-c499-5185-bc78-7b7a7a484c9d'::uuid,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  'Hi Sana — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '971d1070-c2bf-536d-800a-99d1705386d0'::uuid,
  '323cc612-c499-5185-bc78-7b7a7a484c9d'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  'Thanks Julian! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e52126b0-eb41-53c6-a5bd-80a405317766'::uuid, '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid, 'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('357e4c51-f883-5ead-9413-86fe60d4d524'::uuid, 'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid, '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ccd2cfc4-1bae-5eff-bae8-bcbaa491a1af'::uuid, '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid, 'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4a1429a6-bd0d-540a-b891-bbcf8be496a8'::uuid, '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid, 'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c07e7adc-0e7f-5eab-90b3-b6c1c0bbc15c'::uuid, '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid, 'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('950863e3-06bf-50dc-a8b6-35f1cbf66f47'::uuid, '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid, 'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1c34f461-f81e-5274-a930-9b10c329d44f'::uuid, 'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid, '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bf16951f-7e34-55de-8587-85bc0226220b'::uuid, '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid, 'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5d575da8-8ddc-5934-8122-c13574ac988d'::uuid,
  'bf16951f-7e34-55de-8587-85bc0226220b'::uuid,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  'Hi Hana — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '94c6c046-3669-5843-ac1c-9634ed83b88b'::uuid,
  'bf16951f-7e34-55de-8587-85bc0226220b'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  'Thanks Isaac! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8e6ea1c0-599a-525a-9c2c-5a2a68ed3acd'::uuid, '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid, '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3c702d2a-f06c-5410-b618-33a5bb06fdde'::uuid, '920410e2-89ac-581b-95cc-1c86177f436b'::uuid, 'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('db87982b-e2ad-5f4e-ada4-a99ded43b367'::uuid, 'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid, '920410e2-89ac-581b-95cc-1c86177f436b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f0a6a8e1-66ff-5ecf-80f7-0a0984b585df'::uuid, '920410e2-89ac-581b-95cc-1c86177f436b'::uuid, 'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('507e57a7-663c-544d-bda4-a5a03615e1b2'::uuid, '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid, '920410e2-89ac-581b-95cc-1c86177f436b'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f7bddd91-38ab-54bf-9314-1fd44bd549ba'::uuid, 'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid, '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a72f4ef3-b641-52ed-b3d2-e25d13f8d4c8'::uuid, '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid, 'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('427da69f-4bfd-5f66-a7b9-8d406a94f557'::uuid, '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid, 'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8d87d208-196c-5e7c-9a3f-88f09f758226'::uuid,
  '427da69f-4bfd-5f66-a7b9-8d406a94f557'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  'Hi Elena — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1653c8c6-200d-5bf4-848f-8aee909ff46b'::uuid,
  '427da69f-4bfd-5f66-a7b9-8d406a94f557'::uuid,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  'Thanks Felix! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4f1a8299-1d7c-5f44-aab8-63e106cb88f3'::uuid, 'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid, '634bbd78-6e13-5abe-8ffc-9d7e43a30d9f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b6105675-10a8-5721-b99f-161c0929e311'::uuid, '634bbd78-6e13-5abe-8ffc-9d7e43a30d9f'::uuid, 'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f985da09-dcf5-5deb-a29e-2060598c7c6c'::uuid, '634bbd78-6e13-5abe-8ffc-9d7e43a30d9f'::uuid, 'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('58ef1d2c-18b8-558f-a822-ac2678dee2f6'::uuid, '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid, 'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7844be92-f6e1-51e7-9c0a-05726fdda0c3'::uuid, '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid, '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('438c1403-a232-5662-9323-d524d5e1afb6'::uuid, '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid, '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4df437a0-3ac7-5ca5-af4d-87714395d13c'::uuid, '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid, '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd858a466-9024-5141-8726-879ee86fbb4b'::uuid,
  '4df437a0-3ac7-5ca5-af4d-87714395d13c'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  'Hi Rohan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6a3146c6-0b0d-52f7-be28-33e1d3338d94'::uuid,
  '4df437a0-3ac7-5ca5-af4d-87714395d13c'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  'Thanks Sara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('129fd791-0a1a-54b2-abd0-23f4f2c6dd68'::uuid, '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid, '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9860636a-3705-5ff8-a81d-75a81f22d26a'::uuid, '47b81f54-6417-5024-893d-0269a6070530'::uuid, '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5a0ad170-87a5-5c3e-8cc4-c805afecaee3'::uuid, '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid, '47b81f54-6417-5024-893d-0269a6070530'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('73d74a67-a5d2-5aed-9c6e-211c6627c4c8'::uuid, '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid, '47b81f54-6417-5024-893d-0269a6070530'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('889db3bc-f59a-5e43-b783-625f03c58b1e'::uuid, '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid, '47b81f54-6417-5024-893d-0269a6070530'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8231c56c-6a04-5368-9a60-d11b07ffc8a6'::uuid, 'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid, '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5a321676-91c4-551e-9718-0a5937101370'::uuid, '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid, 'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d479fe61-645c-5c99-a892-bf981b8e6847'::uuid, '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid, 'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd0d29e06-96f8-5570-a73e-f30d50344074'::uuid,
  'd479fe61-645c-5c99-a892-bf981b8e6847'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid,
  'Hi Samir — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '394c7878-6301-529a-94d3-1c7344756bfe'::uuid,
  'd479fe61-645c-5c99-a892-bf981b8e6847'::uuid,
  '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid,
  'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid,
  'Thanks Grace! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6e95aeff-1e55-5a22-a157-3be7d1148b6e'::uuid, '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid, 'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('056bda07-63b7-5b95-b8c2-dfc92361897c'::uuid, '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid, '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fc56db4a-ff1c-5555-a9fa-ed6f6376979e'::uuid, '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid, '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3fb437be-5048-56fe-a707-936bad02dbd4'::uuid, '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid, '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('04b52596-fc95-5183-9b41-415181d2b2da'::uuid, 'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid, '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('32ba8a64-b908-5355-a31a-7f043dd9a881'::uuid, '33258244-df5a-5c2f-933d-31972bac2f03'::uuid, '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('371f4fcb-6940-569f-acf7-de9b06f40dc4'::uuid, '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid, '33258244-df5a-5c2f-933d-31972bac2f03'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('63fd6d8b-54a1-5482-b046-87cb717170a7'::uuid, '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid, '33258244-df5a-5c2f-933d-31972bac2f03'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '68579901-4a05-52e8-8a15-a6117b008d15'::uuid,
  '63fd6d8b-54a1-5482-b046-87cb717170a7'::uuid,
  '33258244-df5a-5c2f-933d-31972bac2f03'::uuid,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  'Hi Daniel — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '44bfb17c-412a-5c6e-af81-67f18d803992'::uuid,
  '63fd6d8b-54a1-5482-b046-87cb717170a7'::uuid,
  '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid,
  '33258244-df5a-5c2f-933d-31972bac2f03'::uuid,
  'Thanks Isla! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c3c9f26e-7b36-5619-a561-737181c48bea'::uuid, '33258244-df5a-5c2f-933d-31972bac2f03'::uuid, '22f028f3-fbcf-5382-8812-8aab906ff016'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fa8e5cf7-b61b-515e-a1c8-06f1a73c6686'::uuid, '22f028f3-fbcf-5382-8812-8aab906ff016'::uuid, '33258244-df5a-5c2f-933d-31972bac2f03'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('06c8a0fe-2b6f-5ac5-8b9a-de4ea8d64f5a'::uuid, '22f028f3-fbcf-5382-8812-8aab906ff016'::uuid, '33258244-df5a-5c2f-933d-31972bac2f03'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('98b24a53-9045-5fc0-9c71-447c44d24506'::uuid, 'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid, '33258244-df5a-5c2f-933d-31972bac2f03'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0214a37c-bbc1-5737-af82-57f032752897'::uuid, 'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid, '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('09ea35e5-aa7b-584d-8e3a-879a5e794e20'::uuid, '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid, 'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8b39906f-f25d-575c-a4cb-1dc37f78bf8a'::uuid, '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid, 'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5b41f402-2e98-5b20-95ad-d24f548e53fc'::uuid,
  '8b39906f-f25d-575c-a4cb-1dc37f78bf8a'::uuid,
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  'Hi Nina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd758af0c-6fa8-5609-9938-71c371e8ea16'::uuid,
  '8b39906f-f25d-575c-a4cb-1dc37f78bf8a'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid,
  'Thanks Theo! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4b54a7cc-b23c-5463-89bf-afc80d93aa66'::uuid, '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid, 'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('290280bf-032f-5a0e-9598-0b0609006f9d'::uuid, '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid, '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6e4cc360-a614-5f77-b6bf-1e305592df1e'::uuid, '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid, '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a57083a6-cc69-5db8-a89d-a533e966080c'::uuid, '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid, '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a747f72b-bca5-5ce1-923c-9357713acd23'::uuid, 'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid, '66f8ed4c-881a-5f05-b0d7-e37578b092a8'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4d3dbfa3-9b3f-54d9-9452-554702cbe74a'::uuid, '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid, 'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('baf03452-dfb3-533a-b1a1-9054514633a5'::uuid, 'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid, '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a39ddad6-85fd-5cab-8b16-fce9e5235e2e'::uuid, '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid, 'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '432cc5a5-a9fc-5db6-80e7-ce2136918459'::uuid,
  'a39ddad6-85fd-5cab-8b16-fce9e5235e2e'::uuid,
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid,
  'Hi Sofia — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3353f089-edc8-5c1e-95f1-ec35ed6c21a0'::uuid,
  'a39ddad6-85fd-5cab-8b16-fce9e5235e2e'::uuid,
  'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid,
  '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid,
  'Thanks Lucas! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bcccc39e-067c-5d3a-ac9d-7d3f37586beb'::uuid, '0c89279c-761b-5955-a37f-d11d903a5859'::uuid, '6490af71-00ff-5064-aa50-0148033fd2b3'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fbc46e63-e062-5ef9-a89f-5babe4b5d98c'::uuid, '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid, 'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0e0258f5-cdef-5969-be89-23c96296f379'::uuid, 'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid, '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fd7cf64a-cf88-54a5-922b-8bf0d286c85b'::uuid, '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid, 'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('84ac648f-412b-5c12-aa44-1efae071ded3'::uuid, '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid, '4d7f8de8-8986-5e67-be38-0a78f0103500'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f1450ea4-c0c8-52c4-8640-1987f4110948'::uuid, '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid, '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('120fab15-11b4-55f2-adc8-602e4d06bf69'::uuid, '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid, '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('41df66cb-8597-5b56-af26-5cec5d265b4f'::uuid, '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid, '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '675fc5cb-7fba-5267-8a4e-8db37cfe1fc1'::uuid,
  '41df66cb-8597-5b56-af26-5cec5d265b4f'::uuid,
  '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid,
  '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid,
  'Hi Zara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd9f86936-ab82-507c-9a70-f45ddc2d97e7'::uuid,
  '41df66cb-8597-5b56-af26-5cec5d265b4f'::uuid,
  '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid,
  '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid,
  'Thanks David! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e91e4d45-357c-542b-a3ef-a20aa0dd0a78'::uuid, '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid, 'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;
