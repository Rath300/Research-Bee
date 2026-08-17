INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('71efe508-05b3-57fd-8261-1eeacd4a47d5'::uuid, '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid, 'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9770c800-d359-591b-b6c0-05917c264a20'::uuid, 'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid, '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('879da286-60d0-5b55-a4d6-6576a8958309'::uuid, '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid, 'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6413d9d4-1606-5bfb-86e0-0e86398ab723'::uuid,
  '879da286-60d0-5b55-a4d6-6576a8958309'::uuid,
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  'Hi Diego — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b2ff379c-d34e-59ec-a0ce-f9a038cfdaba'::uuid,
  '879da286-60d0-5b55-a4d6-6576a8958309'::uuid,
  'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid,
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  'Thanks Hana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('995897cf-cd7c-5b3a-956d-c63531a6f33a'::uuid, '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid, 'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3ecff0f3-78fb-5365-862f-c4412934e13b'::uuid, 'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid, '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ccdd27f3-e71f-5ae5-8dab-f6cf82045d5c'::uuid, '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid, 'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a0c2da0d-898b-5752-a94c-a2ad5fb60443'::uuid, 'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid, '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('eb04d63a-92d4-5f9d-a8bb-e3f3780b6541'::uuid, '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid, 'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cf525e4c-ce48-5e58-ab3a-a34886c77dee'::uuid, 'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid, '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('752d056c-4185-52c4-8fbb-7f3f021f2f99'::uuid, '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid, 'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b5a3986a-8699-5f01-9ad3-9697be2b9bec'::uuid,
  '752d056c-4185-52c4-8fbb-7f3f021f2f99'::uuid,
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  'Hi Nadia — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'dab02ede-4977-51b5-9e0b-9bd68c8a0125'::uuid,
  '752d056c-4185-52c4-8fbb-7f3f021f2f99'::uuid,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid,
  'Thanks Maya! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f0c73e16-1006-50ef-bf80-70b2f60f937b'::uuid, '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid, '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('76d7842e-8595-5e83-b4c6-4bd0baac801a'::uuid, 'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid, 'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b7ad5c81-f5c7-5a38-8abe-73fa03a1a38a'::uuid, 'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid, 'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('35a629ec-f4f7-51de-a9f4-04a26ec91d13'::uuid, 'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid, 'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f16fb8fa-ed3e-5c0d-af63-c44ab5919edc'::uuid, 'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid, 'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b0543ddc-8fcd-5be7-8453-a86379ae942c'::uuid, '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid, '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('795f58a2-4ebd-5740-a157-9793d5535353'::uuid, '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid, '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dceb4b89-47aa-586c-84de-2c8f307e2f7d'::uuid, '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid, '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ff14de9e-2c77-503f-87cc-b101c171be84'::uuid,
  'dceb4b89-47aa-586c-84de-2c8f307e2f7d'::uuid,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  'Hi Mei — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1510f855-2f1c-56f6-a6aa-e5dedced6c4b'::uuid,
  'dceb4b89-47aa-586c-84de-2c8f307e2f7d'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid,
  'Thanks Rohan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cd1261ff-32ad-583f-857f-35dc4930d6b9'::uuid, '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid, '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('649cb82d-7e02-5fea-8707-4672db18bb27'::uuid, '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid, 'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8a977c60-9104-578b-aad7-9f59920c348d'::uuid, 'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid, '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e4e33962-5881-5ce6-ac3c-78dead70b396'::uuid, '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid, 'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c91013c8-8333-539f-92c6-860f6b83cdba'::uuid, 'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid, '0f083399-fe7b-5451-96d4-1693c91f7dd3'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0c9d08d1-351e-51bd-a4e5-f6a1f400f14c'::uuid, '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid, '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e7be033c-6717-532a-8af9-0b9347144dee'::uuid, '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid, '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e3f6b225-58db-56a4-ad3a-c9d5fd260dbf'::uuid, '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid, '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '149f167d-555d-5583-a26f-8754cef688c6'::uuid,
  'e3f6b225-58db-56a4-ad3a-c9d5fd260dbf'::uuid,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  'Hi Riya — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4ec994a2-0059-58b9-a9ea-bb8439682fb7'::uuid,
  'e3f6b225-58db-56a4-ad3a-c9d5fd260dbf'::uuid,
  '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid,
  '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid,
  'Thanks Samir! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('21df107b-b6f3-56d3-ac6b-6cb1cce082d3'::uuid, '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid, '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('24057cca-0b2b-55e3-8599-ff532f98f75e'::uuid, '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid, '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5e0b5f4e-281a-5e30-8fe5-4ec247faf4b1'::uuid, '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid, '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b4b4b79d-20f2-54b7-bb8e-89bad05ae87e'::uuid, 'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid, '6e4d3cfc-c5c9-53e9-adcd-5a7d832c63db'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b5dab1bb-e3c2-53f8-b1aa-3a7a6934094c'::uuid, '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid, 'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('34924b55-a9cf-5092-bd30-e429a3b0eb68'::uuid, 'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid, '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;