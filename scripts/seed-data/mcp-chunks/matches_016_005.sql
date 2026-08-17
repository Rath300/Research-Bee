INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd13bca9a-8f74-5897-b708-2b14d5ea1abe'::uuid,
  '44428b8e-ed10-5552-8556-33f44b35ef9a'::uuid,
  '613b2f0f-fb54-55e5-95a9-2be7539b4ec3'::uuid,
  '345c8171-44e4-513a-98ee-6a601680d628'::uuid,
  'Hi Yara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '73bff1ae-ea04-58ea-b175-a0adc64d5fbc'::uuid,
  '44428b8e-ed10-5552-8556-33f44b35ef9a'::uuid,
  '345c8171-44e4-513a-98ee-6a601680d628'::uuid,
  '613b2f0f-fb54-55e5-95a9-2be7539b4ec3'::uuid,
  'Thanks Ethan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('28ed6140-ec2a-5874-9491-89169682c15c'::uuid, '613b2f0f-fb54-55e5-95a9-2be7539b4ec3'::uuid, 'b6d76b9c-c861-5e04-9a0b-242cf40b872e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('83f35578-2f6f-5a3b-8a95-e6c5eabac36d'::uuid, 'b6d76b9c-c861-5e04-9a0b-242cf40b872e'::uuid, '613b2f0f-fb54-55e5-95a9-2be7539b4ec3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('53b5e97d-95c1-593e-9d58-12c486ac6ebd'::uuid, '613b2f0f-fb54-55e5-95a9-2be7539b4ec3'::uuid, 'b6d76b9c-c861-5e04-9a0b-242cf40b872e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('07e5397c-ee1e-52d3-8ca2-a1ff8c5cb6af'::uuid, 'bdbffa25-5dda-547c-904d-3abab742a813'::uuid, '559ed6d7-7717-5fb9-b2f1-68534a7ee556'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9d0c7584-24d1-573a-b816-0d6c933ccfe9'::uuid, '559ed6d7-7717-5fb9-b2f1-68534a7ee556'::uuid, 'bdbffa25-5dda-547c-904d-3abab742a813'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bcafb873-d4a7-5f8b-92ec-823b1db44c46'::uuid, '559ed6d7-7717-5fb9-b2f1-68534a7ee556'::uuid, 'bdbffa25-5dda-547c-904d-3abab742a813'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5a964932-9cac-58f3-bf39-bb8084607c8e'::uuid,
  'bcafb873-d4a7-5f8b-92ec-823b1db44c46'::uuid,
  'bdbffa25-5dda-547c-904d-3abab742a813'::uuid,
  '559ed6d7-7717-5fb9-b2f1-68534a7ee556'::uuid,
  'Hi Lucas — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f5f7544d-87e5-5215-baf2-11798bd5e1b2'::uuid,
  'bcafb873-d4a7-5f8b-92ec-823b1db44c46'::uuid,
  '559ed6d7-7717-5fb9-b2f1-68534a7ee556'::uuid,
  'bdbffa25-5dda-547c-904d-3abab742a813'::uuid,
  'Thanks Leila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('713ab3e7-622a-57f1-87c3-24e83e215aa6'::uuid, 'e57c50be-fd3b-5bcb-a5e2-fc50014c7bf9'::uuid, '3bd2ebbe-1d87-59b0-bbcc-11eda780a6bc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c7a9bb38-1b88-5c83-92fa-c22df5e2fe50'::uuid, '3bd2ebbe-1d87-59b0-bbcc-11eda780a6bc'::uuid, 'e57c50be-fd3b-5bcb-a5e2-fc50014c7bf9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ca5fa2d6-a490-5044-92e4-c4d855a978d7'::uuid, '3bd2ebbe-1d87-59b0-bbcc-11eda780a6bc'::uuid, 'e57c50be-fd3b-5bcb-a5e2-fc50014c7bf9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a7dc9f98-1954-5295-8c4f-59ecb029d584'::uuid, '411c1778-e6b2-5e2a-bd42-945f2962ece3'::uuid, '05c0c723-6829-5a0e-abc6-dafc9db5aa7c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f8e04b70-9b9d-5676-9be4-dfc7440de4b8'::uuid, '05c0c723-6829-5a0e-abc6-dafc9db5aa7c'::uuid, '411c1778-e6b2-5e2a-bd42-945f2962ece3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dc7e7c0c-0ecb-5933-b86d-9497a004b825'::uuid, '05c0c723-6829-5a0e-abc6-dafc9db5aa7c'::uuid, '411c1778-e6b2-5e2a-bd42-945f2962ece3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2061ad79-cc3a-5599-b3a1-dcc79e2ea539'::uuid,
  'dc7e7c0c-0ecb-5933-b86d-9497a004b825'::uuid,
  '411c1778-e6b2-5e2a-bd42-945f2962ece3'::uuid,
  '05c0c723-6829-5a0e-abc6-dafc9db5aa7c'::uuid,
  'Hi David — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '82cf5a24-96fe-568d-9b04-27fbd65a1fdc'::uuid,
  'dc7e7c0c-0ecb-5933-b86d-9497a004b825'::uuid,
  '05c0c723-6829-5a0e-abc6-dafc9db5aa7c'::uuid,
  '411c1778-e6b2-5e2a-bd42-945f2962ece3'::uuid,
  'Thanks Sana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('48025f51-eec6-56af-a5e4-360f44588c85'::uuid, '7ef20ab1-ba74-5bbd-8474-5509bd90af81'::uuid, '53a7a968-97f9-5f8a-be3a-9717574c6e58'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('38107fa9-94ab-579d-8081-456688e27dca'::uuid, '53a7a968-97f9-5f8a-be3a-9717574c6e58'::uuid, '7ef20ab1-ba74-5bbd-8474-5509bd90af81'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('06ceecd3-cef0-55b8-88b5-83b6a19ff373'::uuid, '53a7a968-97f9-5f8a-be3a-9717574c6e58'::uuid, '7ef20ab1-ba74-5bbd-8474-5509bd90af81'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('196985c8-d41f-5b84-9c11-312c8b2d5212'::uuid, '43b38cd0-7ecb-53bb-86c7-76bed869d19f'::uuid, '45150839-6840-5863-8a4a-6531e7974e3f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1086f253-9405-5654-8dad-0781bb080819'::uuid, '45150839-6840-5863-8a4a-6531e7974e3f'::uuid, '43b38cd0-7ecb-53bb-86c7-76bed869d19f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fa8d40df-a3fb-5abd-98e2-92176886d088'::uuid, '43b38cd0-7ecb-53bb-86c7-76bed869d19f'::uuid, '45150839-6840-5863-8a4a-6531e7974e3f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9e889f42-3285-56db-bd22-0d8fe0b86100'::uuid,
  'fa8d40df-a3fb-5abd-98e2-92176886d088'::uuid,
  '43b38cd0-7ecb-53bb-86c7-76bed869d19f'::uuid,
  '45150839-6840-5863-8a4a-6531e7974e3f'::uuid,
  'Hi Diego — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f2c582dd-b841-5b34-a8dd-01c8ad71ea4c'::uuid,
  'fa8d40df-a3fb-5abd-98e2-92176886d088'::uuid,
  '45150839-6840-5863-8a4a-6531e7974e3f'::uuid,
  '43b38cd0-7ecb-53bb-86c7-76bed869d19f'::uuid,
  'Thanks Hana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('427057f3-d983-5026-a9bb-a470347e68c7'::uuid, '43b38cd0-7ecb-53bb-86c7-76bed869d19f'::uuid, '1502bff0-510c-5a05-84fb-941e5b0b0d0c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cf9ffe1b-fdbb-5564-bae1-78d05c498ea5'::uuid, '1502bff0-510c-5a05-84fb-941e5b0b0d0c'::uuid, '43b38cd0-7ecb-53bb-86c7-76bed869d19f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9ea01b2b-bb53-5498-aace-e9a2796e2586'::uuid, '1502bff0-510c-5a05-84fb-941e5b0b0d0c'::uuid, '43b38cd0-7ecb-53bb-86c7-76bed869d19f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ce398374-d2a0-5260-a8b1-0b28e84a60de'::uuid, '601a15d3-ba12-5ed0-8b38-d924a5e127f4'::uuid, '7f1973e3-c24f-5d08-864f-0ad85e4e2f45'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4276b47e-bfb8-5af7-97de-373c7fa1b0ad'::uuid, '7f1973e3-c24f-5d08-864f-0ad85e4e2f45'::uuid, '601a15d3-ba12-5ed0-8b38-d924a5e127f4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2c82eac5-91c6-5cda-ba23-848c7d2bed80'::uuid, '601a15d3-ba12-5ed0-8b38-d924a5e127f4'::uuid, '7f1973e3-c24f-5d08-864f-0ad85e4e2f45'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c6de0f24-73d7-58ef-b2be-5f117b6919b5'::uuid,
  '2c82eac5-91c6-5cda-ba23-848c7d2bed80'::uuid,
  '601a15d3-ba12-5ed0-8b38-d924a5e127f4'::uuid,
  '7f1973e3-c24f-5d08-864f-0ad85e4e2f45'::uuid,
  'Hi Nadia — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '493cc397-9506-5363-9f24-1adb665fe952'::uuid,
  '2c82eac5-91c6-5cda-ba23-848c7d2bed80'::uuid,
  '7f1973e3-c24f-5d08-864f-0ad85e4e2f45'::uuid,
  '601a15d3-ba12-5ed0-8b38-d924a5e127f4'::uuid,
  'Thanks Maya! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('346a1705-754a-559d-a97a-904124fa5572'::uuid, '8d53c389-fe52-5d2a-9fe2-d66af24c329d'::uuid, 'a44778cb-c276-5a51-bc92-31e723fba28c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('184d4dcc-3aba-5d57-bf02-571c4a329361'::uuid, 'a44778cb-c276-5a51-bc92-31e723fba28c'::uuid, '8d53c389-fe52-5d2a-9fe2-d66af24c329d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('19cbd9b1-55cd-5992-ae10-c8fd963f81c6'::uuid, '8d53c389-fe52-5d2a-9fe2-d66af24c329d'::uuid, 'a44778cb-c276-5a51-bc92-31e723fba28c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c4ad4e4d-b4ae-5923-b97f-37dc581a0cb0'::uuid, '082a2d5f-3bf4-561b-af30-d0b06299b4ba'::uuid, 'f0b67df3-69c6-55af-85f4-d8d0f4ea1143'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('49d85d57-0dbb-594c-885f-e273febef12d'::uuid, 'f0b67df3-69c6-55af-85f4-d8d0f4ea1143'::uuid, '082a2d5f-3bf4-561b-af30-d0b06299b4ba'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f9422141-a8d5-5a73-afdf-30ee0e5a39f0'::uuid, '082a2d5f-3bf4-561b-af30-d0b06299b4ba'::uuid, 'f0b67df3-69c6-55af-85f4-d8d0f4ea1143'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;