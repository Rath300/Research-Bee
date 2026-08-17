INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('509281db-a498-5f00-baee-38ca86c42a85'::uuid, '59411c6d-89c7-5a03-8b64-1273d8843a53'::uuid, 'bf844e91-b34b-51f3-9b61-28aac491ce08'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('91031bbd-f70d-57ec-9e6d-38d0e488ff9e'::uuid, '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid, 'c824bafc-8469-53db-bec8-76cb657bd1db'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('93889d08-b46a-56f5-8d18-070b74159043'::uuid, 'c824bafc-8469-53db-bec8-76cb657bd1db'::uuid, '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c18b3a9c-328f-518f-856a-a5c3c56bbe9a'::uuid, '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid, 'c824bafc-8469-53db-bec8-76cb657bd1db'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '755cbcf1-67ca-50d8-8e23-3ccee913ef3c'::uuid,
  'c18b3a9c-328f-518f-856a-a5c3c56bbe9a'::uuid,
  '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid,
  'c824bafc-8469-53db-bec8-76cb657bd1db'::uuid,
  'Hi Daniel — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '406520fc-9c77-548e-a028-0a7a33331ce2'::uuid,
  'c18b3a9c-328f-518f-856a-a5c3c56bbe9a'::uuid,
  'c824bafc-8469-53db-bec8-76cb657bd1db'::uuid,
  '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid,
  'Thanks Isla! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('09f7e50c-7126-5386-965e-f43d23e0d9ad'::uuid, '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid, 'e64abfce-a585-5002-987d-172bddea50c0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bb93adf9-dbd6-5503-9e46-d5f4823e69ed'::uuid, 'e64abfce-a585-5002-987d-172bddea50c0'::uuid, '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('774119af-5f88-528e-8bcc-6a066f80ddf4'::uuid, '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid, 'e64abfce-a585-5002-987d-172bddea50c0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6e6e26a5-a5f1-5308-ad4e-725b1108832d'::uuid, 'bc3269b7-ccf7-597d-a309-30596d8dbb75'::uuid, 'f324dc11-eb21-5df5-a147-1760b8514837'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('886a729c-2961-517d-8bdf-a95567096cb6'::uuid, 'f324dc11-eb21-5df5-a147-1760b8514837'::uuid, 'bc3269b7-ccf7-597d-a309-30596d8dbb75'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0b4385e7-7249-5109-99ea-065efd871e63'::uuid, 'bc3269b7-ccf7-597d-a309-30596d8dbb75'::uuid, 'f324dc11-eb21-5df5-a147-1760b8514837'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3be09b15-40fc-5686-a7a5-21fca793cc24'::uuid,
  '0b4385e7-7249-5109-99ea-065efd871e63'::uuid,
  'bc3269b7-ccf7-597d-a309-30596d8dbb75'::uuid,
  'f324dc11-eb21-5df5-a147-1760b8514837'::uuid,
  'Hi Nina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b3541a15-6a0e-5827-b0b4-eb17e4d770ce'::uuid,
  '0b4385e7-7249-5109-99ea-065efd871e63'::uuid,
  'f324dc11-eb21-5df5-a147-1760b8514837'::uuid,
  'bc3269b7-ccf7-597d-a309-30596d8dbb75'::uuid,
  'Thanks Theo! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('245c447f-921a-5798-b3b8-f94944d8dbd0'::uuid, '59fc5e89-4210-5535-9f42-ed5204636320'::uuid, '0b9247c6-0623-5a13-adf7-d6eb575f4280'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3583625d-29da-5b4f-83b8-ffc09edb1d74'::uuid, '0b9247c6-0623-5a13-adf7-d6eb575f4280'::uuid, '59fc5e89-4210-5535-9f42-ed5204636320'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6d7d0d91-238d-5b8e-b2d3-f654ec8b8cea'::uuid, '0b9247c6-0623-5a13-adf7-d6eb575f4280'::uuid, '59fc5e89-4210-5535-9f42-ed5204636320'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('099063b3-70c2-55e1-ac38-ef3a3042455c'::uuid, 'e3fbeb3d-2a6c-5b72-9ae7-02c84c034471'::uuid, '09c666a4-3bb7-5163-8075-029e573c454d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d7a501f4-37cf-5595-9a2f-21c47ee3713b'::uuid, '09c666a4-3bb7-5163-8075-029e573c454d'::uuid, 'e3fbeb3d-2a6c-5b72-9ae7-02c84c034471'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cda4ef62-f2cd-5b2e-b932-b3c3db09d7c2'::uuid, '09c666a4-3bb7-5163-8075-029e573c454d'::uuid, 'e3fbeb3d-2a6c-5b72-9ae7-02c84c034471'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd5f913bd-c292-554c-b1a8-8da30a4187d1'::uuid,
  'cda4ef62-f2cd-5b2e-b932-b3c3db09d7c2'::uuid,
  'e3fbeb3d-2a6c-5b72-9ae7-02c84c034471'::uuid,
  '09c666a4-3bb7-5163-8075-029e573c454d'::uuid,
  'Hi Sofia — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ca148d16-1ffa-5bce-b65b-6e28902decb7'::uuid,
  'cda4ef62-f2cd-5b2e-b932-b3c3db09d7c2'::uuid,
  '09c666a4-3bb7-5163-8075-029e573c454d'::uuid,
  'e3fbeb3d-2a6c-5b72-9ae7-02c84c034471'::uuid,
  'Thanks Lucas! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('50e5a058-598b-575a-8d24-ba50858b07f3'::uuid, 'f1ea10b0-8c31-5412-bd19-36fe94b2a01d'::uuid, '863c8215-2c2a-52a0-9b29-6e4221066e37'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('537740e3-3fa1-5399-a9d3-4175eef69f02'::uuid, '863c8215-2c2a-52a0-9b29-6e4221066e37'::uuid, 'f1ea10b0-8c31-5412-bd19-36fe94b2a01d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1b8f7d59-69c5-5fc1-9d0d-67d90e944ab7'::uuid, '863c8215-2c2a-52a0-9b29-6e4221066e37'::uuid, 'f1ea10b0-8c31-5412-bd19-36fe94b2a01d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('eac37836-2bb0-55f2-8c5e-a8fb8703149a'::uuid, '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid, '606612b1-7686-5c2f-8974-1cab41c30b32'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3d9fd23b-b207-5c68-9022-52729fcda81d'::uuid, '606612b1-7686-5c2f-8974-1cab41c30b32'::uuid, '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0dfd46b9-a4b7-5e28-8b88-f619c127a1e9'::uuid, '606612b1-7686-5c2f-8974-1cab41c30b32'::uuid, '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8a41b513-080e-5c3a-a0e3-762726417e39'::uuid,
  '0dfd46b9-a4b7-5e28-8b88-f619c127a1e9'::uuid,
  '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid,
  '606612b1-7686-5c2f-8974-1cab41c30b32'::uuid,
  'Hi Zara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e137e054-a990-5c93-8ce4-bd18402e326c'::uuid,
  '0dfd46b9-a4b7-5e28-8b88-f619c127a1e9'::uuid,
  '606612b1-7686-5c2f-8974-1cab41c30b32'::uuid,
  '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid,
  'Thanks David! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('67842406-4283-5d8f-9638-99d435acf18c'::uuid, '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid, 'a0817194-368d-5771-976a-7836d36b620b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d702b636-769d-5cc4-b6e8-6fdacd0b84bf'::uuid, 'a0817194-368d-5771-976a-7836d36b620b'::uuid, '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7f25f421-d3d6-5463-b2cc-20065e827ed6'::uuid, '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid, 'a0817194-368d-5771-976a-7836d36b620b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a2b866b4-458d-55f3-acb9-af851dbef2a1'::uuid, '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid, 'b5631b8b-451c-5fe4-b56b-bdb69c9490ae'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b733cbe0-231c-558d-9b98-8ad79a94c074'::uuid, 'b5631b8b-451c-5fe4-b56b-bdb69c9490ae'::uuid, '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a8435474-28f7-5859-89ab-5ba2743dc026'::uuid, '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid, 'b5631b8b-451c-5fe4-b56b-bdb69c9490ae'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '016eb1f6-126a-5a02-82ba-cd9e968794ff'::uuid,
  'a8435474-28f7-5859-89ab-5ba2743dc026'::uuid,
  '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid,
  'b5631b8b-451c-5fe4-b56b-bdb69c9490ae'::uuid,
  'Hi Kai — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e05fdd90-066d-5dfc-b5c3-8b968d24bc02'::uuid,
  'a8435474-28f7-5859-89ab-5ba2743dc026'::uuid,
  'b5631b8b-451c-5fe4-b56b-bdb69c9490ae'::uuid,
  '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid,
  'Thanks Aisha! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d9265240-03a9-5992-900c-6f10919a1329'::uuid, 'e97a9de9-ada2-56c8-98fd-109c271f42ab'::uuid, 'dc822c01-3afa-540d-8c64-273165534be4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6e0ea0c5-adc3-54f1-83b2-dabd76f6a9d6'::uuid, 'dc822c01-3afa-540d-8c64-273165534be4'::uuid, 'e97a9de9-ada2-56c8-98fd-109c271f42ab'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;