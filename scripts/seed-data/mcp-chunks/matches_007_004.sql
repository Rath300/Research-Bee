INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('811b1ea7-1be9-5606-83b6-3ae3398c6de6'::uuid, 'c78b2092-0056-5d5f-a59a-0408b3bbf197'::uuid, '743deae9-0a26-5472-9f76-6e4aea019515'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8a64a055-8871-564d-afb2-2f6ffc8f0331'::uuid, '743deae9-0a26-5472-9f76-6e4aea019515'::uuid, 'c78b2092-0056-5d5f-a59a-0408b3bbf197'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1cd89215-8a09-5d95-8242-85edfc4965ab'::uuid, '743deae9-0a26-5472-9f76-6e4aea019515'::uuid, 'c78b2092-0056-5d5f-a59a-0408b3bbf197'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('748f89a8-0a97-532e-bffd-9e0d48a9b78d'::uuid, '42a644d9-ef02-551e-98fd-86c9547f5344'::uuid, 'c93a94da-3c5b-5826-8ce6-38ae54fa34c9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fad8bdcf-ac18-5191-bab1-6af234fdd98d'::uuid, 'c93a94da-3c5b-5826-8ce6-38ae54fa34c9'::uuid, '42a644d9-ef02-551e-98fd-86c9547f5344'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d007b8e0-6658-5f56-95ee-40417093308f'::uuid, '42a644d9-ef02-551e-98fd-86c9547f5344'::uuid, 'c93a94da-3c5b-5826-8ce6-38ae54fa34c9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a1bca44b-5a1b-5bc1-aef8-5938a6d48a35'::uuid,
  'd007b8e0-6658-5f56-95ee-40417093308f'::uuid,
  '42a644d9-ef02-551e-98fd-86c9547f5344'::uuid,
  'c93a94da-3c5b-5826-8ce6-38ae54fa34c9'::uuid,
  'Hi Violet — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '26b76898-f88e-556d-9663-0becb536ca90'::uuid,
  'd007b8e0-6658-5f56-95ee-40417093308f'::uuid,
  'c93a94da-3c5b-5826-8ce6-38ae54fa34c9'::uuid,
  '42a644d9-ef02-551e-98fd-86c9547f5344'::uuid,
  'Thanks Kenji! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('05ecf67d-8319-5d4b-a90b-cb1fba41ff8e'::uuid, '06f62af9-52f4-52fc-9257-21fc2d7258ca'::uuid, 'ff878e2b-1aec-594f-ad30-e0ed7c4c90ef'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('29ee2a86-0d82-5a78-8a41-bed7cd1c160e'::uuid, 'ff878e2b-1aec-594f-ad30-e0ed7c4c90ef'::uuid, '06f62af9-52f4-52fc-9257-21fc2d7258ca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4e26fb9b-9f8e-50c9-9dec-a894970c1c6b'::uuid, '06f62af9-52f4-52fc-9257-21fc2d7258ca'::uuid, 'ff878e2b-1aec-594f-ad30-e0ed7c4c90ef'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('42e5d141-296b-5cd5-865f-57d454a8bb62'::uuid, '188d7ba6-25d8-5a8a-a635-f07c138073d7'::uuid, 'd24510ff-2229-5382-93e5-5fcb3fc7f432'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3cdc11cd-cc46-52d7-ba45-364cb21d207f'::uuid, 'd24510ff-2229-5382-93e5-5fcb3fc7f432'::uuid, '188d7ba6-25d8-5a8a-a635-f07c138073d7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f309e240-1bcf-572c-b43b-343d93b3ef5e'::uuid, '188d7ba6-25d8-5a8a-a635-f07c138073d7'::uuid, 'd24510ff-2229-5382-93e5-5fcb3fc7f432'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '14af4660-0bb7-510c-b35e-65a1ed6610b3'::uuid,
  'f309e240-1bcf-572c-b43b-343d93b3ef5e'::uuid,
  '188d7ba6-25d8-5a8a-a635-f07c138073d7'::uuid,
  'd24510ff-2229-5382-93e5-5fcb3fc7f432'::uuid,
  'Hi Tara — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2e70c508-8dba-5bbb-946c-0b6afa87e084'::uuid,
  'f309e240-1bcf-572c-b43b-343d93b3ef5e'::uuid,
  'd24510ff-2229-5382-93e5-5fcb3fc7f432'::uuid,
  '188d7ba6-25d8-5a8a-a635-f07c138073d7'::uuid,
  'Thanks Kai! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d8c69263-e573-5652-a66b-5b9fd40bb858'::uuid, '9e01d76a-1e4d-50fe-9b8f-86b20984cb69'::uuid, '41ef8051-746a-5445-b74c-fa8dcf725cac'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('986980eb-6820-5c89-bb2d-9d84dd3e7de2'::uuid, '41ef8051-746a-5445-b74c-fa8dcf725cac'::uuid, '9e01d76a-1e4d-50fe-9b8f-86b20984cb69'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8867afd7-3e11-500c-9f44-7c2b4c5d1f43'::uuid, '41ef8051-746a-5445-b74c-fa8dcf725cac'::uuid, '9e01d76a-1e4d-50fe-9b8f-86b20984cb69'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('717d150f-ecb1-5a9c-a4d6-55cce278ca4c'::uuid, 'd0e2a40d-5b64-5786-b76e-01a152857c03'::uuid, 'd679fe8c-5b10-5615-a406-180c8b9dedf8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('904ffc8f-6191-5a22-8779-09fe05dbe0fa'::uuid, 'd679fe8c-5b10-5615-a406-180c8b9dedf8'::uuid, 'd0e2a40d-5b64-5786-b76e-01a152857c03'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('06411533-aa73-5951-89cd-0386a2d289d6'::uuid, 'd0e2a40d-5b64-5786-b76e-01a152857c03'::uuid, 'd679fe8c-5b10-5615-a406-180c8b9dedf8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2d4888fc-1530-5078-9b05-40dc0f0bd455'::uuid,
  '06411533-aa73-5951-89cd-0386a2d289d6'::uuid,
  'd0e2a40d-5b64-5786-b76e-01a152857c03'::uuid,
  'd679fe8c-5b10-5615-a406-180c8b9dedf8'::uuid,
  'Hi Imani — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '67455786-e176-5589-bc86-2183af8096ed'::uuid,
  '06411533-aa73-5951-89cd-0386a2d289d6'::uuid,
  'd679fe8c-5b10-5615-a406-180c8b9dedf8'::uuid,
  'd0e2a40d-5b64-5786-b76e-01a152857c03'::uuid,
  'Thanks Benjamin! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('166ac3cb-041b-54d5-a099-d7500a972967'::uuid, 'd0e2a40d-5b64-5786-b76e-01a152857c03'::uuid, '9fb50165-a8eb-59fc-a02a-980426bca98e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bf3b224a-0aaa-5fde-a2b6-26a074bf7dee'::uuid, '9fb50165-a8eb-59fc-a02a-980426bca98e'::uuid, 'd0e2a40d-5b64-5786-b76e-01a152857c03'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('634beaab-ecfe-58dc-a4da-a2ecace7b8b7'::uuid, '9fb50165-a8eb-59fc-a02a-980426bca98e'::uuid, 'd0e2a40d-5b64-5786-b76e-01a152857c03'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('268b6a80-6b23-5e98-b128-933fe263754c'::uuid, 'd18c35cd-30d2-5a94-bfe3-7782f41a3dc6'::uuid, 'dd003888-417e-5adb-be0b-88b099d71a72'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b7f0985c-fac7-5bdf-a217-7545169a26b1'::uuid, 'dd003888-417e-5adb-be0b-88b099d71a72'::uuid, 'd18c35cd-30d2-5a94-bfe3-7782f41a3dc6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0614fc15-784d-506b-acee-38cc4c0f874b'::uuid, 'd18c35cd-30d2-5a94-bfe3-7782f41a3dc6'::uuid, 'dd003888-417e-5adb-be0b-88b099d71a72'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fff6dd79-0f81-5704-81a2-b3beb02a9537'::uuid,
  '0614fc15-784d-506b-acee-38cc4c0f874b'::uuid,
  'd18c35cd-30d2-5a94-bfe3-7782f41a3dc6'::uuid,
  'dd003888-417e-5adb-be0b-88b099d71a72'::uuid,
  'Hi Noah — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd0ff88d0-2cdd-5de3-bdf6-9d65eb5f0ede'::uuid,
  '0614fc15-784d-506b-acee-38cc4c0f874b'::uuid,
  'dd003888-417e-5adb-be0b-88b099d71a72'::uuid,
  'd18c35cd-30d2-5a94-bfe3-7782f41a3dc6'::uuid,
  'Thanks Ava! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('612b2b2f-54cc-5b31-9631-f77990a4be67'::uuid, '17e09f15-8bff-59bc-a0d2-6ddba4ef2622'::uuid, '6358d0af-c374-5016-a887-36f53d4bd779'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1556f8c9-5719-5465-9804-74a6d4f386df'::uuid, '6358d0af-c374-5016-a887-36f53d4bd779'::uuid, '17e09f15-8bff-59bc-a0d2-6ddba4ef2622'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('63a25a05-12fc-5256-abcf-6eb7cc37d5ba'::uuid, '17e09f15-8bff-59bc-a0d2-6ddba4ef2622'::uuid, '6358d0af-c374-5016-a887-36f53d4bd779'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('123a0993-8d02-58d2-b816-089bd768fdab'::uuid, '09cf7b11-ff50-5d6c-840c-5ff524073bc4'::uuid, '603e0ceb-34f7-596c-8bb3-f211c4655fe5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('20cfd792-403a-5051-bc1e-cf3f42a19681'::uuid, '603e0ceb-34f7-596c-8bb3-f211c4655fe5'::uuid, '09cf7b11-ff50-5d6c-840c-5ff524073bc4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e8410cfa-ae38-575b-9074-ac742cacb3da'::uuid, '09cf7b11-ff50-5d6c-840c-5ff524073bc4'::uuid, '603e0ceb-34f7-596c-8bb3-f211c4655fe5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cdfd3f3b-85b4-5951-8cad-fd54c01f601a'::uuid,
  'e8410cfa-ae38-575b-9074-ac742cacb3da'::uuid,
  '09cf7b11-ff50-5d6c-840c-5ff524073bc4'::uuid,
  '603e0ceb-34f7-596c-8bb3-f211c4655fe5'::uuid,
  'Hi Ethan — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6f5b1623-e870-5e1c-a7b0-7b92c0646d7c'::uuid,
  'e8410cfa-ae38-575b-9074-ac742cacb3da'::uuid,
  '603e0ceb-34f7-596c-8bb3-f211c4655fe5'::uuid,
  '09cf7b11-ff50-5d6c-840c-5ff524073bc4'::uuid,
  'Thanks Amina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;