INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('746bb143-7e7f-55ed-8c65-ca3817cb4e0e'::uuid, 'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid, 'd8f35861-4574-5a95-81ee-2a68c58124ed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('04e23d20-b93f-594a-b466-b6b2b7b42e9d'::uuid, 'd8f35861-4574-5a95-81ee-2a68c58124ed'::uuid, 'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b8af5db6-4a37-5d23-8682-9be4d1ee1938'::uuid, 'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid, 'd8f35861-4574-5a95-81ee-2a68c58124ed'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cd34ff34-b33f-5eac-8da9-ba58d16edc20'::uuid, '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid, 'e5dbd18b-b280-5ed3-962b-c0cbc69ac91e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0baeca68-bb65-5d2a-b787-b737808faff5'::uuid, 'e5dbd18b-b280-5ed3-962b-c0cbc69ac91e'::uuid, '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('aa61ef11-c03d-59e4-88bd-ba000c6d231d'::uuid, '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid, 'e5dbd18b-b280-5ed3-962b-c0cbc69ac91e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '98095280-0741-588d-a696-c553348ee937'::uuid,
  'aa61ef11-c03d-59e4-88bd-ba000c6d231d'::uuid,
  '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid,
  'e5dbd18b-b280-5ed3-962b-c0cbc69ac91e'::uuid,
  'Hi Isaac — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '96a3aab6-5842-5f36-a62e-17bc3a0d68c6'::uuid,
  'aa61ef11-c03d-59e4-88bd-ba000c6d231d'::uuid,
  'e5dbd18b-b280-5ed3-962b-c0cbc69ac91e'::uuid,
  '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid,
  'Thanks Chloe! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6c22f505-d967-5a2a-9b9a-cdca7a9b44fe'::uuid, '609dd045-14e3-5c3d-85ff-20eee69ac0e1'::uuid, '857a3bf5-dbaf-5df7-98b0-5661480e2727'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a341bb7e-e2be-557c-a0fd-28d2e3b51c0d'::uuid, '857a3bf5-dbaf-5df7-98b0-5661480e2727'::uuid, '609dd045-14e3-5c3d-85ff-20eee69ac0e1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dc701b1f-c9e8-5716-baf2-b3163808c2e0'::uuid, '609dd045-14e3-5c3d-85ff-20eee69ac0e1'::uuid, '857a3bf5-dbaf-5df7-98b0-5661480e2727'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dff1896c-7ac2-580b-8953-c5cf16e78904'::uuid, 'aa479ed7-f579-59a4-b70d-6c3d8577050a'::uuid, '120c1003-24e3-5b06-9ab1-63719f902d63'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7723b6d9-e86f-5809-b7a5-5577c1257e5d'::uuid, '120c1003-24e3-5b06-9ab1-63719f902d63'::uuid, 'aa479ed7-f579-59a4-b70d-6c3d8577050a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d4a96b95-a407-5f9e-9a51-96d6c6f8ea16'::uuid, '120c1003-24e3-5b06-9ab1-63719f902d63'::uuid, 'aa479ed7-f579-59a4-b70d-6c3d8577050a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '61cd2d0f-d7d5-5673-aa6b-0b848ab8226a'::uuid,
  'd4a96b95-a407-5f9e-9a51-96d6c6f8ea16'::uuid,
  'aa479ed7-f579-59a4-b70d-6c3d8577050a'::uuid,
  '120c1003-24e3-5b06-9ab1-63719f902d63'::uuid,
  'Hi Felix — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '58f6553b-1e4f-5849-a537-ce488ec93177'::uuid,
  'd4a96b95-a407-5f9e-9a51-96d6c6f8ea16'::uuid,
  '120c1003-24e3-5b06-9ab1-63719f902d63'::uuid,
  'aa479ed7-f579-59a4-b70d-6c3d8577050a'::uuid,
  'Thanks Violet! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dd5a2024-ff1b-5bf8-b468-2a6b83a1db2b'::uuid, '0a84f6cc-24db-56ca-b075-cb47c6b6a9fc'::uuid, 'a0817194-368d-5771-976a-7836d36b620b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('13927699-057e-5d4d-8ec4-ce36f31f6390'::uuid, 'a0817194-368d-5771-976a-7836d36b620b'::uuid, '0a84f6cc-24db-56ca-b075-cb47c6b6a9fc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a293ee80-0565-5af5-9f74-0c83682fe485'::uuid, '0a84f6cc-24db-56ca-b075-cb47c6b6a9fc'::uuid, 'a0817194-368d-5771-976a-7836d36b620b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d43fe2e4-b6bc-5742-86bb-83f9c7cb94e1'::uuid, 'e58b467c-3b92-5318-aac0-d48d03143307'::uuid, 'e8100973-d8f5-5aa3-a6eb-7669b9e4b1e7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0611204f-6aa3-5417-9fe4-c250a5bac4de'::uuid, 'e8100973-d8f5-5aa3-a6eb-7669b9e4b1e7'::uuid, 'e58b467c-3b92-5318-aac0-d48d03143307'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4d2bcad0-38bd-5464-bd58-bd4e93784744'::uuid, 'e58b467c-3b92-5318-aac0-d48d03143307'::uuid, 'e8100973-d8f5-5aa3-a6eb-7669b9e4b1e7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e5ff4932-3b51-5418-afa3-ab6923175467'::uuid,
  '4d2bcad0-38bd-5464-bd58-bd4e93784744'::uuid,
  'e58b467c-3b92-5318-aac0-d48d03143307'::uuid,
  'e8100973-d8f5-5aa3-a6eb-7669b9e4b1e7'::uuid,
  'Hi James — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '083b6e60-3f66-5706-a84e-baee054c0359'::uuid,
  '4d2bcad0-38bd-5464-bd58-bd4e93784744'::uuid,
  'e8100973-d8f5-5aa3-a6eb-7669b9e4b1e7'::uuid,
  'e58b467c-3b92-5318-aac0-d48d03143307'::uuid,
  'Thanks Tara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7ed66b29-950c-500b-9cd6-e5f14be64211'::uuid, 'e58b467c-3b92-5318-aac0-d48d03143307'::uuid, 'e5ad392c-bed6-53b1-959c-110347ae87fe'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f7f8c36e-adef-56ab-826a-30f3858141cd'::uuid, 'e5ad392c-bed6-53b1-959c-110347ae87fe'::uuid, 'e58b467c-3b92-5318-aac0-d48d03143307'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('edb3df5f-9872-5bba-be3e-6d33cf087c7a'::uuid, 'e58b467c-3b92-5318-aac0-d48d03143307'::uuid, 'e5ad392c-bed6-53b1-959c-110347ae87fe'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5abe8c91-aef0-51a2-bc76-00ae40a1045f'::uuid, '6967920a-06a3-5d3b-9991-777798ca8208'::uuid, '43986880-ffc8-55bc-a66c-5b43a562d73d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a9e6044a-4d1d-5cf3-b0b7-41c33b708839'::uuid, '43986880-ffc8-55bc-a66c-5b43a562d73d'::uuid, '6967920a-06a3-5d3b-9991-777798ca8208'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cd53b687-ec8d-544a-b21d-6e657932eb36'::uuid, '43986880-ffc8-55bc-a66c-5b43a562d73d'::uuid, '6967920a-06a3-5d3b-9991-777798ca8208'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'bf5f9378-812a-5d19-bc1d-2af6afb3c3df'::uuid,
  'cd53b687-ec8d-544a-b21d-6e657932eb36'::uuid,
  '6967920a-06a3-5d3b-9991-777798ca8208'::uuid,
  '43986880-ffc8-55bc-a66c-5b43a562d73d'::uuid,
  'Hi Grace — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '797a8e19-8288-5a1f-98c2-999d906f5609'::uuid,
  'cd53b687-ec8d-544a-b21d-6e657932eb36'::uuid,
  '43986880-ffc8-55bc-a66c-5b43a562d73d'::uuid,
  '6967920a-06a3-5d3b-9991-777798ca8208'::uuid,
  'Thanks Aaron! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b57ca507-f545-5de5-ac69-b4d48772ed85'::uuid, '2b24a057-2c43-5e19-9879-bc6d9f866992'::uuid, '093a1f26-d390-58c7-aec1-16c205cfbd8d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('af5c327f-fa93-53d1-8b54-f76e29ad833d'::uuid, '093a1f26-d390-58c7-aec1-16c205cfbd8d'::uuid, '2b24a057-2c43-5e19-9879-bc6d9f866992'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('14f8397f-cf46-5752-af7b-b92ba8c13509'::uuid, '093a1f26-d390-58c7-aec1-16c205cfbd8d'::uuid, '2b24a057-2c43-5e19-9879-bc6d9f866992'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fa03496a-833a-5015-9395-bf6c1fd58081'::uuid, '7af7f811-5976-5178-bda2-880a5acb1093'::uuid, '02cfbdcd-95d0-5052-9e37-40b137ae773f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('90f68d29-e5b8-5630-9910-abed6e68b884'::uuid, '02cfbdcd-95d0-5052-9e37-40b137ae773f'::uuid, '7af7f811-5976-5178-bda2-880a5acb1093'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('52d9375c-861d-50ff-a8a3-4e9f9f83b92f'::uuid, '02cfbdcd-95d0-5052-9e37-40b137ae773f'::uuid, '7af7f811-5976-5178-bda2-880a5acb1093'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f218eadf-ac48-5146-8439-39e76f1546d9'::uuid,
  '52d9375c-861d-50ff-a8a3-4e9f9f83b92f'::uuid,
  '7af7f811-5976-5178-bda2-880a5acb1093'::uuid,
  '02cfbdcd-95d0-5052-9e37-40b137ae773f'::uuid,
  'Hi Isla — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9cedebdb-d876-5915-b454-190be9eade4d'::uuid,
  '52d9375c-861d-50ff-a8a3-4e9f9f83b92f'::uuid,
  '02cfbdcd-95d0-5052-9e37-40b137ae773f'::uuid,
  '7af7f811-5976-5178-bda2-880a5acb1093'::uuid,
  'Thanks Noah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;