INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f1b5123e-0f8d-5ef6-9d5b-de528a8f0cc0'::uuid, 'fb9244f2-447e-5a1c-b659-0415f38aa37e'::uuid, '7b5d6f8f-a9da-5c63-9788-0f8bd3e5ea66'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e4f605a6-71ee-5e25-b303-b38ccba7ba37'::uuid, '7b5d6f8f-a9da-5c63-9788-0f8bd3e5ea66'::uuid, 'fb9244f2-447e-5a1c-b659-0415f38aa37e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e0f9d3fb-da1e-5767-b5c1-8cacfa5538b3'::uuid, '7b5d6f8f-a9da-5c63-9788-0f8bd3e5ea66'::uuid, 'fb9244f2-447e-5a1c-b659-0415f38aa37e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ca466937-ece9-596b-984f-b13be009d235'::uuid, '40866e35-1364-5559-8365-e428e26a9b73'::uuid, '489286d8-f958-5262-bb06-db46b21bf316'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('11cf22ba-e839-53db-88b2-7a2748eddf35'::uuid, '489286d8-f958-5262-bb06-db46b21bf316'::uuid, '40866e35-1364-5559-8365-e428e26a9b73'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a7d442d2-1ea8-59bc-9a8d-9b04c7c157a3'::uuid, '40866e35-1364-5559-8365-e428e26a9b73'::uuid, '489286d8-f958-5262-bb06-db46b21bf316'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'efd7bacf-f349-5e7a-b713-4da02848dbaa'::uuid,
  'a7d442d2-1ea8-59bc-9a8d-9b04c7c157a3'::uuid,
  '40866e35-1364-5559-8365-e428e26a9b73'::uuid,
  '489286d8-f958-5262-bb06-db46b21bf316'::uuid,
  'Hi Sofia — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5c2461f5-4c64-595d-8963-376fefae10c8'::uuid,
  'a7d442d2-1ea8-59bc-9a8d-9b04c7c157a3'::uuid,
  '489286d8-f958-5262-bb06-db46b21bf316'::uuid,
  '40866e35-1364-5559-8365-e428e26a9b73'::uuid,
  'Thanks Lucas! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6a9aaaa4-0878-5000-9507-5b8944ac9658'::uuid, '4bc1801f-c757-581d-91da-a729eda9358f'::uuid, '4fa916d6-a6c1-5edf-943e-119616ae9370'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ad0c2a00-be0b-5fe0-81e9-bdb93f419f04'::uuid, '4fa916d6-a6c1-5edf-943e-119616ae9370'::uuid, '4bc1801f-c757-581d-91da-a729eda9358f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6dc474d0-f8ad-52ad-9c71-1a18830942ec'::uuid, '4bc1801f-c757-581d-91da-a729eda9358f'::uuid, '4fa916d6-a6c1-5edf-943e-119616ae9370'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('371c6174-d717-5456-ae58-40fa6ce35225'::uuid, '7ba8ee20-b43c-51a0-ad65-a701acb7d89f'::uuid, '71b5f888-8c72-57bb-8f2a-a2c4b3b8068b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7fc65aa5-21a0-5064-a3b9-b6847feb6a8d'::uuid, '71b5f888-8c72-57bb-8f2a-a2c4b3b8068b'::uuid, '7ba8ee20-b43c-51a0-ad65-a701acb7d89f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cf94982c-d815-54b4-9ea7-acdcb22c03ce'::uuid, '71b5f888-8c72-57bb-8f2a-a2c4b3b8068b'::uuid, '7ba8ee20-b43c-51a0-ad65-a701acb7d89f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'aae17207-d643-5478-99ca-c58d5abcdee2'::uuid,
  'cf94982c-d815-54b4-9ea7-acdcb22c03ce'::uuid,
  '7ba8ee20-b43c-51a0-ad65-a701acb7d89f'::uuid,
  '71b5f888-8c72-57bb-8f2a-a2c4b3b8068b'::uuid,
  'Hi Zara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5c65de92-927d-5c92-9391-eaa161f2cd12'::uuid,
  'cf94982c-d815-54b4-9ea7-acdcb22c03ce'::uuid,
  '71b5f888-8c72-57bb-8f2a-a2c4b3b8068b'::uuid,
  '7ba8ee20-b43c-51a0-ad65-a701acb7d89f'::uuid,
  'Thanks David! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ba346c95-c1a0-5a92-9afb-8453c4ab2d9a'::uuid, '7ba8ee20-b43c-51a0-ad65-a701acb7d89f'::uuid, '73333d77-69c7-5858-a0a3-c3ac5f504d8b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7f7f6fa5-7f86-5205-b942-8722a5709eb4'::uuid, '73333d77-69c7-5858-a0a3-c3ac5f504d8b'::uuid, '7ba8ee20-b43c-51a0-ad65-a701acb7d89f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('23d7d4af-33f0-5b4c-aa64-9903ce8310d0'::uuid, '73333d77-69c7-5858-a0a3-c3ac5f504d8b'::uuid, '7ba8ee20-b43c-51a0-ad65-a701acb7d89f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0dae8669-f9f9-57bf-8832-419b5494ad9d'::uuid, 'f78cc4fe-8b90-548b-a652-2631fc1fa61f'::uuid, 'de1e9306-c25d-567c-88d1-ea248e31d183'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('38b3c552-5f22-50b5-85f1-b41ac4f90a45'::uuid, 'de1e9306-c25d-567c-88d1-ea248e31d183'::uuid, 'f78cc4fe-8b90-548b-a652-2631fc1fa61f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7b428a32-8dc7-5f5e-b31c-b59aa6438c2f'::uuid, 'de1e9306-c25d-567c-88d1-ea248e31d183'::uuid, 'f78cc4fe-8b90-548b-a652-2631fc1fa61f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '28e7ef5a-9d4f-5225-9398-5f19a158ea43'::uuid,
  '7b428a32-8dc7-5f5e-b31c-b59aa6438c2f'::uuid,
  'f78cc4fe-8b90-548b-a652-2631fc1fa61f'::uuid,
  'de1e9306-c25d-567c-88d1-ea248e31d183'::uuid,
  'Hi Kai — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b4399f62-0483-581e-a54c-4eab3c56e30d'::uuid,
  '7b428a32-8dc7-5f5e-b31c-b59aa6438c2f'::uuid,
  'de1e9306-c25d-567c-88d1-ea248e31d183'::uuid,
  'f78cc4fe-8b90-548b-a652-2631fc1fa61f'::uuid,
  'Thanks Aisha! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b607d49d-6ddb-5bed-8fe9-96a3e548c8ae'::uuid, 'f324de5b-f927-5f4b-92bf-a2695829f8d2'::uuid, '8cb57f2a-fbde-564a-a07f-982bb2361506'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9f0e77c5-3e24-5526-901a-54c2a71e69c6'::uuid, '8cb57f2a-fbde-564a-a07f-982bb2361506'::uuid, 'f324de5b-f927-5f4b-92bf-a2695829f8d2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a27f2530-fa69-5b08-8fd3-c1f88e95ced6'::uuid, '8cb57f2a-fbde-564a-a07f-982bb2361506'::uuid, 'f324de5b-f927-5f4b-92bf-a2695829f8d2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('750a238a-64ed-585e-aace-df2e7221e8db'::uuid, '73f8f74e-37d0-5c9c-a508-b2cbc81b2e75'::uuid, 'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3b06367a-b3a8-5a40-9a78-d71fe49fe878'::uuid, 'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid, '73f8f74e-37d0-5c9c-a508-b2cbc81b2e75'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0954e6df-c0a2-536d-a5ce-c6f896e9c324'::uuid, '73f8f74e-37d0-5c9c-a508-b2cbc81b2e75'::uuid, 'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7461e704-0155-5cbe-8c08-7c6ee9a8cc97'::uuid,
  '0954e6df-c0a2-536d-a5ce-c6f896e9c324'::uuid,
  '73f8f74e-37d0-5c9c-a508-b2cbc81b2e75'::uuid,
  'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid,
  'Hi Benjamin — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '018b47b4-a708-59a4-afff-29d12d890c71'::uuid,
  '0954e6df-c0a2-536d-a5ce-c6f896e9c324'::uuid,
  'f657d03a-29c5-553e-a103-2e7bae1435e9'::uuid,
  '73f8f74e-37d0-5c9c-a508-b2cbc81b2e75'::uuid,
  'Thanks Nadia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('300fe3b4-f69b-583c-95ee-09b9c3270719'::uuid, 'aced2dee-a87a-5380-868b-7a5e87607d2d'::uuid, '0d9585a1-cb90-50ae-b41c-a594e5492606'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dfd8a82f-8238-54e9-a285-23c11f84ec2c'::uuid, '0d9585a1-cb90-50ae-b41c-a594e5492606'::uuid, 'aced2dee-a87a-5380-868b-7a5e87607d2d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0827a356-5c8b-50a4-b494-6fedd1f2bd57'::uuid, '0d9585a1-cb90-50ae-b41c-a594e5492606'::uuid, 'aced2dee-a87a-5380-868b-7a5e87607d2d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('beca2798-0ce3-50e0-9c4c-20238aafa9b9'::uuid, '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid, '6dee1107-bcd5-5a95-8dc2-d1ef174bc8ea'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d349c496-92f8-55b1-9661-7474b9a97664'::uuid, '6dee1107-bcd5-5a95-8dc2-d1ef174bc8ea'::uuid, '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c2df0b0d-20d1-56ea-8dad-35481db81d6f'::uuid, '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid, '6dee1107-bcd5-5a95-8dc2-d1ef174bc8ea'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c5f8db20-f4d5-53a5-b25c-71b23ce95c93'::uuid,
  'c2df0b0d-20d1-56ea-8dad-35481db81d6f'::uuid,
  '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid,
  '6dee1107-bcd5-5a95-8dc2-d1ef174bc8ea'::uuid,
  'Hi Sebastian — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '65315394-b45f-5375-93d8-1dd472f045a7'::uuid,
  'c2df0b0d-20d1-56ea-8dad-35481db81d6f'::uuid,
  '6dee1107-bcd5-5a95-8dc2-d1ef174bc8ea'::uuid,
  '0891e6e3-ee9f-5ff9-9b15-c973fdf1d32f'::uuid,
  'Thanks Mei! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;