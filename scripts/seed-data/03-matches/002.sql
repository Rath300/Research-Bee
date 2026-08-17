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

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f9b21878-04eb-5429-9957-f6af7a62aacb'::uuid, '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid, 'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e4b3a2c4-dc54-509b-ba95-f10ca6e96dea'::uuid, '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid, '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9371664c-629b-50a0-9933-d34c9360e52f'::uuid, 'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid, '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3b14a485-829c-5d29-afba-c0cb4166b314'::uuid, '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid, 'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0a1c0e39-14aa-5dc7-b8b8-fe8f16986d6e'::uuid, '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid, 'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8312b3d3-f4e6-572c-b0bf-70391ca5aa63'::uuid,
  '0a1c0e39-14aa-5dc7-b8b8-fe8f16986d6e'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  'Hi Hannah — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f9ff3265-52c5-5acf-88bd-e6f6dfe7604a'::uuid,
  '0a1c0e39-14aa-5dc7-b8b8-fe8f16986d6e'::uuid,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  'Thanks Nathan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dc2f9bf0-1217-562f-be6b-5761de32a120'::uuid, '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid, 'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('41697995-606b-5560-849a-c176c2da59b6'::uuid, '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid, 'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b63fdf2c-3c4e-5d21-97a7-ef80eeb71615'::uuid, 'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid, '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('19aca3db-9551-5033-bb8e-64a1124c4d13'::uuid, '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid, 'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a88b545f-18d6-51e0-b555-8604c77ee7ef'::uuid, '263df343-2b67-501a-b026-d2ab5db9eead'::uuid, '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7ea42e5a-762f-5656-ba2b-b9d5b2af00d4'::uuid, 'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid, 'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2ecfd569-8557-5da9-99ca-20043243c3b0'::uuid, 'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid, 'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fd3ae693-0370-59ff-86d6-bffc67c2a939'::uuid, 'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid, 'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ce82b7c9-a904-597e-997c-116b768c6e87'::uuid,
  'fd3ae693-0370-59ff-86d6-bffc67c2a939'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  'Hi Nora — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1288a0ec-d008-5285-b34b-5643f147d50b'::uuid,
  'fd3ae693-0370-59ff-86d6-bffc67c2a939'::uuid,
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  'Thanks Omar! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('aa78dbc2-e0c2-5796-ac11-123af55d1119'::uuid, 'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid, '32cf71fe-60c4-5273-8a0b-09ee4e6bfff9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('204d7e09-97ed-5d0f-8c12-868cd689dc9d'::uuid, '32cf71fe-60c4-5273-8a0b-09ee4e6bfff9'::uuid, 'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('47419c48-aaae-5b6d-a769-f00e4e0c9e52'::uuid, '32cf71fe-60c4-5273-8a0b-09ee4e6bfff9'::uuid, 'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('64676e7e-f609-5b34-a9e4-0276fc85c554'::uuid, 'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid, 'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c9ea79fc-6bb8-5288-8c20-df58da845695'::uuid, 'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid, '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('de896fe6-2ac6-5cfd-bd6a-ff908aae818a'::uuid, '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid, 'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a0c80d9e-079f-52c5-86ac-86513027b957'::uuid, '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid, 'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a63f0917-ab65-570b-9f36-a824131c6f92'::uuid,
  'a0c80d9e-079f-52c5-86ac-86513027b957'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  'Hi Isaac — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7b5ae8fe-c500-5030-ac9b-c8233b3db097'::uuid,
  'a0c80d9e-079f-52c5-86ac-86513027b957'::uuid,
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  'Thanks Chloe! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('59331f5c-6321-5425-8185-9a6f880face8'::uuid, 'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid, 'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('26cd25f2-8d86-5aa1-b41f-473b683790f8'::uuid, '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid, '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d22d265f-6c5a-5281-85ad-0f52b124fef4'::uuid, '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid, '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4d8a3176-9727-583f-a494-63484dc51b65'::uuid, '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid, '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5bfa7540-911c-5784-a267-5e43749fd366'::uuid, '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid, '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b8581a99-ef10-5811-b05c-0ad3cfef2b1a'::uuid, '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid, '263df343-2b67-501a-b026-d2ab5db9eead'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c21ebed9-d880-5833-aed6-d82e3870004d'::uuid, '263df343-2b67-501a-b026-d2ab5db9eead'::uuid, '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3636cf92-b407-5682-adf0-e7539023cb0d'::uuid, '263df343-2b67-501a-b026-d2ab5db9eead'::uuid, '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e91020e7-16d5-507d-83ca-fd4cf302d870'::uuid,
  '3636cf92-b407-5682-adf0-e7539023cb0d'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  'Hi Felix — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a8810801-6766-5efa-8708-4eee5741617b'::uuid,
  '3636cf92-b407-5682-adf0-e7539023cb0d'::uuid,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  'Thanks Violet! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('672c9457-5daa-5a95-891f-8fd3391c581c'::uuid, '922c0481-709a-5db3-8ec3-323549ac8205'::uuid, '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3ee671f1-070f-5b21-a6f8-221a77b70661'::uuid, 'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid, 'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9f2ebd3b-ed5d-5193-9243-cd201c70511e'::uuid, 'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid, 'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f12a1416-ffe5-54a0-befd-7fe2f8f80bb8'::uuid, 'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid, 'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a2324803-bd9c-5bee-9965-52f1fe7d0bac'::uuid, '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid, 'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3ef24de0-aaec-5e1f-a04f-b49bbba8e597'::uuid, 'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid, 'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4b737090-5cef-5b57-8c61-b375e5a0bc15'::uuid, 'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid, 'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f2db3eb1-d073-510d-b3db-2dec535cae6d'::uuid, 'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid, 'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c733ebcc-6e1d-572a-a35e-f97774685335'::uuid,
  'f2db3eb1-d073-510d-b3db-2dec535cae6d'::uuid,
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  'Hi James — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8366b240-1432-52f9-a722-fea175aa0d02'::uuid,
  'f2db3eb1-d073-510d-b3db-2dec535cae6d'::uuid,
  'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid,
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  'Thanks Tara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ac5673bb-1a5a-5d26-aaee-fbfefec927db'::uuid, 'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid, 'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ef6fc32d-40dc-53f1-8df6-106ee06cdf4e'::uuid, 'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid, 'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('90e4f123-248f-5aaa-a4ca-4035ca618187'::uuid, 'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid, 'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('781f5621-7215-513a-b5b6-c70a082e947b'::uuid, '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid, 'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ce9a03ec-7e16-5d04-91b0-b17a84423024'::uuid, 'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid, '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3b065d05-791f-5815-9b3f-7549286828d5'::uuid, '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid, 'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8f3272d8-b8bf-5e83-aced-5e4d910b565a'::uuid, '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid, 'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '561d99e8-0fd5-5184-b66a-013345f30989'::uuid,
  '8f3272d8-b8bf-5e83-aced-5e4d910b565a'::uuid,
  'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  'Hi Grace — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '78f3f22c-260d-51bb-835a-1ef04ba27750'::uuid,
  '8f3272d8-b8bf-5e83-aced-5e4d910b565a'::uuid,
  '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid,
  'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid,
  'Thanks Aaron! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e9dba24a-a5d6-5015-86f3-2111ea454c96'::uuid, '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid, 'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('86cf5f83-7ad3-5acb-9467-96606af45485'::uuid, '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid, '922c0481-709a-5db3-8ec3-323549ac8205'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2c7b29b8-4593-53f1-a3a1-77cb9e1f1f41'::uuid, '922c0481-709a-5db3-8ec3-323549ac8205'::uuid, '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6b9fa7e2-262b-5bef-82c1-6b0544a696ac'::uuid, '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid, '922c0481-709a-5db3-8ec3-323549ac8205'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cbd2fadd-c01a-5251-b71f-fbaefc719464'::uuid, 'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid, '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5335cdfb-0522-5725-962b-cb9460be2362'::uuid, '943b1eab-1775-54ca-a17c-f0920547e262'::uuid, '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a2914288-6e86-57dd-b802-9787dcd3b229'::uuid, '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid, '943b1eab-1775-54ca-a17c-f0920547e262'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7b230538-a4ad-5f5b-8acf-09d680ac6fe6'::uuid, '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid, '943b1eab-1775-54ca-a17c-f0920547e262'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b73951be-3e73-5463-bb1b-6257a0924ca0'::uuid,
  '7b230538-a4ad-5f5b-8acf-09d680ac6fe6'::uuid,
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  'Hi Isla — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0cc4cf5f-65ac-50e9-af42-20b13df635d1'::uuid,
  '7b230538-a4ad-5f5b-8acf-09d680ac6fe6'::uuid,
  '8010c4d8-6cd3-5f25-ae46-530415093ae1'::uuid,
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  'Thanks Noah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f37cdd84-8e25-565f-b345-bb8713c4df72'::uuid, '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid, '943b1eab-1775-54ca-a17c-f0920547e262'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a7121a87-3b5b-5e04-86ca-46240a26f3b1'::uuid, 'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid, '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a5b2e7db-a907-5add-8236-f1aa43c0334f'::uuid, '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid, 'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6f67acca-2c84-5358-88a7-fad3b816e43b'::uuid, '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid, 'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('00ac604e-e0dc-5257-a8c4-a8ee8d85a4e5'::uuid, 'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid, 'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7c92da2b-c945-5bf1-9eb4-1a8ff2bf9e70'::uuid, '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid, '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1aba0329-74b6-5435-9510-86e84d6053cf'::uuid, '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid, '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d89b62c4-0271-56c3-b9d2-7e924b267565'::uuid, '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid, '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '732536f9-397d-5879-9a7f-443fddec7ac1'::uuid,
  'd89b62c4-0271-56c3-b9d2-7e924b267565'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid,
  'Hi Yara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'dc1a076d-fa5a-5b88-9d71-1d3261a60355'::uuid,
  'd89b62c4-0271-56c3-b9d2-7e924b267565'::uuid,
  '6cfe4848-6986-54fe-a7ca-84c7ea6cbaf3'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  'Thanks Ethan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('45cf165c-3acc-5b13-96eb-090bd6490e18'::uuid, '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid, '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0594ac20-a5ff-5c81-a00e-94c461ae6b30'::uuid, '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid, '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('05120fdc-ed28-5e76-b1d4-21cd3d5cce03'::uuid, '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid, '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4b2b308b-433b-5b99-a893-f9086bf3816a'::uuid, 'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid, '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b9ef3eb5-647b-5523-afa2-0cca246d94e1'::uuid, '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid, 'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('38bac1b1-5ef1-52c3-aee2-a4b4b9a46d37'::uuid, 'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid, '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2cc166b7-9932-5c14-a987-d432ce2023cc'::uuid, '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid, 'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2a6b3a3b-c506-5783-945e-223bebedca49'::uuid,
  '2cc166b7-9932-5c14-a987-d432ce2023cc'::uuid,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  'Hi Lucas — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b80292c0-5167-5bda-a842-f7dbb5be81a0'::uuid,
  '2cc166b7-9932-5c14-a987-d432ce2023cc'::uuid,
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  'Thanks Leila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('111a3f9c-c1d1-543a-a7ac-1248f03dadf0'::uuid, '286f6e32-59c8-55a8-98f8-07365047f533'::uuid, '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fc15f55a-e605-5e35-a7bc-11a5aa4610eb'::uuid, '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid, '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3e373985-0cae-505c-9d55-99185a3c437f'::uuid, '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid, '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f82860d5-d015-5326-9b40-bd8a1a8f596a'::uuid, '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid, '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('39bfc044-f328-507c-bfef-1b17ac8dbd85'::uuid, '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid, '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('637f3993-1c1c-53fd-a2d4-99efee5a8257'::uuid, '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid, 'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bc470596-030c-5d5f-b91e-5b9e4339526f'::uuid, 'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid, '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('174cbdca-c997-5791-a3aa-b03bc57153bf'::uuid, '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid, 'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '105633b0-5fac-553e-bfbe-686f82517044'::uuid,
  '174cbdca-c997-5791-a3aa-b03bc57153bf'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  'Hi David — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '406fe5cf-9b9d-5a26-a5ef-7c94dca6e2f2'::uuid,
  '174cbdca-c997-5791-a3aa-b03bc57153bf'::uuid,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  'Thanks Sana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('60bffb41-a119-5ddc-b599-9d630517c311'::uuid, '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid, '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c29bab0d-153c-58ed-8732-c1029e28a621'::uuid, '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid, 'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('eebde6f0-8508-56c5-bf68-67b29d51585c'::uuid, 'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid, '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('73510c46-3901-5faa-9ea6-7acc3c992c43'::uuid, '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid, 'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d8493e11-34a6-5d1a-b806-037e5c0cf998'::uuid, '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid, '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('52d357dc-4bae-56cb-b277-f26961bdd880'::uuid, 'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid, '286f6e32-59c8-55a8-98f8-07365047f533'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d733c5cd-d03d-50ef-a482-b082a0ce9f52'::uuid, '286f6e32-59c8-55a8-98f8-07365047f533'::uuid, 'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3f4dc537-b60b-50c7-8c48-d06694bfbe74'::uuid, '286f6e32-59c8-55a8-98f8-07365047f533'::uuid, 'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '85403173-a366-530c-9acd-c5691d1932f6'::uuid,
  '3f4dc537-b60b-50c7-8c48-d06694bfbe74'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  'Hi Diego — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3ea09faa-d84d-5134-aee5-f54fec97d85a'::uuid,
  '3f4dc537-b60b-50c7-8c48-d06694bfbe74'::uuid,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  'Thanks Hana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('54cd7ab6-6442-5537-a509-f7965695c837'::uuid, 'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid, '2ca134b1-2119-5e9e-8c0e-f36ce476cf56'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('90af3cba-85c3-5655-9a22-0d9bc694d6b5'::uuid, '2ca134b1-2119-5e9e-8c0e-f36ce476cf56'::uuid, 'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('92312bf1-3174-5941-b9ee-cf07a2751c86'::uuid, '2ca134b1-2119-5e9e-8c0e-f36ce476cf56'::uuid, 'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('50ba50a5-aba5-57a9-9dc5-fd636ecee44e'::uuid, 'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid, 'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a9f0d0ee-1ecc-52d0-b15d-df95b157911c'::uuid, 'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid, '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0346bed7-a39e-5f2c-8869-190dd5a563bf'::uuid, '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid, 'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4fc2279a-33f0-5f5d-b6da-492bf68830e7'::uuid, '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid, 'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c79b0b02-b7d2-506c-bb3d-bf0277ff08c6'::uuid,
  '4fc2279a-33f0-5f5d-b6da-492bf68830e7'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  'Hi Nadia — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd671a56e-f017-5b20-9d74-e9afe7c48ea5'::uuid,
  '4fc2279a-33f0-5f5d-b6da-492bf68830e7'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  'Thanks Maya! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6b67f5b2-ce73-5aa3-811f-c62ddd5d6b4e'::uuid, '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid, 'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d3b7bb2d-586a-5826-9c6c-6447b4b43f0c'::uuid, '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid, '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fc8d44c9-d85d-5907-938e-b43e43d84061'::uuid, '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid, '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d6a17706-a48d-5ee0-b6e9-5289fea399b4'::uuid, '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid, '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('45f8f4de-1741-57c5-95a5-b304b22bf487'::uuid, '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid, '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('00c69c83-720d-5d95-b16e-535784c46ae3'::uuid, '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid, '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5b8a4a85-0137-59cd-94b9-da81143aa833'::uuid, '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid, '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4476aadf-8e2a-5f52-8164-449e9daa1f2e'::uuid, '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid, '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ebc829a7-e99e-5dc9-a473-5339866446c2'::uuid,
  '4476aadf-8e2a-5f52-8164-449e9daa1f2e'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  'Hi Mei — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '19792d4d-ae1c-55f4-8532-d1834c342a98'::uuid,
  '4476aadf-8e2a-5f52-8164-449e9daa1f2e'::uuid,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  'Thanks Rohan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1f04fef7-808f-55fd-a793-6232681b0e11'::uuid, '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid, '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c5eb1b37-67fd-54ce-8e60-04d419384060'::uuid, '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid, 'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4363b1b8-7ee2-5c47-8e50-c02cb0f67dcf'::uuid, 'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid, '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9d6ed2a5-7b25-5692-9663-456356822ac7'::uuid, '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid, 'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('af37f68b-9ed1-55f2-8a70-8ffa70109f1a'::uuid, 'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid, '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0037969e-5141-5db2-8782-d460ac5d1074'::uuid, '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid, '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8741d5e0-8a3e-5cd1-bed8-5e4693a096d4'::uuid, '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid, '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9310fe4e-18a9-5adc-ad47-9506a19d035a'::uuid, '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid, '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cba7d493-934d-5915-973c-55411b97b5dc'::uuid,
  '9310fe4e-18a9-5adc-ad47-9506a19d035a'::uuid,
  '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  'Hi Riya — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b8f13da8-f25f-59f0-9505-c40ee711b9ee'::uuid,
  '9310fe4e-18a9-5adc-ad47-9506a19d035a'::uuid,
  '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid,
  '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid,
  'Thanks Samir! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('799ca727-d5cb-511f-9afd-a9a64ab26810'::uuid, '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid, 'f644a779-f61f-50ac-9f62-0022190689d9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a65d7aae-e9f9-58c8-aadd-d4734ba51f23'::uuid, 'f644a779-f61f-50ac-9f62-0022190689d9'::uuid, '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e7e8ea01-65d1-50df-8116-2bdf0bd67523'::uuid, '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid, 'f644a779-f61f-50ac-9f62-0022190689d9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c68c6431-ee51-52da-9c41-1fc38c455127'::uuid, '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid, '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f5c08501-b8e8-5750-813f-7bd658e78ee0'::uuid, '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid, '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('51e75420-5189-5fd1-b571-3cd92fb42e92'::uuid, '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid, '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a009307f-0fbb-5511-8b0a-178fb23f3d6d'::uuid, '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid, '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fadbdedd-c3da-5307-9d81-fde0986860c1'::uuid,
  'a009307f-0fbb-5511-8b0a-178fb23f3d6d'::uuid,
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  'Hi Nathan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b1ca2ef7-6562-59ae-9bc7-009d60078acf'::uuid,
  'a009307f-0fbb-5511-8b0a-178fb23f3d6d'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid,
  'Thanks Camila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d40c5c81-13fb-5c6a-9af4-df93b384b5c9'::uuid, 'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid, '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8218aed4-41b6-5ee8-b7bd-e3026b7f66aa'::uuid, '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid, '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2da2f81d-4c1a-5106-bfc8-605d289dcd52'::uuid, '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid, '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('16aa1266-99a8-5817-aede-acdaa2baad07'::uuid, '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid, '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e9338035-f209-576f-994d-98372633871e'::uuid, 'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid, '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b033642f-3863-589d-b7ab-60b531de320d'::uuid, '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid, 'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8c5833a2-eb91-5234-b614-3c4f905c6fb5'::uuid, 'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid, '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8cb1a973-0507-5dff-bcfa-6a0ab2bf1086'::uuid, '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid, 'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ae39f93f-f665-5458-afe5-96b5bf651856'::uuid,
  '8cb1a973-0507-5dff-bcfa-6a0ab2bf1086'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  'Hi Omar — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9184093b-0c4a-5088-871f-3cba844f1440'::uuid,
  '8cb1a973-0507-5dff-bcfa-6a0ab2bf1086'::uuid,
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid,
  'Thanks Nina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c9ef3137-01ee-5843-aa6f-976c828a90fb'::uuid, 'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid, '4d4eb495-2ed3-5e3b-8fef-b8f2ef52228b'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8848117a-c5f4-5401-a555-50f5d651cf72'::uuid, '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid, '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e3bbcf4e-2360-5097-8591-4091170f89b5'::uuid, '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid, '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('34c4d31f-7e03-590f-825c-efc876c6caba'::uuid, '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid, '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fa973081-abcd-5e75-890a-0ffc3db5e877'::uuid, '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid, '771396d8-5aa2-533f-bcc2-9973a4fda339'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('030a34f6-d6dc-5d0d-8780-feb67cc8dffd'::uuid, 'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid, 'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3c98da58-8213-5578-9c54-f7638b8c679a'::uuid, 'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid, 'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d24e0f43-b0d3-566d-a27d-30ff0619f3fc'::uuid, 'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid, 'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '31733800-0148-50c1-bb5d-03e78e39833b'::uuid,
  'd24e0f43-b0d3-566d-a27d-30ff0619f3fc'::uuid,
  'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid,
  'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid,
  'Hi Owen — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '18009d75-82e9-5b9e-bc54-df07613bab69'::uuid,
  'd24e0f43-b0d3-566d-a27d-30ff0619f3fc'::uuid,
  'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid,
  'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid,
  'Thanks Sofia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('18407b67-3e77-5779-ba10-dcc549c9672e'::uuid, 'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid, '15329dac-2653-5bf8-ab92-979bca93b089'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8cf5dbe6-cda4-57b4-a813-33420caa4d63'::uuid, '15329dac-2653-5bf8-ab92-979bca93b089'::uuid, 'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ce3de9da-e4f5-5f9c-9a71-3fe9c64a854d'::uuid, '15329dac-2653-5bf8-ab92-979bca93b089'::uuid, 'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('78902ba7-fdba-5587-98e7-364f97f902c1'::uuid, 'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid, 'bf2e3dfe-1520-58a2-85cc-193abe7a717b'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('92a5e2e3-ab79-51a8-a2d3-14123637b435'::uuid, 'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid, 'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cf790848-8b8a-54bd-b4d5-b9ca759bfb7a'::uuid, 'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid, 'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('39669233-280e-5451-b302-9eb9ee112cb9'::uuid, 'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid, 'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '33354a28-3676-5012-b887-87d0853c8178'::uuid,
  '39669233-280e-5451-b302-9eb9ee112cb9'::uuid,
  'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  'Hi Violet — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '68cbb1e1-a126-5260-931c-78aa93e529eb'::uuid,
  '39669233-280e-5451-b302-9eb9ee112cb9'::uuid,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid,
  'Thanks Kenji! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2408473a-eb14-58e9-bcd6-2900d7ff85b4'::uuid, '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid, 'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9f3606c5-a15f-5faf-b772-ce3570f2151f'::uuid, '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid, 'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('00b29b22-7f79-56ec-8549-637869ab02d2'::uuid, 'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid, '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('82dd9547-5ce5-5579-beda-67227ad8a235'::uuid, '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid, 'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('542a5a2a-6f76-5ef1-8893-32733a8637c0'::uuid, '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid, '1a4f1172-56b2-5bf5-86b5-15830d74e3c6'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0d88d37b-77eb-5acf-a478-963b7195d9d5'::uuid, 'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid, '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7974ada6-86f8-572e-97ba-28ab11a68c27'::uuid, '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid, 'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4c44555a-fc34-56cc-b3f1-466d8b10704c'::uuid, '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid, 'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7a03eabf-22d3-5cd0-9f02-821a4173c5fa'::uuid,
  '4c44555a-fc34-56cc-b3f1-466d8b10704c'::uuid,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  'Hi Tara — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fc0aef5c-5921-5c9e-b2eb-1c15766ec73e'::uuid,
  '4c44555a-fc34-56cc-b3f1-466d8b10704c'::uuid,
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid,
  'Thanks Kai! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f10e62a5-8671-5bf2-95c8-bfff5984efcf'::uuid, 'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid, 'bc3dcd37-9978-5ee3-a184-d8fb75eb495f'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ec715a02-bb93-57a5-827f-b4bdca564038'::uuid, '0c89279c-761b-5955-a37f-d11d903a5859'::uuid, 'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('eedb1afa-6ef2-52f7-8111-0a0dde588220'::uuid, 'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid, '0c89279c-761b-5955-a37f-d11d903a5859'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('673ac66a-315a-5ace-95c5-8fcc91db3b08'::uuid, '0c89279c-761b-5955-a37f-d11d903a5859'::uuid, 'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3d7ed746-dfe8-5beb-9c83-f223756aa5f1'::uuid, '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid, '0c89279c-761b-5955-a37f-d11d903a5859'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('683eadae-5f9a-51b0-9cb0-235b17f87175'::uuid, '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid, '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1b3d8bba-ecf6-5900-abb9-8aabe3d6c042'::uuid, '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid, '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9634b1ac-f3ef-5f32-ad31-a7a89198699a'::uuid, '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid, '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '68f6af59-c64a-547b-ba02-8b72caf9e4fc'::uuid,
  '9634b1ac-f3ef-5f32-ad31-a7a89198699a'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  'Hi Imani — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '21e8739c-ebbd-5bae-9e6d-ee4b96d05dc6'::uuid,
  '9634b1ac-f3ef-5f32-ad31-a7a89198699a'::uuid,
  '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid,
  '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid,
  'Thanks Benjamin! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('462882af-4b1c-5d85-85dd-d121ddf5cf11'::uuid, '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid, '900b4bc0-9225-59ed-bdb7-b994730f07e8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('113392c4-b08b-549e-a0af-aff8c59d655a'::uuid, '900b4bc0-9225-59ed-bdb7-b994730f07e8'::uuid, '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cc9bd162-a5ee-529a-9550-963e1c5d46b4'::uuid, '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid, '900b4bc0-9225-59ed-bdb7-b994730f07e8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a5d36e4c-b731-5d3b-b2b9-5b40be8f75c9'::uuid, '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid, '8c85384f-85a2-5463-b32d-ddc909a7e0d2'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('57e0bfb6-44c7-50e7-bc7c-75b64c941fc7'::uuid, '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid, '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6b8ff924-114d-5ac7-97ab-80db74731cb6'::uuid, '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid, '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f97c4854-63b1-5445-a0c4-39074eb45522'::uuid, '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid, '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '04127ded-feb9-5d76-8ba2-6fe3cdd88606'::uuid,
  'f97c4854-63b1-5445-a0c4-39074eb45522'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  'Hi Noah — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0c59bc73-d549-55a5-ab78-a273bf0de024'::uuid,
  'f97c4854-63b1-5445-a0c4-39074eb45522'::uuid,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid,
  'Thanks Ava! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d92ae69a-bcfe-59d1-8e48-8f446ca75287'::uuid, 'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid, '8b35e403-b8e9-53c9-86b8-492d6a0f3fdc'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('97acbc1e-cc3d-5800-ab90-7cebf03ca9ed'::uuid, '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid, 'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7c6596f3-c777-51bb-90b3-c7900721b497'::uuid, 'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid, '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('45280387-6629-557f-b6fb-f9d89b216ea1'::uuid, '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid, 'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('131e2e6c-9d1d-5ffc-ac7e-a74d29f6bc32'::uuid, 'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid, '6886be6f-f1ff-5025-89c6-eaf7ba81f28f'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('af723336-a83a-58bb-9b38-549b17204bff'::uuid, 'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid, '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ae5665fd-0076-56df-aa09-f88ee54e6b23'::uuid, '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid, 'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c45b2289-5d4f-5ead-874a-38617bf81345'::uuid, '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid, 'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2fbb8a75-a201-50c9-b027-5544f3bca6ef'::uuid,
  'c45b2289-5d4f-5ead-874a-38617bf81345'::uuid,
  'f6401a65-1a5f-5ea5-85c6-345c94af6138'::uuid,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  'Hi Ethan — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;
