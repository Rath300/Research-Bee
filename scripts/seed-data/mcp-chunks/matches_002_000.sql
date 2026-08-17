INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('40842521-49be-5a70-bbb3-3185c27f8361'::uuid, 'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid, '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5bc99954-4639-5ad0-a657-5bad5a90847f'::uuid, '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid, 'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e7296dd4-111d-5362-b347-8136cbbe981d'::uuid, '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid, '58b90013-6680-5c53-a0f1-a6501144e5d5'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d3d52d70-d62a-5bdd-9151-effc41532e4f'::uuid, 'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid, 'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('df204364-9aed-5332-9ab0-2c917feb6ecc'::uuid, 'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid, 'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('27864a82-0826-5c49-bc38-77c76dca250f'::uuid, 'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid, 'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '92f6c431-6b59-5391-945c-e88d6751ebfe'::uuid,
  '27864a82-0826-5c49-bc38-77c76dca250f'::uuid,
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  'Hi Kai — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1ed59266-b1be-5f8f-8c10-8c3bc272a503'::uuid,
  '27864a82-0826-5c49-bc38-77c76dca250f'::uuid,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid,
  'Thanks Aisha! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('df320825-689d-565f-9b4c-6f8923f36d59'::uuid, '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid, 'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e75a7030-3a64-5bda-991d-5de81808fda5'::uuid, 'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid, '0c89279c-761b-5955-a37f-d11d903a5859'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('71fc5394-1fcd-5790-9e1c-2598f2fca519'::uuid, '0c89279c-761b-5955-a37f-d11d903a5859'::uuid, 'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('51dde102-fe61-5375-a98b-82ec00aa84ba'::uuid, '0c89279c-761b-5955-a37f-d11d903a5859'::uuid, 'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('32b8116d-5f8d-58d9-9e89-ffd5e7a6df46'::uuid, 'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid, 'b4d49441-89be-58b6-a088-2ee59f3678f0'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f78d1c44-5cf1-53fe-84f5-af6da0b95e23'::uuid, 'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid, '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fffe5ea2-1fb3-55fa-8b3a-7c1a0aa24689'::uuid, '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid, 'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dc8a2280-3ad5-55be-8f4c-98ed5a7313eb'::uuid, '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid, 'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ee7bd5ab-6104-553f-b350-523db8340c64'::uuid,
  'dc8a2280-3ad5-55be-8f4c-98ed5a7313eb'::uuid,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  'Hi Benjamin — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '90ee8f0e-5724-5e44-b7ac-1f956860bd04'::uuid,
  'dc8a2280-3ad5-55be-8f4c-98ed5a7313eb'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid,
  'Thanks Nadia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cd0531bf-5ed6-5bfa-8763-aeb4a3f30201'::uuid, 'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid, 'f5939c13-971e-5b2a-b538-c59c5717412e'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cd40a9b4-c7a4-58ba-8cba-3605a298ee01'::uuid, 'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid, '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4c5c3bb4-3efb-5b05-98c1-c6edc5d4e10d'::uuid, '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid, 'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cb060a48-4df0-5cc4-9170-954e82ad1639'::uuid, '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid, 'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('08707e27-c536-5490-8319-b815a0d1959b'::uuid, '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid, 'a6ab7341-b2e9-5fd2-9e89-a68540689827'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f54a1977-0476-533e-884b-fd0451d3cc87'::uuid, '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid, '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('973768c4-b3e3-565e-8ea9-d4d1eef39343'::uuid, '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid, '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e405e698-1062-5a2a-a214-a15a85365ef2'::uuid, '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid, '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '67341c39-4ab6-5f07-a2d6-dc7387e495ab'::uuid,
  'e405e698-1062-5a2a-a214-a15a85365ef2'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  'Hi Sebastian — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '98b2af6c-2457-5804-9915-a47ec375d78f'::uuid,
  'e405e698-1062-5a2a-a214-a15a85365ef2'::uuid,
  '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid,
  '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid,
  'Thanks Mei! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b867a0ec-a19b-540d-a6a8-c2144231a9ba'::uuid, '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid, 'd8a33d26-1570-57fc-b4be-dd5e32331b77'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('139c67ad-c3b4-5e20-aa81-003acad954f7'::uuid, 'd8a33d26-1570-57fc-b4be-dd5e32331b77'::uuid, '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('de95c426-7dee-51c7-8ee3-82f0ab081ece'::uuid, '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid, 'd8a33d26-1570-57fc-b4be-dd5e32331b77'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('08f10861-a80f-520a-8108-c81e5483338d'::uuid, 'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid, '5849b0a9-7046-5a1b-afa8-46c7b4f20d3e'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('887a8c71-42cf-5bb0-9f5e-15f90224484e'::uuid, 'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid, 'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('eb7bebd7-d8cb-598d-8c16-330cc8ec16fd'::uuid, 'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid, 'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a7ad412d-220e-5dc9-a253-0dded3bc4639'::uuid, 'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid, 'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '34a909cd-4b86-58b4-9641-a65bcb4517a4'::uuid,
  'a7ad412d-220e-5dc9-a253-0dded3bc4639'::uuid,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  'Hi Amina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '60a20367-c9e9-55e9-8614-40ae69d359d2'::uuid,
  'a7ad412d-220e-5dc9-a253-0dded3bc4639'::uuid,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid,
  'Thanks Henry! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3632e2fb-d5be-5a51-9061-95dcd8a64827'::uuid, 'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid, 'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ae58bd6e-6aa1-5e31-9fa1-f2cef28ae748'::uuid, '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid, 'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9e4cc464-7371-5af0-bca6-393bc1cd439a'::uuid, 'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid, '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;