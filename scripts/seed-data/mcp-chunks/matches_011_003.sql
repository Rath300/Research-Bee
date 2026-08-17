INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'be713be7-20d9-5540-944b-1697411768e2'::uuid,
  'e477b7fc-6d77-55a8-b247-07fecf61877c'::uuid,
  '2df7870b-f77b-5301-b54e-6af2f7ff0758'::uuid,
  'dc95368b-9c57-5ec2-b201-4299e6d34bfd'::uuid,
  'Hi Elena — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3ff8dc97-269c-5b7e-9f43-e03399e4e456'::uuid,
  'e477b7fc-6d77-55a8-b247-07fecf61877c'::uuid,
  'dc95368b-9c57-5ec2-b201-4299e6d34bfd'::uuid,
  '2df7870b-f77b-5301-b54e-6af2f7ff0758'::uuid,
  'Thanks Felix! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6768735d-834a-5a47-93ec-5e3ee8246ae3'::uuid, '2df7870b-f77b-5301-b54e-6af2f7ff0758'::uuid, '0d9585a1-cb90-50ae-b41c-a594e5492606'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3e733396-a31c-53aa-a8c2-678bd47b9034'::uuid, '0d9585a1-cb90-50ae-b41c-a594e5492606'::uuid, '2df7870b-f77b-5301-b54e-6af2f7ff0758'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5ae67380-b78a-50b5-946e-9b602b544ea6'::uuid, '0d9585a1-cb90-50ae-b41c-a594e5492606'::uuid, '2df7870b-f77b-5301-b54e-6af2f7ff0758'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b9bd2ef8-3378-5f37-966b-ebb86519cb25'::uuid, '0383e3ef-8b66-5f66-8353-206517213c00'::uuid, '2e5f47ee-c671-5460-9001-f481e653b97b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9536d8ab-61fc-5d37-8477-3e18a2623159'::uuid, '2e5f47ee-c671-5460-9001-f481e653b97b'::uuid, '0383e3ef-8b66-5f66-8353-206517213c00'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cedea074-35ae-5c78-aa33-d47401cc39f2'::uuid, '0383e3ef-8b66-5f66-8353-206517213c00'::uuid, '2e5f47ee-c671-5460-9001-f481e653b97b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0eab5feb-db21-5224-84e5-67d277ad2ecf'::uuid,
  'cedea074-35ae-5c78-aa33-d47401cc39f2'::uuid,
  '0383e3ef-8b66-5f66-8353-206517213c00'::uuid,
  '2e5f47ee-c671-5460-9001-f481e653b97b'::uuid,
  'Hi Rohan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '356f04ba-dacf-540c-be4a-5c0809fba168'::uuid,
  'cedea074-35ae-5c78-aa33-d47401cc39f2'::uuid,
  '2e5f47ee-c671-5460-9001-f481e653b97b'::uuid,
  '0383e3ef-8b66-5f66-8353-206517213c00'::uuid,
  'Thanks Sara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8e22e945-cda7-5b03-b4f2-6113cf07ee79'::uuid, 'c58b8537-3066-5e38-b2ee-04688319f6de'::uuid, '4c0b16d5-ad7b-5990-b2bd-acbaf07eb752'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e11f3ec3-3c94-50d1-aaf1-96640b2f10cd'::uuid, '4c0b16d5-ad7b-5990-b2bd-acbaf07eb752'::uuid, 'c58b8537-3066-5e38-b2ee-04688319f6de'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('481acae7-2ac5-5e22-b919-332cbef42829'::uuid, '4c0b16d5-ad7b-5990-b2bd-acbaf07eb752'::uuid, 'c58b8537-3066-5e38-b2ee-04688319f6de'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('442985db-1a02-5698-93c0-49b220093159'::uuid, '4913360a-0394-5a55-b1d6-85d797e7ae73'::uuid, '2c3791ab-9a96-5ce2-9bf5-ef0f8ad0cf43'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a4d533c2-7b40-5abf-ad2c-66b2b473e622'::uuid, '2c3791ab-9a96-5ce2-9bf5-ef0f8ad0cf43'::uuid, '4913360a-0394-5a55-b1d6-85d797e7ae73'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('26fc24c0-2e71-5d3c-9ac2-fe32829e3343'::uuid, '2c3791ab-9a96-5ce2-9bf5-ef0f8ad0cf43'::uuid, '4913360a-0394-5a55-b1d6-85d797e7ae73'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '31e02898-b575-5423-9d1e-07950c7f9a42'::uuid,
  '26fc24c0-2e71-5d3c-9ac2-fe32829e3343'::uuid,
  '4913360a-0394-5a55-b1d6-85d797e7ae73'::uuid,
  '2c3791ab-9a96-5ce2-9bf5-ef0f8ad0cf43'::uuid,
  'Hi Samir — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '053e5565-47ce-5416-9556-181e6cbea349'::uuid,
  '26fc24c0-2e71-5d3c-9ac2-fe32829e3343'::uuid,
  '2c3791ab-9a96-5ce2-9bf5-ef0f8ad0cf43'::uuid,
  '4913360a-0394-5a55-b1d6-85d797e7ae73'::uuid,
  'Thanks Grace! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e41b0250-9d0e-5788-aaf9-6ca6a88d44de'::uuid, '4195c436-ecd0-5c32-b18c-8fac2b240d47'::uuid, 'c0c50da3-b865-5647-ac80-8a3983351bb9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dc79e513-9aa0-5ca5-97b2-9de03e8860b6'::uuid, 'c0c50da3-b865-5647-ac80-8a3983351bb9'::uuid, '4195c436-ecd0-5c32-b18c-8fac2b240d47'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8ab2d6b3-58bd-50a5-900c-4e25fada4dbf'::uuid, '4195c436-ecd0-5c32-b18c-8fac2b240d47'::uuid, 'c0c50da3-b865-5647-ac80-8a3983351bb9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1ab06664-41b6-5336-a5bb-52ac4d424135'::uuid, '1f852cc0-d2df-5ce1-a6f2-85adf73b3859'::uuid, '84128e04-1e76-5553-aee4-1a7c93db7343'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5019987f-b086-5de1-b175-871315863739'::uuid, '84128e04-1e76-5553-aee4-1a7c93db7343'::uuid, '1f852cc0-d2df-5ce1-a6f2-85adf73b3859'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bdb95883-1845-5aa2-b1f3-bafd638fda6d'::uuid, '1f852cc0-d2df-5ce1-a6f2-85adf73b3859'::uuid, '84128e04-1e76-5553-aee4-1a7c93db7343'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '96089ec9-255a-5a6a-bb2a-e400de332822'::uuid,
  'bdb95883-1845-5aa2-b1f3-bafd638fda6d'::uuid,
  '1f852cc0-d2df-5ce1-a6f2-85adf73b3859'::uuid,
  '84128e04-1e76-5553-aee4-1a7c93db7343'::uuid,
  'Hi Daniel — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2d5e0650-663d-5fcb-a653-a91cb00583f9'::uuid,
  'bdb95883-1845-5aa2-b1f3-bafd638fda6d'::uuid,
  '84128e04-1e76-5553-aee4-1a7c93db7343'::uuid,
  '1f852cc0-d2df-5ce1-a6f2-85adf73b3859'::uuid,
  'Thanks Isla! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('207f3c42-db72-5a83-ac28-f41406db29b8'::uuid, '1f852cc0-d2df-5ce1-a6f2-85adf73b3859'::uuid, '1214a067-a9ee-501b-98f3-80c931d735d4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('939f3283-37f0-54cc-b115-b1ad22fcba1e'::uuid, '1214a067-a9ee-501b-98f3-80c931d735d4'::uuid, '1f852cc0-d2df-5ce1-a6f2-85adf73b3859'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c5186e72-b16f-5658-bf31-93e39c799946'::uuid, '1214a067-a9ee-501b-98f3-80c931d735d4'::uuid, '1f852cc0-d2df-5ce1-a6f2-85adf73b3859'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('81ee6f8e-3e8b-5a9e-a23c-3239ce6e0481'::uuid, '0e62eacf-462f-5d52-9989-07f38d304832'::uuid, '8ec66756-9725-586e-afb9-60f6e63a543c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('54f5e3aa-1c0e-5946-b48c-79552a3bdbd1'::uuid, '8ec66756-9725-586e-afb9-60f6e63a543c'::uuid, '0e62eacf-462f-5d52-9989-07f38d304832'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8ebba3d1-f31c-583a-8b24-ddde74e7c1fa'::uuid, '0e62eacf-462f-5d52-9989-07f38d304832'::uuid, '8ec66756-9725-586e-afb9-60f6e63a543c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '23e5d2bd-32ca-56e3-a2e6-9ab46b4322e9'::uuid,
  '8ebba3d1-f31c-583a-8b24-ddde74e7c1fa'::uuid,
  '0e62eacf-462f-5d52-9989-07f38d304832'::uuid,
  '8ec66756-9725-586e-afb9-60f6e63a543c'::uuid,
  'Hi Nina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c6931311-c1e4-5d6b-9959-b93b11f99e54'::uuid,
  '8ebba3d1-f31c-583a-8b24-ddde74e7c1fa'::uuid,
  '8ec66756-9725-586e-afb9-60f6e63a543c'::uuid,
  '0e62eacf-462f-5d52-9989-07f38d304832'::uuid,
  'Thanks Theo! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6e00e131-df8e-5813-bb02-efaf1efdc0c3'::uuid, 'd063655e-9e04-5406-8e3a-ac9c25650b1c'::uuid, 'b0180410-8061-5081-8509-d15823d3c0a5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('396ba56d-821b-5126-bea7-af9c954082a7'::uuid, 'b0180410-8061-5081-8509-d15823d3c0a5'::uuid, 'd063655e-9e04-5406-8e3a-ac9c25650b1c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('af2f35c9-63b2-518d-8a5e-b836b031a42d'::uuid, 'b0180410-8061-5081-8509-d15823d3c0a5'::uuid, 'd063655e-9e04-5406-8e3a-ac9c25650b1c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a4421007-7b08-5a4f-a011-c85fc1bf8f96'::uuid, '3006f4f6-9b46-5e6a-b99d-d1a94cf76eb8'::uuid, '1d26ca6e-f6ce-5353-9f60-24d8e7e5fe94'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e1bce4be-d1a5-5a45-89ea-87fd4661e7e2'::uuid, '1d26ca6e-f6ce-5353-9f60-24d8e7e5fe94'::uuid, '3006f4f6-9b46-5e6a-b99d-d1a94cf76eb8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b4927b30-b3fb-5a22-80d9-bde3cf3b3448'::uuid, '1d26ca6e-f6ce-5353-9f60-24d8e7e5fe94'::uuid, '3006f4f6-9b46-5e6a-b99d-d1a94cf76eb8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;