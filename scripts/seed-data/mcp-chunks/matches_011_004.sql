INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c47e2c9c-2d10-59f3-91d3-3a943469686c'::uuid,
  'b4927b30-b3fb-5a22-80d9-bde3cf3b3448'::uuid,
  '3006f4f6-9b46-5e6a-b99d-d1a94cf76eb8'::uuid,
  '1d26ca6e-f6ce-5353-9f60-24d8e7e5fe94'::uuid,
  'Hi Sofia — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7100e172-0eec-53df-b703-b70b27f5e320'::uuid,
  'b4927b30-b3fb-5a22-80d9-bde3cf3b3448'::uuid,
  '1d26ca6e-f6ce-5353-9f60-24d8e7e5fe94'::uuid,
  '3006f4f6-9b46-5e6a-b99d-d1a94cf76eb8'::uuid,
  'Thanks Lucas! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('89ac3ab1-edbd-5b9b-9198-2dd0cfc551e3'::uuid, 'e4161d15-a489-5141-bd1c-b34b92ebab30'::uuid, '56361163-593b-5f6a-8eb2-5269671702e2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b01f7f53-50b3-512c-bd5c-46bce6ecbd11'::uuid, '56361163-593b-5f6a-8eb2-5269671702e2'::uuid, 'e4161d15-a489-5141-bd1c-b34b92ebab30'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fda3eff1-a813-50a6-a098-0b6008a7f81d'::uuid, '56361163-593b-5f6a-8eb2-5269671702e2'::uuid, 'e4161d15-a489-5141-bd1c-b34b92ebab30'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2abcc3ca-cc07-5ea1-84ee-f5e7dc316753'::uuid, '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid, '57922f55-9cea-510b-8329-299c51dd6d47'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('aa20380d-930c-5031-b475-eedb66f8d59f'::uuid, '57922f55-9cea-510b-8329-299c51dd6d47'::uuid, '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a87dd180-9d09-5605-89ca-4de4f23e3935'::uuid, '57922f55-9cea-510b-8329-299c51dd6d47'::uuid, '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '34d38e86-bc10-58ea-8474-57eea9fcc2fc'::uuid,
  'a87dd180-9d09-5605-89ca-4de4f23e3935'::uuid,
  '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid,
  '57922f55-9cea-510b-8329-299c51dd6d47'::uuid,
  'Hi Zara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0c590370-f5e3-5119-bbda-b7e0f9cafe02'::uuid,
  'a87dd180-9d09-5605-89ca-4de4f23e3935'::uuid,
  '57922f55-9cea-510b-8329-299c51dd6d47'::uuid,
  '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid,
  'Thanks David! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('72e2e308-cfd3-53d2-93de-5a0f9d7d8b92'::uuid, '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid, '6264c718-831e-5d98-b0cf-a39bc97be75e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d22390f0-4093-550e-ae4b-e3b859cfefae'::uuid, '6264c718-831e-5d98-b0cf-a39bc97be75e'::uuid, '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('792bd387-d07b-5090-9d40-532a2e8afe4c'::uuid, '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid, '6264c718-831e-5d98-b0cf-a39bc97be75e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fbbdedfa-1dbe-530c-bb6d-2db89dee3a60'::uuid, 'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid, '778bb832-28a2-5667-a854-30ded635eb52'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2e4d6bc1-1da7-5c4f-94f1-db076cbd0f49'::uuid, '778bb832-28a2-5667-a854-30ded635eb52'::uuid, 'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b28a5112-1dac-563b-a81c-d0006514d941'::uuid, '778bb832-28a2-5667-a854-30ded635eb52'::uuid, 'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7f4c4722-62cc-5804-9bd4-1e1c967bc661'::uuid,
  'b28a5112-1dac-563b-a81c-d0006514d941'::uuid,
  'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid,
  '778bb832-28a2-5667-a854-30ded635eb52'::uuid,
  'Hi Kai — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '48e1a56c-4008-551c-a35b-89c4f4469219'::uuid,
  'b28a5112-1dac-563b-a81c-d0006514d941'::uuid,
  '778bb832-28a2-5667-a854-30ded635eb52'::uuid,
  'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid,
  'Thanks Aisha! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('101e6106-5cdf-5768-ad80-99f9446ed937'::uuid, '05054208-013e-5ac0-8db9-7b769e41a544'::uuid, 'f5c6f747-5297-5e24-87be-fd7df457b835'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4f333cda-5e7c-5151-95bb-94b6956dd608'::uuid, 'f5c6f747-5297-5e24-87be-fd7df457b835'::uuid, '05054208-013e-5ac0-8db9-7b769e41a544'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e1f8585f-4e6c-5b87-8c77-dee34a7f190b'::uuid, '05054208-013e-5ac0-8db9-7b769e41a544'::uuid, 'f5c6f747-5297-5e24-87be-fd7df457b835'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5af3c872-92bc-51bc-83ed-cc26ea91f8f2'::uuid, '7c6ad270-1e50-52cd-a3b9-c96edf79d00e'::uuid, '4bd8bfe8-2f51-5ceb-9f02-6660db18eef7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('35f93934-e0ef-5e8b-878e-1b4c4ef47811'::uuid, '4bd8bfe8-2f51-5ceb-9f02-6660db18eef7'::uuid, '7c6ad270-1e50-52cd-a3b9-c96edf79d00e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('08b9900e-7f49-5295-aa28-bc277ace75d3'::uuid, '4bd8bfe8-2f51-5ceb-9f02-6660db18eef7'::uuid, '7c6ad270-1e50-52cd-a3b9-c96edf79d00e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'aa1dc382-c10e-5c5f-9520-bc02aa9cfd1f'::uuid,
  '08b9900e-7f49-5295-aa28-bc277ace75d3'::uuid,
  '7c6ad270-1e50-52cd-a3b9-c96edf79d00e'::uuid,
  '4bd8bfe8-2f51-5ceb-9f02-6660db18eef7'::uuid,
  'Hi Benjamin — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fdf50143-c68a-53b6-8945-0b49458f6e23'::uuid,
  '08b9900e-7f49-5295-aa28-bc277ace75d3'::uuid,
  '4bd8bfe8-2f51-5ceb-9f02-6660db18eef7'::uuid,
  '7c6ad270-1e50-52cd-a3b9-c96edf79d00e'::uuid,
  'Thanks Nadia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('791a5b45-8d81-5694-84e6-fa650dc7cb03'::uuid, '8b2f1251-9e04-5a0e-a4a3-105bfab4a2f5'::uuid, '286edd8f-7e51-52d7-b45e-551a9821a1dc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0f51c58e-82c1-5260-bdd3-75bf8ecff4f4'::uuid, '286edd8f-7e51-52d7-b45e-551a9821a1dc'::uuid, '8b2f1251-9e04-5a0e-a4a3-105bfab4a2f5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cf72efb6-64e9-514b-b255-ab4841f3285a'::uuid, '286edd8f-7e51-52d7-b45e-551a9821a1dc'::uuid, '8b2f1251-9e04-5a0e-a4a3-105bfab4a2f5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3004497b-b78b-5869-826f-db5a79e7b8ef'::uuid, '88290c7c-9070-5aac-b75d-6ff845ba41c2'::uuid, 'f923ae2c-4cde-5a0d-b5c1-2b97552165d0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f035ffb0-97b3-506f-9f01-2963249a6175'::uuid, 'f923ae2c-4cde-5a0d-b5c1-2b97552165d0'::uuid, '88290c7c-9070-5aac-b75d-6ff845ba41c2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fe7d6ee9-4c55-59ab-8b5d-73872efcbfda'::uuid, '88290c7c-9070-5aac-b75d-6ff845ba41c2'::uuid, 'f923ae2c-4cde-5a0d-b5c1-2b97552165d0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '687753f8-d797-52db-b698-2ec27a37ab7c'::uuid,
  'fe7d6ee9-4c55-59ab-8b5d-73872efcbfda'::uuid,
  '88290c7c-9070-5aac-b75d-6ff845ba41c2'::uuid,
  'f923ae2c-4cde-5a0d-b5c1-2b97552165d0'::uuid,
  'Hi Sebastian — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1ff7f556-2dd6-585b-bac5-a2f963aafc79'::uuid,
  'fe7d6ee9-4c55-59ab-8b5d-73872efcbfda'::uuid,
  'f923ae2c-4cde-5a0d-b5c1-2b97552165d0'::uuid,
  '88290c7c-9070-5aac-b75d-6ff845ba41c2'::uuid,
  'Thanks Mei! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('53923020-c2fd-5c63-8964-b278ee4a4c06'::uuid, '88290c7c-9070-5aac-b75d-6ff845ba41c2'::uuid, '40b94d45-a7a1-54c4-ae03-055b85d29b1e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a668bb5f-5180-5ca7-ba82-020b956629b8'::uuid, '40b94d45-a7a1-54c4-ae03-055b85d29b1e'::uuid, '88290c7c-9070-5aac-b75d-6ff845ba41c2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c1c24c1d-c89f-5a11-ab13-2625dae4eaaf'::uuid, '40b94d45-a7a1-54c4-ae03-055b85d29b1e'::uuid, '88290c7c-9070-5aac-b75d-6ff845ba41c2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('35748d20-173e-5ab9-920b-55dd1bb0992e'::uuid, '3304cdb0-f9e3-5358-9673-f15e11dc4e17'::uuid, 'b750fae1-8324-5847-b5ff-68ba0292a057'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2494fd86-5c27-5e37-bbcb-29dcec22beb2'::uuid, 'b750fae1-8324-5847-b5ff-68ba0292a057'::uuid, '3304cdb0-f9e3-5358-9673-f15e11dc4e17'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('27d55e23-d6d3-5b84-9536-c7b472faa83e'::uuid, '3304cdb0-f9e3-5358-9673-f15e11dc4e17'::uuid, 'b750fae1-8324-5847-b5ff-68ba0292a057'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;