INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c15b6ece-9830-5218-8afc-cebbfb319c21'::uuid,
  '8cb0e8ea-225a-54ca-9b7a-f1eb9d90e852'::uuid,
  'e39f2983-9db1-5407-971d-ee03cd24169f'::uuid,
  '0ffcb638-a6ff-52c5-9329-92243f0d18c9'::uuid,
  'Hi Caleb — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2c9626fc-4ead-5465-9fbb-8fcb69e5393a'::uuid,
  '8cb0e8ea-225a-54ca-9b7a-f1eb9d90e852'::uuid,
  '0ffcb638-a6ff-52c5-9329-92243f0d18c9'::uuid,
  'e39f2983-9db1-5407-971d-ee03cd24169f'::uuid,
  'Thanks Hannah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e162a326-3193-5303-ad9b-6aa20270eab3'::uuid, 'e39f2983-9db1-5407-971d-ee03cd24169f'::uuid, '5ce1784c-be4e-50c9-8037-1b18c9ed1873'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3ff274b6-e90e-55c7-84f8-28d7ccbbfd59'::uuid, '5ce1784c-be4e-50c9-8037-1b18c9ed1873'::uuid, 'e39f2983-9db1-5407-971d-ee03cd24169f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f10735d6-24d3-59f4-be50-5314e9763918'::uuid, '5ce1784c-be4e-50c9-8037-1b18c9ed1873'::uuid, 'e39f2983-9db1-5407-971d-ee03cd24169f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0283f449-a064-5d9d-93f2-fda073e49b4a'::uuid, '8720fe7c-27d8-571e-bceb-266fcecffeaa'::uuid, 'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f4bc95af-217e-5033-ad3a-9276af246310'::uuid, 'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid, '8720fe7c-27d8-571e-bceb-266fcecffeaa'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('28085b1e-b3e0-5f03-92f5-f15232ed210c'::uuid, '8720fe7c-27d8-571e-bceb-266fcecffeaa'::uuid, 'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '165728df-21c6-5a0e-8659-719bc074c4e5'::uuid,
  '28085b1e-b3e0-5f03-92f5-f15232ed210c'::uuid,
  '8720fe7c-27d8-571e-bceb-266fcecffeaa'::uuid,
  'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid,
  'Hi Sana — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2d0c6988-0592-577c-9273-491b84539235'::uuid,
  '28085b1e-b3e0-5f03-92f5-f15232ed210c'::uuid,
  'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid,
  '8720fe7c-27d8-571e-bceb-266fcecffeaa'::uuid,
  'Thanks Julian! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e17566b5-f4ed-523a-a184-6b9cd27bbcfa'::uuid, 'eb5ccd8d-a4fb-52c8-a377-d672cd074de2'::uuid, 'a1e53141-e2a4-5537-b833-38f04e7a7b38'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f4bb3819-21a7-50dd-b8b3-959936a6be3b'::uuid, 'a1e53141-e2a4-5537-b833-38f04e7a7b38'::uuid, 'eb5ccd8d-a4fb-52c8-a377-d672cd074de2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ed9ed133-7caf-5747-bb59-679d44dee9f4'::uuid, 'a1e53141-e2a4-5537-b833-38f04e7a7b38'::uuid, 'eb5ccd8d-a4fb-52c8-a377-d672cd074de2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f8e79ade-76d4-5b26-bb8a-ee08ab6b9de0'::uuid, '3a01616f-3f3d-5774-a21e-3c0e5c68b450'::uuid, '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e776e593-5feb-5cb3-ace8-9c7707f3fd9e'::uuid, '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid, '3a01616f-3f3d-5774-a21e-3c0e5c68b450'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('251cb2fb-1185-50ef-8b7c-f2a2e8713c35'::uuid, '3a01616f-3f3d-5774-a21e-3c0e5c68b450'::uuid, '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6742180a-d1d7-531e-8660-54b2f266e99c'::uuid,
  '251cb2fb-1185-50ef-8b7c-f2a2e8713c35'::uuid,
  '3a01616f-3f3d-5774-a21e-3c0e5c68b450'::uuid,
  '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid,
  'Hi Hana — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0d80a8ab-f630-55a9-85fc-a28a00939a1d'::uuid,
  '251cb2fb-1185-50ef-8b7c-f2a2e8713c35'::uuid,
  '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid,
  '3a01616f-3f3d-5774-a21e-3c0e5c68b450'::uuid,
  'Thanks Isaac! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c0e955c0-8b1b-5098-90ab-e76b61f2059a'::uuid, '57cd3ca8-b788-5118-80ff-de66e23f013c'::uuid, 'b760f4f9-b6e9-5219-81b0-6780800a5fff'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0509b3c1-8680-525d-b521-419fcdd94301'::uuid, 'b760f4f9-b6e9-5219-81b0-6780800a5fff'::uuid, '57cd3ca8-b788-5118-80ff-de66e23f013c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('43631d9f-ad45-5c1f-b689-144f59b18413'::uuid, '57cd3ca8-b788-5118-80ff-de66e23f013c'::uuid, 'b760f4f9-b6e9-5219-81b0-6780800a5fff'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('10328ee8-27f8-5a48-b92e-329909bd9c9f'::uuid, 'd596304e-1fe2-5752-ade9-1ab0dd9683a6'::uuid, '897b4b33-e19f-51ad-89c2-0e185b508078'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('742057ea-c11b-5ffb-8a0a-06f541fe4618'::uuid, '897b4b33-e19f-51ad-89c2-0e185b508078'::uuid, 'd596304e-1fe2-5752-ade9-1ab0dd9683a6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b0366b76-ec09-5538-b40c-da495e2ef1ab'::uuid, '897b4b33-e19f-51ad-89c2-0e185b508078'::uuid, 'd596304e-1fe2-5752-ade9-1ab0dd9683a6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'bacaacdb-92db-59a9-8c5a-f2ca6fd2ae68'::uuid,
  'b0366b76-ec09-5538-b40c-da495e2ef1ab'::uuid,
  'd596304e-1fe2-5752-ade9-1ab0dd9683a6'::uuid,
  '897b4b33-e19f-51ad-89c2-0e185b508078'::uuid,
  'Hi Elena — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5ac7aa1d-fad4-5931-af01-21e20441dc69'::uuid,
  'b0366b76-ec09-5538-b40c-da495e2ef1ab'::uuid,
  '897b4b33-e19f-51ad-89c2-0e185b508078'::uuid,
  'd596304e-1fe2-5752-ade9-1ab0dd9683a6'::uuid,
  'Thanks Felix! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6115d262-56e1-5ea3-9c16-c319d4b5cc2a'::uuid, 'd596304e-1fe2-5752-ade9-1ab0dd9683a6'::uuid, 'd5f7807d-fe74-50a6-8c6d-8c9ed5d72b81'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b1072971-148c-5d87-a1c1-4e23edf94384'::uuid, 'd5f7807d-fe74-50a6-8c6d-8c9ed5d72b81'::uuid, 'd596304e-1fe2-5752-ade9-1ab0dd9683a6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e5643388-d044-55be-900f-d524de9eccd6'::uuid, 'd596304e-1fe2-5752-ade9-1ab0dd9683a6'::uuid, 'd5f7807d-fe74-50a6-8c6d-8c9ed5d72b81'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3bf08978-7243-5a80-a1bf-9374e38342cf'::uuid, '1e2a697d-74d0-5ccd-b526-81c2a8412445'::uuid, 'cd65f8ad-1c2b-5b00-beac-354598567dd1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('40c465e3-d9c2-547d-80b7-1bbbba650098'::uuid, 'cd65f8ad-1c2b-5b00-beac-354598567dd1'::uuid, '1e2a697d-74d0-5ccd-b526-81c2a8412445'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7467a5f7-262a-569b-aff9-12960e11a7ae'::uuid, '1e2a697d-74d0-5ccd-b526-81c2a8412445'::uuid, 'cd65f8ad-1c2b-5b00-beac-354598567dd1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8d328fd4-41c0-5527-98d2-27a2df5f56a2'::uuid,
  '7467a5f7-262a-569b-aff9-12960e11a7ae'::uuid,
  '1e2a697d-74d0-5ccd-b526-81c2a8412445'::uuid,
  'cd65f8ad-1c2b-5b00-beac-354598567dd1'::uuid,
  'Hi Rohan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b913a06d-4fde-5765-b038-bc373013be9d'::uuid,
  '7467a5f7-262a-569b-aff9-12960e11a7ae'::uuid,
  'cd65f8ad-1c2b-5b00-beac-354598567dd1'::uuid,
  '1e2a697d-74d0-5ccd-b526-81c2a8412445'::uuid,
  'Thanks Sara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('70dec805-fc0b-58cc-b121-f55d28a9cba2'::uuid, 'a5ca5651-a654-51a0-a327-441ba828d83b'::uuid, '47cf10ee-a8c2-514f-b576-5ffd0d0d0b0c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4e9b1a94-3139-548b-b228-766d8782c1ee'::uuid, '47cf10ee-a8c2-514f-b576-5ffd0d0d0b0c'::uuid, 'a5ca5651-a654-51a0-a327-441ba828d83b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('52ad0b67-2c98-5770-bae9-1a5da237c4f7'::uuid, '47cf10ee-a8c2-514f-b576-5ffd0d0d0b0c'::uuid, 'a5ca5651-a654-51a0-a327-441ba828d83b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cc946f45-d944-54ee-a258-7faf4c59d451'::uuid, 'ea2fb814-4778-5d39-a00f-eb1d0e27fb92'::uuid, '99f99166-d723-53d1-97e8-bc6671828d19'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f28fc192-2f64-57c4-94ac-14c1c9ac92c3'::uuid, '99f99166-d723-53d1-97e8-bc6671828d19'::uuid, 'ea2fb814-4778-5d39-a00f-eb1d0e27fb92'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3b7a6b88-3e0d-54e3-b24b-c07e5115b140'::uuid, '99f99166-d723-53d1-97e8-bc6671828d19'::uuid, 'ea2fb814-4778-5d39-a00f-eb1d0e27fb92'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;