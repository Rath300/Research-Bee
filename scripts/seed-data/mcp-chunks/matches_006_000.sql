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