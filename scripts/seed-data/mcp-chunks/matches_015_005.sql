INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('19b5dbb1-70b4-5f61-a3f9-6b9668d0bc68'::uuid, '2d1a6824-fe3c-5305-a454-69c87e85e8e6'::uuid, '7bb33105-f9a4-5ba2-b9bc-caaf0a756d2b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8598ed2d-8047-5337-8ebf-58c51e8aaba9'::uuid, '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid, 'd899293f-c851-5a79-94e1-f335e67d7e3d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ad967540-98a9-5786-88c4-8e7a107861fe'::uuid, 'd899293f-c851-5a79-94e1-f335e67d7e3d'::uuid, '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1e4ead6d-9673-5ef1-beaa-2dc44f1a380e'::uuid, '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid, 'd899293f-c851-5a79-94e1-f335e67d7e3d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f67b6fdf-ea59-5c83-95f2-889b898d98de'::uuid,
  '1e4ead6d-9673-5ef1-beaa-2dc44f1a380e'::uuid,
  '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid,
  'd899293f-c851-5a79-94e1-f335e67d7e3d'::uuid,
  'Hi Riya — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0ae9a270-5192-5156-89a8-4ce379cdc875'::uuid,
  '1e4ead6d-9673-5ef1-beaa-2dc44f1a380e'::uuid,
  'd899293f-c851-5a79-94e1-f335e67d7e3d'::uuid,
  '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid,
  'Thanks Samir! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f902ba8d-afcc-5cfd-8067-6efdf914af80'::uuid, '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid, '3e632bb3-c208-5e8f-92a2-9dde3d847af2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fa54f542-39c1-585f-9ba7-1890c32d9bb1'::uuid, '3e632bb3-c208-5e8f-92a2-9dde3d847af2'::uuid, '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8496787c-4fcf-5975-b20e-2754d978bbd7'::uuid, '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid, '3e632bb3-c208-5e8f-92a2-9dde3d847af2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e36fb765-8405-51ab-9244-8a5ea13bc81d'::uuid, 'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid, '0cc4fabb-a80c-55be-8e1f-cffdf500b737'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2d68f0e5-1de0-5f8b-aff5-7f8be2465f87'::uuid, '0cc4fabb-a80c-55be-8e1f-cffdf500b737'::uuid, 'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('74fc2f03-35ab-5ad8-b33d-08f460dffd5a'::uuid, '0cc4fabb-a80c-55be-8e1f-cffdf500b737'::uuid, 'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '758edd1d-c48e-5204-8caa-b20a9ba1d0f1'::uuid,
  '74fc2f03-35ab-5ad8-b33d-08f460dffd5a'::uuid,
  'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid,
  '0cc4fabb-a80c-55be-8e1f-cffdf500b737'::uuid,
  'Hi Nathan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '22869ef2-40f1-5feb-95e1-f8ee1e63f87f'::uuid,
  '74fc2f03-35ab-5ad8-b33d-08f460dffd5a'::uuid,
  '0cc4fabb-a80c-55be-8e1f-cffdf500b737'::uuid,
  'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid,
  'Thanks Camila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5ba3b84f-66bd-5571-8dde-db3c526c7621'::uuid, '89aa91c4-b9ae-510d-a439-dabca78c14c8'::uuid, '770fdfc7-b37c-557f-aa86-9108d6059d54'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4cac13bb-1136-5ff7-8d94-9fd3e2675235'::uuid, '770fdfc7-b37c-557f-aa86-9108d6059d54'::uuid, '89aa91c4-b9ae-510d-a439-dabca78c14c8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a8e9ea13-d444-543a-be86-b693c6850a77'::uuid, '770fdfc7-b37c-557f-aa86-9108d6059d54'::uuid, '89aa91c4-b9ae-510d-a439-dabca78c14c8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('24f3ac3e-3c7e-5067-97b1-c219b8896f3b'::uuid, '85a88a42-7b3b-5fdb-a22a-99a60988005b'::uuid, 'cd6a5266-d788-5ee5-87b0-0034c508c35a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('140d2de3-08f7-510d-aba2-5003897e4c6b'::uuid, 'cd6a5266-d788-5ee5-87b0-0034c508c35a'::uuid, '85a88a42-7b3b-5fdb-a22a-99a60988005b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b4c707c8-c511-59f4-8597-469589a6aa85'::uuid, '85a88a42-7b3b-5fdb-a22a-99a60988005b'::uuid, 'cd6a5266-d788-5ee5-87b0-0034c508c35a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ccddf53e-b0c6-59b6-a638-ae50ca6f3add'::uuid,
  'b4c707c8-c511-59f4-8597-469589a6aa85'::uuid,
  '85a88a42-7b3b-5fdb-a22a-99a60988005b'::uuid,
  'cd6a5266-d788-5ee5-87b0-0034c508c35a'::uuid,
  'Hi Omar — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e61443ec-a0b6-51e0-b49c-6c92f81a6a90'::uuid,
  'b4c707c8-c511-59f4-8597-469589a6aa85'::uuid,
  'cd6a5266-d788-5ee5-87b0-0034c508c35a'::uuid,
  '85a88a42-7b3b-5fdb-a22a-99a60988005b'::uuid,
  'Thanks Nina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1218517b-198c-57f5-821e-10740cd09df8'::uuid, '4f80ee7a-7c51-5b23-b65f-24dd7396e442'::uuid, '4b5ce663-76c6-53ea-9e74-cedb914dfad3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7093fba0-06bd-52c1-8e3e-0a479c8598a4'::uuid, '4b5ce663-76c6-53ea-9e74-cedb914dfad3'::uuid, '4f80ee7a-7c51-5b23-b65f-24dd7396e442'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('82b396eb-c38d-5e7d-8215-d10dccf01512'::uuid, '4b5ce663-76c6-53ea-9e74-cedb914dfad3'::uuid, '4f80ee7a-7c51-5b23-b65f-24dd7396e442'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a0ab6e3b-d4cf-50d2-a387-653c37c7f6b1'::uuid, 'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid, '2ba9af1f-cad6-5410-9096-568e6ffa5579'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('962bb3b3-0d76-5e29-ba5d-e714faca5908'::uuid, '2ba9af1f-cad6-5410-9096-568e6ffa5579'::uuid, 'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c4951ad9-6511-55e0-8bcb-839cd757585d'::uuid, '2ba9af1f-cad6-5410-9096-568e6ffa5579'::uuid, 'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f73526dd-f7cf-5cba-806b-2da3227d0b7d'::uuid,
  'c4951ad9-6511-55e0-8bcb-839cd757585d'::uuid,
  'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid,
  '2ba9af1f-cad6-5410-9096-568e6ffa5579'::uuid,
  'Hi Owen — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ef0d7c18-2e88-58bf-b047-a362307f6a83'::uuid,
  'c4951ad9-6511-55e0-8bcb-839cd757585d'::uuid,
  '2ba9af1f-cad6-5410-9096-568e6ffa5579'::uuid,
  'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid,
  'Thanks Sofia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ffed30da-0f4c-57e6-b15f-4af1a946989a'::uuid, 'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid, 'fd89cd4b-db01-5882-96e0-d179f823c010'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('54ce9191-f662-58ff-9892-a2eb4e112981'::uuid, 'fd89cd4b-db01-5882-96e0-d179f823c010'::uuid, 'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('966923bc-f0ac-5ae9-945b-556ad1239bed'::uuid, 'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid, 'fd89cd4b-db01-5882-96e0-d179f823c010'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('29604a5f-f01d-581c-b6d8-37dd233e50c0'::uuid, 'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid, 'ab5991aa-60c6-564f-94c4-70fdd9a67e7d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('62959d78-b477-568e-b02c-c69e9f072a08'::uuid, 'ab5991aa-60c6-564f-94c4-70fdd9a67e7d'::uuid, 'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('588cc5a7-9387-5a4e-964a-6a8af18aa7be'::uuid, 'ab5991aa-60c6-564f-94c4-70fdd9a67e7d'::uuid, 'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '430f0ead-aec2-5a48-a77c-5ccc10df1d7e'::uuid,
  '588cc5a7-9387-5a4e-964a-6a8af18aa7be'::uuid,
  'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid,
  'ab5991aa-60c6-564f-94c4-70fdd9a67e7d'::uuid,
  'Hi Violet — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '123ec15d-8121-571c-9057-41bc0434e7cd'::uuid,
  '588cc5a7-9387-5a4e-964a-6a8af18aa7be'::uuid,
  'ab5991aa-60c6-564f-94c4-70fdd9a67e7d'::uuid,
  'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid,
  'Thanks Kenji! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c17092fe-9d7e-5e3c-9c38-7587c55691ec'::uuid, 'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid, '251eed55-e7bd-5e13-a2ca-cea6ceee8615'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('36f748bd-2790-5d64-8da3-55001b93f1b3'::uuid, '251eed55-e7bd-5e13-a2ca-cea6ceee8615'::uuid, 'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;