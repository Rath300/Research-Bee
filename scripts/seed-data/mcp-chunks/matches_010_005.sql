INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2375f3c3-1a6e-5946-81e2-d7fd36d6bb02'::uuid, '9368db5e-e423-510b-abf1-bd3510893600'::uuid, 'f271c942-fc21-56d3-93cb-8635126191a1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bb811b35-dc1b-562c-b795-29b56c1b9c3e'::uuid, 'f6b3ecf2-301c-5e02-a0ec-ad57b2dfbed4'::uuid, '4913360a-0394-5a55-b1d6-85d797e7ae73'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a9ce7059-8d9e-5db7-8863-0feba36dab53'::uuid, '4913360a-0394-5a55-b1d6-85d797e7ae73'::uuid, 'f6b3ecf2-301c-5e02-a0ec-ad57b2dfbed4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('717f9d46-f702-582b-baee-ce3fbaa81bc2'::uuid, '4913360a-0394-5a55-b1d6-85d797e7ae73'::uuid, 'f6b3ecf2-301c-5e02-a0ec-ad57b2dfbed4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0de34fc0-9bfc-5e58-aadf-8f772596a053'::uuid,
  '717f9d46-f702-582b-baee-ce3fbaa81bc2'::uuid,
  'f6b3ecf2-301c-5e02-a0ec-ad57b2dfbed4'::uuid,
  '4913360a-0394-5a55-b1d6-85d797e7ae73'::uuid,
  'Hi Grace — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2b7d3c02-1a59-52ec-a520-3da87c872949'::uuid,
  '717f9d46-f702-582b-baee-ce3fbaa81bc2'::uuid,
  '4913360a-0394-5a55-b1d6-85d797e7ae73'::uuid,
  'f6b3ecf2-301c-5e02-a0ec-ad57b2dfbed4'::uuid,
  'Thanks Aaron! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('51a4fbae-d909-52a5-96f1-4a67853dda2b'::uuid, '6d5bb006-e4b9-59a3-a281-843bcdf8d1aa'::uuid, '4195c436-ecd0-5c32-b18c-8fac2b240d47'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7d460e4e-fdde-5b51-b748-c2f2128b434c'::uuid, '4195c436-ecd0-5c32-b18c-8fac2b240d47'::uuid, '6d5bb006-e4b9-59a3-a281-843bcdf8d1aa'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2ca7d7ab-0d0e-53f0-9e2a-6f877c643c78'::uuid, '4195c436-ecd0-5c32-b18c-8fac2b240d47'::uuid, '6d5bb006-e4b9-59a3-a281-843bcdf8d1aa'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3595bc85-0bd9-5d4e-80fd-8afb4c244be9'::uuid, 'edf936e0-ccbc-507d-943e-ce31b4b8b532'::uuid, '1f852cc0-d2df-5ce1-a6f2-85adf73b3859'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('99a51ce5-7a03-564a-a5e2-77b2efacf3d8'::uuid, '1f852cc0-d2df-5ce1-a6f2-85adf73b3859'::uuid, 'edf936e0-ccbc-507d-943e-ce31b4b8b532'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('509317bb-d417-59dc-b338-0eb6ddd2f033'::uuid, '1f852cc0-d2df-5ce1-a6f2-85adf73b3859'::uuid, 'edf936e0-ccbc-507d-943e-ce31b4b8b532'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cb422f38-c2d8-5398-b21f-87c5e678a230'::uuid,
  '509317bb-d417-59dc-b338-0eb6ddd2f033'::uuid,
  'edf936e0-ccbc-507d-943e-ce31b4b8b532'::uuid,
  '1f852cc0-d2df-5ce1-a6f2-85adf73b3859'::uuid,
  'Hi Isla — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6742ee83-ddde-5f18-ad55-29d540ba6168'::uuid,
  '509317bb-d417-59dc-b338-0eb6ddd2f033'::uuid,
  '1f852cc0-d2df-5ce1-a6f2-85adf73b3859'::uuid,
  'edf936e0-ccbc-507d-943e-ce31b4b8b532'::uuid,
  'Thanks Noah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9ca4c257-178b-5005-bc67-52c85884df92'::uuid, '3d5e4b71-5d33-5e87-b691-528b0554141d'::uuid, '0e62eacf-462f-5d52-9989-07f38d304832'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('637b7d00-7e9b-54f6-ac41-3258bcc859a1'::uuid, '0e62eacf-462f-5d52-9989-07f38d304832'::uuid, '3d5e4b71-5d33-5e87-b691-528b0554141d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dc5ea785-0dc0-5eda-ada8-5550f9bb3acb'::uuid, '0e62eacf-462f-5d52-9989-07f38d304832'::uuid, '3d5e4b71-5d33-5e87-b691-528b0554141d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('57a3e7d5-e227-5aee-8793-a9fe771a9f22'::uuid, '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid, 'd063655e-9e04-5406-8e3a-ac9c25650b1c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1b6b052f-cb5b-5716-ad57-b50ce92f2880'::uuid, 'd063655e-9e04-5406-8e3a-ac9c25650b1c'::uuid, '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('20192739-52ab-5c94-a980-73e3c859e459'::uuid, '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid, 'd063655e-9e04-5406-8e3a-ac9c25650b1c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '775e8ca9-13a7-5730-85a2-3f80d1eca25f'::uuid,
  '20192739-52ab-5c94-a980-73e3c859e459'::uuid,
  '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid,
  'd063655e-9e04-5406-8e3a-ac9c25650b1c'::uuid,
  'Hi Yara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9dd4340e-4bfd-5e2c-a3c7-e7190c9e3309'::uuid,
  '20192739-52ab-5c94-a980-73e3c859e459'::uuid,
  'd063655e-9e04-5406-8e3a-ac9c25650b1c'::uuid,
  '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid,
  'Thanks Ethan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('94b859ab-e79c-583a-8dc6-fbee56be1689'::uuid, '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid, '22c0fd65-6843-5b61-919d-37b1292666b9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e12908e8-c175-5bdd-a3a8-b73fd265acb3'::uuid, '22c0fd65-6843-5b61-919d-37b1292666b9'::uuid, '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('89430929-a309-537b-a557-22b03c782576'::uuid, '22c0fd65-6843-5b61-919d-37b1292666b9'::uuid, '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('97b6cb2d-bfbb-514e-91c1-12b5b81b3710'::uuid, '8a3ccd43-eedc-52e3-970e-b05b035225e2'::uuid, '3006f4f6-9b46-5e6a-b99d-d1a94cf76eb8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('810d6975-f8f9-5498-9c81-fc5d43e5007a'::uuid, '3006f4f6-9b46-5e6a-b99d-d1a94cf76eb8'::uuid, '8a3ccd43-eedc-52e3-970e-b05b035225e2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('827a9005-a3aa-5e39-bb9e-59355935b327'::uuid, '3006f4f6-9b46-5e6a-b99d-d1a94cf76eb8'::uuid, '8a3ccd43-eedc-52e3-970e-b05b035225e2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'dd33737d-1233-56ea-a688-2edc8df26459'::uuid,
  '827a9005-a3aa-5e39-bb9e-59355935b327'::uuid,
  '8a3ccd43-eedc-52e3-970e-b05b035225e2'::uuid,
  '3006f4f6-9b46-5e6a-b99d-d1a94cf76eb8'::uuid,
  'Hi Lucas — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '93f6328f-32e9-5f86-8632-c7dbaf0d601a'::uuid,
  '827a9005-a3aa-5e39-bb9e-59355935b327'::uuid,
  '3006f4f6-9b46-5e6a-b99d-d1a94cf76eb8'::uuid,
  '8a3ccd43-eedc-52e3-970e-b05b035225e2'::uuid,
  'Thanks Leila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('697d7a5c-64b2-58a9-bd0e-501bef497827'::uuid, '6aafdcd6-d8d8-557d-9554-bbb27bdb748d'::uuid, 'e4161d15-a489-5141-bd1c-b34b92ebab30'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dd6c9366-59f6-5e3d-bd52-13a28d4f347f'::uuid, 'e4161d15-a489-5141-bd1c-b34b92ebab30'::uuid, '6aafdcd6-d8d8-557d-9554-bbb27bdb748d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f0f527f9-fd49-5ab6-8a4e-c814e0dd0e6a'::uuid, '6aafdcd6-d8d8-557d-9554-bbb27bdb748d'::uuid, 'e4161d15-a489-5141-bd1c-b34b92ebab30'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ac3b343f-2145-583e-8b73-a54213303400'::uuid, '7d4f49fb-43d1-502f-9920-10e2cb21136a'::uuid, '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('52a60e18-fdf7-5ef6-80e9-735fa4c85c64'::uuid, '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid, '7d4f49fb-43d1-502f-9920-10e2cb21136a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('391bde50-71a8-53c3-9764-127b90174182'::uuid, '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid, '7d4f49fb-43d1-502f-9920-10e2cb21136a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3fba624d-3917-5e6d-ad06-41833dcb753f'::uuid,
  '391bde50-71a8-53c3-9764-127b90174182'::uuid,
  '7d4f49fb-43d1-502f-9920-10e2cb21136a'::uuid,
  '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid,
  'Hi David — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1e5835a7-576c-5023-99a6-808fafd59fdf'::uuid,
  '391bde50-71a8-53c3-9764-127b90174182'::uuid,
  '5f372a01-81c0-55c9-82b2-dc8f8fc73cdd'::uuid,
  '7d4f49fb-43d1-502f-9920-10e2cb21136a'::uuid,
  'Thanks Sana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2d5c8bbb-4c5a-5ea7-86b1-cf6980384493'::uuid, '05fcff78-0cbc-5304-80d1-89c5fb51a5ce'::uuid, 'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2089833a-5662-55e7-bbf2-364bcf52408b'::uuid, 'e55bc7a6-7a7e-5a44-bcf2-9f173c67a6c9'::uuid, '05fcff78-0cbc-5304-80d1-89c5fb51a5ce'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;