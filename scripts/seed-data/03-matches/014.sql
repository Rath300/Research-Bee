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

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ddf62ae1-de70-5eb6-a13a-64a6adf33ae3'::uuid,
  '486e37a9-351d-5a45-942a-bff66c7bc459'::uuid,
  '2dfbf8df-671d-5edc-840c-fa857d70548e'::uuid,
  '3aaac1ae-581d-53cb-ab82-ecf44ed2f8eb'::uuid,
  'Thanks Mei! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('293a487e-af12-5ab5-ba6d-2a78df67b0ec'::uuid, '3aaac1ae-581d-53cb-ab82-ecf44ed2f8eb'::uuid, '8c8802de-eb32-550b-88b8-412797aef970'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('62b5d218-10a9-5648-a40a-6ba3d0f5d6a2'::uuid, '8c8802de-eb32-550b-88b8-412797aef970'::uuid, '3aaac1ae-581d-53cb-ab82-ecf44ed2f8eb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7c8ec460-12fa-56ed-862d-2cbc149aa8b3'::uuid, '3aaac1ae-581d-53cb-ab82-ecf44ed2f8eb'::uuid, '8c8802de-eb32-550b-88b8-412797aef970'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b342e3ec-cec1-5e46-9a80-9311243bcf4d'::uuid, 'ad066c06-b3f9-5ca4-9d49-3f295138bde6'::uuid, 'fcf09069-b03f-594a-a134-7c45d7478589'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('445b7dfb-dc51-5d83-ab71-423a0e74456d'::uuid, 'fcf09069-b03f-594a-a134-7c45d7478589'::uuid, 'ad066c06-b3f9-5ca4-9d49-3f295138bde6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1f8c551b-c5ac-5e79-b38f-222d1339f933'::uuid, 'ad066c06-b3f9-5ca4-9d49-3f295138bde6'::uuid, 'fcf09069-b03f-594a-a134-7c45d7478589'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a6ae819a-d780-51e9-b856-cfd48642820e'::uuid,
  '1f8c551b-c5ac-5e79-b38f-222d1339f933'::uuid,
  'ad066c06-b3f9-5ca4-9d49-3f295138bde6'::uuid,
  'fcf09069-b03f-594a-a134-7c45d7478589'::uuid,
  'Hi Amina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cb0b530b-f2d9-5639-8f4b-217a4696c673'::uuid,
  '1f8c551b-c5ac-5e79-b38f-222d1339f933'::uuid,
  'fcf09069-b03f-594a-a134-7c45d7478589'::uuid,
  'ad066c06-b3f9-5ca4-9d49-3f295138bde6'::uuid,
  'Thanks Henry! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d3ba805d-f1bc-5b48-bc6e-f61237dc92fe'::uuid, '73d21f69-f082-53ec-a793-9805a6962209'::uuid, '03507a6f-20a9-5023-b188-401053301f7b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a3cdb8c0-cba4-5140-b271-c5ca9754b5a8'::uuid, '03507a6f-20a9-5023-b188-401053301f7b'::uuid, '73d21f69-f082-53ec-a793-9805a6962209'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5754b5d5-9f4a-5e5c-bf1c-b0d033bba038'::uuid, '03507a6f-20a9-5023-b188-401053301f7b'::uuid, '73d21f69-f082-53ec-a793-9805a6962209'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cd8f25e7-53d7-5d3d-8593-3c908d2ec404'::uuid, 'd950d3d2-16f6-5d3d-bed8-7ac8a0c5c29e'::uuid, '4affe376-3337-5316-8b8e-7c109b527c78'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d9409d2f-ebf0-5384-81cd-c433ddae5369'::uuid, '4affe376-3337-5316-8b8e-7c109b527c78'::uuid, 'd950d3d2-16f6-5d3d-bed8-7ac8a0c5c29e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b836d4e4-9c86-5695-9bf0-b3ccccccb6a2'::uuid, '4affe376-3337-5316-8b8e-7c109b527c78'::uuid, 'd950d3d2-16f6-5d3d-bed8-7ac8a0c5c29e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '56a42c81-7764-5a94-b853-f73b8018c753'::uuid,
  'b836d4e4-9c86-5695-9bf0-b3ccccccb6a2'::uuid,
  'd950d3d2-16f6-5d3d-bed8-7ac8a0c5c29e'::uuid,
  '4affe376-3337-5316-8b8e-7c109b527c78'::uuid,
  'Hi Hannah — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '48542e98-f590-5feb-bb59-878aa5806047'::uuid,
  'b836d4e4-9c86-5695-9bf0-b3ccccccb6a2'::uuid,
  '4affe376-3337-5316-8b8e-7c109b527c78'::uuid,
  'd950d3d2-16f6-5d3d-bed8-7ac8a0c5c29e'::uuid,
  'Thanks Nathan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4b69ac7b-f8a0-5569-95a0-6d427f2d0707'::uuid, 'bbd25235-3b2e-5db2-a0dd-8a7dddfac498'::uuid, '1ee18835-3c30-5bc7-a404-37cb54a05c4c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('333ac5c6-b1cc-5cf8-9829-b7dea9e9c10a'::uuid, '1ee18835-3c30-5bc7-a404-37cb54a05c4c'::uuid, 'bbd25235-3b2e-5db2-a0dd-8a7dddfac498'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f364def6-cca0-5584-a368-c3c9106012e5'::uuid, '1ee18835-3c30-5bc7-a404-37cb54a05c4c'::uuid, 'bbd25235-3b2e-5db2-a0dd-8a7dddfac498'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8d452164-28f4-5adf-b782-4a611f41e515'::uuid, '33fa21aa-e933-5a50-afb5-70bbbf5f265e'::uuid, '07e78528-7a32-5945-9289-b917095c02bc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c7114c2a-cb36-5afa-8038-3f80d2b685e9'::uuid, '07e78528-7a32-5945-9289-b917095c02bc'::uuid, '33fa21aa-e933-5a50-afb5-70bbbf5f265e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('63421ec9-fbba-563b-a430-070c332d499b'::uuid, '07e78528-7a32-5945-9289-b917095c02bc'::uuid, '33fa21aa-e933-5a50-afb5-70bbbf5f265e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5ac9bb82-4429-5480-9b87-11059c75c222'::uuid,
  '63421ec9-fbba-563b-a430-070c332d499b'::uuid,
  '33fa21aa-e933-5a50-afb5-70bbbf5f265e'::uuid,
  '07e78528-7a32-5945-9289-b917095c02bc'::uuid,
  'Hi Nora — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '66b1f48c-21e7-5041-96fe-f2456cb291f9'::uuid,
  '63421ec9-fbba-563b-a430-070c332d499b'::uuid,
  '07e78528-7a32-5945-9289-b917095c02bc'::uuid,
  '33fa21aa-e933-5a50-afb5-70bbbf5f265e'::uuid,
  'Thanks Omar! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2129d6ca-055b-527c-adf7-e4ba149fdebe'::uuid, '33fa21aa-e933-5a50-afb5-70bbbf5f265e'::uuid, 'a6a3a75d-592b-5db5-94cc-5d78a74d7890'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('247b8b68-210f-5530-9e05-95b1d3093bee'::uuid, 'a6a3a75d-592b-5db5-94cc-5d78a74d7890'::uuid, '33fa21aa-e933-5a50-afb5-70bbbf5f265e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('15f767ad-3f61-52ab-9a91-b777d64e581a'::uuid, '33fa21aa-e933-5a50-afb5-70bbbf5f265e'::uuid, 'a6a3a75d-592b-5db5-94cc-5d78a74d7890'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0700a97d-fbde-5a27-9afd-3ff44c64e554'::uuid, 'ed6e6e85-2c88-535d-84f9-a67cc2cbc4f5'::uuid, 'f86df400-9392-5e5e-b646-34ad46c78283'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('25311c4e-a3c0-5a44-8ecc-37c1eda26157'::uuid, 'f86df400-9392-5e5e-b646-34ad46c78283'::uuid, 'ed6e6e85-2c88-535d-84f9-a67cc2cbc4f5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e738667a-f1cb-59ea-ab70-a7f43615ad12'::uuid, 'ed6e6e85-2c88-535d-84f9-a67cc2cbc4f5'::uuid, 'f86df400-9392-5e5e-b646-34ad46c78283'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2766f85b-e258-5204-860e-7f9c5df029f8'::uuid,
  'e738667a-f1cb-59ea-ab70-a7f43615ad12'::uuid,
  'ed6e6e85-2c88-535d-84f9-a67cc2cbc4f5'::uuid,
  'f86df400-9392-5e5e-b646-34ad46c78283'::uuid,
  'Hi Isaac — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8ed6a748-36ec-5573-b69c-341834bdfc86'::uuid,
  'e738667a-f1cb-59ea-ab70-a7f43615ad12'::uuid,
  'f86df400-9392-5e5e-b646-34ad46c78283'::uuid,
  'ed6e6e85-2c88-535d-84f9-a67cc2cbc4f5'::uuid,
  'Thanks Chloe! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('06dad4fc-823f-5c9b-ba0a-0cd0560ca4ec'::uuid, '2c0dd167-5c7e-5666-9b16-5874de8c5169'::uuid, 'f7b3b033-ebce-5a30-8f09-ab76dc00d493'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9f84ea9f-72c9-58cc-b75c-281f1a4254ce'::uuid, 'f7b3b033-ebce-5a30-8f09-ab76dc00d493'::uuid, '2c0dd167-5c7e-5666-9b16-5874de8c5169'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dc66ae63-2050-52e3-9b67-b9cff9401a69'::uuid, '2c0dd167-5c7e-5666-9b16-5874de8c5169'::uuid, 'f7b3b033-ebce-5a30-8f09-ab76dc00d493'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b55d803f-9199-5b75-b102-05d03f5dfc44'::uuid, '8b8a20c4-f947-5d73-913d-867c67b89295'::uuid, 'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('78878821-a772-5960-8801-bbc9e71b1a15'::uuid, 'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210'::uuid, '8b8a20c4-f947-5d73-913d-867c67b89295'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f5b08a1f-7c6f-5537-b675-6ed5aac4216c'::uuid, '8b8a20c4-f947-5d73-913d-867c67b89295'::uuid, 'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '60014d67-10fc-5d65-b000-617a5ad26b03'::uuid,
  'f5b08a1f-7c6f-5537-b675-6ed5aac4216c'::uuid,
  '8b8a20c4-f947-5d73-913d-867c67b89295'::uuid,
  'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210'::uuid,
  'Hi Felix — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '438b7a56-1758-5ae4-804c-d602f4093a94'::uuid,
  'f5b08a1f-7c6f-5537-b675-6ed5aac4216c'::uuid,
  'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210'::uuid,
  '8b8a20c4-f947-5d73-913d-867c67b89295'::uuid,
  'Thanks Violet! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6f42e02b-5335-50f2-83e6-58d51f488f6f'::uuid, 'bd20663c-d6a2-51fa-ab80-4be7e0b70de7'::uuid, '73333d77-69c7-5858-a0a3-c3ac5f504d8b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d4c797cc-22f5-5f4c-8097-b02d9de3b54c'::uuid, '73333d77-69c7-5858-a0a3-c3ac5f504d8b'::uuid, 'bd20663c-d6a2-51fa-ab80-4be7e0b70de7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a97bc62b-f81f-5ccc-ac1b-40434b1ebccd'::uuid, '73333d77-69c7-5858-a0a3-c3ac5f504d8b'::uuid, 'bd20663c-d6a2-51fa-ab80-4be7e0b70de7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b7322cca-f97d-5a5f-8c06-cc78b6c98017'::uuid, 'eebb922f-dd26-57ea-a213-9149abab4313'::uuid, '7ccb1fe0-e8a9-5309-a20c-f4eec4fe5156'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a731f7cc-ca57-5f58-97a5-d277988ed3c6'::uuid, '7ccb1fe0-e8a9-5309-a20c-f4eec4fe5156'::uuid, 'eebb922f-dd26-57ea-a213-9149abab4313'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c4f546f2-f30d-5707-a848-2618111634db'::uuid, '7ccb1fe0-e8a9-5309-a20c-f4eec4fe5156'::uuid, 'eebb922f-dd26-57ea-a213-9149abab4313'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c12eae19-dab5-5ab5-9d92-e3cb4b4bb801'::uuid,
  'c4f546f2-f30d-5707-a848-2618111634db'::uuid,
  'eebb922f-dd26-57ea-a213-9149abab4313'::uuid,
  '7ccb1fe0-e8a9-5309-a20c-f4eec4fe5156'::uuid,
  'Hi James — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ba8870bc-bd2e-5706-8736-49c45289dd51'::uuid,
  'c4f546f2-f30d-5707-a848-2618111634db'::uuid,
  '7ccb1fe0-e8a9-5309-a20c-f4eec4fe5156'::uuid,
  'eebb922f-dd26-57ea-a213-9149abab4313'::uuid,
  'Thanks Tara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7c8578bb-8977-58cd-9db0-f366433b0216'::uuid, 'eebb922f-dd26-57ea-a213-9149abab4313'::uuid, '2d1a6824-fe3c-5305-a454-69c87e85e8e6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bd08a43c-59f6-5fe7-8a12-a2872de875c3'::uuid, '2d1a6824-fe3c-5305-a454-69c87e85e8e6'::uuid, 'eebb922f-dd26-57ea-a213-9149abab4313'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b681f3aa-512c-5e3d-aa66-1a24ad93d97c'::uuid, '2d1a6824-fe3c-5305-a454-69c87e85e8e6'::uuid, 'eebb922f-dd26-57ea-a213-9149abab4313'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e639ee27-bb0f-51c7-9707-831a00574d80'::uuid, '7946e966-b7f0-5144-a21a-04765a50638c'::uuid, 'e490df88-38c2-5929-9c18-233d575e2a3c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4a457ad3-6596-5ab7-9f38-1b6d606d766e'::uuid, 'e490df88-38c2-5929-9c18-233d575e2a3c'::uuid, '7946e966-b7f0-5144-a21a-04765a50638c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2ad3b52f-8095-507e-bf05-f78656465b14'::uuid, '7946e966-b7f0-5144-a21a-04765a50638c'::uuid, 'e490df88-38c2-5929-9c18-233d575e2a3c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b6de01c0-246c-5863-bee7-37067a1b8103'::uuid,
  '2ad3b52f-8095-507e-bf05-f78656465b14'::uuid,
  '7946e966-b7f0-5144-a21a-04765a50638c'::uuid,
  'e490df88-38c2-5929-9c18-233d575e2a3c'::uuid,
  'Hi Grace — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e37780ca-9973-592b-9921-8dc4aff0c6c8'::uuid,
  '2ad3b52f-8095-507e-bf05-f78656465b14'::uuid,
  'e490df88-38c2-5929-9c18-233d575e2a3c'::uuid,
  '7946e966-b7f0-5144-a21a-04765a50638c'::uuid,
  'Thanks Aaron! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('81b24a8f-a2f2-5484-8bed-d63156dad06c'::uuid, '2d6a40b8-dfab-5368-9f36-49bd06c4e841'::uuid, '4d8cd75d-d374-569f-85a8-6440bd0fe5a2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ef26aab9-3caa-5a18-ab4a-b8f13ed8262f'::uuid, '4d8cd75d-d374-569f-85a8-6440bd0fe5a2'::uuid, '2d6a40b8-dfab-5368-9f36-49bd06c4e841'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b6e4aeff-49f1-50b3-b51e-7ae477f33192'::uuid, '2d6a40b8-dfab-5368-9f36-49bd06c4e841'::uuid, '4d8cd75d-d374-569f-85a8-6440bd0fe5a2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5bdb4b8b-448d-5279-86c9-5e9d510407d4'::uuid, 'f2efdf93-5bb8-5fa8-9650-12f7fc8d9899'::uuid, '0c81417a-20bd-5878-bb5d-1d34f41f817b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f32713d1-72af-55cc-a9f9-6a2bd231e005'::uuid, '0c81417a-20bd-5878-bb5d-1d34f41f817b'::uuid, 'f2efdf93-5bb8-5fa8-9650-12f7fc8d9899'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('adf5d789-eb7f-5fd1-b53d-2be46ca45653'::uuid, '0c81417a-20bd-5878-bb5d-1d34f41f817b'::uuid, 'f2efdf93-5bb8-5fa8-9650-12f7fc8d9899'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '292083c9-1f1c-5ae0-82b3-58329e9e4b13'::uuid,
  'adf5d789-eb7f-5fd1-b53d-2be46ca45653'::uuid,
  'f2efdf93-5bb8-5fa8-9650-12f7fc8d9899'::uuid,
  '0c81417a-20bd-5878-bb5d-1d34f41f817b'::uuid,
  'Hi Isla — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b8cfcc7a-8f5d-5338-bdd9-2321829fbac9'::uuid,
  'adf5d789-eb7f-5fd1-b53d-2be46ca45653'::uuid,
  '0c81417a-20bd-5878-bb5d-1d34f41f817b'::uuid,
  'f2efdf93-5bb8-5fa8-9650-12f7fc8d9899'::uuid,
  'Thanks Noah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cd92afd6-9b8b-592f-b71d-721b83c917e4'::uuid, 'd5b0211b-c5f4-597f-acb9-7622a4effdc1'::uuid, 'b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f303f16c-47e8-5706-ba36-b6bec58972f3'::uuid, 'b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b'::uuid, 'd5b0211b-c5f4-597f-acb9-7622a4effdc1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('59e9f4d0-cb47-5cde-9594-5ebdf1cafefa'::uuid, 'b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b'::uuid, 'd5b0211b-c5f4-597f-acb9-7622a4effdc1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1daa7477-41eb-5c56-8a7f-8d711a58a1e3'::uuid, '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid, '81cf8362-41ca-534d-8d37-48b6fd6c7739'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8e4cebbf-36ce-52b4-80b1-474cb9cd84e1'::uuid, '81cf8362-41ca-534d-8d37-48b6fd6c7739'::uuid, '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('af481ce7-d8ca-5391-bf21-4ff9b68b60dc'::uuid, '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid, '81cf8362-41ca-534d-8d37-48b6fd6c7739'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3c0f206a-fd7a-5286-8981-009546b63e79'::uuid,
  'af481ce7-d8ca-5391-bf21-4ff9b68b60dc'::uuid,
  '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid,
  '81cf8362-41ca-534d-8d37-48b6fd6c7739'::uuid,
  'Hi Yara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'bbed7fbe-d645-5860-b698-d98050a0cd43'::uuid,
  'af481ce7-d8ca-5391-bf21-4ff9b68b60dc'::uuid,
  '81cf8362-41ca-534d-8d37-48b6fd6c7739'::uuid,
  '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid,
  'Thanks Ethan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b4f0cfe3-51a8-5562-945a-9069c4e46e3b'::uuid, '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid, '4b5ce663-76c6-53ea-9e74-cedb914dfad3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c6d7f4f2-a158-5a9b-abef-c9cba06fceb5'::uuid, '4b5ce663-76c6-53ea-9e74-cedb914dfad3'::uuid, '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e3f76ddb-660c-5400-87c8-490f6174bace'::uuid, '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid, '4b5ce663-76c6-53ea-9e74-cedb914dfad3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('eed70358-fc67-55e3-9a53-074c77470af5'::uuid, 'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid, '7cc7401c-94bd-5f9c-ae2e-38ffaaeeb8e9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('835f2e32-3518-51b7-a53d-ced5d0e3b0d1'::uuid, '7cc7401c-94bd-5f9c-ae2e-38ffaaeeb8e9'::uuid, 'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6afa15d5-12aa-5c21-b707-e2ce17c9b836'::uuid, '7cc7401c-94bd-5f9c-ae2e-38ffaaeeb8e9'::uuid, 'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3a8e14bc-ff75-5b3d-8887-cb9636ebcd44'::uuid,
  '6afa15d5-12aa-5c21-b707-e2ce17c9b836'::uuid,
  'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid,
  '7cc7401c-94bd-5f9c-ae2e-38ffaaeeb8e9'::uuid,
  'Hi Lucas — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '593bb67c-89f0-56a7-b271-7a08ae0b4d64'::uuid,
  '6afa15d5-12aa-5c21-b707-e2ce17c9b836'::uuid,
  '7cc7401c-94bd-5f9c-ae2e-38ffaaeeb8e9'::uuid,
  'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid,
  'Thanks Leila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6cdeccda-7189-5016-b400-a8a605ccd109'::uuid, '2f2b966f-68c3-5cc1-98f6-ce29bf74ba78'::uuid, 'd670e0d8-a814-5c12-8c3a-fe0efb45bd7a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f18c2c2f-7892-5b82-be8b-bc6860848dfe'::uuid, 'd670e0d8-a814-5c12-8c3a-fe0efb45bd7a'::uuid, '2f2b966f-68c3-5cc1-98f6-ce29bf74ba78'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a883bba9-dee3-5a19-b721-3f42f353c4da'::uuid, '2f2b966f-68c3-5cc1-98f6-ce29bf74ba78'::uuid, 'd670e0d8-a814-5c12-8c3a-fe0efb45bd7a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c56e5e91-6e6e-51f0-a4eb-7a69891a04a3'::uuid, 'da4f492a-56f6-5f1d-adfa-6267b2ab0e16'::uuid, '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6a3359bf-d173-5983-a7f0-6a414fe91de0'::uuid, '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid, 'da4f492a-56f6-5f1d-adfa-6267b2ab0e16'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('353d1589-a7a6-5dbd-8b34-36a4b74b5538'::uuid, '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid, 'da4f492a-56f6-5f1d-adfa-6267b2ab0e16'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c19f357d-f9f8-57f3-9e2c-fc4046ebd983'::uuid,
  '353d1589-a7a6-5dbd-8b34-36a4b74b5538'::uuid,
  'da4f492a-56f6-5f1d-adfa-6267b2ab0e16'::uuid,
  '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid,
  'Hi David — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '759e0cd9-391a-5350-8a93-55cd29347384'::uuid,
  '353d1589-a7a6-5dbd-8b34-36a4b74b5538'::uuid,
  '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid,
  'da4f492a-56f6-5f1d-adfa-6267b2ab0e16'::uuid,
  'Thanks Sana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('898831ed-ece2-5d73-bd63-cf2c9d55534f'::uuid, 'f326a54c-18ae-557e-8143-fda4415ba59b'::uuid, '67542a7b-0a85-5077-bd31-13e04bc34e8f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4b43ee93-10f2-53c2-9ee5-f5ca6b8d64cb'::uuid, '67542a7b-0a85-5077-bd31-13e04bc34e8f'::uuid, 'f326a54c-18ae-557e-8143-fda4415ba59b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a6a77f50-3c53-566c-aa77-3cd6d743149e'::uuid, '67542a7b-0a85-5077-bd31-13e04bc34e8f'::uuid, 'f326a54c-18ae-557e-8143-fda4415ba59b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d8f6e36b-e752-5365-bfd2-c288cd2ed156'::uuid, 'ddc21843-adf2-5551-bc0c-71602efc9aaf'::uuid, 'f0b6a384-fa41-5f30-8508-7717e8c5d4fc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('58aa212d-4675-5823-97b6-aac59b57095b'::uuid, 'f0b6a384-fa41-5f30-8508-7717e8c5d4fc'::uuid, 'ddc21843-adf2-5551-bc0c-71602efc9aaf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('db80fa08-7b56-574e-9e45-0be75a53c527'::uuid, 'ddc21843-adf2-5551-bc0c-71602efc9aaf'::uuid, 'f0b6a384-fa41-5f30-8508-7717e8c5d4fc'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3a70d1da-79b4-5981-8aff-b9fd7589b2be'::uuid,
  'db80fa08-7b56-574e-9e45-0be75a53c527'::uuid,
  'ddc21843-adf2-5551-bc0c-71602efc9aaf'::uuid,
  'f0b6a384-fa41-5f30-8508-7717e8c5d4fc'::uuid,
  'Hi Diego — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1638255b-a93b-5901-b3da-e52a7373b87a'::uuid,
  'db80fa08-7b56-574e-9e45-0be75a53c527'::uuid,
  'f0b6a384-fa41-5f30-8508-7717e8c5d4fc'::uuid,
  'ddc21843-adf2-5551-bc0c-71602efc9aaf'::uuid,
  'Thanks Hana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e0ba235d-7437-586d-a8ff-4a4bad291c19'::uuid, 'ddc21843-adf2-5551-bc0c-71602efc9aaf'::uuid, '1f4552e1-d512-585b-9efa-c5fa6d387b36'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2566506d-2715-5030-a976-5b3b1fc5b70b'::uuid, '1f4552e1-d512-585b-9efa-c5fa6d387b36'::uuid, 'ddc21843-adf2-5551-bc0c-71602efc9aaf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cf76bcfc-4772-52cc-9439-f01a9743df6c'::uuid, '1f4552e1-d512-585b-9efa-c5fa6d387b36'::uuid, 'ddc21843-adf2-5551-bc0c-71602efc9aaf'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6fe3155e-a51a-5636-ae7a-d22ecaefa17b'::uuid, '7210c171-30a0-5733-9501-572eef5ad3f8'::uuid, '58f91761-2dc2-582b-8d47-64a7f02a5619'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c2899215-6dc5-5b18-abc3-b361dcf38b33'::uuid, '58f91761-2dc2-582b-8d47-64a7f02a5619'::uuid, '7210c171-30a0-5733-9501-572eef5ad3f8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('414a080c-0215-5c73-9951-26d39f0b5fe0'::uuid, '58f91761-2dc2-582b-8d47-64a7f02a5619'::uuid, '7210c171-30a0-5733-9501-572eef5ad3f8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5cbf9d89-98b2-5600-b355-b4e16f362614'::uuid,
  '414a080c-0215-5c73-9951-26d39f0b5fe0'::uuid,
  '7210c171-30a0-5733-9501-572eef5ad3f8'::uuid,
  '58f91761-2dc2-582b-8d47-64a7f02a5619'::uuid,
  'Hi Nadia — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd03f2f6e-180f-5176-8d90-076b3efea2f3'::uuid,
  '414a080c-0215-5c73-9951-26d39f0b5fe0'::uuid,
  '58f91761-2dc2-582b-8d47-64a7f02a5619'::uuid,
  '7210c171-30a0-5733-9501-572eef5ad3f8'::uuid,
  'Thanks Maya! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f457668e-c0c6-5160-bf59-8dd812c391fc'::uuid, '666efcc9-c467-5b54-b887-659ecb744286'::uuid, '3d066e72-74c1-5d8d-ba3f-96311bb9e942'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3241aa20-c7a6-56e7-afbd-7b59d5a780fb'::uuid, '3d066e72-74c1-5d8d-ba3f-96311bb9e942'::uuid, '666efcc9-c467-5b54-b887-659ecb744286'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('87424d61-f83c-5dca-b53b-e990fa93b7b7'::uuid, '3d066e72-74c1-5d8d-ba3f-96311bb9e942'::uuid, '666efcc9-c467-5b54-b887-659ecb744286'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('54cecd52-7d35-5d38-88f5-e78b74ca8671'::uuid, '279c319c-89db-5ae5-b134-f4418f82a365'::uuid, 'cbdfa327-b276-57c7-8554-37966d1b054b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1739a42d-207a-5588-8d26-fc4902ab4b04'::uuid, 'cbdfa327-b276-57c7-8554-37966d1b054b'::uuid, '279c319c-89db-5ae5-b134-f4418f82a365'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('57556bd0-cf51-5b31-956b-1d4201b33828'::uuid, '279c319c-89db-5ae5-b134-f4418f82a365'::uuid, 'cbdfa327-b276-57c7-8554-37966d1b054b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '811c5b71-f3a2-5f74-a960-084924619453'::uuid,
  '57556bd0-cf51-5b31-956b-1d4201b33828'::uuid,
  '279c319c-89db-5ae5-b134-f4418f82a365'::uuid,
  'cbdfa327-b276-57c7-8554-37966d1b054b'::uuid,
  'Hi Mei — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c21f6444-5935-5064-8136-390e9e1f1d04'::uuid,
  '57556bd0-cf51-5b31-956b-1d4201b33828'::uuid,
  'cbdfa327-b276-57c7-8554-37966d1b054b'::uuid,
  '279c319c-89db-5ae5-b134-f4418f82a365'::uuid,
  'Thanks Rohan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('32d37166-a742-5b11-a605-31eb2a67c211'::uuid, 'b1a15199-4e78-51ba-99e1-56bf9f18a970'::uuid, '08db061d-1b19-5130-bfeb-39ece1268dcb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('24c34e76-1b62-5019-ac40-9b4ccda1ba70'::uuid, '08db061d-1b19-5130-bfeb-39ece1268dcb'::uuid, 'b1a15199-4e78-51ba-99e1-56bf9f18a970'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('db202c6a-0820-54cd-a43a-71bdcfa2ecd5'::uuid, '08db061d-1b19-5130-bfeb-39ece1268dcb'::uuid, 'b1a15199-4e78-51ba-99e1-56bf9f18a970'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9e446923-df44-5f2f-8dc2-ea89fdec8d05'::uuid, '12fe7d93-77e1-5088-9dd1-44c1d5e1c202'::uuid, 'eaed69b5-c60d-5133-86c3-ed579a4125f2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('33e209ae-b589-5dc1-a8a1-ce5d37be53b9'::uuid, 'eaed69b5-c60d-5133-86c3-ed579a4125f2'::uuid, '12fe7d93-77e1-5088-9dd1-44c1d5e1c202'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4010d4dc-a9dc-5194-a715-640aaa53ff7c'::uuid, '12fe7d93-77e1-5088-9dd1-44c1d5e1c202'::uuid, 'eaed69b5-c60d-5133-86c3-ed579a4125f2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '349acf19-a305-568f-8aba-3069888a876a'::uuid,
  '4010d4dc-a9dc-5194-a715-640aaa53ff7c'::uuid,
  '12fe7d93-77e1-5088-9dd1-44c1d5e1c202'::uuid,
  'eaed69b5-c60d-5133-86c3-ed579a4125f2'::uuid,
  'Hi Riya — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd2d2a3ef-57b8-52d2-baee-c18139fc2c03'::uuid,
  '4010d4dc-a9dc-5194-a715-640aaa53ff7c'::uuid,
  'eaed69b5-c60d-5133-86c3-ed579a4125f2'::uuid,
  '12fe7d93-77e1-5088-9dd1-44c1d5e1c202'::uuid,
  'Thanks Samir! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('10cb4d54-9e6f-551a-93a5-ee6934db1016'::uuid, '12fe7d93-77e1-5088-9dd1-44c1d5e1c202'::uuid, 'bdbffa25-5dda-547c-904d-3abab742a813'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bfa8da7a-3dbd-5fd1-a22a-ce122b8f9cc9'::uuid, 'bdbffa25-5dda-547c-904d-3abab742a813'::uuid, '12fe7d93-77e1-5088-9dd1-44c1d5e1c202'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b1ab95bf-96e3-51f5-8eb7-421cc29eab86'::uuid, '12fe7d93-77e1-5088-9dd1-44c1d5e1c202'::uuid, 'bdbffa25-5dda-547c-904d-3abab742a813'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8ed8081c-bc83-5756-9ee5-fe733cfe0253'::uuid, 'db69352b-36e0-5136-a601-8cd783f826e7'::uuid, '65b33e40-2eb6-5baa-bc71-7a8885b5779f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('67e2464d-302c-53e1-b2ca-7fe880178244'::uuid, '65b33e40-2eb6-5baa-bc71-7a8885b5779f'::uuid, 'db69352b-36e0-5136-a601-8cd783f826e7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dc9141fc-582d-504f-93e1-78ea46996de5'::uuid, '65b33e40-2eb6-5baa-bc71-7a8885b5779f'::uuid, 'db69352b-36e0-5136-a601-8cd783f826e7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2c8779dd-979e-5a81-a60f-6357a4b4e8f9'::uuid,
  'dc9141fc-582d-504f-93e1-78ea46996de5'::uuid,
  'db69352b-36e0-5136-a601-8cd783f826e7'::uuid,
  '65b33e40-2eb6-5baa-bc71-7a8885b5779f'::uuid,
  'Hi Nathan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '93b70ea2-933b-5da1-a32c-26462edbf835'::uuid,
  'dc9141fc-582d-504f-93e1-78ea46996de5'::uuid,
  '65b33e40-2eb6-5baa-bc71-7a8885b5779f'::uuid,
  'db69352b-36e0-5136-a601-8cd783f826e7'::uuid,
  'Thanks Camila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('89137c75-7261-58a5-8861-720dbe32834d'::uuid, '1a61d961-51b5-5a7b-a66f-f3270ebcf8b4'::uuid, '862f430e-1fe4-5ce4-a791-d17a77f2153c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c8e2df83-bab3-5c1f-8642-d7ac46fbc82f'::uuid, '862f430e-1fe4-5ce4-a791-d17a77f2153c'::uuid, '1a61d961-51b5-5a7b-a66f-f3270ebcf8b4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b9bbb39d-ca4a-550f-a898-72adc4f09bfb'::uuid, '1a61d961-51b5-5a7b-a66f-f3270ebcf8b4'::uuid, '862f430e-1fe4-5ce4-a791-d17a77f2153c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bf7f8289-2255-5f8c-adfd-2e35043ec5cb'::uuid, '1aa11d0d-a4fb-5943-ab0e-531198751050'::uuid, 'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('db9ddbe0-77f8-5b59-953c-4ef1334d0c2c'::uuid, 'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid, '1aa11d0d-a4fb-5943-ab0e-531198751050'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('44bc67d0-f812-54fc-81de-41d71486ec8a'::uuid, '1aa11d0d-a4fb-5943-ab0e-531198751050'::uuid, 'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e2e0683a-6a1c-5308-8543-5a4f119c6599'::uuid,
  '44bc67d0-f812-54fc-81de-41d71486ec8a'::uuid,
  '1aa11d0d-a4fb-5943-ab0e-531198751050'::uuid,
  'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid,
  'Hi Omar — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0840dd0e-33d7-5845-8490-302459675085'::uuid,
  '44bc67d0-f812-54fc-81de-41d71486ec8a'::uuid,
  'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid,
  '1aa11d0d-a4fb-5943-ab0e-531198751050'::uuid,
  'Thanks Nina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('27e995fe-170a-5bc5-b362-b15267b83803'::uuid, 'e0cf12ee-c803-590f-87be-dbc5f2ea0cb9'::uuid, '596f1efc-5edd-5271-b22f-b2020762115f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('68ca6a59-dd9d-5ed2-b680-7940aa1357a3'::uuid, '596f1efc-5edd-5271-b22f-b2020762115f'::uuid, 'e0cf12ee-c803-590f-87be-dbc5f2ea0cb9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('71581b0c-a2f7-5a03-80ae-a830fd712fa0'::uuid, '596f1efc-5edd-5271-b22f-b2020762115f'::uuid, 'e0cf12ee-c803-590f-87be-dbc5f2ea0cb9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2027acb5-f366-5dbe-864d-5c5976b4e699'::uuid, '223e8288-5d44-542e-b220-e739635a31f1'::uuid, '3f7dcc86-e0ad-5d04-8fba-af19edc21152'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e87287ab-a40c-5a99-b316-a325a3efc1cb'::uuid, '3f7dcc86-e0ad-5d04-8fba-af19edc21152'::uuid, '223e8288-5d44-542e-b220-e739635a31f1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7273cada-d737-5c62-b466-80a93ce75152'::uuid, '223e8288-5d44-542e-b220-e739635a31f1'::uuid, '3f7dcc86-e0ad-5d04-8fba-af19edc21152'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '277056c4-3811-53c6-aa55-b269aa34af17'::uuid,
  '7273cada-d737-5c62-b466-80a93ce75152'::uuid,
  '223e8288-5d44-542e-b220-e739635a31f1'::uuid,
  '3f7dcc86-e0ad-5d04-8fba-af19edc21152'::uuid,
  'Hi Owen — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4a1686bd-9cfc-5d60-8200-5b8d711e1ed3'::uuid,
  '7273cada-d737-5c62-b466-80a93ce75152'::uuid,
  '3f7dcc86-e0ad-5d04-8fba-af19edc21152'::uuid,
  '223e8288-5d44-542e-b220-e739635a31f1'::uuid,
  'Thanks Sofia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('78df4660-caf6-5b46-a5a1-dbc3d0bb945e'::uuid, '223e8288-5d44-542e-b220-e739635a31f1'::uuid, '601a15d3-ba12-5ed0-8b38-d924a5e127f4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('00f004d9-f307-5578-b0c2-24739415f56a'::uuid, '601a15d3-ba12-5ed0-8b38-d924a5e127f4'::uuid, '223e8288-5d44-542e-b220-e739635a31f1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('292769ea-413b-5e03-8c8a-31d2cbf930d3'::uuid, '223e8288-5d44-542e-b220-e739635a31f1'::uuid, '601a15d3-ba12-5ed0-8b38-d924a5e127f4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1bcd67f7-5120-5ac0-a5a4-5a9ba117b11f'::uuid, 'faa48f92-ec4c-50a8-b640-821e64485cdb'::uuid, 'b06a5bb8-5c51-5c83-b14f-366ec1bcc6c2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('81cca323-506f-542d-b25c-127ac6708258'::uuid, 'b06a5bb8-5c51-5c83-b14f-366ec1bcc6c2'::uuid, 'faa48f92-ec4c-50a8-b640-821e64485cdb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('59690c3e-3022-5457-b29f-2f0e65619b0d'::uuid, 'b06a5bb8-5c51-5c83-b14f-366ec1bcc6c2'::uuid, 'faa48f92-ec4c-50a8-b640-821e64485cdb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '105e14f2-a2fb-5e26-a7c6-b4ae1969d283'::uuid,
  '59690c3e-3022-5457-b29f-2f0e65619b0d'::uuid,
  'faa48f92-ec4c-50a8-b640-821e64485cdb'::uuid,
  'b06a5bb8-5c51-5c83-b14f-366ec1bcc6c2'::uuid,
  'Hi Violet — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ffe1360d-7a2c-51e2-b0be-25d24cf88d7a'::uuid,
  '59690c3e-3022-5457-b29f-2f0e65619b0d'::uuid,
  'b06a5bb8-5c51-5c83-b14f-366ec1bcc6c2'::uuid,
  'faa48f92-ec4c-50a8-b640-821e64485cdb'::uuid,
  'Thanks Kenji! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0b3333ab-3432-5b7a-8959-db1bdf259dd2'::uuid, 'b1528f83-05e9-5237-9070-2e49e81250b0'::uuid, '844bc8c1-568a-5c29-a8ee-695abfcc8b62'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('89a9e877-84e5-5b4b-8f78-3f52dc431d9a'::uuid, '844bc8c1-568a-5c29-a8ee-695abfcc8b62'::uuid, 'b1528f83-05e9-5237-9070-2e49e81250b0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('83ac3f67-eb8d-5d2e-82b0-429aebb588f5'::uuid, '844bc8c1-568a-5c29-a8ee-695abfcc8b62'::uuid, 'b1528f83-05e9-5237-9070-2e49e81250b0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fd393215-1c57-5fc6-892f-78803120cd1c'::uuid, '33deff9e-63a9-5149-af03-74ac800cd82b'::uuid, 'd03250de-48b2-59ba-9295-19028affe265'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('002604a2-870c-5203-9d12-8f67d23ce3ec'::uuid, 'd03250de-48b2-59ba-9295-19028affe265'::uuid, '33deff9e-63a9-5149-af03-74ac800cd82b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7edf8493-5d09-5d00-adf2-1bbe1aa6778f'::uuid, '33deff9e-63a9-5149-af03-74ac800cd82b'::uuid, 'd03250de-48b2-59ba-9295-19028affe265'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1545cab9-e4ca-5c12-80dc-2d1bb67e9e63'::uuid,
  '7edf8493-5d09-5d00-adf2-1bbe1aa6778f'::uuid,
  '33deff9e-63a9-5149-af03-74ac800cd82b'::uuid,
  'd03250de-48b2-59ba-9295-19028affe265'::uuid,
  'Hi Tara — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

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

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2ee647d4-4401-5d7f-b426-80ff4abbf1f6'::uuid,
  '7993fa02-abbc-53f3-b5fb-214473f6681a'::uuid,
  'bc781f9c-1d1a-53c6-aaec-f25806c05382'::uuid,
  '1ee18835-3c30-5bc7-a404-37cb54a05c4c'::uuid,
  'Thanks Julian! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('aff04970-7c73-51d9-ad8d-de58962bcc7b'::uuid, '07e78528-7a32-5945-9289-b917095c02bc'::uuid, 'ba7fc771-ba33-54f2-b75c-bf563b08e7e3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d765a4c5-a1fb-5b7d-8cdc-f831199d141e'::uuid, 'ba7fc771-ba33-54f2-b75c-bf563b08e7e3'::uuid, '07e78528-7a32-5945-9289-b917095c02bc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;
