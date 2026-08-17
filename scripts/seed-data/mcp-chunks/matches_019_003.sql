INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd609aaf3-fc82-5531-922f-18daa85ff8af'::uuid,
  '546b0470-567a-54d5-b177-654f822e0c5f'::uuid,
  'f1459b82-7ce3-5cb7-96e8-a9b8d77e4dec'::uuid,
  '9d87b909-0e3e-5c0d-88a5-915116a56e2f'::uuid,
  'Thanks Sofia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('19e28ae7-8d32-5920-89a6-d669189155c5'::uuid, '9d87b909-0e3e-5c0d-88a5-915116a56e2f'::uuid, 'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('48e45e11-1235-56a4-808b-f26a02564109'::uuid, 'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid, '9d87b909-0e3e-5c0d-88a5-915116a56e2f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('52a3d180-dba9-5f61-bc04-382f8662b7f1'::uuid, '9d87b909-0e3e-5c0d-88a5-915116a56e2f'::uuid, 'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e8b40d5d-16e7-5635-a8ad-f6e74660f22f'::uuid, 'a901d64a-c165-5007-b311-05725dddb634'::uuid, 'e8e2d114-5ba0-538c-8373-79a21b6c9ce0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e18ab8a7-4be5-5073-8e67-8b298dc6b0c8'::uuid, 'e8e2d114-5ba0-538c-8373-79a21b6c9ce0'::uuid, 'a901d64a-c165-5007-b311-05725dddb634'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d347c47e-c0a2-54ec-8869-5fa6e7a2ed34'::uuid, 'a901d64a-c165-5007-b311-05725dddb634'::uuid, 'e8e2d114-5ba0-538c-8373-79a21b6c9ce0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e98316d5-30fb-587b-b07f-bbb9cb28bff0'::uuid,
  'd347c47e-c0a2-54ec-8869-5fa6e7a2ed34'::uuid,
  'a901d64a-c165-5007-b311-05725dddb634'::uuid,
  'e8e2d114-5ba0-538c-8373-79a21b6c9ce0'::uuid,
  'Hi Violet — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd42f7b45-b376-53a4-8edf-3ddc2647ca18'::uuid,
  'd347c47e-c0a2-54ec-8869-5fa6e7a2ed34'::uuid,
  'e8e2d114-5ba0-538c-8373-79a21b6c9ce0'::uuid,
  'a901d64a-c165-5007-b311-05725dddb634'::uuid,
  'Thanks Kenji! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9067e29c-019c-506f-8f28-00d3ed4bdbc3'::uuid, '185d66cf-e3cb-5baf-ad04-ce637ae86a78'::uuid, '28e8e255-d90a-544e-8200-58d29d4c6ee8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4cd3685d-e021-58ce-8e3c-9b78c44fb2b0'::uuid, '28e8e255-d90a-544e-8200-58d29d4c6ee8'::uuid, '185d66cf-e3cb-5baf-ad04-ce637ae86a78'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d5a9df16-1615-5b2e-9ac8-bf0e0e4806a0'::uuid, '185d66cf-e3cb-5baf-ad04-ce637ae86a78'::uuid, '28e8e255-d90a-544e-8200-58d29d4c6ee8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('22ab9985-8ca5-5549-a6df-66b69c236275'::uuid, '8aca80a1-1bf4-595b-a19b-2a176926b1d1'::uuid, '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('16b415cb-dbd6-527e-a432-b3424d39a9cf'::uuid, '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid, '8aca80a1-1bf4-595b-a19b-2a176926b1d1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('27e63939-1330-597d-9747-295bd9a3e488'::uuid, '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid, '8aca80a1-1bf4-595b-a19b-2a176926b1d1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b934f4e3-ab12-5e1e-9b25-8f7d9d77d143'::uuid,
  '27e63939-1330-597d-9747-295bd9a3e488'::uuid,
  '8aca80a1-1bf4-595b-a19b-2a176926b1d1'::uuid,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  'Hi Sofia — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8a4b85a0-7b48-59e3-b0f9-2c7e01a027ed'::uuid,
  '27e63939-1330-597d-9747-295bd9a3e488'::uuid,
  '267232f8-9f8c-5ebf-a7d9-b4d79c07c9e7'::uuid,
  '8aca80a1-1bf4-595b-a19b-2a176926b1d1'::uuid,
  'Thanks Kai! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d1118cb1-e28d-5bb1-ad34-15bcd8652fc5'::uuid, '9dd1dae8-3c5f-5d9b-b989-60af32b5e396'::uuid, '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('23ddb1f6-f51a-59b0-beff-c79b0b5ffbb9'::uuid, '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid, '9dd1dae8-3c5f-5d9b-b989-60af32b5e396'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0d53cd3f-e186-5e81-a68d-1404ebf2fd15'::uuid, '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid, '9dd1dae8-3c5f-5d9b-b989-60af32b5e396'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('64f1886e-5a3b-5ad9-8caf-61d10a1542ee'::uuid, 'd896625a-e04e-502e-af2b-a9790bdca6ee'::uuid, '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a32f1651-4a97-5c4c-90b9-c0f34ed1fb7c'::uuid, '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid, 'd896625a-e04e-502e-af2b-a9790bdca6ee'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cd1ec6f1-9eda-5f0e-94a4-379eca57895a'::uuid, '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid, 'd896625a-e04e-502e-af2b-a9790bdca6ee'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3762a48e-fd0b-5cf7-a5f1-d63457adee8a'::uuid,
  'cd1ec6f1-9eda-5f0e-94a4-379eca57895a'::uuid,
  'd896625a-e04e-502e-af2b-a9790bdca6ee'::uuid,
  '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid,
  'Hi Zara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1c89cf29-725c-5426-beb8-20a8c0928bb0'::uuid,
  'cd1ec6f1-9eda-5f0e-94a4-379eca57895a'::uuid,
  '74d768ae-72db-5222-929e-eb0479eb9c34'::uuid,
  'd896625a-e04e-502e-af2b-a9790bdca6ee'::uuid,
  'Thanks Benjamin! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4aec4c3a-0b20-5382-8b06-7d56ac39b6ba'::uuid, 'd896625a-e04e-502e-af2b-a9790bdca6ee'::uuid, '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('efc25e58-bd4d-5182-9664-5dec6486c169'::uuid, '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid, 'd896625a-e04e-502e-af2b-a9790bdca6ee'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('979248ee-a3c4-51f3-be62-d659cd31abee'::uuid, '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid, 'd896625a-e04e-502e-af2b-a9790bdca6ee'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('03a5840e-e657-5ab4-8b05-b0125a916ab3'::uuid, '42100420-3e43-57ff-96c6-5945409a49d1'::uuid, '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1197282c-21da-5ea4-be5a-27b42a645dff'::uuid, '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid, '42100420-3e43-57ff-96c6-5945409a49d1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('336b311e-0ec6-534c-a7eb-b0e696b2689a'::uuid, '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid, '42100420-3e43-57ff-96c6-5945409a49d1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '95ab19ec-fdd9-5e48-85b3-3b01e2497ed9'::uuid,
  '336b311e-0ec6-534c-a7eb-b0e696b2689a'::uuid,
  '42100420-3e43-57ff-96c6-5945409a49d1'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  'Hi Kai — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c9d23004-7072-5f04-9427-332f6a1869ab'::uuid,
  '336b311e-0ec6-534c-a7eb-b0e696b2689a'::uuid,
  '0d6691d2-c410-5f1e-840b-0d2aab1580d0'::uuid,
  '42100420-3e43-57ff-96c6-5945409a49d1'::uuid,
  'Thanks Ava! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6970b61d-2031-523b-917b-00d550ac0890'::uuid, '70fec3e3-decf-5444-a02f-93cd3a780b6a'::uuid, '38027771-452e-56a6-93ee-0327efca8125'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4620908c-f65a-57bc-abeb-45370f5aed0f'::uuid, '38027771-452e-56a6-93ee-0327efca8125'::uuid, '70fec3e3-decf-5444-a02f-93cd3a780b6a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('054cbd0f-af42-5066-9cef-3843cd7b9269'::uuid, '38027771-452e-56a6-93ee-0327efca8125'::uuid, '70fec3e3-decf-5444-a02f-93cd3a780b6a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('76f34e29-7355-5e9e-b837-bf9dbbf41fdd'::uuid, 'ebda259a-3ff4-5c2d-86f4-3288207f73de'::uuid, 'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1ea1735e-b68b-54dd-b1f1-e4e8bc46d9f3'::uuid, 'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid, 'ebda259a-3ff4-5c2d-86f4-3288207f73de'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3c2b7265-d5b1-5b32-8feb-94454d4dfe94'::uuid, 'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid, 'ebda259a-3ff4-5c2d-86f4-3288207f73de'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '21b4b314-5d19-50ea-b624-354edc2bc7a2'::uuid,
  '3c2b7265-d5b1-5b32-8feb-94454d4dfe94'::uuid,
  'ebda259a-3ff4-5c2d-86f4-3288207f73de'::uuid,
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  'Hi Benjamin — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;