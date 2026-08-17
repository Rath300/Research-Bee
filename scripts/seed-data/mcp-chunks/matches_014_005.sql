INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fda1fbe3-d2c2-5e38-a687-24e515925a9e'::uuid,
  '7edf8493-5d09-5d00-adf2-1bbe1aa6778f'::uuid,
  'd03250de-48b2-59ba-9295-19028affe265'::uuid,
  '33deff9e-63a9-5149-af03-74ac800cd82b'::uuid,
  'Thanks Kai! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('70a61571-1ed2-577c-b0f0-6aa4d05484ba'::uuid, 'a343cb5f-989d-5d2d-befe-e659982ec6d3'::uuid, 'a6390256-0979-5984-bd9a-7a836b35c744'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5894d3cc-3e00-5d8c-954a-ad3e9c939e29'::uuid, 'a6390256-0979-5984-bd9a-7a836b35c744'::uuid, 'a343cb5f-989d-5d2d-befe-e659982ec6d3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dc775e22-6c31-5ae5-a901-f76e3e65586d'::uuid, 'a343cb5f-989d-5d2d-befe-e659982ec6d3'::uuid, 'a6390256-0979-5984-bd9a-7a836b35c744'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5c4e1c41-f20b-5fe0-91b0-86fe4d9df1b9'::uuid, '66ed3399-31e4-53c0-b383-f6dc631a5b40'::uuid, 'ebf6481a-b2e8-5f6f-bfeb-dd1fac2d1f3d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('07452d21-99da-5a66-9b8e-034a8a490c1c'::uuid, 'ebf6481a-b2e8-5f6f-bfeb-dd1fac2d1f3d'::uuid, '66ed3399-31e4-53c0-b383-f6dc631a5b40'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6aa0e53a-c060-5405-b142-57635799ead9'::uuid, '66ed3399-31e4-53c0-b383-f6dc631a5b40'::uuid, 'ebf6481a-b2e8-5f6f-bfeb-dd1fac2d1f3d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '140d5cfc-1679-523f-8e47-0bc5cf46efae'::uuid,
  '6aa0e53a-c060-5405-b142-57635799ead9'::uuid,
  '66ed3399-31e4-53c0-b383-f6dc631a5b40'::uuid,
  'ebf6481a-b2e8-5f6f-bfeb-dd1fac2d1f3d'::uuid,
  'Hi Imani — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e74593ce-7585-561e-b8e8-8ea0ddae0e84'::uuid,
  '6aa0e53a-c060-5405-b142-57635799ead9'::uuid,
  'ebf6481a-b2e8-5f6f-bfeb-dd1fac2d1f3d'::uuid,
  '66ed3399-31e4-53c0-b383-f6dc631a5b40'::uuid,
  'Thanks Benjamin! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('26ac6f3d-0d9a-58da-9739-d3871b661a69'::uuid, '66ed3399-31e4-53c0-b383-f6dc631a5b40'::uuid, '789cb839-9c80-5444-ae46-de39fa27b287'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b68323c2-ecca-5765-9928-5ca4c6ca5417'::uuid, '789cb839-9c80-5444-ae46-de39fa27b287'::uuid, '66ed3399-31e4-53c0-b383-f6dc631a5b40'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('353dbdb0-74e7-5905-bab0-a04afb80ba69'::uuid, '66ed3399-31e4-53c0-b383-f6dc631a5b40'::uuid, '789cb839-9c80-5444-ae46-de39fa27b287'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('89f95306-1313-5662-ad47-2762f5b54f1a'::uuid, '599f91ad-8872-5548-98ef-05309b9d767d'::uuid, '5cf4ccea-92d5-5091-acda-a50401fee6e4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5cecde87-3ec5-5c44-a446-48908529859f'::uuid, '5cf4ccea-92d5-5091-acda-a50401fee6e4'::uuid, '599f91ad-8872-5548-98ef-05309b9d767d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0b282655-9d9e-5496-a782-e7b05f39952e'::uuid, '599f91ad-8872-5548-98ef-05309b9d767d'::uuid, '5cf4ccea-92d5-5091-acda-a50401fee6e4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f2b770b6-87d5-536b-81ee-2fe9c9d309cd'::uuid,
  '0b282655-9d9e-5496-a782-e7b05f39952e'::uuid,
  '599f91ad-8872-5548-98ef-05309b9d767d'::uuid,
  '5cf4ccea-92d5-5091-acda-a50401fee6e4'::uuid,
  'Hi Noah — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fbaab3b4-8cab-5104-b184-d6d41ffd3e16'::uuid,
  '0b282655-9d9e-5496-a782-e7b05f39952e'::uuid,
  '5cf4ccea-92d5-5091-acda-a50401fee6e4'::uuid,
  '599f91ad-8872-5548-98ef-05309b9d767d'::uuid,
  'Thanks Ava! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e4614872-d306-5089-b787-8dc421c1ecc4'::uuid, '2dfbf8df-671d-5edc-840c-fa857d70548e'::uuid, '5de1fcbf-1f68-51c0-af75-2ad3cc81bc14'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6f3167d9-8801-522d-bba5-40b62a0c6272'::uuid, '5de1fcbf-1f68-51c0-af75-2ad3cc81bc14'::uuid, '2dfbf8df-671d-5edc-840c-fa857d70548e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5a05db1b-895e-5d83-9ad8-e5c7b9dce76a'::uuid, '2dfbf8df-671d-5edc-840c-fa857d70548e'::uuid, '5de1fcbf-1f68-51c0-af75-2ad3cc81bc14'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9d124795-491e-5026-b3b2-c06ee2dc29c5'::uuid, 'fcf09069-b03f-594a-a134-7c45d7478589'::uuid, 'b6490efa-6d6a-5491-af21-1ed30bf639f0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f54f6d4a-2a48-5b42-b8e5-b646d76461a5'::uuid, 'b6490efa-6d6a-5491-af21-1ed30bf639f0'::uuid, 'fcf09069-b03f-594a-a134-7c45d7478589'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4ee7986d-6c2f-5c98-9aa3-9ec4f9a31c04'::uuid, 'b6490efa-6d6a-5491-af21-1ed30bf639f0'::uuid, 'fcf09069-b03f-594a-a134-7c45d7478589'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fab719c0-8d95-540b-874f-5482de59a254'::uuid,
  '4ee7986d-6c2f-5c98-9aa3-9ec4f9a31c04'::uuid,
  'fcf09069-b03f-594a-a134-7c45d7478589'::uuid,
  'b6490efa-6d6a-5491-af21-1ed30bf639f0'::uuid,
  'Hi Ethan — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '66bb58e9-144f-56c2-9609-b9da6e8f54ef'::uuid,
  '4ee7986d-6c2f-5c98-9aa3-9ec4f9a31c04'::uuid,
  'b6490efa-6d6a-5491-af21-1ed30bf639f0'::uuid,
  'fcf09069-b03f-594a-a134-7c45d7478589'::uuid,
  'Thanks Amina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a3e6420d-7a8b-5053-a428-ac11d375bde1'::uuid, '03507a6f-20a9-5023-b188-401053301f7b'::uuid, 'fc5ffa00-9523-5cbc-b75c-9624baeb1992'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('97b7cd8e-de62-587f-bf16-8b3702ba5dd5'::uuid, 'fc5ffa00-9523-5cbc-b75c-9624baeb1992'::uuid, '03507a6f-20a9-5023-b188-401053301f7b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1769a813-4880-5523-aa90-138195551baf'::uuid, '03507a6f-20a9-5023-b188-401053301f7b'::uuid, 'fc5ffa00-9523-5cbc-b75c-9624baeb1992'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6d6caeda-7476-5830-b271-f94cb45259d4'::uuid, '4affe376-3337-5316-8b8e-7c109b527c78'::uuid, 'b81754bd-ca00-5b38-b9dd-84e4572e645e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2a3829ec-7f5c-5a99-9ab1-796759c82db1'::uuid, 'b81754bd-ca00-5b38-b9dd-84e4572e645e'::uuid, '4affe376-3337-5316-8b8e-7c109b527c78'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('238f6f7a-f7b5-51f9-af93-eecad4e656a5'::uuid, '4affe376-3337-5316-8b8e-7c109b527c78'::uuid, 'b81754bd-ca00-5b38-b9dd-84e4572e645e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '016dde74-7082-585a-8414-cf3059c324f3'::uuid,
  '238f6f7a-f7b5-51f9-af93-eecad4e656a5'::uuid,
  '4affe376-3337-5316-8b8e-7c109b527c78'::uuid,
  'b81754bd-ca00-5b38-b9dd-84e4572e645e'::uuid,
  'Hi Caleb — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1a9119c2-1466-5966-9629-bb77a980aab1'::uuid,
  '238f6f7a-f7b5-51f9-af93-eecad4e656a5'::uuid,
  'b81754bd-ca00-5b38-b9dd-84e4572e645e'::uuid,
  '4affe376-3337-5316-8b8e-7c109b527c78'::uuid,
  'Thanks Hannah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e9b5ce2c-2b96-541e-bbca-082946b70bf0'::uuid, '4affe376-3337-5316-8b8e-7c109b527c78'::uuid, '71ce71e0-3ea8-5d45-b77b-d5851945f3af'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('22410684-f8b1-5e6d-acde-6bbab6d5c3ac'::uuid, '71ce71e0-3ea8-5d45-b77b-d5851945f3af'::uuid, '4affe376-3337-5316-8b8e-7c109b527c78'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ff26987e-df9f-5433-a322-2562a70f2cc1'::uuid, '4affe376-3337-5316-8b8e-7c109b527c78'::uuid, '71ce71e0-3ea8-5d45-b77b-d5851945f3af'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ef6f3627-1584-57f4-90c2-eeb974ba290d'::uuid, '1ee18835-3c30-5bc7-a404-37cb54a05c4c'::uuid, 'bc781f9c-1d1a-53c6-aaec-f25806c05382'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3b4b5107-cc19-5a5a-a7c1-cb9ed258e14e'::uuid, 'bc781f9c-1d1a-53c6-aaec-f25806c05382'::uuid, '1ee18835-3c30-5bc7-a404-37cb54a05c4c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7993fa02-abbc-53f3-b5fb-214473f6681a'::uuid, '1ee18835-3c30-5bc7-a404-37cb54a05c4c'::uuid, 'bc781f9c-1d1a-53c6-aaec-f25806c05382'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5746925a-dfad-50c9-adb9-0d2f52fecc89'::uuid,
  '7993fa02-abbc-53f3-b5fb-214473f6681a'::uuid,
  '1ee18835-3c30-5bc7-a404-37cb54a05c4c'::uuid,
  'bc781f9c-1d1a-53c6-aaec-f25806c05382'::uuid,
  'Hi Sana — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;