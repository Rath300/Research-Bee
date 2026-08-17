INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('063f3012-f02c-5144-aa4a-9a6667370d9b'::uuid, 'e77bd75c-1999-5e56-92a9-44fe5a7f4f21'::uuid, 'edd0860b-f11b-58ab-8ecb-22f4be92630e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3e9e9e6b-3cfe-57f9-abcf-091426d8ea8a'::uuid, 'edd0860b-f11b-58ab-8ecb-22f4be92630e'::uuid, 'e77bd75c-1999-5e56-92a9-44fe5a7f4f21'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a34961ca-7751-50b1-95ff-cff6949cee97'::uuid, 'e77bd75c-1999-5e56-92a9-44fe5a7f4f21'::uuid, 'edd0860b-f11b-58ab-8ecb-22f4be92630e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3724a9ae-182b-5574-a29c-2bbfe8dd0b74'::uuid, 'ff9dc679-2821-5549-bfdb-f04d06a240a7'::uuid, 'd6322ca4-5eb1-57e4-998e-3358209a363e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('06dbb60f-446c-50d5-8bdb-90b642ff26a9'::uuid, 'd6322ca4-5eb1-57e4-998e-3358209a363e'::uuid, 'ff9dc679-2821-5549-bfdb-f04d06a240a7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4499f88c-8ca3-5d12-b074-4bb08ab8b09a'::uuid, 'd6322ca4-5eb1-57e4-998e-3358209a363e'::uuid, 'ff9dc679-2821-5549-bfdb-f04d06a240a7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '216e5c63-6407-5bb5-973d-6f61208ffa87'::uuid,
  '4499f88c-8ca3-5d12-b074-4bb08ab8b09a'::uuid,
  'ff9dc679-2821-5549-bfdb-f04d06a240a7'::uuid,
  'd6322ca4-5eb1-57e4-998e-3358209a363e'::uuid,
  'Hi Caleb — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '63c340b8-287c-5ae1-9ab6-c882a17de890'::uuid,
  '4499f88c-8ca3-5d12-b074-4bb08ab8b09a'::uuid,
  'd6322ca4-5eb1-57e4-998e-3358209a363e'::uuid,
  'ff9dc679-2821-5549-bfdb-f04d06a240a7'::uuid,
  'Thanks Hannah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('06844a17-aba0-57ca-8144-ba1a0a0f1d04'::uuid, 'ff9dc679-2821-5549-bfdb-f04d06a240a7'::uuid, 'cf9c3d0b-7a52-5d3a-82ad-f7cc9d6acdfc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9e205c95-55dc-59de-9536-98eea2ce86c5'::uuid, 'cf9c3d0b-7a52-5d3a-82ad-f7cc9d6acdfc'::uuid, 'ff9dc679-2821-5549-bfdb-f04d06a240a7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a76fc431-be86-5108-b89c-64a4781f7863'::uuid, 'cf9c3d0b-7a52-5d3a-82ad-f7cc9d6acdfc'::uuid, 'ff9dc679-2821-5549-bfdb-f04d06a240a7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('efbc425b-6106-55ca-886e-6e0f5e2c1f93'::uuid, 'e64abfce-a585-5002-987d-172bddea50c0'::uuid, 'ba1b768f-4f9b-5c27-8d62-0b88991fe853'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d31c56de-9922-517f-9fae-45c3a6af2038'::uuid, 'ba1b768f-4f9b-5c27-8d62-0b88991fe853'::uuid, 'e64abfce-a585-5002-987d-172bddea50c0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d5dbac9a-f573-5a8d-a5ef-b4132c48aff4'::uuid, 'ba1b768f-4f9b-5c27-8d62-0b88991fe853'::uuid, 'e64abfce-a585-5002-987d-172bddea50c0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd85dd060-7194-5b83-b1fa-8c848db0cd32'::uuid,
  'd5dbac9a-f573-5a8d-a5ef-b4132c48aff4'::uuid,
  'e64abfce-a585-5002-987d-172bddea50c0'::uuid,
  'ba1b768f-4f9b-5c27-8d62-0b88991fe853'::uuid,
  'Hi Sana — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '009ae04c-fa58-523b-8811-c115a141395c'::uuid,
  'd5dbac9a-f573-5a8d-a5ef-b4132c48aff4'::uuid,
  'ba1b768f-4f9b-5c27-8d62-0b88991fe853'::uuid,
  'e64abfce-a585-5002-987d-172bddea50c0'::uuid,
  'Thanks Julian! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8488fde4-f92f-5980-8d11-1440810199cb'::uuid, '99ceddcc-d9c2-5912-8674-a0ed919a9522'::uuid, '15325c50-350f-5b7b-935d-79f8d63d9a1a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('52409373-4175-5951-9d54-c472e857bb9a'::uuid, '15325c50-350f-5b7b-935d-79f8d63d9a1a'::uuid, '99ceddcc-d9c2-5912-8674-a0ed919a9522'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2605c529-5d61-56c6-8a5c-b0a06dbd946e'::uuid, '15325c50-350f-5b7b-935d-79f8d63d9a1a'::uuid, '99ceddcc-d9c2-5912-8674-a0ed919a9522'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c536c6bb-0328-524f-98ad-f8d1613839a4'::uuid, 'e5dbd18b-b280-5ed3-962b-c0cbc69ac91e'::uuid, 'f91ae4ff-d197-5eed-ace3-4b28eca0c7cf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('010d813e-5871-51cc-a95b-33033f6d5717'::uuid, 'f91ae4ff-d197-5eed-ace3-4b28eca0c7cf'::uuid, 'e5dbd18b-b280-5ed3-962b-c0cbc69ac91e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6677ae7c-3736-5f81-b4de-cad9696a9e2a'::uuid, 'e5dbd18b-b280-5ed3-962b-c0cbc69ac91e'::uuid, 'f91ae4ff-d197-5eed-ace3-4b28eca0c7cf'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5edbca70-6453-5f49-ab0f-ea6439f07210'::uuid,
  '6677ae7c-3736-5f81-b4de-cad9696a9e2a'::uuid,
  'e5dbd18b-b280-5ed3-962b-c0cbc69ac91e'::uuid,
  'f91ae4ff-d197-5eed-ace3-4b28eca0c7cf'::uuid,
  'Hi Hana — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9cb8dfb8-9613-5e1f-8477-927b2f2c2ff9'::uuid,
  '6677ae7c-3736-5f81-b4de-cad9696a9e2a'::uuid,
  'f91ae4ff-d197-5eed-ace3-4b28eca0c7cf'::uuid,
  'e5dbd18b-b280-5ed3-962b-c0cbc69ac91e'::uuid,
  'Thanks Isaac! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('737ffb31-6822-59b8-b32f-93fd80827182'::uuid, '857a3bf5-dbaf-5df7-98b0-5661480e2727'::uuid, '0e2dce4b-fb79-5d9a-a1c1-45ef1aeb568e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ef0988fd-4a22-5a6b-b956-47bb53088a31'::uuid, '0e2dce4b-fb79-5d9a-a1c1-45ef1aeb568e'::uuid, '857a3bf5-dbaf-5df7-98b0-5661480e2727'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('40eb1c6c-3d6b-5b23-a3b5-3bfc2a37a085'::uuid, '0e2dce4b-fb79-5d9a-a1c1-45ef1aeb568e'::uuid, '857a3bf5-dbaf-5df7-98b0-5661480e2727'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('778de110-c197-5005-8442-a900df39f06d'::uuid, '120c1003-24e3-5b06-9ab1-63719f902d63'::uuid, '9c47f15c-ad03-576b-8893-806c67f766a8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d2804596-9e7b-5cbc-9502-1533a9cf2600'::uuid, '9c47f15c-ad03-576b-8893-806c67f766a8'::uuid, '120c1003-24e3-5b06-9ab1-63719f902d63'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c834b603-6b48-579a-9793-175d5c63eb24'::uuid, '120c1003-24e3-5b06-9ab1-63719f902d63'::uuid, '9c47f15c-ad03-576b-8893-806c67f766a8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c20929c0-5dc5-54bc-844c-47c5d1a7b319'::uuid,
  'c834b603-6b48-579a-9793-175d5c63eb24'::uuid,
  '120c1003-24e3-5b06-9ab1-63719f902d63'::uuid,
  '9c47f15c-ad03-576b-8893-806c67f766a8'::uuid,
  'Hi Elena — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a5bc188a-b49c-54b0-9460-ae045500def1'::uuid,
  'c834b603-6b48-579a-9793-175d5c63eb24'::uuid,
  '9c47f15c-ad03-576b-8893-806c67f766a8'::uuid,
  '120c1003-24e3-5b06-9ab1-63719f902d63'::uuid,
  'Thanks Felix! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8eef01d0-15e8-53e0-b76e-218a3ee291aa'::uuid, '120c1003-24e3-5b06-9ab1-63719f902d63'::uuid, '8fe0f3e1-b131-5d34-8746-44ea97dd000a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a4c64bd6-718a-5f19-bbc3-a4d2825cb31c'::uuid, '8fe0f3e1-b131-5d34-8746-44ea97dd000a'::uuid, '120c1003-24e3-5b06-9ab1-63719f902d63'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7287ba61-e9a6-5d8b-9f5f-09f7fb9d3d7f'::uuid, '120c1003-24e3-5b06-9ab1-63719f902d63'::uuid, '8fe0f3e1-b131-5d34-8746-44ea97dd000a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ec11720e-a410-56b5-a8e8-f3e1c55c3aea'::uuid, 'a0817194-368d-5771-976a-7836d36b620b'::uuid, '94792f80-7643-5ea5-8a93-3248a225121b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0ab60b89-3808-5bdc-a630-3e0452e37558'::uuid, '94792f80-7643-5ea5-8a93-3248a225121b'::uuid, 'a0817194-368d-5771-976a-7836d36b620b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0b8f1d8b-b897-5c21-afe9-9646fa2f6ebc'::uuid, '94792f80-7643-5ea5-8a93-3248a225121b'::uuid, 'a0817194-368d-5771-976a-7836d36b620b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f73dfd43-78b5-5b87-86f6-7f551fdf9834'::uuid,
  '0b8f1d8b-b897-5c21-afe9-9646fa2f6ebc'::uuid,
  'a0817194-368d-5771-976a-7836d36b620b'::uuid,
  '94792f80-7643-5ea5-8a93-3248a225121b'::uuid,
  'Hi Rohan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '89d2b95f-a562-5663-b198-f0f24f5dd0fc'::uuid,
  '0b8f1d8b-b897-5c21-afe9-9646fa2f6ebc'::uuid,
  '94792f80-7643-5ea5-8a93-3248a225121b'::uuid,
  'a0817194-368d-5771-976a-7836d36b620b'::uuid,
  'Thanks Sara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;