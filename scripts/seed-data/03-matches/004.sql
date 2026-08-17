INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ccd00302-b2e3-5d0d-b0ad-640607b852a7'::uuid,
  '5f23d755-aefa-5716-ab91-0b3531fd9ab6'::uuid,
  'f72fcbef-f134-582a-b53f-f217bb5d6d55'::uuid,
  'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid,
  'Thanks Samir! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('98e6460b-6af5-51ca-9772-84fb57d040f2'::uuid, 'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid, 'be534e0e-c9dc-5c7c-a2ee-f7889a9429c3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3a6cf49b-5af5-5a72-8c0e-3e75c77a4dea'::uuid, 'be534e0e-c9dc-5c7c-a2ee-f7889a9429c3'::uuid, 'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('61b13558-e7eb-5a38-bab9-63ef497bb062'::uuid, 'be534e0e-c9dc-5c7c-a2ee-f7889a9429c3'::uuid, 'd8b6622d-b214-5a2f-8261-5cd56fbd4e42'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('973978ca-ccd6-58a8-b494-8486597e45e4'::uuid, 'f7d3bba5-3aee-58bf-94fe-011c7853e82d'::uuid, 'b99d3e95-19c1-5d94-8f9d-fb6d9ccc63c0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2e3ab09e-b54a-57f9-b428-3eeda293100f'::uuid, 'b99d3e95-19c1-5d94-8f9d-fb6d9ccc63c0'::uuid, 'f7d3bba5-3aee-58bf-94fe-011c7853e82d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('417fff99-8080-5be5-9e1d-11096e8b6dcc'::uuid, 'b99d3e95-19c1-5d94-8f9d-fb6d9ccc63c0'::uuid, 'f7d3bba5-3aee-58bf-94fe-011c7853e82d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b765de23-b147-50f4-98d4-a3e328901680'::uuid,
  '417fff99-8080-5be5-9e1d-11096e8b6dcc'::uuid,
  'f7d3bba5-3aee-58bf-94fe-011c7853e82d'::uuid,
  'b99d3e95-19c1-5d94-8f9d-fb6d9ccc63c0'::uuid,
  'Hi Nathan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e3901d31-cc5a-5236-8a19-07ceb398b550'::uuid,
  '417fff99-8080-5be5-9e1d-11096e8b6dcc'::uuid,
  'b99d3e95-19c1-5d94-8f9d-fb6d9ccc63c0'::uuid,
  'f7d3bba5-3aee-58bf-94fe-011c7853e82d'::uuid,
  'Thanks Camila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2eb0af50-c0cb-5743-9e59-5561c46addfd'::uuid, '709233fc-6dac-5a42-941b-d839482389b8'::uuid, '75f6df30-5d8f-5dd3-917e-2cb576513e61'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4f4ffa45-df7e-5a4e-9d88-7534e9c8021d'::uuid, '75f6df30-5d8f-5dd3-917e-2cb576513e61'::uuid, '709233fc-6dac-5a42-941b-d839482389b8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('17f0f038-3681-5666-885b-ebb97e8e7065'::uuid, '709233fc-6dac-5a42-941b-d839482389b8'::uuid, '75f6df30-5d8f-5dd3-917e-2cb576513e61'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4fa99385-7e73-5263-a61a-432c3be27d9a'::uuid, '08cb49a2-244d-5bf1-b6ed-21969c200aca'::uuid, 'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9e8d13b0-8556-541e-bb64-eec7adda9b13'::uuid, 'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid, '08cb49a2-244d-5bf1-b6ed-21969c200aca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3adc90be-999d-581d-8ea3-bb13877e2612'::uuid, '08cb49a2-244d-5bf1-b6ed-21969c200aca'::uuid, 'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a9f88198-b880-5748-8c6d-2ad35d5f98c9'::uuid,
  '3adc90be-999d-581d-8ea3-bb13877e2612'::uuid,
  '08cb49a2-244d-5bf1-b6ed-21969c200aca'::uuid,
  'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid,
  'Hi Omar — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '77e62078-1574-5b31-afd1-6316fd82e7f9'::uuid,
  '3adc90be-999d-581d-8ea3-bb13877e2612'::uuid,
  'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid,
  '08cb49a2-244d-5bf1-b6ed-21969c200aca'::uuid,
  'Thanks Nina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1fdd04a8-9925-506b-a1c7-e9a23efd0e8a'::uuid, '1ca806bf-7216-5681-8652-8db2434048ce'::uuid, '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('898fba96-2bc7-505c-92b0-741e91243f7d'::uuid, '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid, '1ca806bf-7216-5681-8652-8db2434048ce'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c973d7f7-29da-5043-8495-6a903b1d33fe'::uuid, '1ca806bf-7216-5681-8652-8db2434048ce'::uuid, '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d9effc0d-3e9e-57e5-9d16-eae80c792fc4'::uuid, '66993f2c-3a35-5a4f-9ebe-3d9beb02b962'::uuid, '5bb68fe5-96ce-5240-8f10-cf1202286b31'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('aa55a9bb-b993-5065-a712-6c714a454bad'::uuid, '5bb68fe5-96ce-5240-8f10-cf1202286b31'::uuid, '66993f2c-3a35-5a4f-9ebe-3d9beb02b962'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('43d67ddc-2cf2-5775-83d4-916d2af41e17'::uuid, '5bb68fe5-96ce-5240-8f10-cf1202286b31'::uuid, '66993f2c-3a35-5a4f-9ebe-3d9beb02b962'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4ee93bf2-ea53-5fe6-ac25-45631d8dfc2d'::uuid,
  '43d67ddc-2cf2-5775-83d4-916d2af41e17'::uuid,
  '66993f2c-3a35-5a4f-9ebe-3d9beb02b962'::uuid,
  '5bb68fe5-96ce-5240-8f10-cf1202286b31'::uuid,
  'Hi Owen — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2758ac31-033d-50e8-9e45-f9bf6a57c686'::uuid,
  '43d67ddc-2cf2-5775-83d4-916d2af41e17'::uuid,
  '5bb68fe5-96ce-5240-8f10-cf1202286b31'::uuid,
  '66993f2c-3a35-5a4f-9ebe-3d9beb02b962'::uuid,
  'Thanks Sofia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('44ab4fb6-e988-5d4e-a952-ee2ef20f07dc'::uuid, '66993f2c-3a35-5a4f-9ebe-3d9beb02b962'::uuid, '123328a2-6e0a-5530-9449-09997654760e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a2652e18-d0aa-567b-a5e2-2bcee07c5328'::uuid, '123328a2-6e0a-5530-9449-09997654760e'::uuid, '66993f2c-3a35-5a4f-9ebe-3d9beb02b962'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('eb79379f-4a8e-54c3-94ab-613727b73cb9'::uuid, '123328a2-6e0a-5530-9449-09997654760e'::uuid, '66993f2c-3a35-5a4f-9ebe-3d9beb02b962'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b1595bf6-3efc-52e0-ba2e-6c65fce534d0'::uuid, 'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid, '48d761d1-a120-5c9e-8de9-c17b54e987e9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('57b0b594-3707-50bc-9c1d-f240216440ec'::uuid, '48d761d1-a120-5c9e-8de9-c17b54e987e9'::uuid, 'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('61e3fb61-4e4f-50dd-8d51-ece85f99983a'::uuid, '48d761d1-a120-5c9e-8de9-c17b54e987e9'::uuid, 'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '268655f6-60cd-5124-bc52-cdbe8bf8baba'::uuid,
  '61e3fb61-4e4f-50dd-8d51-ece85f99983a'::uuid,
  'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid,
  '48d761d1-a120-5c9e-8de9-c17b54e987e9'::uuid,
  'Hi Violet — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'efd79376-46d7-57f0-8a93-6fe285bf9b13'::uuid,
  '61e3fb61-4e4f-50dd-8d51-ece85f99983a'::uuid,
  '48d761d1-a120-5c9e-8de9-c17b54e987e9'::uuid,
  'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid,
  'Thanks Kenji! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('628eee42-ceae-5911-b2d1-db17e180f350'::uuid, '9583a091-71fc-59e2-a837-c827f33c072a'::uuid, '76542368-5e9c-52ba-bde0-7bedd7200b02'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fcaa363d-6ef4-59a2-9c13-5ee83a23f98d'::uuid, '76542368-5e9c-52ba-bde0-7bedd7200b02'::uuid, '9583a091-71fc-59e2-a837-c827f33c072a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dfe9ef73-4bf7-553c-a772-a19efafea2ca'::uuid, '76542368-5e9c-52ba-bde0-7bedd7200b02'::uuid, '9583a091-71fc-59e2-a837-c827f33c072a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c1e33d6e-fc06-5f5f-8497-4d96bbfe1399'::uuid, '737fe981-e236-58bd-8b5f-7d72782f3913'::uuid, '803e2dbf-90f2-5971-8873-a4ee6e96bedd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f5a9608a-7fe4-5164-816a-8325f0fb20b0'::uuid, '803e2dbf-90f2-5971-8873-a4ee6e96bedd'::uuid, '737fe981-e236-58bd-8b5f-7d72782f3913'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4d7f6dc9-02b4-5930-856b-233cc0391218'::uuid, '737fe981-e236-58bd-8b5f-7d72782f3913'::uuid, '803e2dbf-90f2-5971-8873-a4ee6e96bedd'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '41f1bbf2-b5f4-5362-82ad-ba92b041088f'::uuid,
  '4d7f6dc9-02b4-5930-856b-233cc0391218'::uuid,
  '737fe981-e236-58bd-8b5f-7d72782f3913'::uuid,
  '803e2dbf-90f2-5971-8873-a4ee6e96bedd'::uuid,
  'Hi Tara — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

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

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5adc6f09-0e41-5ce2-9192-b7583bc0e916'::uuid,
  '751c9df3-13cf-5513-8aec-b448118f41e7'::uuid,
  'e10d8f3c-3339-5b7c-aab1-cb38fa334cb4'::uuid,
  '22f028f3-fbcf-5382-8812-8aab906ff016'::uuid,
  'Thanks Julian! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b8965378-9e44-54ee-86aa-14e3d69209fa'::uuid, '96571827-6ea6-5c4e-919e-3571e4d1410e'::uuid, '2619904e-3b06-54b6-bb0f-ea16e3de5f6d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9350beb8-12e5-5f4f-ab88-4dfd09855efb'::uuid, '2619904e-3b06-54b6-bb0f-ea16e3de5f6d'::uuid, '96571827-6ea6-5c4e-919e-3571e4d1410e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('08b2b511-f6c3-5641-8de5-bec091324196'::uuid, '2619904e-3b06-54b6-bb0f-ea16e3de5f6d'::uuid, '96571827-6ea6-5c4e-919e-3571e4d1410e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('91d5481d-1e3b-5496-b3de-7b18a1aeede3'::uuid, '229d0b26-e5de-59ae-a760-fe89ec623e59'::uuid, '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0f73559b-814e-5fca-8ebf-ab93a9d6982c'::uuid, '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid, '229d0b26-e5de-59ae-a760-fe89ec623e59'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f5b6dcd6-ef76-54c8-a373-1aa8fae07fd8'::uuid, '229d0b26-e5de-59ae-a760-fe89ec623e59'::uuid, '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd1404e44-56bc-5a66-aaf1-0aa371466230'::uuid,
  'f5b6dcd6-ef76-54c8-a373-1aa8fae07fd8'::uuid,
  '229d0b26-e5de-59ae-a760-fe89ec623e59'::uuid,
  '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid,
  'Hi Hana — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ad102a89-75c3-5aec-a582-2cc19c22b788'::uuid,
  'f5b6dcd6-ef76-54c8-a373-1aa8fae07fd8'::uuid,
  '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid,
  '229d0b26-e5de-59ae-a760-fe89ec623e59'::uuid,
  'Thanks Isaac! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('03ac2d71-5a37-5fa1-ada9-0a79406b0cf9'::uuid, 'ec425ec6-5f9a-57bd-a9ad-785e91c63bf0'::uuid, '15329dac-2653-5bf8-ab92-979bca93b089'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0b39c081-6fae-5dbd-bd14-f6de9e0251d0'::uuid, '15329dac-2653-5bf8-ab92-979bca93b089'::uuid, 'ec425ec6-5f9a-57bd-a9ad-785e91c63bf0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5e3e3f7a-de54-5498-a178-8ef2e7332fde'::uuid, '15329dac-2653-5bf8-ab92-979bca93b089'::uuid, 'ec425ec6-5f9a-57bd-a9ad-785e91c63bf0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('26583fae-3379-5b58-bef4-7d19d7aea940'::uuid, 'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid, 'd380f30b-3eb8-5b9c-8d1b-1650afcd5e01'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('30d75d40-05d8-58de-90a3-3f2a280ad13d'::uuid, 'd380f30b-3eb8-5b9c-8d1b-1650afcd5e01'::uuid, 'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e3e62b99-bfc4-550b-a0c3-ae78e0f1b34c'::uuid, 'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid, 'd380f30b-3eb8-5b9c-8d1b-1650afcd5e01'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7d6662e8-118d-5bd5-822a-5e9c65c93046'::uuid,
  'e3e62b99-bfc4-550b-a0c3-ae78e0f1b34c'::uuid,
  'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid,
  'd380f30b-3eb8-5b9c-8d1b-1650afcd5e01'::uuid,
  'Hi Elena — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2836fa03-c670-569e-8f8a-4a532f013b8a'::uuid,
  'e3e62b99-bfc4-550b-a0c3-ae78e0f1b34c'::uuid,
  'd380f30b-3eb8-5b9c-8d1b-1650afcd5e01'::uuid,
  'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid,
  'Thanks Felix! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('45f43065-1132-55a1-b964-76061b69b04d'::uuid, 'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid, '862f205c-c86e-5674-b9a7-a6d3756eca94'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9b86a82c-1658-5a19-9c4b-ddb2e95e1e11'::uuid, '862f205c-c86e-5674-b9a7-a6d3756eca94'::uuid, 'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c0ac41f2-7c45-512a-b87e-75d32aa410e6'::uuid, '862f205c-c86e-5674-b9a7-a6d3756eca94'::uuid, 'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2d735bd2-0803-5f75-b24f-594b069d0b95'::uuid, 'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid, '95411eec-9c46-594a-827b-0f5c8ec314e1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('180aa650-ebc3-55e2-8995-ff67557e84d5'::uuid, '95411eec-9c46-594a-827b-0f5c8ec314e1'::uuid, 'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('044ec7c8-3b82-5ca8-baae-bb2d182b1ecb'::uuid, '95411eec-9c46-594a-827b-0f5c8ec314e1'::uuid, 'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8adaa9a1-6996-55d3-85fd-bfdcbeaaab10'::uuid,
  '044ec7c8-3b82-5ca8-baae-bb2d182b1ecb'::uuid,
  'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid,
  '95411eec-9c46-594a-827b-0f5c8ec314e1'::uuid,
  'Hi Rohan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '343ca019-d622-5805-b00e-ac2e163d7dbd'::uuid,
  '044ec7c8-3b82-5ca8-baae-bb2d182b1ecb'::uuid,
  '95411eec-9c46-594a-827b-0f5c8ec314e1'::uuid,
  'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid,
  'Thanks Sara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('95abbf8c-07ae-55ec-909d-89984ce18c06'::uuid, '65673952-33ec-5b72-b075-0d350bcdb2da'::uuid, '04960929-8e6d-526f-902a-3f56fae228ea'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0fdf404c-2c33-5430-8d41-f11a76af8b68'::uuid, '04960929-8e6d-526f-902a-3f56fae228ea'::uuid, '65673952-33ec-5b72-b075-0d350bcdb2da'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5229df52-a63f-58aa-974d-36e01984db12'::uuid, '04960929-8e6d-526f-902a-3f56fae228ea'::uuid, '65673952-33ec-5b72-b075-0d350bcdb2da'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('58c486df-ebea-5d8b-a484-f9bf241fc8e6'::uuid, '8147a3cb-192b-5bfd-8336-c12eacf477cd'::uuid, 'd43fc93e-7731-5f15-9829-c96382a66268'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('08fcdc4c-5aea-5275-9624-ccce6f9816f5'::uuid, 'd43fc93e-7731-5f15-9829-c96382a66268'::uuid, '8147a3cb-192b-5bfd-8336-c12eacf477cd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('750330c7-370a-5463-9bc5-ae705feecc45'::uuid, '8147a3cb-192b-5bfd-8336-c12eacf477cd'::uuid, 'd43fc93e-7731-5f15-9829-c96382a66268'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '39abde37-52b9-594f-ba98-6390e63d2c83'::uuid,
  '750330c7-370a-5463-9bc5-ae705feecc45'::uuid,
  '8147a3cb-192b-5bfd-8336-c12eacf477cd'::uuid,
  'd43fc93e-7731-5f15-9829-c96382a66268'::uuid,
  'Hi Samir — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '95dddfad-c22c-5706-a675-ab44cca37217'::uuid,
  '750330c7-370a-5463-9bc5-ae705feecc45'::uuid,
  'd43fc93e-7731-5f15-9829-c96382a66268'::uuid,
  '8147a3cb-192b-5bfd-8336-c12eacf477cd'::uuid,
  'Thanks Grace! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('68fccf53-08f3-50ec-bb9b-7c1917a038c6'::uuid, '1ff5e22d-0848-5550-a8c3-4df9c4050afb'::uuid, '900b4bc0-9225-59ed-bdb7-b994730f07e8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fa1edf64-1ad6-5177-ac5d-3e02ebbaccc5'::uuid, '900b4bc0-9225-59ed-bdb7-b994730f07e8'::uuid, '1ff5e22d-0848-5550-a8c3-4df9c4050afb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('434c6a05-b3cb-59ff-b6b1-e8aecdfaa8dd'::uuid, '1ff5e22d-0848-5550-a8c3-4df9c4050afb'::uuid, '900b4bc0-9225-59ed-bdb7-b994730f07e8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('138c7a49-beb0-5220-9174-c9fcc2a56651'::uuid, 'ad5c0cbc-9e41-56d0-b0ae-200c31b5995a'::uuid, '83ca350d-88aa-5712-a84d-d53fb5dfe34a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1252427e-fb80-525c-a8e0-f046db086110'::uuid, '83ca350d-88aa-5712-a84d-d53fb5dfe34a'::uuid, 'ad5c0cbc-9e41-56d0-b0ae-200c31b5995a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b7696836-8544-5c26-a39a-6bf4051261a9'::uuid, '83ca350d-88aa-5712-a84d-d53fb5dfe34a'::uuid, 'ad5c0cbc-9e41-56d0-b0ae-200c31b5995a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '46d3121a-1bfe-5435-bebe-011bea9ef5db'::uuid,
  'b7696836-8544-5c26-a39a-6bf4051261a9'::uuid,
  'ad5c0cbc-9e41-56d0-b0ae-200c31b5995a'::uuid,
  '83ca350d-88aa-5712-a84d-d53fb5dfe34a'::uuid,
  'Hi Daniel — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1a524d73-b48c-5686-a020-2c77b457d7cf'::uuid,
  'b7696836-8544-5c26-a39a-6bf4051261a9'::uuid,
  '83ca350d-88aa-5712-a84d-d53fb5dfe34a'::uuid,
  'ad5c0cbc-9e41-56d0-b0ae-200c31b5995a'::uuid,
  'Thanks Isla! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c6d1b91e-f597-5a5e-8cf6-99ac30cfdfab'::uuid, 'ad5c0cbc-9e41-56d0-b0ae-200c31b5995a'::uuid, '8720fe7c-27d8-571e-bceb-266fcecffeaa'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8d76aaef-85bf-556a-b8dc-372834838329'::uuid, '8720fe7c-27d8-571e-bceb-266fcecffeaa'::uuid, 'ad5c0cbc-9e41-56d0-b0ae-200c31b5995a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('38f300df-7248-5c66-ac67-9c518fc36a0d'::uuid, '8720fe7c-27d8-571e-bceb-266fcecffeaa'::uuid, 'ad5c0cbc-9e41-56d0-b0ae-200c31b5995a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0687959d-e8c1-5047-bded-74290e00ed58'::uuid, 'd8a33d26-1570-57fc-b4be-dd5e32331b77'::uuid, 'c3e1b9c8-0619-5fd4-a5b1-9dc8aec4a33b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e1084fb7-e8cb-5417-a992-7421a945f266'::uuid, 'c3e1b9c8-0619-5fd4-a5b1-9dc8aec4a33b'::uuid, 'd8a33d26-1570-57fc-b4be-dd5e32331b77'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('aa804d82-01e5-50d4-bf1b-cd81ace7ca0f'::uuid, 'c3e1b9c8-0619-5fd4-a5b1-9dc8aec4a33b'::uuid, 'd8a33d26-1570-57fc-b4be-dd5e32331b77'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '70c2b159-6483-58fa-8fa6-2d9f515a9010'::uuid,
  'aa804d82-01e5-50d4-bf1b-cd81ace7ca0f'::uuid,
  'd8a33d26-1570-57fc-b4be-dd5e32331b77'::uuid,
  'c3e1b9c8-0619-5fd4-a5b1-9dc8aec4a33b'::uuid,
  'Hi Nina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '71e4fba1-2c77-5145-a74c-84416f82b4fc'::uuid,
  'aa804d82-01e5-50d4-bf1b-cd81ace7ca0f'::uuid,
  'c3e1b9c8-0619-5fd4-a5b1-9dc8aec4a33b'::uuid,
  'd8a33d26-1570-57fc-b4be-dd5e32331b77'::uuid,
  'Thanks Theo! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ef310203-0d0a-5ac2-9a70-118e894b2d40'::uuid, 'b5c5f827-63ef-5230-bb5e-5e5d81dec47c'::uuid, 'b7e832e2-7e38-5beb-ac9e-250ae24b06b4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2848ca1b-d09b-5f38-bdad-3741c1c8650b'::uuid, 'b7e832e2-7e38-5beb-ac9e-250ae24b06b4'::uuid, 'b5c5f827-63ef-5230-bb5e-5e5d81dec47c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('80056eeb-cf87-5ff5-93e4-dbe6d861d9d8'::uuid, 'b5c5f827-63ef-5230-bb5e-5e5d81dec47c'::uuid, 'b7e832e2-7e38-5beb-ac9e-250ae24b06b4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e5861701-e243-5b83-bbdc-2bffc0774332'::uuid, '4e11607f-ef7e-5682-8c99-50cc32c882c8'::uuid, '377c353e-df57-5706-9534-8723efe02ecd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('40fa5a90-8456-5d0a-8eee-347e2f6da937'::uuid, '377c353e-df57-5706-9534-8723efe02ecd'::uuid, '4e11607f-ef7e-5682-8c99-50cc32c882c8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('319ab27d-57fe-56fd-92ee-7f57472f79a5'::uuid, '377c353e-df57-5706-9534-8723efe02ecd'::uuid, '4e11607f-ef7e-5682-8c99-50cc32c882c8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c2724128-bd88-5fcd-bde0-fed08d1b0478'::uuid,
  '319ab27d-57fe-56fd-92ee-7f57472f79a5'::uuid,
  '4e11607f-ef7e-5682-8c99-50cc32c882c8'::uuid,
  '377c353e-df57-5706-9534-8723efe02ecd'::uuid,
  'Hi Sofia — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5a36c147-7036-5bb7-a069-7937d8e672e3'::uuid,
  '319ab27d-57fe-56fd-92ee-7f57472f79a5'::uuid,
  '377c353e-df57-5706-9534-8723efe02ecd'::uuid,
  '4e11607f-ef7e-5682-8c99-50cc32c882c8'::uuid,
  'Thanks Lucas! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fc5635d2-f149-5ab1-a657-7c7bdaf3000d'::uuid, '1ab26a18-9f1d-5d13-b635-8e7bfec05e0e'::uuid, '3f854435-9399-5c74-9096-979bd941e61d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a7a10790-ba33-58fd-b648-0cdc80b78f6a'::uuid, '3f854435-9399-5c74-9096-979bd941e61d'::uuid, '1ab26a18-9f1d-5d13-b635-8e7bfec05e0e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b96a6d10-a3c1-545f-a2b1-ffef61663e5e'::uuid, '1ab26a18-9f1d-5d13-b635-8e7bfec05e0e'::uuid, '3f854435-9399-5c74-9096-979bd941e61d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6349c8f9-200a-54fa-9bbc-757521d0464a'::uuid, '80bfdd09-8531-533c-aa94-5cdf0372995d'::uuid, 'feac598c-38ed-5b4e-8173-ae60d6e102db'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('38614de7-1802-5c19-95d8-1eb8052fa6e0'::uuid, 'feac598c-38ed-5b4e-8173-ae60d6e102db'::uuid, '80bfdd09-8531-533c-aa94-5cdf0372995d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6cb26410-f764-5713-a648-b78b0dd780bf'::uuid, '80bfdd09-8531-533c-aa94-5cdf0372995d'::uuid, 'feac598c-38ed-5b4e-8173-ae60d6e102db'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cab1101c-5961-503b-9c3e-d9fd2f4d09f6'::uuid,
  '6cb26410-f764-5713-a648-b78b0dd780bf'::uuid,
  '80bfdd09-8531-533c-aa94-5cdf0372995d'::uuid,
  'feac598c-38ed-5b4e-8173-ae60d6e102db'::uuid,
  'Hi Zara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '48d98a3a-ca23-5a13-95f6-bf8f51cb1869'::uuid,
  '6cb26410-f764-5713-a648-b78b0dd780bf'::uuid,
  'feac598c-38ed-5b4e-8173-ae60d6e102db'::uuid,
  '80bfdd09-8531-533c-aa94-5cdf0372995d'::uuid,
  'Thanks David! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1bff1a81-27df-5567-827c-858b16d70710'::uuid, '80bfdd09-8531-533c-aa94-5cdf0372995d'::uuid, '1e2a697d-74d0-5ccd-b526-81c2a8412445'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6d68c17b-3328-5f26-abd2-fe352c250681'::uuid, '1e2a697d-74d0-5ccd-b526-81c2a8412445'::uuid, '80bfdd09-8531-533c-aa94-5cdf0372995d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2f343440-ff13-5628-9305-0c43ece1eda2'::uuid, '1e2a697d-74d0-5ccd-b526-81c2a8412445'::uuid, '80bfdd09-8531-533c-aa94-5cdf0372995d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ba71e32d-4b12-5394-b6f9-d6b562964b4c'::uuid, '32cf71fe-60c4-5273-8a0b-09ee4e6bfff9'::uuid, 'b6fd1d0a-577c-50d9-af00-76be7ac0fe27'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f6a115cb-d52b-5475-95f9-79a8aeb79f92'::uuid, 'b6fd1d0a-577c-50d9-af00-76be7ac0fe27'::uuid, '32cf71fe-60c4-5273-8a0b-09ee4e6bfff9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('15fc92a2-8e49-5260-820b-fe7cc72b1d18'::uuid, '32cf71fe-60c4-5273-8a0b-09ee4e6bfff9'::uuid, 'b6fd1d0a-577c-50d9-af00-76be7ac0fe27'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '81a8fdbb-ec54-5362-bba6-c3ae776b7769'::uuid,
  '15fc92a2-8e49-5260-820b-fe7cc72b1d18'::uuid,
  '32cf71fe-60c4-5273-8a0b-09ee4e6bfff9'::uuid,
  'b6fd1d0a-577c-50d9-af00-76be7ac0fe27'::uuid,
  'Hi Kai — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '425c1862-25a3-51ff-b34a-5274f2f581cc'::uuid,
  '15fc92a2-8e49-5260-820b-fe7cc72b1d18'::uuid,
  'b6fd1d0a-577c-50d9-af00-76be7ac0fe27'::uuid,
  '32cf71fe-60c4-5273-8a0b-09ee4e6bfff9'::uuid,
  'Thanks Aisha! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5831ce34-2d42-586c-a99a-89bce8be570f'::uuid, 'f2ef0fef-2844-5e39-a9d9-6622ac5587fb'::uuid, '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f47bca53-5617-53d8-a7ee-17b1238c39e1'::uuid, '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8'::uuid, 'f2ef0fef-2844-5e39-a9d9-6622ac5587fb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c85c191c-5be5-518e-a4b9-bd4951218864'::uuid, '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8'::uuid, 'f2ef0fef-2844-5e39-a9d9-6622ac5587fb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c4e3ec82-37f7-5cd5-922a-d27fb99d9443'::uuid, '370327fd-3558-57cf-8945-bc80d916c857'::uuid, '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('102a4213-3ef2-5165-8820-3797688595f1'::uuid, '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid, '370327fd-3558-57cf-8945-bc80d916c857'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('638a7978-1696-533f-a06f-f2c506a722e5'::uuid, '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid, '370327fd-3558-57cf-8945-bc80d916c857'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd07fc4ab-16f3-5c23-8738-11839c5a7184'::uuid,
  '638a7978-1696-533f-a06f-f2c506a722e5'::uuid,
  '370327fd-3558-57cf-8945-bc80d916c857'::uuid,
  '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid,
  'Hi Benjamin — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ad3b8b80-665c-50fb-a42d-084e5e39b431'::uuid,
  '638a7978-1696-533f-a06f-f2c506a722e5'::uuid,
  '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid,
  '370327fd-3558-57cf-8945-bc80d916c857'::uuid,
  'Thanks Nadia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0530eac2-c620-5cb8-8239-83f9e2da1ab4'::uuid, 'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid, '24a43e03-7de6-50e6-a40d-aee1ccba879b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2697182b-039f-5c77-9071-575571ddb238'::uuid, '24a43e03-7de6-50e6-a40d-aee1ccba879b'::uuid, 'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('abc948fd-5eb2-51f7-ae55-b1393db55842'::uuid, '24a43e03-7de6-50e6-a40d-aee1ccba879b'::uuid, 'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('00464b08-1681-5b42-bab8-bd378b5002d1'::uuid, 'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid, 'd753bc68-7b16-56ec-967a-6c9f5215fab8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d616ea9b-232c-5fc4-b040-238af764894d'::uuid, 'd753bc68-7b16-56ec-967a-6c9f5215fab8'::uuid, 'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('316c0642-9a27-5893-99d3-c4ea8ac2fbd8'::uuid, 'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid, 'd753bc68-7b16-56ec-967a-6c9f5215fab8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5673dd07-efc2-57f0-abf8-aed5c13e47ab'::uuid,
  '316c0642-9a27-5893-99d3-c4ea8ac2fbd8'::uuid,
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid,
  'd753bc68-7b16-56ec-967a-6c9f5215fab8'::uuid,
  'Hi Sebastian — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9a6f2f1b-e180-56d5-a84f-e97a8f08dd31'::uuid,
  '316c0642-9a27-5893-99d3-c4ea8ac2fbd8'::uuid,
  'd753bc68-7b16-56ec-967a-6c9f5215fab8'::uuid,
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid,
  'Thanks Mei! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('50e8b00d-10e0-58d0-a84b-4215943a232a'::uuid, 'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid, 'a018203c-46b7-508f-95c6-b6c42580c16c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a290e4aa-c0ee-5c24-a7c6-1e368c01a90f'::uuid, 'a018203c-46b7-508f-95c6-b6c42580c16c'::uuid, 'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('52807dc2-cb45-5a17-b4fe-df781b1c2992'::uuid, 'a018203c-46b7-508f-95c6-b6c42580c16c'::uuid, 'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('13c82d53-c9f1-5a57-867b-53ec16ff4ff0'::uuid, 'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid, '6a514a41-4c7e-5056-a14d-13305a0c1c48'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('633053fa-9777-5183-8ac5-f9237c4ac603'::uuid, '6a514a41-4c7e-5056-a14d-13305a0c1c48'::uuid, 'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b539f280-6b12-561b-9efe-6d389c3785e1'::uuid, '6a514a41-4c7e-5056-a14d-13305a0c1c48'::uuid, 'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4c955e65-3b6c-50d4-89b7-a672bde3f536'::uuid,
  'b539f280-6b12-561b-9efe-6d389c3785e1'::uuid,
  'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid,
  '6a514a41-4c7e-5056-a14d-13305a0c1c48'::uuid,
  'Hi Amina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd23558aa-ee8c-59f8-9d53-7900c13f938c'::uuid,
  'b539f280-6b12-561b-9efe-6d389c3785e1'::uuid,
  '6a514a41-4c7e-5056-a14d-13305a0c1c48'::uuid,
  'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid,
  'Thanks Henry! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fc500602-0195-55e7-986a-727124df9552'::uuid, 'f72fcbef-f134-582a-b53f-f217bb5d6d55'::uuid, 'd87f4c56-0da4-5e92-b739-b5649237064a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('66b38109-58fb-505c-827b-43b94bff74e9'::uuid, 'd87f4c56-0da4-5e92-b739-b5649237064a'::uuid, 'f72fcbef-f134-582a-b53f-f217bb5d6d55'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('814ada96-0fe6-5461-968a-c05033e9be7e'::uuid, 'd87f4c56-0da4-5e92-b739-b5649237064a'::uuid, 'f72fcbef-f134-582a-b53f-f217bb5d6d55'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1c20bd39-5b15-5dab-8bac-1cb872a75a79'::uuid, 'b99d3e95-19c1-5d94-8f9d-fb6d9ccc63c0'::uuid, '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d0216bae-4ebf-5c4e-865f-c26572665ed0'::uuid, '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid, 'b99d3e95-19c1-5d94-8f9d-fb6d9ccc63c0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('15136289-c281-5f82-83bb-d1689388a71f'::uuid, '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid, 'b99d3e95-19c1-5d94-8f9d-fb6d9ccc63c0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '52c301d8-86bd-5da9-bef0-df1094f3ed9b'::uuid,
  '15136289-c281-5f82-83bb-d1689388a71f'::uuid,
  'b99d3e95-19c1-5d94-8f9d-fb6d9ccc63c0'::uuid,
  '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid,
  'Hi Hannah — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3f560c42-22b7-53b6-a92c-e2c0c9684d3f'::uuid,
  '15136289-c281-5f82-83bb-d1689388a71f'::uuid,
  '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid,
  'b99d3e95-19c1-5d94-8f9d-fb6d9ccc63c0'::uuid,
  'Thanks Nathan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d8ce4a36-d8e6-5011-b8db-e79d28584080'::uuid, '75f6df30-5d8f-5dd3-917e-2cb576513e61'::uuid, 'd377db0e-bf42-500a-9404-0b006df6e52f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('91bb3f07-0ca7-55fa-950f-cc4a9c95ab91'::uuid, 'd377db0e-bf42-500a-9404-0b006df6e52f'::uuid, '75f6df30-5d8f-5dd3-917e-2cb576513e61'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('38a812b7-5d88-5038-9441-250a7fb2c5e7'::uuid, '75f6df30-5d8f-5dd3-917e-2cb576513e61'::uuid, 'd377db0e-bf42-500a-9404-0b006df6e52f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2fb698d5-882d-55d4-b986-4ab4a380a074'::uuid, 'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid, 'c51f57c8-ceb6-5800-8535-3bfb0d73bd50'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0a21d63b-d3d8-5878-9742-5b2366515557'::uuid, 'c51f57c8-ceb6-5800-8535-3bfb0d73bd50'::uuid, 'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d71c82a1-e468-556b-bd36-a7a35321db5a'::uuid, 'c51f57c8-ceb6-5800-8535-3bfb0d73bd50'::uuid, 'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7549cfaa-cfe7-5518-a3c6-1e8056779a49'::uuid,
  'd71c82a1-e468-556b-bd36-a7a35321db5a'::uuid,
  'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid,
  'c51f57c8-ceb6-5800-8535-3bfb0d73bd50'::uuid,
  'Hi Nora — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3e22bcf0-e18b-538f-82a3-902270b1114a'::uuid,
  'd71c82a1-e468-556b-bd36-a7a35321db5a'::uuid,
  'c51f57c8-ceb6-5800-8535-3bfb0d73bd50'::uuid,
  'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid,
  'Thanks Omar! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('544861cf-0135-5720-8eb9-8008905f7ee0'::uuid, 'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid, 'fb2d5ae5-7a9f-5875-9562-025ba2ec14d4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0fed05ab-90c9-52bd-b6f0-7cad1870f483'::uuid, 'fb2d5ae5-7a9f-5875-9562-025ba2ec14d4'::uuid, 'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c4e38476-cdd1-56d6-9e39-e53f16c2839c'::uuid, 'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid, 'fb2d5ae5-7a9f-5875-9562-025ba2ec14d4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5cc74a68-15ba-5ca4-a475-a5cf4bee1fd6'::uuid, '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid, '4ba2732c-9b95-539b-af2c-08cd05f15dba'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ae245808-7f3c-5cfb-82bd-0c250fb85d17'::uuid, '4ba2732c-9b95-539b-af2c-08cd05f15dba'::uuid, '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('05da5ef0-8ad9-5d44-93fd-d080d7e57a30'::uuid, '4ba2732c-9b95-539b-af2c-08cd05f15dba'::uuid, '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '62e947f8-4487-5430-9eaf-fc34c7e8a753'::uuid,
  '05da5ef0-8ad9-5d44-93fd-d080d7e57a30'::uuid,
  '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid,
  '4ba2732c-9b95-539b-af2c-08cd05f15dba'::uuid,
  'Hi Isaac — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a71ff410-65f3-56f0-86c7-6f8d3250891a'::uuid,
  '05da5ef0-8ad9-5d44-93fd-d080d7e57a30'::uuid,
  '4ba2732c-9b95-539b-af2c-08cd05f15dba'::uuid,
  '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid,
  'Thanks Chloe! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d12bfbb7-e39c-5ba7-ae14-1fb552bfc2d0'::uuid, '5bb68fe5-96ce-5240-8f10-cf1202286b31'::uuid, 'a1026c86-856a-5225-b193-c935211475da'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a12025b1-fa20-5a17-9145-db7af0847a9c'::uuid, 'a1026c86-856a-5225-b193-c935211475da'::uuid, '5bb68fe5-96ce-5240-8f10-cf1202286b31'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2804cec2-99bb-5be1-922d-8b2b949354e5'::uuid, '5bb68fe5-96ce-5240-8f10-cf1202286b31'::uuid, 'a1026c86-856a-5225-b193-c935211475da'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f1f03eeb-1363-50d5-94b0-f5fdfe449c78'::uuid, '48d761d1-a120-5c9e-8de9-c17b54e987e9'::uuid, 'adab7a98-c1d6-591f-8b46-750925810a73'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e7824288-3506-57bb-9f2e-5d0a0692810f'::uuid, 'adab7a98-c1d6-591f-8b46-750925810a73'::uuid, '48d761d1-a120-5c9e-8de9-c17b54e987e9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0a19cb9a-5482-59fd-ab1d-c2b831fe8502'::uuid, '48d761d1-a120-5c9e-8de9-c17b54e987e9'::uuid, 'adab7a98-c1d6-591f-8b46-750925810a73'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '739f184c-fa79-573d-91ed-3a92840696d4'::uuid,
  '0a19cb9a-5482-59fd-ab1d-c2b831fe8502'::uuid,
  '48d761d1-a120-5c9e-8de9-c17b54e987e9'::uuid,
  'adab7a98-c1d6-591f-8b46-750925810a73'::uuid,
  'Hi Felix — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ef2244b0-0dcb-56e3-bd69-3202307eb437'::uuid,
  '0a19cb9a-5482-59fd-ab1d-c2b831fe8502'::uuid,
  'adab7a98-c1d6-591f-8b46-750925810a73'::uuid,
  '48d761d1-a120-5c9e-8de9-c17b54e987e9'::uuid,
  'Thanks Violet! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('359eab6c-71d4-575a-b28b-4a1ea3a46593'::uuid, '76542368-5e9c-52ba-bde0-7bedd7200b02'::uuid, '71e76d95-9bb6-5da0-b840-adff1e3b3e09'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1f481265-ceae-5d1c-b56c-df97e1ff42d7'::uuid, '71e76d95-9bb6-5da0-b840-adff1e3b3e09'::uuid, '76542368-5e9c-52ba-bde0-7bedd7200b02'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f4427939-9a3b-5d03-8ef7-fd031bf2ff4c'::uuid, '71e76d95-9bb6-5da0-b840-adff1e3b3e09'::uuid, '76542368-5e9c-52ba-bde0-7bedd7200b02'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('72d7a8d2-7c16-51c7-b5f4-e7392881b6ba'::uuid, '803e2dbf-90f2-5971-8873-a4ee6e96bedd'::uuid, '7fbc04cc-a2f1-5c77-b110-14896c533a68'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('53c7ee1a-41d9-59c4-b36a-b61615086216'::uuid, '7fbc04cc-a2f1-5c77-b110-14896c533a68'::uuid, '803e2dbf-90f2-5971-8873-a4ee6e96bedd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e6e8ac92-89b4-5a09-9218-5e83179d05ca'::uuid, '7fbc04cc-a2f1-5c77-b110-14896c533a68'::uuid, '803e2dbf-90f2-5971-8873-a4ee6e96bedd'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '31941044-71bf-51fa-832a-d422a53019a9'::uuid,
  'e6e8ac92-89b4-5a09-9218-5e83179d05ca'::uuid,
  '803e2dbf-90f2-5971-8873-a4ee6e96bedd'::uuid,
  '7fbc04cc-a2f1-5c77-b110-14896c533a68'::uuid,
  'Hi James — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b20dc718-b340-5737-b83b-5dfb63d9d413'::uuid,
  'e6e8ac92-89b4-5a09-9218-5e83179d05ca'::uuid,
  '7fbc04cc-a2f1-5c77-b110-14896c533a68'::uuid,
  '803e2dbf-90f2-5971-8873-a4ee6e96bedd'::uuid,
  'Thanks Tara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ad09ce6e-4753-54b8-8abe-0e0e7b0905a1'::uuid, '803e2dbf-90f2-5971-8873-a4ee6e96bedd'::uuid, '6de3b6b4-174d-5f72-985c-bcd16c8eb18e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6243079b-9516-5029-9f1b-7933378692d8'::uuid, '6de3b6b4-174d-5f72-985c-bcd16c8eb18e'::uuid, '803e2dbf-90f2-5971-8873-a4ee6e96bedd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('07f1059d-dfe7-5603-97c4-295e7f22a386'::uuid, '6de3b6b4-174d-5f72-985c-bcd16c8eb18e'::uuid, '803e2dbf-90f2-5971-8873-a4ee6e96bedd'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('62158021-ed43-50b1-9a0b-a3182b93286c'::uuid, '2ca134b1-2119-5e9e-8c0e-f36ce476cf56'::uuid, 'cc3f4ff0-c75f-5419-a48a-b4fd93e58037'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c1603f48-7627-5b1b-90b0-820dca736280'::uuid, 'cc3f4ff0-c75f-5419-a48a-b4fd93e58037'::uuid, '2ca134b1-2119-5e9e-8c0e-f36ce476cf56'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('87064a39-6d68-58bd-b3fc-5fa2c5e4d864'::uuid, '2ca134b1-2119-5e9e-8c0e-f36ce476cf56'::uuid, 'cc3f4ff0-c75f-5419-a48a-b4fd93e58037'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5dced981-1731-54a1-8eb8-c69cb63ace9a'::uuid,
  '87064a39-6d68-58bd-b3fc-5fa2c5e4d864'::uuid,
  '2ca134b1-2119-5e9e-8c0e-f36ce476cf56'::uuid,
  'cc3f4ff0-c75f-5419-a48a-b4fd93e58037'::uuid,
  'Hi Grace — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '50e227a5-87a3-5052-80b2-9a7df94be4ac'::uuid,
  '87064a39-6d68-58bd-b3fc-5fa2c5e4d864'::uuid,
  'cc3f4ff0-c75f-5419-a48a-b4fd93e58037'::uuid,
  '2ca134b1-2119-5e9e-8c0e-f36ce476cf56'::uuid,
  'Thanks Aaron! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9965284e-29cc-5c9f-b1ac-abdc42255308'::uuid, '93006b3a-19e8-5e78-8f8e-4e880c4429ef'::uuid, 'bf844e91-b34b-51f3-9b61-28aac491ce08'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b3ba62d7-3ef6-506e-bde0-0795b535da6c'::uuid, 'bf844e91-b34b-51f3-9b61-28aac491ce08'::uuid, '93006b3a-19e8-5e78-8f8e-4e880c4429ef'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bea00298-41ab-52dd-a1e7-ea2b58474f58'::uuid, '93006b3a-19e8-5e78-8f8e-4e880c4429ef'::uuid, 'bf844e91-b34b-51f3-9b61-28aac491ce08'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ea960fc1-fb20-5fa6-93a2-648eb7fd46e3'::uuid, 'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid, '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('694bd834-72e2-590b-bb9a-dbd377ce574d'::uuid, '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid, 'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f589992d-4eaf-559e-a59e-05629e9580e8'::uuid, '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid, 'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0201107a-ee8a-5d76-8130-c80604d9d8d0'::uuid,
  'f589992d-4eaf-559e-a59e-05629e9580e8'::uuid,
  'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid,
  '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid,
  'Hi Isla — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9bf62bc0-e0c5-5684-b9f1-92e4e62c0bd4'::uuid,
  'f589992d-4eaf-559e-a59e-05629e9580e8'::uuid,
  '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid,
  'e68a5038-ad19-5dd4-b853-5a134e7a6b75'::uuid,
  'Thanks Noah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('eea1000f-418d-5abe-a4a2-c9f7ae2a9314'::uuid, 'f1960a0a-78f4-50df-a9b5-52f5cecb2a7f'::uuid, 'bc3269b7-ccf7-597d-a309-30596d8dbb75'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('23f8a261-e449-50da-b136-d38dc6b8488a'::uuid, 'bc3269b7-ccf7-597d-a309-30596d8dbb75'::uuid, 'f1960a0a-78f4-50df-a9b5-52f5cecb2a7f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('40d98785-a9ac-5172-a6a2-38c445f48938'::uuid, 'bc3269b7-ccf7-597d-a309-30596d8dbb75'::uuid, 'f1960a0a-78f4-50df-a9b5-52f5cecb2a7f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8f400d42-804c-57e5-ae6f-045d77e8994d'::uuid, 'da80e546-c3ba-571b-8135-5f7f0e9a90e0'::uuid, '59fc5e89-4210-5535-9f42-ed5204636320'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0437caaf-219f-5edf-862a-c2d9a7403bb8'::uuid, '59fc5e89-4210-5535-9f42-ed5204636320'::uuid, 'da80e546-c3ba-571b-8135-5f7f0e9a90e0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2efcee88-74e8-5d93-8f3d-e8ddeb641605'::uuid, '59fc5e89-4210-5535-9f42-ed5204636320'::uuid, 'da80e546-c3ba-571b-8135-5f7f0e9a90e0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3704e1b8-0db0-50b9-8812-9b0aee02cdeb'::uuid,
  '2efcee88-74e8-5d93-8f3d-e8ddeb641605'::uuid,
  'da80e546-c3ba-571b-8135-5f7f0e9a90e0'::uuid,
  '59fc5e89-4210-5535-9f42-ed5204636320'::uuid,
  'Hi Yara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '680e2d8e-8e5e-5578-a17f-fcfdb17c2cf5'::uuid,
  '2efcee88-74e8-5d93-8f3d-e8ddeb641605'::uuid,
  '59fc5e89-4210-5535-9f42-ed5204636320'::uuid,
  'da80e546-c3ba-571b-8135-5f7f0e9a90e0'::uuid,
  'Thanks Ethan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5830f8fc-41db-57fe-aeb4-3d29a4a112b7'::uuid, 'da80e546-c3ba-571b-8135-5f7f0e9a90e0'::uuid, '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fae24971-4f4d-51b9-a0ac-d6dead2fe0b0'::uuid, '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid, 'da80e546-c3ba-571b-8135-5f7f0e9a90e0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;
