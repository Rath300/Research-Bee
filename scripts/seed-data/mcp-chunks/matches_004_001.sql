INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ca036b4c-0acd-51a2-ad7e-58433ae4b8ab'::uuid,
  '4d7f6dc9-02b4-5930-856b-233cc0391218'::uuid,
  '803e2dbf-90f2-5971-8873-a4ee6e96bedd'::uuid,
  '737fe981-e236-58bd-8b5f-7d72782f3913'::uuid,
  'Thanks Kai! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5eb1e54a-788c-54d9-b2ef-d33fe05a63b4'::uuid, '8cbc51da-924c-5c60-b2ff-91e9b5bade3b'::uuid, '2ca134b1-2119-5e9e-8c0e-f36ce476cf56'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('de152b15-5e17-5639-880e-0502e0578b0c'::uuid, '2ca134b1-2119-5e9e-8c0e-f36ce476cf56'::uuid, '8cbc51da-924c-5c60-b2ff-91e9b5bade3b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e848adeb-c6d9-59c6-891a-2a2339489271'::uuid, '2ca134b1-2119-5e9e-8c0e-f36ce476cf56'::uuid, '8cbc51da-924c-5c60-b2ff-91e9b5bade3b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('52b133ba-f154-5cb2-a0de-8ab39c3ee783'::uuid, '1c95027d-691e-5ca1-932e-2748aa925246'::uuid, '93006b3a-19e8-5e78-8f8e-4e880c4429ef'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b38f5d1b-ebe8-5af1-b6d2-9d6402eef07c'::uuid, '93006b3a-19e8-5e78-8f8e-4e880c4429ef'::uuid, '1c95027d-691e-5ca1-932e-2748aa925246'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9d734e49-ed0f-574b-a93a-cce0d4eb74da'::uuid, '1c95027d-691e-5ca1-932e-2748aa925246'::uuid, '93006b3a-19e8-5e78-8f8e-4e880c4429ef'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ef848031-dd39-5356-a6b0-49454cbc0c96'::uuid,
  '9d734e49-ed0f-574b-a93a-cce0d4eb74da'::uuid,
  '1c95027d-691e-5ca1-932e-2748aa925246'::uuid,
  '93006b3a-19e8-5e78-8f8e-4e880c4429ef'::uuid,
  'Hi Imani — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '31a51cba-15fb-55b7-a26c-565701044fb1'::uuid,
  '9d734e49-ed0f-574b-a93a-cce0d4eb74da'::uuid,
  '93006b3a-19e8-5e78-8f8e-4e880c4429ef'::uuid,
  '1c95027d-691e-5ca1-932e-2748aa925246'::uuid,
  'Thanks Benjamin! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cd0e38cf-f2ac-54fd-af39-d4d2955fae44'::uuid, '1c95027d-691e-5ca1-932e-2748aa925246'::uuid, '59411c6d-89c7-5a03-8b64-1273d8843a53'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d2f605f1-6847-5981-aefd-78ad3d6c597a'::uuid, '59411c6d-89c7-5a03-8b64-1273d8843a53'::uuid, '1c95027d-691e-5ca1-932e-2748aa925246'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d946fd01-102f-5be0-b86a-df138293383e'::uuid, '1c95027d-691e-5ca1-932e-2748aa925246'::uuid, '59411c6d-89c7-5a03-8b64-1273d8843a53'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a575bdeb-e2dc-562e-9443-052dae3e4121'::uuid, '634bbd78-6e13-5abe-8ffc-9d7e43a30d9f'::uuid, 'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fd10f138-03bd-5bb0-ba40-afebf0613683'::uuid, 'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid, '634bbd78-6e13-5abe-8ffc-9d7e43a30d9f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7c379839-55c3-55e7-9fc7-2027f60614c3'::uuid, '634bbd78-6e13-5abe-8ffc-9d7e43a30d9f'::uuid, 'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e68731b9-1bcb-593e-8650-3cea6e945fe1'::uuid,
  '7c379839-55c3-55e7-9fc7-2027f60614c3'::uuid,
  '634bbd78-6e13-5abe-8ffc-9d7e43a30d9f'::uuid,
  'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid,
  'Hi Noah — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '06262188-8937-505b-9a43-36f525f0b555'::uuid,
  '7c379839-55c3-55e7-9fc7-2027f60614c3'::uuid,
  'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid,
  '634bbd78-6e13-5abe-8ffc-9d7e43a30d9f'::uuid,
  'Thanks Ava! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0819cc54-97bb-5379-80be-2d6eae1e8c5d'::uuid, '73be6dda-66ed-5e48-afec-7a94f58b9172'::uuid, 'f1960a0a-78f4-50df-a9b5-52f5cecb2a7f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5897fd66-9f88-5924-a7a7-48653cacb3af'::uuid, 'f1960a0a-78f4-50df-a9b5-52f5cecb2a7f'::uuid, '73be6dda-66ed-5e48-afec-7a94f58b9172'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0dff5c8b-935a-567f-89c0-1c4d5cea41f4'::uuid, '73be6dda-66ed-5e48-afec-7a94f58b9172'::uuid, 'f1960a0a-78f4-50df-a9b5-52f5cecb2a7f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3c2bdf6d-041a-5948-b2ef-7ccd90293a29'::uuid, '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid, 'da80e546-c3ba-571b-8135-5f7f0e9a90e0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7e86e598-2b46-5154-a60d-0a02e4c5e168'::uuid, 'da80e546-c3ba-571b-8135-5f7f0e9a90e0'::uuid, '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ef24158d-ab40-599f-b5c7-e2c4055855e9'::uuid, '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid, 'da80e546-c3ba-571b-8135-5f7f0e9a90e0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '50faad20-e9b5-5f7f-ac7d-4ef639bc0a36'::uuid,
  'ef24158d-ab40-599f-b5c7-e2c4055855e9'::uuid,
  '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid,
  'da80e546-c3ba-571b-8135-5f7f0e9a90e0'::uuid,
  'Hi Ethan — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd0177ad1-be83-5594-99c9-1246939e0b4c'::uuid,
  'ef24158d-ab40-599f-b5c7-e2c4055855e9'::uuid,
  'da80e546-c3ba-571b-8135-5f7f0e9a90e0'::uuid,
  '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid,
  'Thanks Amina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a4d6a992-9fbb-53e6-9479-a8a1a3f03ef8'::uuid, '093ae4a7-64b9-54f9-9c88-8b9150c9d1af'::uuid, 'f644a779-f61f-50ac-9f62-0022190689d9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('73ae8ae1-6446-5a81-b162-cdafe728cc50'::uuid, 'f644a779-f61f-50ac-9f62-0022190689d9'::uuid, '093ae4a7-64b9-54f9-9c88-8b9150c9d1af'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dcf5c840-c92f-56f5-9755-c028c23e55c5'::uuid, '093ae4a7-64b9-54f9-9c88-8b9150c9d1af'::uuid, 'f644a779-f61f-50ac-9f62-0022190689d9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('94aa75f2-9644-5b14-b7dd-bb6cfa0b34f6'::uuid, 'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid, '11c84f5e-775c-5b46-af66-1f232d2d9f72'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('44b7deee-fb46-5cf6-84d4-1b7b527475c5'::uuid, '11c84f5e-775c-5b46-af66-1f232d2d9f72'::uuid, 'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2160a80f-3630-5079-804c-b7525a9bdc90'::uuid, '11c84f5e-775c-5b46-af66-1f232d2d9f72'::uuid, 'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '71c749e9-ca0e-54ab-b921-424fb38eafdc'::uuid,
  '2160a80f-3630-5079-804c-b7525a9bdc90'::uuid,
  'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid,
  '11c84f5e-775c-5b46-af66-1f232d2d9f72'::uuid,
  'Hi Caleb — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9fdcf5f1-303d-54c5-aced-7899b65ea836'::uuid,
  '2160a80f-3630-5079-804c-b7525a9bdc90'::uuid,
  '11c84f5e-775c-5b46-af66-1f232d2d9f72'::uuid,
  'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid,
  'Thanks Hannah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0b83581e-07c5-5d7b-8f55-34596d5c00e1'::uuid, 'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid, '863c8215-2c2a-52a0-9b29-6e4221066e37'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('537e285e-0fc8-571c-87e5-b9fcbc614ec6'::uuid, '863c8215-2c2a-52a0-9b29-6e4221066e37'::uuid, 'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1b84a31d-1c5f-5831-9b06-b536fb3cdd94'::uuid, '863c8215-2c2a-52a0-9b29-6e4221066e37'::uuid, 'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fd8734ad-c462-5471-a144-3a5cce8d17bd'::uuid, '22f028f3-fbcf-5382-8812-8aab906ff016'::uuid, 'e10d8f3c-3339-5b7c-aab1-cb38fa334cb4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('88c5c6e9-92fa-572e-8dff-a50bd4796298'::uuid, 'e10d8f3c-3339-5b7c-aab1-cb38fa334cb4'::uuid, '22f028f3-fbcf-5382-8812-8aab906ff016'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('751c9df3-13cf-5513-8aec-b448118f41e7'::uuid, '22f028f3-fbcf-5382-8812-8aab906ff016'::uuid, 'e10d8f3c-3339-5b7c-aab1-cb38fa334cb4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6383b0c3-36b4-53c2-bd69-fda142c9b2bf'::uuid,
  '751c9df3-13cf-5513-8aec-b448118f41e7'::uuid,
  '22f028f3-fbcf-5382-8812-8aab906ff016'::uuid,
  'e10d8f3c-3339-5b7c-aab1-cb38fa334cb4'::uuid,
  'Hi Sana — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;