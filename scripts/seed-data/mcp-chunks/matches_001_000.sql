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