INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3c933245-cb53-56a3-8adc-7f5252a70c6d'::uuid, '897b4b33-e19f-51ad-89c2-0e185b508078'::uuid, '011fcd13-5185-5206-809d-115892a24501'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('642c7753-a478-552a-b64f-99d957ea5b64'::uuid, '011fcd13-5185-5206-809d-115892a24501'::uuid, '897b4b33-e19f-51ad-89c2-0e185b508078'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a67575ad-753a-5642-9cb8-89eece138f9f'::uuid, '011fcd13-5185-5206-809d-115892a24501'::uuid, '897b4b33-e19f-51ad-89c2-0e185b508078'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f262cb94-d969-58fe-b65b-ff73892d6341'::uuid, 'cd65f8ad-1c2b-5b00-beac-354598567dd1'::uuid, 'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f29a7ddc-f3af-5743-9e59-97541509377f'::uuid, 'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid, 'cd65f8ad-1c2b-5b00-beac-354598567dd1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('36fed797-6fd7-5837-af67-3da5536cdbf1'::uuid, 'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid, 'cd65f8ad-1c2b-5b00-beac-354598567dd1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'dd551a30-36fc-50ad-82ed-d3b73a986557'::uuid,
  '36fed797-6fd7-5837-af67-3da5536cdbf1'::uuid,
  'cd65f8ad-1c2b-5b00-beac-354598567dd1'::uuid,
  'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid,
  'Hi Mei — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '63d586b7-7985-5d7e-a5fd-52bfb10117fe'::uuid,
  '36fed797-6fd7-5837-af67-3da5536cdbf1'::uuid,
  'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid,
  'cd65f8ad-1c2b-5b00-beac-354598567dd1'::uuid,
  'Thanks Rohan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('12b54ce8-ab44-55f8-8e81-b300b450d32b'::uuid, '47cf10ee-a8c2-514f-b576-5ffd0d0d0b0c'::uuid, '170229dc-697e-5b38-8001-6e6980b262ff'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('565a6f9a-1a32-5a26-b839-dd0916ffe992'::uuid, '170229dc-697e-5b38-8001-6e6980b262ff'::uuid, '47cf10ee-a8c2-514f-b576-5ffd0d0d0b0c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9e84b550-bbcb-5dc2-95cc-ca86bed12fb8'::uuid, '170229dc-697e-5b38-8001-6e6980b262ff'::uuid, '47cf10ee-a8c2-514f-b576-5ffd0d0d0b0c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('637ed42a-4ee3-5b63-964d-6e8693a88ffc'::uuid, '99f99166-d723-53d1-97e8-bc6671828d19'::uuid, '3ecd233d-b88a-58b2-8d79-3eeb7b0ba031'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4867551a-8505-56e7-89bf-caefcf87ad77'::uuid, '3ecd233d-b88a-58b2-8d79-3eeb7b0ba031'::uuid, '99f99166-d723-53d1-97e8-bc6671828d19'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ecccc729-1224-5348-bf3d-0f7bebb03b5c'::uuid, '3ecd233d-b88a-58b2-8d79-3eeb7b0ba031'::uuid, '99f99166-d723-53d1-97e8-bc6671828d19'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7dbd10d7-1bcf-5de0-88a2-a1efdbe45c38'::uuid,
  'ecccc729-1224-5348-bf3d-0f7bebb03b5c'::uuid,
  '99f99166-d723-53d1-97e8-bc6671828d19'::uuid,
  '3ecd233d-b88a-58b2-8d79-3eeb7b0ba031'::uuid,
  'Hi Riya — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9d4f3be9-45d3-56eb-8643-b19253c475a8'::uuid,
  'ecccc729-1224-5348-bf3d-0f7bebb03b5c'::uuid,
  '3ecd233d-b88a-58b2-8d79-3eeb7b0ba031'::uuid,
  '99f99166-d723-53d1-97e8-bc6671828d19'::uuid,
  'Thanks Samir! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8543da9f-e2d9-5eed-9400-833095dd1441'::uuid, '99f99166-d723-53d1-97e8-bc6671828d19'::uuid, '50cb7af5-ed51-5446-8054-edb6eae4e7e6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5eefd1ed-c53d-5586-8cb2-4c1249bf0e8b'::uuid, '50cb7af5-ed51-5446-8054-edb6eae4e7e6'::uuid, '99f99166-d723-53d1-97e8-bc6671828d19'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2ec67a9f-8b16-5e04-b9b5-e7be02ee57bd'::uuid, '50cb7af5-ed51-5446-8054-edb6eae4e7e6'::uuid, '99f99166-d723-53d1-97e8-bc6671828d19'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('18b3e17e-debb-5559-a43c-cde3adf71bcd'::uuid, '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb'::uuid, '5a3de029-a188-532a-b55d-61583f327471'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('af976013-1edf-5718-b52b-40ec4a91b93d'::uuid, '5a3de029-a188-532a-b55d-61583f327471'::uuid, '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0091d997-b6a0-58aa-9f03-f018fa98bb71'::uuid, '5a3de029-a188-532a-b55d-61583f327471'::uuid, '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '997e5e18-007d-52bb-bd67-89488e08896c'::uuid,
  '0091d997-b6a0-58aa-9f03-f018fa98bb71'::uuid,
  '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb'::uuid,
  '5a3de029-a188-532a-b55d-61583f327471'::uuid,
  'Hi Nathan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '564d9431-fd89-5c02-893c-6d725165215f'::uuid,
  '0091d997-b6a0-58aa-9f03-f018fa98bb71'::uuid,
  '5a3de029-a188-532a-b55d-61583f327471'::uuid,
  '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb'::uuid,
  'Thanks Camila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0685edde-bbc3-5553-ba90-2dd4af3ab5f5'::uuid, '4ded9d2c-411a-5884-a2f1-9b3d21d137ed'::uuid, '628a4781-3a09-5aca-bc6a-7ae2fc619371'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5012e38c-1ba5-5806-9e45-a0353cdc8132'::uuid, '628a4781-3a09-5aca-bc6a-7ae2fc619371'::uuid, '4ded9d2c-411a-5884-a2f1-9b3d21d137ed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4818572a-1a59-57b7-a239-34b1f2562ec0'::uuid, '4ded9d2c-411a-5884-a2f1-9b3d21d137ed'::uuid, '628a4781-3a09-5aca-bc6a-7ae2fc619371'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('170b7d6e-4849-57b8-a422-4aefb968f95e'::uuid, '1fbcf3d3-ee1a-5331-823b-d5a4758c0204'::uuid, '3bb92ec7-0d33-5484-9733-efd6ec6d093a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('76572776-6e2b-5c09-96c5-bca14685258f'::uuid, '3bb92ec7-0d33-5484-9733-efd6ec6d093a'::uuid, '1fbcf3d3-ee1a-5331-823b-d5a4758c0204'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e54bfc81-bd9f-5111-b5ba-0398ad06699c'::uuid, '1fbcf3d3-ee1a-5331-823b-d5a4758c0204'::uuid, '3bb92ec7-0d33-5484-9733-efd6ec6d093a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd3840da0-6679-5fbf-8bc5-98d52a937a3b'::uuid,
  'e54bfc81-bd9f-5111-b5ba-0398ad06699c'::uuid,
  '1fbcf3d3-ee1a-5331-823b-d5a4758c0204'::uuid,
  '3bb92ec7-0d33-5484-9733-efd6ec6d093a'::uuid,
  'Hi Omar — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '20571ff3-39fc-54b3-9ebb-acda649a766f'::uuid,
  'e54bfc81-bd9f-5111-b5ba-0398ad06699c'::uuid,
  '3bb92ec7-0d33-5484-9733-efd6ec6d093a'::uuid,
  '1fbcf3d3-ee1a-5331-823b-d5a4758c0204'::uuid,
  'Thanks Nina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5df10b52-2865-528c-95ef-3e16d7d6fb00'::uuid, 'f59d5527-b411-526d-b2aa-0069357fa215'::uuid, '98402e99-c154-543e-8925-739b5e6ef7e6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1fba8176-1652-5d93-bff4-4eaf72d578b5'::uuid, '98402e99-c154-543e-8925-739b5e6ef7e6'::uuid, 'f59d5527-b411-526d-b2aa-0069357fa215'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('feddca69-2017-56c8-9534-1e2121cade21'::uuid, '98402e99-c154-543e-8925-739b5e6ef7e6'::uuid, 'f59d5527-b411-526d-b2aa-0069357fa215'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('afb2eb31-bbf8-58ea-85f5-aa6320e9bbc8'::uuid, 'c78b2092-0056-5d5f-a59a-0408b3bbf197'::uuid, '43b216a6-2290-5cf2-af92-35c3054dc2e2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dbeaf220-e249-5790-a130-ece6f5a55e51'::uuid, '43b216a6-2290-5cf2-af92-35c3054dc2e2'::uuid, 'c78b2092-0056-5d5f-a59a-0408b3bbf197'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bb2cf088-6b75-5ae7-a65e-c83b246c06e3'::uuid, '43b216a6-2290-5cf2-af92-35c3054dc2e2'::uuid, 'c78b2092-0056-5d5f-a59a-0408b3bbf197'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '07ae72fc-7a61-57ff-9cf7-45e37782b7dc'::uuid,
  'bb2cf088-6b75-5ae7-a65e-c83b246c06e3'::uuid,
  'c78b2092-0056-5d5f-a59a-0408b3bbf197'::uuid,
  '43b216a6-2290-5cf2-af92-35c3054dc2e2'::uuid,
  'Hi Owen — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '89a4afed-0d2b-56e4-b56e-ba50bca59a61'::uuid,
  'bb2cf088-6b75-5ae7-a65e-c83b246c06e3'::uuid,
  '43b216a6-2290-5cf2-af92-35c3054dc2e2'::uuid,
  'c78b2092-0056-5d5f-a59a-0408b3bbf197'::uuid,
  'Thanks Sofia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;