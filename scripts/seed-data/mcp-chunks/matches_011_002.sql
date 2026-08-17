INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fa44ced6-f785-5345-8f72-9e0e0a90bc09'::uuid,
  '472d404d-72bc-5e32-b676-f129856a3277'::uuid,
  'b11a21f9-aaa6-5e4a-b799-262e6d513bf1'::uuid,
  '3885d68d-f126-5f98-897e-f4679395d859'::uuid,
  'Hi Noah — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '59762ce4-cdc5-5cb9-baac-6856a7e156cc'::uuid,
  '472d404d-72bc-5e32-b676-f129856a3277'::uuid,
  '3885d68d-f126-5f98-897e-f4679395d859'::uuid,
  'b11a21f9-aaa6-5e4a-b799-262e6d513bf1'::uuid,
  'Thanks Ava! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8b80be17-c9b3-58cd-8ac5-8afd4ec6fda8'::uuid, 'a5eb7d26-8083-5569-82c4-2cbb0f496de7'::uuid, 'cc231435-d9ae-5d15-affd-9d705a76b1a1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('be028baf-1d57-5327-9720-41ea9c125dd7'::uuid, 'cc231435-d9ae-5d15-affd-9d705a76b1a1'::uuid, 'a5eb7d26-8083-5569-82c4-2cbb0f496de7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('841d0c55-cd40-5633-bdfd-ed1197954643'::uuid, 'a5eb7d26-8083-5569-82c4-2cbb0f496de7'::uuid, 'cc231435-d9ae-5d15-affd-9d705a76b1a1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bb337f22-6977-5dd7-b762-68fe8e83b0cd'::uuid, 'a32ba5d6-4384-5565-bc82-72ceeafa3e5d'::uuid, '56d23229-5074-553f-90e4-26d72cf20897'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2b722c1a-3fd9-5423-a997-ee1065a6789f'::uuid, '56d23229-5074-553f-90e4-26d72cf20897'::uuid, 'a32ba5d6-4384-5565-bc82-72ceeafa3e5d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ada21865-c08e-5e88-9d78-88e0e154f42c'::uuid, '56d23229-5074-553f-90e4-26d72cf20897'::uuid, 'a32ba5d6-4384-5565-bc82-72ceeafa3e5d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7c6687f5-a7b8-5490-a89d-c6f0ae9bc210'::uuid,
  'ada21865-c08e-5e88-9d78-88e0e154f42c'::uuid,
  'a32ba5d6-4384-5565-bc82-72ceeafa3e5d'::uuid,
  '56d23229-5074-553f-90e4-26d72cf20897'::uuid,
  'Hi Ethan — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e1fb0327-d428-50d7-940e-ef0192850b40'::uuid,
  'ada21865-c08e-5e88-9d78-88e0e154f42c'::uuid,
  '56d23229-5074-553f-90e4-26d72cf20897'::uuid,
  'a32ba5d6-4384-5565-bc82-72ceeafa3e5d'::uuid,
  'Thanks Amina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('50a3a492-d381-5422-8513-26ed8c738fce'::uuid, '12fb840a-85f9-51d1-a098-9f48ae2a57b8'::uuid, '3dc0eb9c-b237-5c59-9e37-3d956ac72f8f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cebb35aa-342d-5c90-9f16-a932f0a8a695'::uuid, '3dc0eb9c-b237-5c59-9e37-3d956ac72f8f'::uuid, '12fb840a-85f9-51d1-a098-9f48ae2a57b8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('33a07aeb-d8ee-5f8c-93c3-abd0315a7ddc'::uuid, '12fb840a-85f9-51d1-a098-9f48ae2a57b8'::uuid, '3dc0eb9c-b237-5c59-9e37-3d956ac72f8f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5bb157f9-39ef-5248-ac83-092594a10c09'::uuid, '2c9ba917-c830-5bfb-b0bc-663f09ef379b'::uuid, 'eb613d7b-54a9-501e-b57e-a8baaa4fbf44'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('de13d00a-5aac-5156-b847-2c9275782323'::uuid, 'eb613d7b-54a9-501e-b57e-a8baaa4fbf44'::uuid, '2c9ba917-c830-5bfb-b0bc-663f09ef379b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('90bd6f6b-32ae-58c3-9a8f-51842627994e'::uuid, '2c9ba917-c830-5bfb-b0bc-663f09ef379b'::uuid, 'eb613d7b-54a9-501e-b57e-a8baaa4fbf44'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fd417c90-4b99-5f8c-b4eb-2cac2994be6a'::uuid,
  '90bd6f6b-32ae-58c3-9a8f-51842627994e'::uuid,
  '2c9ba917-c830-5bfb-b0bc-663f09ef379b'::uuid,
  'eb613d7b-54a9-501e-b57e-a8baaa4fbf44'::uuid,
  'Hi Caleb — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fc2cedc3-4aed-51d9-b10e-d47586c838f6'::uuid,
  '90bd6f6b-32ae-58c3-9a8f-51842627994e'::uuid,
  'eb613d7b-54a9-501e-b57e-a8baaa4fbf44'::uuid,
  '2c9ba917-c830-5bfb-b0bc-663f09ef379b'::uuid,
  'Thanks Hannah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6b6a0c25-3f5b-5b1d-be42-4b6ba4ec1857'::uuid, '2c9ba917-c830-5bfb-b0bc-663f09ef379b'::uuid, '4fa916d6-a6c1-5edf-943e-119616ae9370'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('455db8b3-d623-5697-a564-9caa283ab4a8'::uuid, '4fa916d6-a6c1-5edf-943e-119616ae9370'::uuid, '2c9ba917-c830-5bfb-b0bc-663f09ef379b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('28fe04eb-c5e4-520d-b9d6-a41bfdce678c'::uuid, '2c9ba917-c830-5bfb-b0bc-663f09ef379b'::uuid, '4fa916d6-a6c1-5edf-943e-119616ae9370'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bc5f662f-9ccb-532e-aef5-78410fc8ee91'::uuid, 'dc812569-44a4-5798-a90f-fb9ec9b15fb0'::uuid, '60cca69c-84bc-5bfc-b458-9eca431f832f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3ed1b5a8-e304-5466-af42-346230b0056f'::uuid, '60cca69c-84bc-5bfc-b458-9eca431f832f'::uuid, 'dc812569-44a4-5798-a90f-fb9ec9b15fb0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('82fe8175-efde-5179-8464-4fcca4be962b'::uuid, '60cca69c-84bc-5bfc-b458-9eca431f832f'::uuid, 'dc812569-44a4-5798-a90f-fb9ec9b15fb0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2b85edda-c721-539e-904c-9afad36ffbc2'::uuid,
  '82fe8175-efde-5179-8464-4fcca4be962b'::uuid,
  'dc812569-44a4-5798-a90f-fb9ec9b15fb0'::uuid,
  '60cca69c-84bc-5bfc-b458-9eca431f832f'::uuid,
  'Hi Sana — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '469e0fa2-631c-5024-b238-cea661d084bd'::uuid,
  '82fe8175-efde-5179-8464-4fcca4be962b'::uuid,
  '60cca69c-84bc-5bfc-b458-9eca431f832f'::uuid,
  'dc812569-44a4-5798-a90f-fb9ec9b15fb0'::uuid,
  'Thanks Julian! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6eb00755-abec-5904-8a7e-871e379bbfef'::uuid, 'e6f31c55-2acb-59f4-b10e-e3657979db8f'::uuid, 'b3f204c0-b5ce-55c6-be97-067e8c0334b6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('614819f1-d196-5827-9983-a27bcbf03c81'::uuid, 'b3f204c0-b5ce-55c6-be97-067e8c0334b6'::uuid, 'e6f31c55-2acb-59f4-b10e-e3657979db8f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2a486fbc-6afb-51d0-80e6-0e157219d0fb'::uuid, 'b3f204c0-b5ce-55c6-be97-067e8c0334b6'::uuid, 'e6f31c55-2acb-59f4-b10e-e3657979db8f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1306ebf2-7f1c-584f-b630-935ccd599399'::uuid, 'a0d489bc-17d8-56b1-a52a-67fedb5755c2'::uuid, '7fa979d0-8550-56ee-91d7-4eaf982710d7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('66016097-b34c-5103-85f2-cd9985b5fad6'::uuid, '7fa979d0-8550-56ee-91d7-4eaf982710d7'::uuid, 'a0d489bc-17d8-56b1-a52a-67fedb5755c2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ba4b26ab-0071-515c-a4a0-a2178f409be8'::uuid, '7fa979d0-8550-56ee-91d7-4eaf982710d7'::uuid, 'a0d489bc-17d8-56b1-a52a-67fedb5755c2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '81a63f14-5cdb-5b81-a3d0-282578a6c999'::uuid,
  'ba4b26ab-0071-515c-a4a0-a2178f409be8'::uuid,
  'a0d489bc-17d8-56b1-a52a-67fedb5755c2'::uuid,
  '7fa979d0-8550-56ee-91d7-4eaf982710d7'::uuid,
  'Hi Hana — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f4acac23-ea1e-5494-9201-51e06fa4444c'::uuid,
  'ba4b26ab-0071-515c-a4a0-a2178f409be8'::uuid,
  '7fa979d0-8550-56ee-91d7-4eaf982710d7'::uuid,
  'a0d489bc-17d8-56b1-a52a-67fedb5755c2'::uuid,
  'Thanks Isaac! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('add3a5cb-e218-5088-9a15-a7f957db2e42'::uuid, '717e2f46-9620-5600-b8e0-5187f52e05ee'::uuid, '01d4c20f-728c-5f96-8116-bbb132da4fca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f9ca990d-929e-5a66-ba4d-2bd154b62363'::uuid, '01d4c20f-728c-5f96-8116-bbb132da4fca'::uuid, '717e2f46-9620-5600-b8e0-5187f52e05ee'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('63dd7c7e-675d-5b6d-b597-a99119035983'::uuid, '01d4c20f-728c-5f96-8116-bbb132da4fca'::uuid, '717e2f46-9620-5600-b8e0-5187f52e05ee'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1469885a-0ff7-55b5-a087-cc9042ae583f'::uuid, '2df7870b-f77b-5301-b54e-6af2f7ff0758'::uuid, 'dc95368b-9c57-5ec2-b201-4299e6d34bfd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ba86014e-e21f-5dcb-aff6-3ba0a1624d70'::uuid, 'dc95368b-9c57-5ec2-b201-4299e6d34bfd'::uuid, '2df7870b-f77b-5301-b54e-6af2f7ff0758'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e477b7fc-6d77-55a8-b247-07fecf61877c'::uuid, '2df7870b-f77b-5301-b54e-6af2f7ff0758'::uuid, 'dc95368b-9c57-5ec2-b201-4299e6d34bfd'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;