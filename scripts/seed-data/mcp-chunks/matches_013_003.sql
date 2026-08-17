INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('92216544-7f14-52af-8d79-0e42da457f9a'::uuid, 'd950d3d2-16f6-5d3d-bed8-7ac8a0c5c29e'::uuid, '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e9732a7b-2be3-5e81-9568-73828df88318'::uuid, '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid, 'd950d3d2-16f6-5d3d-bed8-7ac8a0c5c29e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '288913fb-4cc4-541e-957e-182834c1949e'::uuid,
  'e9732a7b-2be3-5e81-9568-73828df88318'::uuid,
  '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid,
  'd950d3d2-16f6-5d3d-bed8-7ac8a0c5c29e'::uuid,
  'Hi Nathan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6ed60304-4146-52cc-a13d-cd5f103b46ab'::uuid,
  'e9732a7b-2be3-5e81-9568-73828df88318'::uuid,
  'd950d3d2-16f6-5d3d-bed8-7ac8a0c5c29e'::uuid,
  '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid,
  'Thanks Camila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('93b326d7-be9a-53a0-ba19-02792f7e8f2f'::uuid, 'e2ce6ffe-8af1-5660-98ab-c1b6f7f75804'::uuid, 'bbd25235-3b2e-5db2-a0dd-8a7dddfac498'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('20124f89-153d-5070-aa9c-22e0a20527c3'::uuid, 'bbd25235-3b2e-5db2-a0dd-8a7dddfac498'::uuid, 'e2ce6ffe-8af1-5660-98ab-c1b6f7f75804'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('aa88bc33-bcdf-58e3-bb2a-00a9623dabbf'::uuid, 'bbd25235-3b2e-5db2-a0dd-8a7dddfac498'::uuid, 'e2ce6ffe-8af1-5660-98ab-c1b6f7f75804'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f36faf15-af42-59e5-98c9-e180082a3de8'::uuid, 'dbee6fcf-eb85-55b9-9cfa-e9d46eaa3383'::uuid, '33fa21aa-e933-5a50-afb5-70bbbf5f265e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9b08ba97-bb50-51dc-8bc3-95dfa1465b26'::uuid, '33fa21aa-e933-5a50-afb5-70bbbf5f265e'::uuid, 'dbee6fcf-eb85-55b9-9cfa-e9d46eaa3383'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3be4d910-cac2-56cb-ad79-b20ed33b214d'::uuid, '33fa21aa-e933-5a50-afb5-70bbbf5f265e'::uuid, 'dbee6fcf-eb85-55b9-9cfa-e9d46eaa3383'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2a8dcf86-feaa-50ea-b2ab-ed201d38ca06'::uuid,
  '3be4d910-cac2-56cb-ad79-b20ed33b214d'::uuid,
  'dbee6fcf-eb85-55b9-9cfa-e9d46eaa3383'::uuid,
  '33fa21aa-e933-5a50-afb5-70bbbf5f265e'::uuid,
  'Hi Omar — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '80a77f28-2f9f-53b4-8478-3aaaff346236'::uuid,
  '3be4d910-cac2-56cb-ad79-b20ed33b214d'::uuid,
  '33fa21aa-e933-5a50-afb5-70bbbf5f265e'::uuid,
  'dbee6fcf-eb85-55b9-9cfa-e9d46eaa3383'::uuid,
  'Thanks Nina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('62e526cf-4a6b-53a4-bbf4-b8dfdcf95ac9'::uuid, '7b5d6f8f-a9da-5c63-9788-0f8bd3e5ea66'::uuid, 'ed6e6e85-2c88-535d-84f9-a67cc2cbc4f5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('359969ef-8535-5298-829d-ee22b82938df'::uuid, 'ed6e6e85-2c88-535d-84f9-a67cc2cbc4f5'::uuid, '7b5d6f8f-a9da-5c63-9788-0f8bd3e5ea66'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6ead394f-f383-58f3-ac24-e988680661c4'::uuid, '7b5d6f8f-a9da-5c63-9788-0f8bd3e5ea66'::uuid, 'ed6e6e85-2c88-535d-84f9-a67cc2cbc4f5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c9541f3b-9372-5143-a713-539de303d179'::uuid, '489286d8-f958-5262-bb06-db46b21bf316'::uuid, '2c0dd167-5c7e-5666-9b16-5874de8c5169'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6032cc26-ff06-5b46-a759-ec2f6376fdf6'::uuid, '2c0dd167-5c7e-5666-9b16-5874de8c5169'::uuid, '489286d8-f958-5262-bb06-db46b21bf316'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('94cdfa66-ce27-5a36-87ff-8c9981eb9555'::uuid, '2c0dd167-5c7e-5666-9b16-5874de8c5169'::uuid, '489286d8-f958-5262-bb06-db46b21bf316'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ee74fb0e-e055-5597-8908-0551dff8591a'::uuid,
  '94cdfa66-ce27-5a36-87ff-8c9981eb9555'::uuid,
  '489286d8-f958-5262-bb06-db46b21bf316'::uuid,
  '2c0dd167-5c7e-5666-9b16-5874de8c5169'::uuid,
  'Hi Owen — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4b2cfdd8-5d31-510d-b548-9e4ac873c58a'::uuid,
  '94cdfa66-ce27-5a36-87ff-8c9981eb9555'::uuid,
  '2c0dd167-5c7e-5666-9b16-5874de8c5169'::uuid,
  '489286d8-f958-5262-bb06-db46b21bf316'::uuid,
  'Thanks Sofia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('38ec1618-783c-54be-9663-83805c62c103'::uuid, '489286d8-f958-5262-bb06-db46b21bf316'::uuid, 'd7da1031-b378-592c-82ed-381c68c0b7ca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b8605c29-eefe-5b19-8897-9dffcdae6387'::uuid, 'd7da1031-b378-592c-82ed-381c68c0b7ca'::uuid, '489286d8-f958-5262-bb06-db46b21bf316'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e530dc90-9115-568d-84dc-a67f498b8b87'::uuid, '489286d8-f958-5262-bb06-db46b21bf316'::uuid, 'd7da1031-b378-592c-82ed-381c68c0b7ca'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bea6bb3b-4520-5c87-90a3-23a51b1ae212'::uuid, '4fa916d6-a6c1-5edf-943e-119616ae9370'::uuid, '8b8a20c4-f947-5d73-913d-867c67b89295'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e5b36c30-e9b5-5849-864f-ed93b284b5d2'::uuid, '8b8a20c4-f947-5d73-913d-867c67b89295'::uuid, '4fa916d6-a6c1-5edf-943e-119616ae9370'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b32ed8f9-19f9-5532-aba0-9ee209ab9227'::uuid, '4fa916d6-a6c1-5edf-943e-119616ae9370'::uuid, '8b8a20c4-f947-5d73-913d-867c67b89295'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7a36f1b8-926f-5808-a26e-478ee0444a90'::uuid,
  'b32ed8f9-19f9-5532-aba0-9ee209ab9227'::uuid,
  '4fa916d6-a6c1-5edf-943e-119616ae9370'::uuid,
  '8b8a20c4-f947-5d73-913d-867c67b89295'::uuid,
  'Hi Violet — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '08af3556-1301-50e4-8287-503effbfca2a'::uuid,
  'b32ed8f9-19f9-5532-aba0-9ee209ab9227'::uuid,
  '8b8a20c4-f947-5d73-913d-867c67b89295'::uuid,
  '4fa916d6-a6c1-5edf-943e-119616ae9370'::uuid,
  'Thanks Kenji! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('adb672c4-3e0e-58c3-9e75-a8cfca6c8ff8'::uuid, '71b5f888-8c72-57bb-8f2a-a2c4b3b8068b'::uuid, 'bd20663c-d6a2-51fa-ab80-4be7e0b70de7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('13dfda0f-d08f-5888-8bbe-4307d657b3eb'::uuid, 'bd20663c-d6a2-51fa-ab80-4be7e0b70de7'::uuid, '71b5f888-8c72-57bb-8f2a-a2c4b3b8068b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0a7ca5d5-1a8a-5968-87c7-dcc521c0a51e'::uuid, '71b5f888-8c72-57bb-8f2a-a2c4b3b8068b'::uuid, 'bd20663c-d6a2-51fa-ab80-4be7e0b70de7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d00f30f7-d18d-5b1b-a915-ca0e4b5c1dde'::uuid, 'de1e9306-c25d-567c-88d1-ea248e31d183'::uuid, 'eebb922f-dd26-57ea-a213-9149abab4313'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e5d9a61e-17db-5a66-8868-5c2b2a128833'::uuid, 'eebb922f-dd26-57ea-a213-9149abab4313'::uuid, 'de1e9306-c25d-567c-88d1-ea248e31d183'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('542fd4fa-c6e4-508c-a427-9149794a8adf'::uuid, 'de1e9306-c25d-567c-88d1-ea248e31d183'::uuid, 'eebb922f-dd26-57ea-a213-9149abab4313'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '79a9fb4b-917b-515b-a2fb-7a438bdb2d08'::uuid,
  '542fd4fa-c6e4-508c-a427-9149794a8adf'::uuid,
  'de1e9306-c25d-567c-88d1-ea248e31d183'::uuid,
  'eebb922f-dd26-57ea-a213-9149abab4313'::uuid,
  'Hi Tara — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c3c1d1e8-f465-5220-8705-16472855bd7d'::uuid,
  '542fd4fa-c6e4-508c-a427-9149794a8adf'::uuid,
  'eebb922f-dd26-57ea-a213-9149abab4313'::uuid,
  'de1e9306-c25d-567c-88d1-ea248e31d183'::uuid,
  'Thanks Kai! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4a4890d9-1cca-56ba-b1cf-2eefc4054e9e'::uuid, '8cb57f2a-fbde-564a-a07f-982bb2361506'::uuid, '7946e966-b7f0-5144-a21a-04765a50638c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bded8a36-81f0-5850-8048-9505005df77c'::uuid, '7946e966-b7f0-5144-a21a-04765a50638c'::uuid, '8cb57f2a-fbde-564a-a07f-982bb2361506'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8e4a515f-f080-5900-ba9d-cb68be7c04a9'::uuid, '7946e966-b7f0-5144-a21a-04765a50638c'::uuid, '8cb57f2a-fbde-564a-a07f-982bb2361506'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0bcab6f9-b5aa-5055-8c80-ef152fca39ee'::uuid, 'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid, '2d6a40b8-dfab-5368-9f36-49bd06c4e841'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;