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