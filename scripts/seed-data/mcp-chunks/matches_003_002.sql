INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f7e6c991-d702-53e9-bf11-6a2ec6115e0c'::uuid, '1ca806bf-7216-5681-8652-8db2434048ce'::uuid, '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('54254878-69a8-5233-84f8-65e800d9aa9b'::uuid, '1ca806bf-7216-5681-8652-8db2434048ce'::uuid, '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('60fdb30b-c4f5-52dd-999d-5b3e06438278'::uuid, '737fe981-e236-58bd-8b5f-7d72782f3913'::uuid, '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1535690d-9576-5148-bc90-3d11143f82b1'::uuid, 'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid, '66993f2c-3a35-5a4f-9ebe-3d9beb02b962'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('297a64ec-454e-5bcd-90bb-ea0bf8007c73'::uuid, '66993f2c-3a35-5a4f-9ebe-3d9beb02b962'::uuid, 'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('28724aff-199e-56e8-b683-cc17c410c23a'::uuid, '66993f2c-3a35-5a4f-9ebe-3d9beb02b962'::uuid, 'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '47094d5d-fb7f-530b-971a-df0bb9d7cddc'::uuid,
  '28724aff-199e-56e8-b683-cc17c410c23a'::uuid,
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  '66993f2c-3a35-5a4f-9ebe-3d9beb02b962'::uuid,
  'Hi Sofia — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ec2d4dd8-8218-5b9b-a0e6-10b18334d141'::uuid,
  '28724aff-199e-56e8-b683-cc17c410c23a'::uuid,
  '66993f2c-3a35-5a4f-9ebe-3d9beb02b962'::uuid,
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  'Thanks Lucas! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0800d860-f100-557c-ba30-e603907fbbf0'::uuid, '8cbc51da-924c-5c60-b2ff-91e9b5bade3b'::uuid, 'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('418edf9b-54ca-5c3a-a397-a8078727347d'::uuid, '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid, 'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('29d813ab-d0f1-55e2-9752-4552461a79ee'::uuid, 'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid, '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bd1dbc70-1795-5f9f-86e8-f7621d1c1ecc'::uuid, '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid, 'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2644544f-bc10-5a7c-86ba-42b4df8e34c1'::uuid, '1c95027d-691e-5ca1-932e-2748aa925246'::uuid, '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('788a6342-8113-5dc2-b184-90c16111540c'::uuid, 'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid, '9583a091-71fc-59e2-a837-c827f33c072a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('48d3d584-2b90-5643-a965-226e92ad9016'::uuid, '9583a091-71fc-59e2-a837-c827f33c072a'::uuid, 'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a36c34b6-79cb-5b74-8304-b1c55d422b58'::uuid, '9583a091-71fc-59e2-a837-c827f33c072a'::uuid, 'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9213e15d-37f7-5ad9-9e47-701d10ee48f2'::uuid,
  'a36c34b6-79cb-5b74-8304-b1c55d422b58'::uuid,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  '9583a091-71fc-59e2-a837-c827f33c072a'::uuid,
  'Hi Zara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c713ad07-3ac5-5a07-88df-d6fafe611dc1'::uuid,
  'a36c34b6-79cb-5b74-8304-b1c55d422b58'::uuid,
  '9583a091-71fc-59e2-a837-c827f33c072a'::uuid,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  'Thanks David! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('87ba1b77-25fe-523c-8c58-c78f35c11db5'::uuid, 'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid, '71e76d95-9bb6-5da0-b840-adff1e3b3e09'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3e643c6f-e089-5e93-989b-07c96bdbf57c'::uuid, '71e76d95-9bb6-5da0-b840-adff1e3b3e09'::uuid, 'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7f17ac40-c935-5a97-9dab-fc336779015e'::uuid, '71e76d95-9bb6-5da0-b840-adff1e3b3e09'::uuid, 'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ef36b011-9853-5eef-9784-caff785ebaf4'::uuid, '634bbd78-6e13-5abe-8ffc-9d7e43a30d9f'::uuid, 'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a842c3ca-5777-51c6-bcb7-7a7e4f7dd579'::uuid, 'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid, '737fe981-e236-58bd-8b5f-7d72782f3913'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cb8aeed4-76e4-52c1-9f80-dda43eed1e09'::uuid, '737fe981-e236-58bd-8b5f-7d72782f3913'::uuid, 'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('998921f6-dc1a-55c4-968d-814c997ddb2a'::uuid, '737fe981-e236-58bd-8b5f-7d72782f3913'::uuid, 'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a282de38-5e78-5e89-bc9c-3c897948f8c5'::uuid,
  '998921f6-dc1a-55c4-968d-814c997ddb2a'::uuid,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  '737fe981-e236-58bd-8b5f-7d72782f3913'::uuid,
  'Hi Kai — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9cb2263a-0058-51df-8f56-cc0d41a9774a'::uuid,
  '998921f6-dc1a-55c4-968d-814c997ddb2a'::uuid,
  '737fe981-e236-58bd-8b5f-7d72782f3913'::uuid,
  'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid,
  'Thanks Aisha! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a0dbf254-5a8f-55e6-853f-dc4ad2aab0e6'::uuid, '73be6dda-66ed-5e48-afec-7a94f58b9172'::uuid, 'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f4806727-b45c-502d-8c4a-bc1a5bf091b9'::uuid, '286f6e32-59c8-55a8-98f8-07365047f533'::uuid, '8cbc51da-924c-5c60-b2ff-91e9b5bade3b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5c496399-e397-505d-8944-bd9da002b7ed'::uuid, '8cbc51da-924c-5c60-b2ff-91e9b5bade3b'::uuid, '286f6e32-59c8-55a8-98f8-07365047f533'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('117cd615-bd0d-5d91-b815-d9e6c7af4d39'::uuid, '286f6e32-59c8-55a8-98f8-07365047f533'::uuid, '8cbc51da-924c-5c60-b2ff-91e9b5bade3b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0e98f419-1208-505c-b3ee-fa7b2772cbf5'::uuid, '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid, '286f6e32-59c8-55a8-98f8-07365047f533'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c3ee7e91-b82a-52ae-890d-5b3543e33173'::uuid, '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid, '1c95027d-691e-5ca1-932e-2748aa925246'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5457fdbf-be02-5769-86cd-61827018ef7e'::uuid, '1c95027d-691e-5ca1-932e-2748aa925246'::uuid, '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e9d3491a-5293-510a-9940-207f4aa872da'::uuid, '1c95027d-691e-5ca1-932e-2748aa925246'::uuid, '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '323dc37b-8862-5d79-acbc-f5d8d9ca16a8'::uuid,
  'e9d3491a-5293-510a-9940-207f4aa872da'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  '1c95027d-691e-5ca1-932e-2748aa925246'::uuid,
  'Hi Benjamin — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7f786b3d-1936-5191-b06d-0907e84086b8'::uuid,
  'e9d3491a-5293-510a-9940-207f4aa872da'::uuid,
  '1c95027d-691e-5ca1-932e-2748aa925246'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  'Thanks Nadia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('24706433-c9c7-5e09-a544-b6c8c0621b05'::uuid, '093ae4a7-64b9-54f9-9c88-8b9150c9d1af'::uuid, '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b4e5956f-900c-5a97-9165-311feb6f82e9'::uuid, '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid, '634bbd78-6e13-5abe-8ffc-9d7e43a30d9f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a9e7852c-a236-5210-b6bf-1421d09dd423'::uuid, '634bbd78-6e13-5abe-8ffc-9d7e43a30d9f'::uuid, '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;