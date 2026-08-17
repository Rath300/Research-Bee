INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c7f12781-ad96-5623-9faa-89a1c241c69a'::uuid,
  '6b18e877-75b4-50d0-b303-07cf5d10508d'::uuid,
  '1aa11d0d-a4fb-5943-ab0e-531198751050'::uuid,
  '40b94d45-a7a1-54c4-ae03-055b85d29b1e'::uuid,
  'Thanks Theo! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a90cf6a3-f4bd-5046-af93-51b45f439ae2'::uuid, 'b17b3a22-936c-5bc8-8fe6-67d411fbe356'::uuid, 'e0cf12ee-c803-590f-87be-dbc5f2ea0cb9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bbd2053b-46cb-5b9f-a61e-ff2ce77aeb32'::uuid, 'e0cf12ee-c803-590f-87be-dbc5f2ea0cb9'::uuid, 'b17b3a22-936c-5bc8-8fe6-67d411fbe356'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('825397d9-db98-59b9-8d43-3040b9428744'::uuid, 'b17b3a22-936c-5bc8-8fe6-67d411fbe356'::uuid, 'e0cf12ee-c803-590f-87be-dbc5f2ea0cb9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5d2c64e4-ba86-5b7c-bc66-5743805139ea'::uuid, 'bfbd8789-6c7e-5dc4-90d4-b6dfccb646b8'::uuid, '223e8288-5d44-542e-b220-e739635a31f1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ebbe5a91-8b5d-578f-b4aa-8c25807b3e70'::uuid, '223e8288-5d44-542e-b220-e739635a31f1'::uuid, 'bfbd8789-6c7e-5dc4-90d4-b6dfccb646b8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cf6385b3-6ab0-51cc-9052-ddcbc0413bb6'::uuid, '223e8288-5d44-542e-b220-e739635a31f1'::uuid, 'bfbd8789-6c7e-5dc4-90d4-b6dfccb646b8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fb2c1c9c-46cc-5579-87c1-c678a68d2671'::uuid,
  'cf6385b3-6ab0-51cc-9052-ddcbc0413bb6'::uuid,
  'bfbd8789-6c7e-5dc4-90d4-b6dfccb646b8'::uuid,
  '223e8288-5d44-542e-b220-e739635a31f1'::uuid,
  'Hi Sofia — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b70919f5-9145-509c-84a1-f8711e8e7652'::uuid,
  'cf6385b3-6ab0-51cc-9052-ddcbc0413bb6'::uuid,
  '223e8288-5d44-542e-b220-e739635a31f1'::uuid,
  'bfbd8789-6c7e-5dc4-90d4-b6dfccb646b8'::uuid,
  'Thanks Lucas! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('647207bb-fe58-5b31-8d1f-0291007f30ec'::uuid, '91758615-29a6-5bd4-b9f9-19886c89343e'::uuid, 'faa48f92-ec4c-50a8-b640-821e64485cdb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0b9ac7ef-db2d-589f-b5b0-13eee46d32f5'::uuid, 'faa48f92-ec4c-50a8-b640-821e64485cdb'::uuid, '91758615-29a6-5bd4-b9f9-19886c89343e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a4ef46a3-1814-5aff-95cc-a1ad693f55d5'::uuid, '91758615-29a6-5bd4-b9f9-19886c89343e'::uuid, 'faa48f92-ec4c-50a8-b640-821e64485cdb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6c28bd75-b79b-5d8e-8a98-1547831dd1ac'::uuid, 'eceba982-2394-5904-b315-9a2f77d07474'::uuid, 'b1528f83-05e9-5237-9070-2e49e81250b0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('18461a41-c0b9-5602-8694-f771942f6c1f'::uuid, 'b1528f83-05e9-5237-9070-2e49e81250b0'::uuid, 'eceba982-2394-5904-b315-9a2f77d07474'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9c701465-5980-5073-a51b-82204ce07e0b'::uuid, 'b1528f83-05e9-5237-9070-2e49e81250b0'::uuid, 'eceba982-2394-5904-b315-9a2f77d07474'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e95b7a95-64ce-5965-938c-f3091e9a013c'::uuid,
  '9c701465-5980-5073-a51b-82204ce07e0b'::uuid,
  'eceba982-2394-5904-b315-9a2f77d07474'::uuid,
  'b1528f83-05e9-5237-9070-2e49e81250b0'::uuid,
  'Hi Zara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5d00a7c8-11fb-592d-af18-e6d8e0286939'::uuid,
  '9c701465-5980-5073-a51b-82204ce07e0b'::uuid,
  'b1528f83-05e9-5237-9070-2e49e81250b0'::uuid,
  'eceba982-2394-5904-b315-9a2f77d07474'::uuid,
  'Thanks David! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a3d71681-5e78-5b8a-a068-423c4ce88f43'::uuid, 'eceba982-2394-5904-b315-9a2f77d07474'::uuid, '5cd17e21-fe4e-5ed4-b394-0f20f92ff70b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c796bd15-f174-5e10-9442-9400dd50f06f'::uuid, '5cd17e21-fe4e-5ed4-b394-0f20f92ff70b'::uuid, 'eceba982-2394-5904-b315-9a2f77d07474'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5b70b34d-8ec8-5b9f-a969-d37770d1b1e2'::uuid, '5cd17e21-fe4e-5ed4-b394-0f20f92ff70b'::uuid, 'eceba982-2394-5904-b315-9a2f77d07474'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ef3578f3-c076-5cc4-826b-6a9e5193cb5a'::uuid, '0b8bc984-976f-5d9b-8a58-2fed9283e948'::uuid, '33deff9e-63a9-5149-af03-74ac800cd82b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('27910c76-cdb4-5132-a688-db8fc5eaf775'::uuid, '33deff9e-63a9-5149-af03-74ac800cd82b'::uuid, '0b8bc984-976f-5d9b-8a58-2fed9283e948'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('74b84504-a669-52bb-a9e2-57ad4566a31f'::uuid, '0b8bc984-976f-5d9b-8a58-2fed9283e948'::uuid, '33deff9e-63a9-5149-af03-74ac800cd82b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b5170dfa-5b52-522c-8423-2324de88fe6b'::uuid,
  '74b84504-a669-52bb-a9e2-57ad4566a31f'::uuid,
  '0b8bc984-976f-5d9b-8a58-2fed9283e948'::uuid,
  '33deff9e-63a9-5149-af03-74ac800cd82b'::uuid,
  'Hi Kai — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '64bf81e5-6e93-505b-a144-93282f54a7e4'::uuid,
  '74b84504-a669-52bb-a9e2-57ad4566a31f'::uuid,
  '33deff9e-63a9-5149-af03-74ac800cd82b'::uuid,
  '0b8bc984-976f-5d9b-8a58-2fed9283e948'::uuid,
  'Thanks Aisha! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3c4e7309-9210-5676-9ae0-0a48efd12245'::uuid, '08411eb2-5b9b-5df1-a3bb-2306f44169f4'::uuid, 'a343cb5f-989d-5d2d-befe-e659982ec6d3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a4aabce8-c702-50fa-b2c2-6d202eb5b347'::uuid, 'a343cb5f-989d-5d2d-befe-e659982ec6d3'::uuid, '08411eb2-5b9b-5df1-a3bb-2306f44169f4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0f320f01-d9a7-5897-ad4f-5d93b01e508d'::uuid, '08411eb2-5b9b-5df1-a3bb-2306f44169f4'::uuid, 'a343cb5f-989d-5d2d-befe-e659982ec6d3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('49e47ff0-d4dc-59c3-b7a9-d914423f11a6'::uuid, 'fb815cd3-6e42-5d68-8db6-d59fea0cce2e'::uuid, '66ed3399-31e4-53c0-b383-f6dc631a5b40'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('61083677-0858-5555-9916-a74ece4bdcd2'::uuid, '66ed3399-31e4-53c0-b383-f6dc631a5b40'::uuid, 'fb815cd3-6e42-5d68-8db6-d59fea0cce2e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b99d6b4c-3a57-58f7-848e-dc38702bc2b0'::uuid, '66ed3399-31e4-53c0-b383-f6dc631a5b40'::uuid, 'fb815cd3-6e42-5d68-8db6-d59fea0cce2e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8785f468-2075-5657-a1d4-2e937d01631f'::uuid,
  'b99d6b4c-3a57-58f7-848e-dc38702bc2b0'::uuid,
  'fb815cd3-6e42-5d68-8db6-d59fea0cce2e'::uuid,
  '66ed3399-31e4-53c0-b383-f6dc631a5b40'::uuid,
  'Hi Benjamin — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8582acda-51fc-57a2-84ee-008ec4b72954'::uuid,
  'b99d6b4c-3a57-58f7-848e-dc38702bc2b0'::uuid,
  '66ed3399-31e4-53c0-b383-f6dc631a5b40'::uuid,
  'fb815cd3-6e42-5d68-8db6-d59fea0cce2e'::uuid,
  'Thanks Nadia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7e5d12d9-ccb6-5e63-9551-0754a3c857fc'::uuid, 'd147a55f-f99d-5889-ae38-f27a9b6b3e63'::uuid, '599f91ad-8872-5548-98ef-05309b9d767d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9edc808e-881c-51bf-b0fd-5571721f73bd'::uuid, '599f91ad-8872-5548-98ef-05309b9d767d'::uuid, 'd147a55f-f99d-5889-ae38-f27a9b6b3e63'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('48076458-692d-5541-ab2f-4b4d7ae97326'::uuid, '599f91ad-8872-5548-98ef-05309b9d767d'::uuid, 'd147a55f-f99d-5889-ae38-f27a9b6b3e63'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8eba7aaf-b53a-5b4a-9a3c-12e4c7aa8713'::uuid, '3aaac1ae-581d-53cb-ab82-ecf44ed2f8eb'::uuid, '2dfbf8df-671d-5edc-840c-fa857d70548e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('80000da9-ae43-5d8c-b02d-74a2fbb7064a'::uuid, '2dfbf8df-671d-5edc-840c-fa857d70548e'::uuid, '3aaac1ae-581d-53cb-ab82-ecf44ed2f8eb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('486e37a9-351d-5a45-942a-bff66c7bc459'::uuid, '2dfbf8df-671d-5edc-840c-fa857d70548e'::uuid, '3aaac1ae-581d-53cb-ab82-ecf44ed2f8eb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4a3ecfdf-af2c-5990-a255-1bea44ccdc4a'::uuid,
  '486e37a9-351d-5a45-942a-bff66c7bc459'::uuid,
  '3aaac1ae-581d-53cb-ab82-ecf44ed2f8eb'::uuid,
  '2dfbf8df-671d-5edc-840c-fa857d70548e'::uuid,
  'Hi Sebastian — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;