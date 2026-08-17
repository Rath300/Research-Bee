INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b9851f9a-a332-5f88-a152-9f2645499ea6'::uuid,
  'c8a60a11-1661-5e76-ab5f-a00e86833455'::uuid,
  '1b70bae1-1102-5059-84fb-4d69136b5032'::uuid,
  '3a01616f-3f3d-5774-a21e-3c0e5c68b450'::uuid,
  'Hi Isaac — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '62e59de1-55d1-5666-885b-f17654401358'::uuid,
  'c8a60a11-1661-5e76-ab5f-a00e86833455'::uuid,
  '3a01616f-3f3d-5774-a21e-3c0e5c68b450'::uuid,
  '1b70bae1-1102-5059-84fb-4d69136b5032'::uuid,
  'Thanks Chloe! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fa486090-1715-55ec-8667-6fae2bcb07f5'::uuid, '560e33d5-d1d4-54da-84b6-56f71fbcb908'::uuid, '57cd3ca8-b788-5118-80ff-de66e23f013c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('939563f2-123b-57b9-a793-0e82c2086951'::uuid, '57cd3ca8-b788-5118-80ff-de66e23f013c'::uuid, '560e33d5-d1d4-54da-84b6-56f71fbcb908'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0b7e08d5-49e6-5e5d-bfae-6093c05d4994'::uuid, '560e33d5-d1d4-54da-84b6-56f71fbcb908'::uuid, '57cd3ca8-b788-5118-80ff-de66e23f013c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9f39304c-a23d-5222-a031-b1fce97d7600'::uuid, 'e5b15532-8a50-5880-90f6-f3cfebbfb6ee'::uuid, 'd596304e-1fe2-5752-ade9-1ab0dd9683a6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e7c88d63-8428-5f4d-903b-4ad49d51ece9'::uuid, 'd596304e-1fe2-5752-ade9-1ab0dd9683a6'::uuid, 'e5b15532-8a50-5880-90f6-f3cfebbfb6ee'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2a7e04a2-2e6a-51f9-887e-4e7c6049fefe'::uuid, 'd596304e-1fe2-5752-ade9-1ab0dd9683a6'::uuid, 'e5b15532-8a50-5880-90f6-f3cfebbfb6ee'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2ace2831-f553-5cba-8bd4-8e0b42e387ab'::uuid,
  '2a7e04a2-2e6a-51f9-887e-4e7c6049fefe'::uuid,
  'e5b15532-8a50-5880-90f6-f3cfebbfb6ee'::uuid,
  'd596304e-1fe2-5752-ade9-1ab0dd9683a6'::uuid,
  'Hi Felix — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4a308f05-ffc2-5be9-a3dd-f580ae0b6385'::uuid,
  '2a7e04a2-2e6a-51f9-887e-4e7c6049fefe'::uuid,
  'd596304e-1fe2-5752-ade9-1ab0dd9683a6'::uuid,
  'e5b15532-8a50-5880-90f6-f3cfebbfb6ee'::uuid,
  'Thanks Violet! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a1fd2fdf-9c41-5093-8010-3150250d8329'::uuid, '3c8de87e-de6b-50c7-b5c7-8a4cf5f05ce5'::uuid, '1e2a697d-74d0-5ccd-b526-81c2a8412445'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b869de8f-f402-5506-ac51-c9dd071a9570'::uuid, '1e2a697d-74d0-5ccd-b526-81c2a8412445'::uuid, '3c8de87e-de6b-50c7-b5c7-8a4cf5f05ce5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0f0d1cb1-7c33-516e-8f45-06a8af0d8dd5'::uuid, '1e2a697d-74d0-5ccd-b526-81c2a8412445'::uuid, '3c8de87e-de6b-50c7-b5c7-8a4cf5f05ce5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('91488a6e-bbc8-5386-ac30-441a8eac8830'::uuid, 'c59ba863-a764-5b9f-91a1-ad1e0093cb27'::uuid, 'a5ca5651-a654-51a0-a327-441ba828d83b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('75f9c20d-f805-5077-9144-2c3c5ec1364b'::uuid, 'a5ca5651-a654-51a0-a327-441ba828d83b'::uuid, 'c59ba863-a764-5b9f-91a1-ad1e0093cb27'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7f190b91-fd7b-584e-bbbe-d72d8a1d8fc0'::uuid, 'a5ca5651-a654-51a0-a327-441ba828d83b'::uuid, 'c59ba863-a764-5b9f-91a1-ad1e0093cb27'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7dde0f7c-f079-5832-af5a-04475ad53ece'::uuid,
  '7f190b91-fd7b-584e-bbbe-d72d8a1d8fc0'::uuid,
  'c59ba863-a764-5b9f-91a1-ad1e0093cb27'::uuid,
  'a5ca5651-a654-51a0-a327-441ba828d83b'::uuid,
  'Hi James — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '02570c88-c906-5c98-8f29-e4c368beb421'::uuid,
  '7f190b91-fd7b-584e-bbbe-d72d8a1d8fc0'::uuid,
  'a5ca5651-a654-51a0-a327-441ba828d83b'::uuid,
  'c59ba863-a764-5b9f-91a1-ad1e0093cb27'::uuid,
  'Thanks Tara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f96b8d7c-a096-52b4-8426-66a4b4344818'::uuid, 'c59ba863-a764-5b9f-91a1-ad1e0093cb27'::uuid, '170229dc-697e-5b38-8001-6e6980b262ff'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('39644eb3-439f-522b-b738-828384cbf710'::uuid, '170229dc-697e-5b38-8001-6e6980b262ff'::uuid, 'c59ba863-a764-5b9f-91a1-ad1e0093cb27'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e1ef83b3-e986-5378-b16d-a4494758ad46'::uuid, '170229dc-697e-5b38-8001-6e6980b262ff'::uuid, 'c59ba863-a764-5b9f-91a1-ad1e0093cb27'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9c872c98-c57a-593f-89b6-d06411b8efd3'::uuid, 'd16fc742-2b87-5693-8c11-a7f8b926a752'::uuid, 'ea2fb814-4778-5d39-a00f-eb1d0e27fb92'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5d88abbf-f602-5b3f-b081-9ea7187c9dd2'::uuid, 'ea2fb814-4778-5d39-a00f-eb1d0e27fb92'::uuid, 'd16fc742-2b87-5693-8c11-a7f8b926a752'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f80a69c9-2c19-53dd-8eaf-a8023d53ae19'::uuid, 'd16fc742-2b87-5693-8c11-a7f8b926a752'::uuid, 'ea2fb814-4778-5d39-a00f-eb1d0e27fb92'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '36f420ed-f1d8-54ac-ac80-b6bf26e81855'::uuid,
  'f80a69c9-2c19-53dd-8eaf-a8023d53ae19'::uuid,
  'd16fc742-2b87-5693-8c11-a7f8b926a752'::uuid,
  'ea2fb814-4778-5d39-a00f-eb1d0e27fb92'::uuid,
  'Hi Grace — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '67a888f4-d56e-55be-8aca-8efe0408fae7'::uuid,
  'f80a69c9-2c19-53dd-8eaf-a8023d53ae19'::uuid,
  'ea2fb814-4778-5d39-a00f-eb1d0e27fb92'::uuid,
  'd16fc742-2b87-5693-8c11-a7f8b926a752'::uuid,
  'Thanks Aaron! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dbe56729-79ae-5409-a0cc-4609a1886890'::uuid, 'bc6f828c-01a3-54cb-8689-2ba2d88d126d'::uuid, '900a2d77-a10d-5ba0-95fc-fe4be7e250a4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fc30db6f-4fa6-5a46-b7aa-5de856fd89eb'::uuid, '900a2d77-a10d-5ba0-95fc-fe4be7e250a4'::uuid, 'bc6f828c-01a3-54cb-8689-2ba2d88d126d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('605c6faf-9dda-574a-94a2-386b6f32987b'::uuid, '900a2d77-a10d-5ba0-95fc-fe4be7e250a4'::uuid, 'bc6f828c-01a3-54cb-8689-2ba2d88d126d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fc6ce61e-871f-52cf-9291-08fc28e1c787'::uuid, '986e3fa3-697e-5603-b99c-4e2cd979c814'::uuid, 'a4e70726-d19d-5c33-89d1-0754ffd062b1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('41d20a7a-8cc4-53fd-8c00-c07f6a07753b'::uuid, 'a4e70726-d19d-5c33-89d1-0754ffd062b1'::uuid, '986e3fa3-697e-5603-b99c-4e2cd979c814'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b90cc9c2-1d17-52aa-8be7-8254c3fd6c91'::uuid, '986e3fa3-697e-5603-b99c-4e2cd979c814'::uuid, 'a4e70726-d19d-5c33-89d1-0754ffd062b1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '73ad8cae-2735-528a-b917-c40b8e325eb2'::uuid,
  'b90cc9c2-1d17-52aa-8be7-8254c3fd6c91'::uuid,
  '986e3fa3-697e-5603-b99c-4e2cd979c814'::uuid,
  'a4e70726-d19d-5c33-89d1-0754ffd062b1'::uuid,
  'Hi Isla — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e96d78cf-32e1-5bfa-8094-4345f0e28067'::uuid,
  'b90cc9c2-1d17-52aa-8be7-8254c3fd6c91'::uuid,
  'a4e70726-d19d-5c33-89d1-0754ffd062b1'::uuid,
  '986e3fa3-697e-5603-b99c-4e2cd979c814'::uuid,
  'Thanks Noah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('246a858f-796d-502b-906e-ae378fe050ee'::uuid, '05f978d0-0879-58f9-a6dc-805cdda510f6'::uuid, 'a018203c-46b7-508f-95c6-b6c42580c16c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('52b4fc93-9ae6-5089-8480-ab69b421d665'::uuid, 'a018203c-46b7-508f-95c6-b6c42580c16c'::uuid, '05f978d0-0879-58f9-a6dc-805cdda510f6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2f5e341f-a64d-5e49-8318-373c8694bf74'::uuid, '05f978d0-0879-58f9-a6dc-805cdda510f6'::uuid, 'a018203c-46b7-508f-95c6-b6c42580c16c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0c8aa098-b7ae-5adc-9120-a4c14df3e08f'::uuid, '3aa7aaa1-77b2-5cd4-b7a2-7f500e41212b'::uuid, 'fa10485d-6ae3-5acc-afcd-cb141834f70e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('583c31bd-5045-5768-bda1-79b07f93900a'::uuid, 'fa10485d-6ae3-5acc-afcd-cb141834f70e'::uuid, '3aa7aaa1-77b2-5cd4-b7a2-7f500e41212b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e6104d1c-224c-50f4-83e5-4640ce7ba8bd'::uuid, '3aa7aaa1-77b2-5cd4-b7a2-7f500e41212b'::uuid, 'fa10485d-6ae3-5acc-afcd-cb141834f70e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '482f7623-bec4-5ba4-a6e6-e7246bd13995'::uuid,
  'e6104d1c-224c-50f4-83e5-4640ce7ba8bd'::uuid,
  '3aa7aaa1-77b2-5cd4-b7a2-7f500e41212b'::uuid,
  'fa10485d-6ae3-5acc-afcd-cb141834f70e'::uuid,
  'Hi Yara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd6f2c581-e254-5c02-8ce9-da82db076ec3'::uuid,
  'e6104d1c-224c-50f4-83e5-4640ce7ba8bd'::uuid,
  'fa10485d-6ae3-5acc-afcd-cb141834f70e'::uuid,
  '3aa7aaa1-77b2-5cd4-b7a2-7f500e41212b'::uuid,
  'Thanks Ethan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('39d7e5f5-84c6-5ca3-b841-4f2a3b51bc71'::uuid, '3aa7aaa1-77b2-5cd4-b7a2-7f500e41212b'::uuid, '98402e99-c154-543e-8925-739b5e6ef7e6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('de7b8011-34d7-55e6-bb92-35b87a08ebce'::uuid, '98402e99-c154-543e-8925-739b5e6ef7e6'::uuid, '3aa7aaa1-77b2-5cd4-b7a2-7f500e41212b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ef50c5bb-ac76-5217-82d6-b960db270077'::uuid, '3aa7aaa1-77b2-5cd4-b7a2-7f500e41212b'::uuid, '98402e99-c154-543e-8925-739b5e6ef7e6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e6f51ec6-e1ff-5867-a344-73959a8b9d50'::uuid, 'be534e0e-c9dc-5c7c-a2ee-f7889a9429c3'::uuid, 'af8dc57b-50ea-53e4-83a2-7fc4513a247e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('05bcbedc-6daa-57c1-9f96-00bb3da3fb02'::uuid, 'af8dc57b-50ea-53e4-83a2-7fc4513a247e'::uuid, 'be534e0e-c9dc-5c7c-a2ee-f7889a9429c3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c946ce66-6c7d-56e7-8047-ab1d0506ef58'::uuid, 'af8dc57b-50ea-53e4-83a2-7fc4513a247e'::uuid, 'be534e0e-c9dc-5c7c-a2ee-f7889a9429c3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '90ea2135-01ed-5b74-9224-320605527bf7'::uuid,
  'c946ce66-6c7d-56e7-8047-ab1d0506ef58'::uuid,
  'be534e0e-c9dc-5c7c-a2ee-f7889a9429c3'::uuid,
  'af8dc57b-50ea-53e4-83a2-7fc4513a247e'::uuid,
  'Hi Lucas — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '83770218-d296-507c-a373-479b391badbb'::uuid,
  'c946ce66-6c7d-56e7-8047-ab1d0506ef58'::uuid,
  'af8dc57b-50ea-53e4-83a2-7fc4513a247e'::uuid,
  'be534e0e-c9dc-5c7c-a2ee-f7889a9429c3'::uuid,
  'Thanks Leila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('289c8c7b-7e03-5ecb-8b89-ceaf4b26e334'::uuid, '45a992e8-a55a-5fd8-983f-0eb444fd41ce'::uuid, '71ce6f8f-e4ca-5b43-9477-04524c1dfb5a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9cf52eba-2d11-578e-84d9-07d61f62479a'::uuid, '71ce6f8f-e4ca-5b43-9477-04524c1dfb5a'::uuid, '45a992e8-a55a-5fd8-983f-0eb444fd41ce'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b1f92166-5ee7-584c-a5c8-d7147525f6a6'::uuid, '45a992e8-a55a-5fd8-983f-0eb444fd41ce'::uuid, '71ce6f8f-e4ca-5b43-9477-04524c1dfb5a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bb751e82-800f-57c3-a152-a996e4c3c96f'::uuid, 'f1bf462e-7f1e-5e43-9ef9-4abd70e78f82'::uuid, 'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f20f55bb-bf4d-5f6e-926f-c279897c5f29'::uuid, 'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid, 'f1bf462e-7f1e-5e43-9ef9-4abd70e78f82'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('24cdf0fe-5291-54d6-be97-23046fc59060'::uuid, 'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid, 'f1bf462e-7f1e-5e43-9ef9-4abd70e78f82'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '73f3ccdb-7544-53ad-a8ce-f50096ea0c0f'::uuid,
  '24cdf0fe-5291-54d6-be97-23046fc59060'::uuid,
  'f1bf462e-7f1e-5e43-9ef9-4abd70e78f82'::uuid,
  'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid,
  'Hi David — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd14ec960-ae07-5dae-9ea1-2158b777b82f'::uuid,
  '24cdf0fe-5291-54d6-be97-23046fc59060'::uuid,
  'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid,
  'f1bf462e-7f1e-5e43-9ef9-4abd70e78f82'::uuid,
  'Thanks Sana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ec2c83b9-b836-504e-8b90-21a8d487f6d1'::uuid, 'd63df04e-24ab-5901-bf95-b865f4575782'::uuid, 'fb2d5ae5-7a9f-5875-9562-025ba2ec14d4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9948f645-477a-535d-aee3-91cb5aaa2ae9'::uuid, 'fb2d5ae5-7a9f-5875-9562-025ba2ec14d4'::uuid, 'd63df04e-24ab-5901-bf95-b865f4575782'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('71a877cd-b35b-5699-838a-a045e2acbc8b'::uuid, 'd63df04e-24ab-5901-bf95-b865f4575782'::uuid, 'fb2d5ae5-7a9f-5875-9562-025ba2ec14d4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b01476d4-8b50-5f51-be43-e2c7efc71fde'::uuid, 'c0679564-584a-56e3-82af-67940faa7931'::uuid, '69277a59-ad8b-5c35-96d3-fd6fd63ad891'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f0b0edb4-29e4-5170-9651-62a21fbcdbcf'::uuid, '69277a59-ad8b-5c35-96d3-fd6fd63ad891'::uuid, 'c0679564-584a-56e3-82af-67940faa7931'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b9349c88-1d34-5895-b31c-159ed60f5055'::uuid, '69277a59-ad8b-5c35-96d3-fd6fd63ad891'::uuid, 'c0679564-584a-56e3-82af-67940faa7931'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '84ffcd97-5826-5e62-939b-ed83683985a5'::uuid,
  'b9349c88-1d34-5895-b31c-159ed60f5055'::uuid,
  'c0679564-584a-56e3-82af-67940faa7931'::uuid,
  '69277a59-ad8b-5c35-96d3-fd6fd63ad891'::uuid,
  'Hi Diego — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '40afc2de-7393-5082-bec2-5bbb444e9c8e'::uuid,
  'b9349c88-1d34-5895-b31c-159ed60f5055'::uuid,
  '69277a59-ad8b-5c35-96d3-fd6fd63ad891'::uuid,
  'c0679564-584a-56e3-82af-67940faa7931'::uuid,
  'Thanks Hana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f9361fdd-3c69-5cc4-a3e3-51714653c536'::uuid, 'c0679564-584a-56e3-82af-67940faa7931'::uuid, '41ef8051-746a-5445-b74c-fa8dcf725cac'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3cbf7cc0-3cce-59eb-978a-eb2f9a79df23'::uuid, '41ef8051-746a-5445-b74c-fa8dcf725cac'::uuid, 'c0679564-584a-56e3-82af-67940faa7931'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('317c98e2-e58d-5497-a6b7-5b3bc3d37c1e'::uuid, '41ef8051-746a-5445-b74c-fa8dcf725cac'::uuid, 'c0679564-584a-56e3-82af-67940faa7931'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f44ff174-9bab-5751-8deb-f01237d55c13'::uuid, '123328a2-6e0a-5530-9449-09997654760e'::uuid, 'fdc8933e-6690-5207-97f2-2a058742d9d3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9d31fe97-1d75-5857-b5b0-d3f4f62407f7'::uuid, 'fdc8933e-6690-5207-97f2-2a058742d9d3'::uuid, '123328a2-6e0a-5530-9449-09997654760e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3f3389af-f188-5625-873e-2738664ab503'::uuid, '123328a2-6e0a-5530-9449-09997654760e'::uuid, 'fdc8933e-6690-5207-97f2-2a058742d9d3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1a00f538-7736-50e9-a292-bfdfd69ac1b6'::uuid,
  '3f3389af-f188-5625-873e-2738664ab503'::uuid,
  '123328a2-6e0a-5530-9449-09997654760e'::uuid,
  'fdc8933e-6690-5207-97f2-2a058742d9d3'::uuid,
  'Hi Nadia — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '28c822b4-5add-5a8b-ac63-9c08da2cc29a'::uuid,
  '3f3389af-f188-5625-873e-2738664ab503'::uuid,
  'fdc8933e-6690-5207-97f2-2a058742d9d3'::uuid,
  '123328a2-6e0a-5530-9449-09997654760e'::uuid,
  'Thanks Maya! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('caaf8e96-abdf-53b8-a07e-b97fec0e10ba'::uuid, 'a293f5f8-02a6-5269-894f-668baf4f645d'::uuid, '24503db7-b85d-5a77-b0b4-10e285806d5d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('69afab22-d297-5afa-a175-b0beedbe8204'::uuid, '24503db7-b85d-5a77-b0b4-10e285806d5d'::uuid, 'a293f5f8-02a6-5269-894f-668baf4f645d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2ff19730-4fc6-5b35-88b5-652db86a355b'::uuid, '24503db7-b85d-5a77-b0b4-10e285806d5d'::uuid, 'a293f5f8-02a6-5269-894f-668baf4f645d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('110826f9-af32-5ff9-8997-11306091da24'::uuid, '843a61c1-ff56-52bd-b7ff-edcd4f30be03'::uuid, '1169c7b0-7d07-5511-aae5-149d80f82401'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b1afd421-e406-501f-bbe2-439b4f3c6f3a'::uuid, '1169c7b0-7d07-5511-aae5-149d80f82401'::uuid, '843a61c1-ff56-52bd-b7ff-edcd4f30be03'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4ec6a0be-8573-518d-9e47-9c54c7f204ea'::uuid, '1169c7b0-7d07-5511-aae5-149d80f82401'::uuid, '843a61c1-ff56-52bd-b7ff-edcd4f30be03'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b22e120c-f82e-517e-8aab-60c17fc38b25'::uuid,
  '4ec6a0be-8573-518d-9e47-9c54c7f204ea'::uuid,
  '843a61c1-ff56-52bd-b7ff-edcd4f30be03'::uuid,
  '1169c7b0-7d07-5511-aae5-149d80f82401'::uuid,
  'Hi Mei — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c21601b2-744f-5efd-a5b4-a87f6191a7cc'::uuid,
  '4ec6a0be-8573-518d-9e47-9c54c7f204ea'::uuid,
  '1169c7b0-7d07-5511-aae5-149d80f82401'::uuid,
  '843a61c1-ff56-52bd-b7ff-edcd4f30be03'::uuid,
  'Thanks Rohan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('938db596-a93f-5b02-b144-f1b747b63a29'::uuid, '8539a32a-815b-5a83-a51e-679ee612278d'::uuid, '6de3b6b4-174d-5f72-985c-bcd16c8eb18e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fea2a7a3-eb24-5ad4-9ecd-a42e9264c424'::uuid, '6de3b6b4-174d-5f72-985c-bcd16c8eb18e'::uuid, '8539a32a-815b-5a83-a51e-679ee612278d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('526d5985-a0f9-5595-9283-1ddd187372f0'::uuid, '6de3b6b4-174d-5f72-985c-bcd16c8eb18e'::uuid, '8539a32a-815b-5a83-a51e-679ee612278d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b38e7850-7040-5085-a67f-6c7e01dae59f'::uuid, '8e86ff49-8faa-5fc3-84be-438430e54a2f'::uuid, '67f6dfe8-0447-57a4-92f8-94fc53ee9c7c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('85324f0b-eaee-5f89-84ee-ce136db6590d'::uuid, '67f6dfe8-0447-57a4-92f8-94fc53ee9c7c'::uuid, '8e86ff49-8faa-5fc3-84be-438430e54a2f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3d45f045-a6f2-5827-a987-60c2a37fe2d6'::uuid, '67f6dfe8-0447-57a4-92f8-94fc53ee9c7c'::uuid, '8e86ff49-8faa-5fc3-84be-438430e54a2f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '219b4817-b51d-589b-9a00-f55214f2637a'::uuid,
  '3d45f045-a6f2-5827-a987-60c2a37fe2d6'::uuid,
  '8e86ff49-8faa-5fc3-84be-438430e54a2f'::uuid,
  '67f6dfe8-0447-57a4-92f8-94fc53ee9c7c'::uuid,
  'Hi Riya — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9cdef4e8-9169-5254-9a68-a80f8c2f7a4d'::uuid,
  '3d45f045-a6f2-5827-a987-60c2a37fe2d6'::uuid,
  '67f6dfe8-0447-57a4-92f8-94fc53ee9c7c'::uuid,
  '8e86ff49-8faa-5fc3-84be-438430e54a2f'::uuid,
  'Thanks Samir! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2e1af7b1-d8be-5892-a4ee-0ec38b65c6ea'::uuid, '8e86ff49-8faa-5fc3-84be-438430e54a2f'::uuid, 'edd0860b-f11b-58ab-8ecb-22f4be92630e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d1808cc6-b59e-5ea9-bbc9-ee4ee072ff9d'::uuid, 'edd0860b-f11b-58ab-8ecb-22f4be92630e'::uuid, '8e86ff49-8faa-5fc3-84be-438430e54a2f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f7e1be15-faa6-5fcd-b3f0-ab8ecdfc78bf'::uuid, '8e86ff49-8faa-5fc3-84be-438430e54a2f'::uuid, 'edd0860b-f11b-58ab-8ecb-22f4be92630e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('095833ae-e9eb-5d2f-a01e-b8813b8eb6ab'::uuid, '59411c6d-89c7-5a03-8b64-1273d8843a53'::uuid, '04149813-8770-5834-9525-c8ba8a4f02af'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b457a171-e6d9-5025-aa5e-9dd648c15553'::uuid, '04149813-8770-5834-9525-c8ba8a4f02af'::uuid, '59411c6d-89c7-5a03-8b64-1273d8843a53'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('942c576c-2daf-51b5-a3a1-4e1dd541fbd0'::uuid, '04149813-8770-5834-9525-c8ba8a4f02af'::uuid, '59411c6d-89c7-5a03-8b64-1273d8843a53'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b39e0801-6834-5d6f-8649-d208e05fdda7'::uuid,
  '942c576c-2daf-51b5-a3a1-4e1dd541fbd0'::uuid,
  '59411c6d-89c7-5a03-8b64-1273d8843a53'::uuid,
  '04149813-8770-5834-9525-c8ba8a4f02af'::uuid,
  'Hi Nathan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '17ad2a56-a4aa-5134-9005-582579f5505e'::uuid,
  '942c576c-2daf-51b5-a3a1-4e1dd541fbd0'::uuid,
  '04149813-8770-5834-9525-c8ba8a4f02af'::uuid,
  '59411c6d-89c7-5a03-8b64-1273d8843a53'::uuid,
  'Thanks Camila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ad7972ee-5d5d-5fbc-9377-918e53b9f028'::uuid, 'c824bafc-8469-53db-bec8-76cb657bd1db'::uuid, 'be55f1ea-eccd-59f9-8e54-46ada091ac8d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7aa682d0-8466-5612-b995-0ae54d1685f1'::uuid, 'be55f1ea-eccd-59f9-8e54-46ada091ac8d'::uuid, 'c824bafc-8469-53db-bec8-76cb657bd1db'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5485bdc4-4dfd-58f0-b88f-d68f93ae74e3'::uuid, 'be55f1ea-eccd-59f9-8e54-46ada091ac8d'::uuid, 'c824bafc-8469-53db-bec8-76cb657bd1db'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('529ed9dc-238f-52ad-982f-076996308768'::uuid, 'f324dc11-eb21-5df5-a147-1760b8514837'::uuid, 'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fac0ee16-91d3-5d71-a71f-f3a63107900c'::uuid, 'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid, 'f324dc11-eb21-5df5-a147-1760b8514837'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('84565a85-2353-5280-9fc5-a6398d758f66'::uuid, 'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid, 'f324dc11-eb21-5df5-a147-1760b8514837'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '88ca794b-6cf3-5b65-9c4d-08c6d10d51f2'::uuid,
  '84565a85-2353-5280-9fc5-a6398d758f66'::uuid,
  'f324dc11-eb21-5df5-a147-1760b8514837'::uuid,
  'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid,
  'Hi Omar — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c127cd1c-32e4-5ddc-9954-603217443ab5'::uuid,
  '84565a85-2353-5280-9fc5-a6398d758f66'::uuid,
  'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid,
  'f324dc11-eb21-5df5-a147-1760b8514837'::uuid,
  'Thanks Nina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7624fdf6-f0dc-5289-98f7-9e58eaab858d'::uuid, '0b9247c6-0623-5a13-adf7-d6eb575f4280'::uuid, '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0ec6dc91-ad92-5df8-9da8-e10e582368b0'::uuid, '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid, '0b9247c6-0623-5a13-adf7-d6eb575f4280'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4dfb6304-e00f-55e6-a08e-328ddeb6cf30'::uuid, '0b9247c6-0623-5a13-adf7-d6eb575f4280'::uuid, '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d027fd17-4522-5c73-85c1-79c932f941da'::uuid, '09c666a4-3bb7-5163-8075-029e573c454d'::uuid, '609dd045-14e3-5c3d-85ff-20eee69ac0e1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7f6a9439-53a4-5b0c-b303-0e609c1e7096'::uuid, '609dd045-14e3-5c3d-85ff-20eee69ac0e1'::uuid, '09c666a4-3bb7-5163-8075-029e573c454d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('644b6b09-b345-5866-a6a7-da7dbe159491'::uuid, '09c666a4-3bb7-5163-8075-029e573c454d'::uuid, '609dd045-14e3-5c3d-85ff-20eee69ac0e1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '97277f59-f4c4-5744-b013-2011f86c491b'::uuid,
  '644b6b09-b345-5866-a6a7-da7dbe159491'::uuid,
  '09c666a4-3bb7-5163-8075-029e573c454d'::uuid,
  '609dd045-14e3-5c3d-85ff-20eee69ac0e1'::uuid,
  'Hi Owen — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cd5fb2ce-1174-55af-b17b-74f061fd3337'::uuid,
  '644b6b09-b345-5866-a6a7-da7dbe159491'::uuid,
  '609dd045-14e3-5c3d-85ff-20eee69ac0e1'::uuid,
  '09c666a4-3bb7-5163-8075-029e573c454d'::uuid,
  'Thanks Sofia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e364d535-46ad-5a4c-9821-04c0619ec0f1'::uuid, '09c666a4-3bb7-5163-8075-029e573c454d'::uuid, '0e2dce4b-fb79-5d9a-a1c1-45ef1aeb568e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('672411f4-e196-5fd7-8db4-eae6893918a1'::uuid, '0e2dce4b-fb79-5d9a-a1c1-45ef1aeb568e'::uuid, '09c666a4-3bb7-5163-8075-029e573c454d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('20f64a5f-76e4-5211-9bde-a9bb8c7bac46'::uuid, '09c666a4-3bb7-5163-8075-029e573c454d'::uuid, '0e2dce4b-fb79-5d9a-a1c1-45ef1aeb568e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e84fd78b-5060-58f6-bf6d-bef72284b9bb'::uuid, '863c8215-2c2a-52a0-9b29-6e4221066e37'::uuid, 'aa479ed7-f579-59a4-b70d-6c3d8577050a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('12295755-33be-55b5-a2a5-a8e7424407c9'::uuid, 'aa479ed7-f579-59a4-b70d-6c3d8577050a'::uuid, '863c8215-2c2a-52a0-9b29-6e4221066e37'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8910fb25-174b-53a7-89a3-f8e1c0e1b39b'::uuid, '863c8215-2c2a-52a0-9b29-6e4221066e37'::uuid, 'aa479ed7-f579-59a4-b70d-6c3d8577050a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ce7418e1-988c-542a-9e82-3c7409094a28'::uuid,
  '8910fb25-174b-53a7-89a3-f8e1c0e1b39b'::uuid,
  '863c8215-2c2a-52a0-9b29-6e4221066e37'::uuid,
  'aa479ed7-f579-59a4-b70d-6c3d8577050a'::uuid,
  'Hi Violet — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '68b7e526-ed69-5ad9-a8fc-6e39c84b1730'::uuid,
  '8910fb25-174b-53a7-89a3-f8e1c0e1b39b'::uuid,
  'aa479ed7-f579-59a4-b70d-6c3d8577050a'::uuid,
  '863c8215-2c2a-52a0-9b29-6e4221066e37'::uuid,
  'Thanks Kenji! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('89269fe1-36e2-5282-82d2-912f18e7387f'::uuid, '606612b1-7686-5c2f-8974-1cab41c30b32'::uuid, '0a84f6cc-24db-56ca-b075-cb47c6b6a9fc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('94ecaac8-bc78-565d-bc88-5d74ea1d005d'::uuid, '0a84f6cc-24db-56ca-b075-cb47c6b6a9fc'::uuid, '606612b1-7686-5c2f-8974-1cab41c30b32'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bb8b10e1-adb1-5fa6-9988-d13a435fa72e'::uuid, '0a84f6cc-24db-56ca-b075-cb47c6b6a9fc'::uuid, '606612b1-7686-5c2f-8974-1cab41c30b32'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('30afd822-7a98-59ab-bf45-59ba7037b6a6'::uuid, 'b5631b8b-451c-5fe4-b56b-bdb69c9490ae'::uuid, 'e58b467c-3b92-5318-aac0-d48d03143307'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('92653891-6aac-55de-b25c-88a64ee2eea0'::uuid, 'e58b467c-3b92-5318-aac0-d48d03143307'::uuid, 'b5631b8b-451c-5fe4-b56b-bdb69c9490ae'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3aecfe27-4b69-5566-8c29-9230bb30b6e6'::uuid, 'b5631b8b-451c-5fe4-b56b-bdb69c9490ae'::uuid, 'e58b467c-3b92-5318-aac0-d48d03143307'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '47ba347b-c8fc-58b1-99b1-60087eb1c7ae'::uuid,
  '3aecfe27-4b69-5566-8c29-9230bb30b6e6'::uuid,
  'b5631b8b-451c-5fe4-b56b-bdb69c9490ae'::uuid,
  'e58b467c-3b92-5318-aac0-d48d03143307'::uuid,
  'Hi Tara — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3a8fd9b5-1ac0-54ab-bbf5-413324f1656b'::uuid,
  '3aecfe27-4b69-5566-8c29-9230bb30b6e6'::uuid,
  'e58b467c-3b92-5318-aac0-d48d03143307'::uuid,
  'b5631b8b-451c-5fe4-b56b-bdb69c9490ae'::uuid,
  'Thanks Kai! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6e6daa96-982e-5358-a0cf-c288f6824536'::uuid, 'dc822c01-3afa-540d-8c64-273165534be4'::uuid, '6967920a-06a3-5d3b-9991-777798ca8208'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9a0de346-8d7d-5abb-899a-069996850407'::uuid, '6967920a-06a3-5d3b-9991-777798ca8208'::uuid, 'dc822c01-3afa-540d-8c64-273165534be4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c5f63641-59f0-566d-a480-abd2e3d51cb9'::uuid, '6967920a-06a3-5d3b-9991-777798ca8208'::uuid, 'dc822c01-3afa-540d-8c64-273165534be4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('22623ad6-ab81-57e6-9ca5-53fc0eaa2180'::uuid, '5f2c2809-9359-5452-9fbe-c34e2c99b711'::uuid, '2b24a057-2c43-5e19-9879-bc6d9f866992'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('07a38b0f-7146-5996-b409-88bf428fc4bf'::uuid, '2b24a057-2c43-5e19-9879-bc6d9f866992'::uuid, '5f2c2809-9359-5452-9fbe-c34e2c99b711'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bebd5660-ae20-5a84-a27c-e5835645d371'::uuid, '2b24a057-2c43-5e19-9879-bc6d9f866992'::uuid, '5f2c2809-9359-5452-9fbe-c34e2c99b711'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'dd7c3f28-e45d-59b1-82f2-2e97da3d8f8a'::uuid,
  'bebd5660-ae20-5a84-a27c-e5835645d371'::uuid,
  '5f2c2809-9359-5452-9fbe-c34e2c99b711'::uuid,
  '2b24a057-2c43-5e19-9879-bc6d9f866992'::uuid,
  'Hi Imani — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b6c86248-7e69-5c6c-9eca-95e34e24fe1c'::uuid,
  'bebd5660-ae20-5a84-a27c-e5835645d371'::uuid,
  '2b24a057-2c43-5e19-9879-bc6d9f866992'::uuid,
  '5f2c2809-9359-5452-9fbe-c34e2c99b711'::uuid,
  'Thanks Benjamin! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d5196507-c017-5f4c-84e7-53b6ef43ab9c'::uuid, '5f2c2809-9359-5452-9fbe-c34e2c99b711'::uuid, 'da781818-221e-5433-8ed5-0d93efc9d299'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6892325d-07b8-55b1-bcd4-a0e766c74380'::uuid, 'da781818-221e-5433-8ed5-0d93efc9d299'::uuid, '5f2c2809-9359-5452-9fbe-c34e2c99b711'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('eb74d170-939d-5941-8f88-5a2370cc9a55'::uuid, '5f2c2809-9359-5452-9fbe-c34e2c99b711'::uuid, 'da781818-221e-5433-8ed5-0d93efc9d299'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e2dc4095-6707-52b6-884e-376987e6df1f'::uuid, '862f205c-c86e-5674-b9a7-a6d3756eca94'::uuid, '7af7f811-5976-5178-bda2-880a5acb1093'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ebabaaa9-f374-53ae-a5b0-a6e6994c5ddb'::uuid, '7af7f811-5976-5178-bda2-880a5acb1093'::uuid, '862f205c-c86e-5674-b9a7-a6d3756eca94'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4fa4194e-e935-51b7-ab8d-91b06391ce31'::uuid, '7af7f811-5976-5178-bda2-880a5acb1093'::uuid, '862f205c-c86e-5674-b9a7-a6d3756eca94'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7b68cb1b-349a-5511-b3d8-608ab0a7639e'::uuid,
  '4fa4194e-e935-51b7-ab8d-91b06391ce31'::uuid,
  '862f205c-c86e-5674-b9a7-a6d3756eca94'::uuid,
  '7af7f811-5976-5178-bda2-880a5acb1093'::uuid,
  'Hi Noah — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4c6350ba-051a-5c7a-8264-8196cbf0d649'::uuid,
  '4fa4194e-e935-51b7-ab8d-91b06391ce31'::uuid,
  '7af7f811-5976-5178-bda2-880a5acb1093'::uuid,
  '862f205c-c86e-5674-b9a7-a6d3756eca94'::uuid,
  'Thanks Ava! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c2f93ad7-8854-546c-9dc9-1c48bbe0383b'::uuid, '99fd2128-2116-5b9d-af88-638b0bfa8f89'::uuid, '02ed9420-1ec1-5ff8-a431-c0a1e337809f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('113d70f2-4dce-5b0d-a365-7eef46261411'::uuid, '02ed9420-1ec1-5ff8-a431-c0a1e337809f'::uuid, '99fd2128-2116-5b9d-af88-638b0bfa8f89'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c5edaee9-d02c-54a4-8624-36fe9b8e4829'::uuid, '02ed9420-1ec1-5ff8-a431-c0a1e337809f'::uuid, '99fd2128-2116-5b9d-af88-638b0bfa8f89'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('18f791ba-880b-5a43-9d5e-ea1626dde3a5'::uuid, 'c341f630-65f8-57bd-9566-a7e4bc352746'::uuid, '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c2508719-9077-5d16-aaa0-118588d4d421'::uuid, '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid, 'c341f630-65f8-57bd-9566-a7e4bc352746'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1e546125-5029-5bfd-81cc-dc431a63570d'::uuid, '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid, 'c341f630-65f8-57bd-9566-a7e4bc352746'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '46ad94c6-ace8-5e4a-8d92-6eb7097286a2'::uuid,
  '1e546125-5029-5bfd-81cc-dc431a63570d'::uuid,
  'c341f630-65f8-57bd-9566-a7e4bc352746'::uuid,
  '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid,
  'Hi Ethan — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e296fdbf-cbe2-5dbb-8112-3145fb55a860'::uuid,
  '1e546125-5029-5bfd-81cc-dc431a63570d'::uuid,
  '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid,
  'c341f630-65f8-57bd-9566-a7e4bc352746'::uuid,
  'Thanks Amina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('37eca072-2341-587b-82c3-77df475ebb8c'::uuid, 'b4ad0744-0326-5be3-98a2-fbc91bf8e8d2'::uuid, '28443b95-67f6-5761-846b-913b1661ecc8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e6434f7f-ce62-5343-b8ee-d4dcab9197ee'::uuid, '28443b95-67f6-5761-846b-913b1661ecc8'::uuid, 'b4ad0744-0326-5be3-98a2-fbc91bf8e8d2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('11a9e89b-42b1-59ac-9aec-87ab94270f34'::uuid, '28443b95-67f6-5761-846b-913b1661ecc8'::uuid, 'b4ad0744-0326-5be3-98a2-fbc91bf8e8d2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4c3464ef-5e5c-5397-8426-e4e245648bdc'::uuid, 'e39f2983-9db1-5407-971d-ee03cd24169f'::uuid, '0ffcb638-a6ff-52c5-9329-92243f0d18c9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ce7f8cb3-9094-5fd3-91be-106f37b2d574'::uuid, '0ffcb638-a6ff-52c5-9329-92243f0d18c9'::uuid, 'e39f2983-9db1-5407-971d-ee03cd24169f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8cb0e8ea-225a-54ca-9b7a-f1eb9d90e852'::uuid, '0ffcb638-a6ff-52c5-9329-92243f0d18c9'::uuid, 'e39f2983-9db1-5407-971d-ee03cd24169f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c15b6ece-9830-5218-8afc-cebbfb319c21'::uuid,
  '8cb0e8ea-225a-54ca-9b7a-f1eb9d90e852'::uuid,
  'e39f2983-9db1-5407-971d-ee03cd24169f'::uuid,
  '0ffcb638-a6ff-52c5-9329-92243f0d18c9'::uuid,
  'Hi Caleb — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2c9626fc-4ead-5465-9fbb-8fcb69e5393a'::uuid,
  '8cb0e8ea-225a-54ca-9b7a-f1eb9d90e852'::uuid,
  '0ffcb638-a6ff-52c5-9329-92243f0d18c9'::uuid,
  'e39f2983-9db1-5407-971d-ee03cd24169f'::uuid,
  'Thanks Hannah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e162a326-3193-5303-ad9b-6aa20270eab3'::uuid, 'e39f2983-9db1-5407-971d-ee03cd24169f'::uuid, '5ce1784c-be4e-50c9-8037-1b18c9ed1873'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3ff274b6-e90e-55c7-84f8-28d7ccbbfd59'::uuid, '5ce1784c-be4e-50c9-8037-1b18c9ed1873'::uuid, 'e39f2983-9db1-5407-971d-ee03cd24169f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f10735d6-24d3-59f4-be50-5314e9763918'::uuid, '5ce1784c-be4e-50c9-8037-1b18c9ed1873'::uuid, 'e39f2983-9db1-5407-971d-ee03cd24169f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0283f449-a064-5d9d-93f2-fda073e49b4a'::uuid, '8720fe7c-27d8-571e-bceb-266fcecffeaa'::uuid, 'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f4bc95af-217e-5033-ad3a-9276af246310'::uuid, 'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid, '8720fe7c-27d8-571e-bceb-266fcecffeaa'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('28085b1e-b3e0-5f03-92f5-f15232ed210c'::uuid, '8720fe7c-27d8-571e-bceb-266fcecffeaa'::uuid, 'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '165728df-21c6-5a0e-8659-719bc074c4e5'::uuid,
  '28085b1e-b3e0-5f03-92f5-f15232ed210c'::uuid,
  '8720fe7c-27d8-571e-bceb-266fcecffeaa'::uuid,
  'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid,
  'Hi Sana — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2d0c6988-0592-577c-9273-491b84539235'::uuid,
  '28085b1e-b3e0-5f03-92f5-f15232ed210c'::uuid,
  'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid,
  '8720fe7c-27d8-571e-bceb-266fcecffeaa'::uuid,
  'Thanks Julian! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e17566b5-f4ed-523a-a184-6b9cd27bbcfa'::uuid, 'eb5ccd8d-a4fb-52c8-a377-d672cd074de2'::uuid, 'a1e53141-e2a4-5537-b833-38f04e7a7b38'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f4bb3819-21a7-50dd-b8b3-959936a6be3b'::uuid, 'a1e53141-e2a4-5537-b833-38f04e7a7b38'::uuid, 'eb5ccd8d-a4fb-52c8-a377-d672cd074de2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ed9ed133-7caf-5747-bb59-679d44dee9f4'::uuid, 'a1e53141-e2a4-5537-b833-38f04e7a7b38'::uuid, 'eb5ccd8d-a4fb-52c8-a377-d672cd074de2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f8e79ade-76d4-5b26-bb8a-ee08ab6b9de0'::uuid, '3a01616f-3f3d-5774-a21e-3c0e5c68b450'::uuid, '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e776e593-5feb-5cb3-ace8-9c7707f3fd9e'::uuid, '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid, '3a01616f-3f3d-5774-a21e-3c0e5c68b450'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('251cb2fb-1185-50ef-8b7c-f2a2e8713c35'::uuid, '3a01616f-3f3d-5774-a21e-3c0e5c68b450'::uuid, '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6742180a-d1d7-531e-8660-54b2f266e99c'::uuid,
  '251cb2fb-1185-50ef-8b7c-f2a2e8713c35'::uuid,
  '3a01616f-3f3d-5774-a21e-3c0e5c68b450'::uuid,
  '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid,
  'Hi Hana — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0d80a8ab-f630-55a9-85fc-a28a00939a1d'::uuid,
  '251cb2fb-1185-50ef-8b7c-f2a2e8713c35'::uuid,
  '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid,
  '3a01616f-3f3d-5774-a21e-3c0e5c68b450'::uuid,
  'Thanks Isaac! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c0e955c0-8b1b-5098-90ab-e76b61f2059a'::uuid, '57cd3ca8-b788-5118-80ff-de66e23f013c'::uuid, 'b760f4f9-b6e9-5219-81b0-6780800a5fff'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0509b3c1-8680-525d-b521-419fcdd94301'::uuid, 'b760f4f9-b6e9-5219-81b0-6780800a5fff'::uuid, '57cd3ca8-b788-5118-80ff-de66e23f013c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('43631d9f-ad45-5c1f-b689-144f59b18413'::uuid, '57cd3ca8-b788-5118-80ff-de66e23f013c'::uuid, 'b760f4f9-b6e9-5219-81b0-6780800a5fff'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('10328ee8-27f8-5a48-b92e-329909bd9c9f'::uuid, 'd596304e-1fe2-5752-ade9-1ab0dd9683a6'::uuid, '897b4b33-e19f-51ad-89c2-0e185b508078'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('742057ea-c11b-5ffb-8a0a-06f541fe4618'::uuid, '897b4b33-e19f-51ad-89c2-0e185b508078'::uuid, 'd596304e-1fe2-5752-ade9-1ab0dd9683a6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b0366b76-ec09-5538-b40c-da495e2ef1ab'::uuid, '897b4b33-e19f-51ad-89c2-0e185b508078'::uuid, 'd596304e-1fe2-5752-ade9-1ab0dd9683a6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'bacaacdb-92db-59a9-8c5a-f2ca6fd2ae68'::uuid,
  'b0366b76-ec09-5538-b40c-da495e2ef1ab'::uuid,
  'd596304e-1fe2-5752-ade9-1ab0dd9683a6'::uuid,
  '897b4b33-e19f-51ad-89c2-0e185b508078'::uuid,
  'Hi Elena — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5ac7aa1d-fad4-5931-af01-21e20441dc69'::uuid,
  'b0366b76-ec09-5538-b40c-da495e2ef1ab'::uuid,
  '897b4b33-e19f-51ad-89c2-0e185b508078'::uuid,
  'd596304e-1fe2-5752-ade9-1ab0dd9683a6'::uuid,
  'Thanks Felix! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6115d262-56e1-5ea3-9c16-c319d4b5cc2a'::uuid, 'd596304e-1fe2-5752-ade9-1ab0dd9683a6'::uuid, 'd5f7807d-fe74-50a6-8c6d-8c9ed5d72b81'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b1072971-148c-5d87-a1c1-4e23edf94384'::uuid, 'd5f7807d-fe74-50a6-8c6d-8c9ed5d72b81'::uuid, 'd596304e-1fe2-5752-ade9-1ab0dd9683a6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e5643388-d044-55be-900f-d524de9eccd6'::uuid, 'd596304e-1fe2-5752-ade9-1ab0dd9683a6'::uuid, 'd5f7807d-fe74-50a6-8c6d-8c9ed5d72b81'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3bf08978-7243-5a80-a1bf-9374e38342cf'::uuid, '1e2a697d-74d0-5ccd-b526-81c2a8412445'::uuid, 'cd65f8ad-1c2b-5b00-beac-354598567dd1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('40c465e3-d9c2-547d-80b7-1bbbba650098'::uuid, 'cd65f8ad-1c2b-5b00-beac-354598567dd1'::uuid, '1e2a697d-74d0-5ccd-b526-81c2a8412445'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7467a5f7-262a-569b-aff9-12960e11a7ae'::uuid, '1e2a697d-74d0-5ccd-b526-81c2a8412445'::uuid, 'cd65f8ad-1c2b-5b00-beac-354598567dd1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8d328fd4-41c0-5527-98d2-27a2df5f56a2'::uuid,
  '7467a5f7-262a-569b-aff9-12960e11a7ae'::uuid,
  '1e2a697d-74d0-5ccd-b526-81c2a8412445'::uuid,
  'cd65f8ad-1c2b-5b00-beac-354598567dd1'::uuid,
  'Hi Rohan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b913a06d-4fde-5765-b038-bc373013be9d'::uuid,
  '7467a5f7-262a-569b-aff9-12960e11a7ae'::uuid,
  'cd65f8ad-1c2b-5b00-beac-354598567dd1'::uuid,
  '1e2a697d-74d0-5ccd-b526-81c2a8412445'::uuid,
  'Thanks Sara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('70dec805-fc0b-58cc-b121-f55d28a9cba2'::uuid, 'a5ca5651-a654-51a0-a327-441ba828d83b'::uuid, '47cf10ee-a8c2-514f-b576-5ffd0d0d0b0c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4e9b1a94-3139-548b-b228-766d8782c1ee'::uuid, '47cf10ee-a8c2-514f-b576-5ffd0d0d0b0c'::uuid, 'a5ca5651-a654-51a0-a327-441ba828d83b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('52ad0b67-2c98-5770-bae9-1a5da237c4f7'::uuid, '47cf10ee-a8c2-514f-b576-5ffd0d0d0b0c'::uuid, 'a5ca5651-a654-51a0-a327-441ba828d83b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cc946f45-d944-54ee-a258-7faf4c59d451'::uuid, 'ea2fb814-4778-5d39-a00f-eb1d0e27fb92'::uuid, '99f99166-d723-53d1-97e8-bc6671828d19'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f28fc192-2f64-57c4-94ac-14c1c9ac92c3'::uuid, '99f99166-d723-53d1-97e8-bc6671828d19'::uuid, 'ea2fb814-4778-5d39-a00f-eb1d0e27fb92'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3b7a6b88-3e0d-54e3-b24b-c07e5115b140'::uuid, '99f99166-d723-53d1-97e8-bc6671828d19'::uuid, 'ea2fb814-4778-5d39-a00f-eb1d0e27fb92'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '450058bc-ec41-5a9e-9ea1-38429e80100b'::uuid,
  '3b7a6b88-3e0d-54e3-b24b-c07e5115b140'::uuid,
  'ea2fb814-4778-5d39-a00f-eb1d0e27fb92'::uuid,
  '99f99166-d723-53d1-97e8-bc6671828d19'::uuid,
  'Hi Samir — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'aa9aac47-f7a9-5333-9639-c63f0da1a609'::uuid,
  '3b7a6b88-3e0d-54e3-b24b-c07e5115b140'::uuid,
  '99f99166-d723-53d1-97e8-bc6671828d19'::uuid,
  'ea2fb814-4778-5d39-a00f-eb1d0e27fb92'::uuid,
  'Thanks Grace! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7e5bff4a-bd7b-5ffc-9f4d-f34b011f88a5'::uuid, '900a2d77-a10d-5ba0-95fc-fe4be7e250a4'::uuid, '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('05d1bb47-7a84-5152-bce6-fbd331115f6d'::uuid, '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb'::uuid, '900a2d77-a10d-5ba0-95fc-fe4be7e250a4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('32f823d3-788c-58cf-848c-4f5e875c1ca4'::uuid, '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb'::uuid, '900a2d77-a10d-5ba0-95fc-fe4be7e250a4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c34d1c1e-4b18-50ec-af8b-c70bf1caa561'::uuid, 'a4e70726-d19d-5c33-89d1-0754ffd062b1'::uuid, '4ded9d2c-411a-5884-a2f1-9b3d21d137ed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2a3990f6-cb90-530b-9431-764a9d76d3fd'::uuid, '4ded9d2c-411a-5884-a2f1-9b3d21d137ed'::uuid, 'a4e70726-d19d-5c33-89d1-0754ffd062b1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a47e149f-ec38-5d73-a255-19e409d6cdc2'::uuid, '4ded9d2c-411a-5884-a2f1-9b3d21d137ed'::uuid, 'a4e70726-d19d-5c33-89d1-0754ffd062b1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c1954bb4-d82e-52a0-bbeb-8f4907bb14ba'::uuid,
  'a47e149f-ec38-5d73-a255-19e409d6cdc2'::uuid,
  'a4e70726-d19d-5c33-89d1-0754ffd062b1'::uuid,
  '4ded9d2c-411a-5884-a2f1-9b3d21d137ed'::uuid,
  'Hi Daniel — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1f04b4d0-8a01-5af1-ab85-e3cf11de80ae'::uuid,
  'a47e149f-ec38-5d73-a255-19e409d6cdc2'::uuid,
  '4ded9d2c-411a-5884-a2f1-9b3d21d137ed'::uuid,
  'a4e70726-d19d-5c33-89d1-0754ffd062b1'::uuid,
  'Thanks Isla! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d722ae42-e41f-5397-8599-50f0f8397d45'::uuid, 'a4e70726-d19d-5c33-89d1-0754ffd062b1'::uuid, 'ef33091a-beec-514c-aef8-2bb5236c7ea0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bfd82177-bdbe-562c-a05b-a1e770f0d34e'::uuid, 'ef33091a-beec-514c-aef8-2bb5236c7ea0'::uuid, 'a4e70726-d19d-5c33-89d1-0754ffd062b1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0651e50b-6bf7-5269-90de-dbe4e3b02198'::uuid, 'a4e70726-d19d-5c33-89d1-0754ffd062b1'::uuid, 'ef33091a-beec-514c-aef8-2bb5236c7ea0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e819f070-66d9-5a33-b91d-f309bca52179'::uuid, 'a018203c-46b7-508f-95c6-b6c42580c16c'::uuid, '1fbcf3d3-ee1a-5331-823b-d5a4758c0204'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6c80b460-260a-556c-b9ad-21cd1629bd54'::uuid, '1fbcf3d3-ee1a-5331-823b-d5a4758c0204'::uuid, 'a018203c-46b7-508f-95c6-b6c42580c16c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f3e98fcd-8de9-53cf-9e61-be97f67fd8f6'::uuid, '1fbcf3d3-ee1a-5331-823b-d5a4758c0204'::uuid, 'a018203c-46b7-508f-95c6-b6c42580c16c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'bc750828-46c0-52df-b3fd-90ab059e093b'::uuid,
  'f3e98fcd-8de9-53cf-9e61-be97f67fd8f6'::uuid,
  'a018203c-46b7-508f-95c6-b6c42580c16c'::uuid,
  '1fbcf3d3-ee1a-5331-823b-d5a4758c0204'::uuid,
  'Hi Nina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'bbc28f24-e5e8-5150-b96b-2b5a5e98c3b8'::uuid,
  'f3e98fcd-8de9-53cf-9e61-be97f67fd8f6'::uuid,
  '1fbcf3d3-ee1a-5331-823b-d5a4758c0204'::uuid,
  'a018203c-46b7-508f-95c6-b6c42580c16c'::uuid,
  'Thanks Theo! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c3b0d2a3-3076-534a-8203-5cda390fc88c'::uuid, 'fa10485d-6ae3-5acc-afcd-cb141834f70e'::uuid, 'f59d5527-b411-526d-b2aa-0069357fa215'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4d7fd88a-1fc7-5c2d-bc9e-0f1a1491996e'::uuid, 'f59d5527-b411-526d-b2aa-0069357fa215'::uuid, 'fa10485d-6ae3-5acc-afcd-cb141834f70e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b41365dd-9dc8-5805-b58c-70ced59bb627'::uuid, 'f59d5527-b411-526d-b2aa-0069357fa215'::uuid, 'fa10485d-6ae3-5acc-afcd-cb141834f70e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e6ab03e8-4a48-5d2b-95bc-41fb0fc02f0c'::uuid, 'af8dc57b-50ea-53e4-83a2-7fc4513a247e'::uuid, 'c78b2092-0056-5d5f-a59a-0408b3bbf197'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0e20fb5f-a18a-5f87-8ad6-4bbbc22314e0'::uuid, 'c78b2092-0056-5d5f-a59a-0408b3bbf197'::uuid, 'af8dc57b-50ea-53e4-83a2-7fc4513a247e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0f246bcc-4ae9-5589-88bc-06a3ebec378e'::uuid, 'af8dc57b-50ea-53e4-83a2-7fc4513a247e'::uuid, 'c78b2092-0056-5d5f-a59a-0408b3bbf197'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd864a73b-889e-5084-b5ba-cc62fde1b08c'::uuid,
  '0f246bcc-4ae9-5589-88bc-06a3ebec378e'::uuid,
  'af8dc57b-50ea-53e4-83a2-7fc4513a247e'::uuid,
  'c78b2092-0056-5d5f-a59a-0408b3bbf197'::uuid,
  'Hi Sofia — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f33dc340-06ed-57bc-b9a8-5db8189ce70e'::uuid,
  '0f246bcc-4ae9-5589-88bc-06a3ebec378e'::uuid,
  'c78b2092-0056-5d5f-a59a-0408b3bbf197'::uuid,
  'af8dc57b-50ea-53e4-83a2-7fc4513a247e'::uuid,
  'Thanks Lucas! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('92af55ef-dba2-5099-b207-5c5d4995fde3'::uuid, '71ce6f8f-e4ca-5b43-9477-04524c1dfb5a'::uuid, '42a644d9-ef02-551e-98fd-86c9547f5344'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('683e3657-ce49-5c5f-9a95-7b146a70b01d'::uuid, '42a644d9-ef02-551e-98fd-86c9547f5344'::uuid, '71ce6f8f-e4ca-5b43-9477-04524c1dfb5a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('11b1bc56-f1a0-52bc-ad1b-ec971f646e85'::uuid, '42a644d9-ef02-551e-98fd-86c9547f5344'::uuid, '71ce6f8f-e4ca-5b43-9477-04524c1dfb5a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e59cad19-b7b0-5930-bbb0-64fc31337579'::uuid, 'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid, '06f62af9-52f4-52fc-9257-21fc2d7258ca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('72f880e9-af1b-5030-a526-991d08ed684b'::uuid, '06f62af9-52f4-52fc-9257-21fc2d7258ca'::uuid, 'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9fa3cbbe-1955-5cb3-8dd7-fc6244cd895e'::uuid, '06f62af9-52f4-52fc-9257-21fc2d7258ca'::uuid, 'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '66257b1b-baf2-5ae0-a1d9-ee8ee84a2bcb'::uuid,
  '9fa3cbbe-1955-5cb3-8dd7-fc6244cd895e'::uuid,
  'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid,
  '06f62af9-52f4-52fc-9257-21fc2d7258ca'::uuid,
  'Hi Zara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a98eeaa4-3602-58de-b5a3-c43a20d0cb97'::uuid,
  '9fa3cbbe-1955-5cb3-8dd7-fc6244cd895e'::uuid,
  '06f62af9-52f4-52fc-9257-21fc2d7258ca'::uuid,
  'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid,
  'Thanks David! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('32856774-1119-5892-b78c-724c36224b94'::uuid, 'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid, 'aa23ebcd-e9cb-55d1-8431-fc4a5204925f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bcc465d7-77e7-524f-979b-256f920081ea'::uuid, 'aa23ebcd-e9cb-55d1-8431-fc4a5204925f'::uuid, 'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5a169c88-1f0e-58f2-8233-25038b915e7c'::uuid, 'aa23ebcd-e9cb-55d1-8431-fc4a5204925f'::uuid, 'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d3562946-e92a-560e-b7b1-2b65c63b09e2'::uuid, 'fb2d5ae5-7a9f-5875-9562-025ba2ec14d4'::uuid, '188d7ba6-25d8-5a8a-a635-f07c138073d7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7e0691e8-7b49-5b6c-bf06-d6f0fc22bf46'::uuid, '188d7ba6-25d8-5a8a-a635-f07c138073d7'::uuid, 'fb2d5ae5-7a9f-5875-9562-025ba2ec14d4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3adb121b-9753-5d51-8cdc-5d42541ad59a'::uuid, '188d7ba6-25d8-5a8a-a635-f07c138073d7'::uuid, 'fb2d5ae5-7a9f-5875-9562-025ba2ec14d4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd1bf35ef-5862-54df-9e0a-d98489b176aa'::uuid,
  '3adb121b-9753-5d51-8cdc-5d42541ad59a'::uuid,
  'fb2d5ae5-7a9f-5875-9562-025ba2ec14d4'::uuid,
  '188d7ba6-25d8-5a8a-a635-f07c138073d7'::uuid,
  'Hi Kai — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7a8fd1c3-7b83-547b-bc06-d0e49fcc2b90'::uuid,
  '3adb121b-9753-5d51-8cdc-5d42541ad59a'::uuid,
  '188d7ba6-25d8-5a8a-a635-f07c138073d7'::uuid,
  'fb2d5ae5-7a9f-5875-9562-025ba2ec14d4'::uuid,
  'Thanks Aisha! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;
