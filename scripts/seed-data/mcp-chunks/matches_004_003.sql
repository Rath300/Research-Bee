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