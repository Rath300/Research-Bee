INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('adf6ded6-4587-5e0e-9c31-6f4fa250a1f3'::uuid, '3ac0579f-90fa-5ec3-a6b9-b42e7d425f0f'::uuid, 'c26b5733-2d5f-5503-a13e-2fd663e7bdcd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('556d4141-108e-5340-ae41-52ba10afc541'::uuid, 'c26b5733-2d5f-5503-a13e-2fd663e7bdcd'::uuid, '3ac0579f-90fa-5ec3-a6b9-b42e7d425f0f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3d8bc8e3-0f6d-56ae-bfcc-d41f8c554012'::uuid, '3ac0579f-90fa-5ec3-a6b9-b42e7d425f0f'::uuid, 'c26b5733-2d5f-5503-a13e-2fd663e7bdcd'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bccdb6f2-a8ef-58bc-b5cb-6590f1737a08'::uuid, '5da55f8b-d3b7-530d-a326-88e4303e90db'::uuid, '83edcab9-6153-5dfa-86b0-e2e832723741'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c90fcb4c-c519-5ce9-885a-655b9b14ceaf'::uuid, '83edcab9-6153-5dfa-86b0-e2e832723741'::uuid, '5da55f8b-d3b7-530d-a326-88e4303e90db'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5ae763b2-e062-5f5d-ae5d-ba23718d2379'::uuid, '5da55f8b-d3b7-530d-a326-88e4303e90db'::uuid, '83edcab9-6153-5dfa-86b0-e2e832723741'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b292e65d-0977-5005-beb0-7972a01213ea'::uuid,
  '5ae763b2-e062-5f5d-ae5d-ba23718d2379'::uuid,
  '5da55f8b-d3b7-530d-a326-88e4303e90db'::uuid,
  '83edcab9-6153-5dfa-86b0-e2e832723741'::uuid,
  'Hi Riya — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6ac7501c-000c-5e5d-9ee9-4e121957fd13'::uuid,
  '5ae763b2-e062-5f5d-ae5d-ba23718d2379'::uuid,
  '83edcab9-6153-5dfa-86b0-e2e832723741'::uuid,
  '5da55f8b-d3b7-530d-a326-88e4303e90db'::uuid,
  'Thanks Samir! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e16a156a-0557-560d-a396-a4b127a3a084'::uuid, '5da55f8b-d3b7-530d-a326-88e4303e90db'::uuid, '3d45d675-a875-5470-942c-38b3923c1d12'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('43ecc389-9195-5029-86b2-80e589e5efd5'::uuid, '3d45d675-a875-5470-942c-38b3923c1d12'::uuid, '5da55f8b-d3b7-530d-a326-88e4303e90db'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3ec54959-fa1f-5783-8035-b0f8be98ca83'::uuid, '3d45d675-a875-5470-942c-38b3923c1d12'::uuid, '5da55f8b-d3b7-530d-a326-88e4303e90db'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('698bfd33-bf92-5340-9e2c-97bbb66d4b05'::uuid, '789cb839-9c80-5444-ae46-de39fa27b287'::uuid, '524baf06-4daa-5adc-b266-e2987e12aa98'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ce208f82-c37c-504c-a30f-eab237550a97'::uuid, '524baf06-4daa-5adc-b266-e2987e12aa98'::uuid, '789cb839-9c80-5444-ae46-de39fa27b287'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5d78192b-7454-50e8-9b8f-e76fb0954ac6'::uuid, '524baf06-4daa-5adc-b266-e2987e12aa98'::uuid, '789cb839-9c80-5444-ae46-de39fa27b287'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c9009d8b-4159-5a47-9cb6-4d14520e6cba'::uuid,
  '5d78192b-7454-50e8-9b8f-e76fb0954ac6'::uuid,
  '789cb839-9c80-5444-ae46-de39fa27b287'::uuid,
  '524baf06-4daa-5adc-b266-e2987e12aa98'::uuid,
  'Hi Nathan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '69a8f597-8b41-550c-a7a1-d3cb1f9ebdf2'::uuid,
  '5d78192b-7454-50e8-9b8f-e76fb0954ac6'::uuid,
  '524baf06-4daa-5adc-b266-e2987e12aa98'::uuid,
  '789cb839-9c80-5444-ae46-de39fa27b287'::uuid,
  'Thanks Camila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f53649ca-e5e6-5aa1-bd1f-8bbff578192b'::uuid, '62d73a72-61fa-5bba-b89f-1aab728b4b14'::uuid, '38543983-3393-5fc5-91f8-ed27a8f5cfee'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('eae41b46-c618-5b80-ae86-ca9a6f5f0ae8'::uuid, '38543983-3393-5fc5-91f8-ed27a8f5cfee'::uuid, '62d73a72-61fa-5bba-b89f-1aab728b4b14'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9807a7af-eace-5e35-9ecd-327532033d14'::uuid, '38543983-3393-5fc5-91f8-ed27a8f5cfee'::uuid, '62d73a72-61fa-5bba-b89f-1aab728b4b14'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4e41257e-3529-5b6c-85b6-97afbbff97ac'::uuid, '89156783-853d-5a14-aea6-b545cfc146a5'::uuid, '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d273b40d-78f6-5944-994d-e45fe0b25e59'::uuid, '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid, '89156783-853d-5a14-aea6-b545cfc146a5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b40bb51c-977d-5e45-8c24-7382ef5d60ee'::uuid, '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid, '89156783-853d-5a14-aea6-b545cfc146a5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '88db54b1-c04d-572c-b074-e195d0f4f52c'::uuid,
  'b40bb51c-977d-5e45-8c24-7382ef5d60ee'::uuid,
  '89156783-853d-5a14-aea6-b545cfc146a5'::uuid,
  '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid,
  'Hi Omar — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd5f762d6-7cbb-509d-acc6-eaa1b93c2dfe'::uuid,
  'b40bb51c-977d-5e45-8c24-7382ef5d60ee'::uuid,
  '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid,
  '89156783-853d-5a14-aea6-b545cfc146a5'::uuid,
  'Thanks Nina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3cac30a8-9f35-5be8-84a4-732192911271'::uuid, '5c62f76c-9d55-5526-baab-65a97b588ff2'::uuid, '337045f6-3ef4-54fc-a3cb-5ebf6f7a70a4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1f7c198a-1ba8-5edd-905a-df75249c685b'::uuid, '337045f6-3ef4-54fc-a3cb-5ebf6f7a70a4'::uuid, '5c62f76c-9d55-5526-baab-65a97b588ff2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e3d7c047-175f-523f-8314-e6425168d40b'::uuid, '337045f6-3ef4-54fc-a3cb-5ebf6f7a70a4'::uuid, '5c62f76c-9d55-5526-baab-65a97b588ff2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e305f41b-934f-5fd6-8074-abff24f3dd21'::uuid, 'd48b7652-dead-5b7f-9a02-4181503a52e0'::uuid, '1eaa537d-6771-5fa2-8cbe-f4faed6ab222'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3cc46da9-2bf2-5f32-8110-d6aff3f9bdee'::uuid, '1eaa537d-6771-5fa2-8cbe-f4faed6ab222'::uuid, 'd48b7652-dead-5b7f-9a02-4181503a52e0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('00ef8f50-e7c6-55d1-9035-1cc9a259437d'::uuid, '1eaa537d-6771-5fa2-8cbe-f4faed6ab222'::uuid, 'd48b7652-dead-5b7f-9a02-4181503a52e0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b8e5da43-e5c6-5760-b568-5a35ddb10779'::uuid,
  '00ef8f50-e7c6-55d1-9035-1cc9a259437d'::uuid,
  'd48b7652-dead-5b7f-9a02-4181503a52e0'::uuid,
  '1eaa537d-6771-5fa2-8cbe-f4faed6ab222'::uuid,
  'Hi Owen — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '78b3f82b-4e56-529c-9660-9b386cd017a2'::uuid,
  '00ef8f50-e7c6-55d1-9035-1cc9a259437d'::uuid,
  '1eaa537d-6771-5fa2-8cbe-f4faed6ab222'::uuid,
  'd48b7652-dead-5b7f-9a02-4181503a52e0'::uuid,
  'Thanks Sofia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ee0ff0d1-2da2-5209-8b6d-fbb301f5bdd4'::uuid, 'd48b7652-dead-5b7f-9a02-4181503a52e0'::uuid, '4aa67be5-efe7-5b07-bb83-6bb1bccd92d4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('10609b54-9d8b-56d7-9033-9efe2bd3c443'::uuid, '4aa67be5-efe7-5b07-bb83-6bb1bccd92d4'::uuid, 'd48b7652-dead-5b7f-9a02-4181503a52e0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c8b5079f-52d0-58c9-9bf6-347ffb00bb91'::uuid, '4aa67be5-efe7-5b07-bb83-6bb1bccd92d4'::uuid, 'd48b7652-dead-5b7f-9a02-4181503a52e0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2b60482c-45a3-5334-923c-1a27ee59b9b3'::uuid, '71ce71e0-3ea8-5d45-b77b-d5851945f3af'::uuid, 'e39e6b56-0b6e-5ec5-80ef-6b410471ac02'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0f2773f8-5161-54a1-b701-06b5c687a732'::uuid, 'e39e6b56-0b6e-5ec5-80ef-6b410471ac02'::uuid, '71ce71e0-3ea8-5d45-b77b-d5851945f3af'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('16a53c6f-a9da-5e74-af58-9217cc55a577'::uuid, '71ce71e0-3ea8-5d45-b77b-d5851945f3af'::uuid, 'e39e6b56-0b6e-5ec5-80ef-6b410471ac02'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '032fb025-0406-5896-9845-a59fd9878156'::uuid,
  '16a53c6f-a9da-5e74-af58-9217cc55a577'::uuid,
  '71ce71e0-3ea8-5d45-b77b-d5851945f3af'::uuid,
  'e39e6b56-0b6e-5ec5-80ef-6b410471ac02'::uuid,
  'Hi Violet — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e49b388e-e040-5305-b003-c08d5c9cfd10'::uuid,
  '16a53c6f-a9da-5e74-af58-9217cc55a577'::uuid,
  'e39e6b56-0b6e-5ec5-80ef-6b410471ac02'::uuid,
  '71ce71e0-3ea8-5d45-b77b-d5851945f3af'::uuid,
  'Thanks Kenji! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e5ee344f-ac4d-5bce-9834-9f1eaf86e06e'::uuid, '5adbe397-780c-5a92-baa4-edd6c908ea3d'::uuid, 'db3c49e7-bfea-5580-92ae-3b7c4329da27'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('edce97c4-81d5-5368-9f4e-421acf623974'::uuid, 'db3c49e7-bfea-5580-92ae-3b7c4329da27'::uuid, '5adbe397-780c-5a92-baa4-edd6c908ea3d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5b37aa92-3a7a-5719-ab40-3d7f0800de24'::uuid, '5adbe397-780c-5a92-baa4-edd6c908ea3d'::uuid, 'db3c49e7-bfea-5580-92ae-3b7c4329da27'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('95a59785-64a5-52eb-9f8f-b546410b6c3b'::uuid, 'a0be9746-2732-59d8-9d1c-52829b061343'::uuid, '53f80aef-090c-5c26-b62a-6a01e277d754'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b94d7be8-eb52-57c5-8a93-3a741d4254dc'::uuid, '53f80aef-090c-5c26-b62a-6a01e277d754'::uuid, 'a0be9746-2732-59d8-9d1c-52829b061343'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('defc138d-88f8-5a21-b99e-5a62d0424161'::uuid, '53f80aef-090c-5c26-b62a-6a01e277d754'::uuid, 'a0be9746-2732-59d8-9d1c-52829b061343'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c088176a-4bdc-57a0-b5ce-7318e9a5e804'::uuid,
  'defc138d-88f8-5a21-b99e-5a62d0424161'::uuid,
  'a0be9746-2732-59d8-9d1c-52829b061343'::uuid,
  '53f80aef-090c-5c26-b62a-6a01e277d754'::uuid,
  'Hi Tara — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8b41d512-408d-5bb3-bd8f-9841ba5d1824'::uuid,
  'defc138d-88f8-5a21-b99e-5a62d0424161'::uuid,
  '53f80aef-090c-5c26-b62a-6a01e277d754'::uuid,
  'a0be9746-2732-59d8-9d1c-52829b061343'::uuid,
  'Thanks Kai! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('65a8b0c6-eaab-542b-a744-686d250eae54'::uuid, 'a2a0a60f-90e7-5a6d-bd00-9b45cdf0e153'::uuid, 'e8942547-2905-5750-a298-06aa7d0cac82'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bec7b9b1-b5ca-5e7e-9d87-14c986495ef8'::uuid, 'e8942547-2905-5750-a298-06aa7d0cac82'::uuid, 'a2a0a60f-90e7-5a6d-bd00-9b45cdf0e153'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('089d98ed-8897-5419-b317-bfaf2d5e6c1c'::uuid, 'a2a0a60f-90e7-5a6d-bd00-9b45cdf0e153'::uuid, 'e8942547-2905-5750-a298-06aa7d0cac82'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('efd26a9e-aa34-58ea-8de1-ed5a87e59a16'::uuid, 'da23348a-cb61-5775-bac1-f4088289d969'::uuid, 'd607c5db-de3d-5283-938a-378840208167'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d2289931-37fa-503e-a559-f1352995b9ce'::uuid, 'd607c5db-de3d-5283-938a-378840208167'::uuid, 'da23348a-cb61-5775-bac1-f4088289d969'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('49d10037-cba5-5c06-90f9-94597beb821b'::uuid, 'd607c5db-de3d-5283-938a-378840208167'::uuid, 'da23348a-cb61-5775-bac1-f4088289d969'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7d427bff-6376-53ff-89ff-aa77535526c9'::uuid,
  '49d10037-cba5-5c06-90f9-94597beb821b'::uuid,
  'da23348a-cb61-5775-bac1-f4088289d969'::uuid,
  'd607c5db-de3d-5283-938a-378840208167'::uuid,
  'Hi Imani — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '75dc4a66-0209-57fe-883b-7b570986d6d5'::uuid,
  '49d10037-cba5-5c06-90f9-94597beb821b'::uuid,
  'd607c5db-de3d-5283-938a-378840208167'::uuid,
  'da23348a-cb61-5775-bac1-f4088289d969'::uuid,
  'Thanks Benjamin! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bb08bf47-931f-51c2-8712-81f315a2945c'::uuid, 'da23348a-cb61-5775-bac1-f4088289d969'::uuid, 'b806090a-a7a9-5442-95f8-b0f3a4bcbe13'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0e712eb9-dc05-58cf-87e7-4012932b822d'::uuid, 'b806090a-a7a9-5442-95f8-b0f3a4bcbe13'::uuid, 'da23348a-cb61-5775-bac1-f4088289d969'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5f6c7763-e621-5e2c-b44b-ed8ddb02f347'::uuid, 'b806090a-a7a9-5442-95f8-b0f3a4bcbe13'::uuid, 'da23348a-cb61-5775-bac1-f4088289d969'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cde29536-4bf1-5fd9-a332-e228ce8bd559'::uuid, 'e9cf01e2-c731-5f25-a3b2-0abccfa7cfbe'::uuid, 'bfc0cd00-9ae0-5c3f-9654-979ab870cc76'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3940e5f8-8e76-5a18-8bdf-4584aaac9d25'::uuid, 'bfc0cd00-9ae0-5c3f-9654-979ab870cc76'::uuid, 'e9cf01e2-c731-5f25-a3b2-0abccfa7cfbe'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0ce9b9fb-ec8a-5363-8f37-6b3ada8734c4'::uuid, 'bfc0cd00-9ae0-5c3f-9654-979ab870cc76'::uuid, 'e9cf01e2-c731-5f25-a3b2-0abccfa7cfbe'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2637ede6-8013-5c30-8ef1-d2dc1d22aa85'::uuid,
  '0ce9b9fb-ec8a-5363-8f37-6b3ada8734c4'::uuid,
  'e9cf01e2-c731-5f25-a3b2-0abccfa7cfbe'::uuid,
  'bfc0cd00-9ae0-5c3f-9654-979ab870cc76'::uuid,
  'Hi Noah — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '819eecea-b06b-590e-a42e-b4df7dc2963a'::uuid,
  '0ce9b9fb-ec8a-5363-8f37-6b3ada8734c4'::uuid,
  'bfc0cd00-9ae0-5c3f-9654-979ab870cc76'::uuid,
  'e9cf01e2-c731-5f25-a3b2-0abccfa7cfbe'::uuid,
  'Thanks Ava! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d38628d1-db0e-5b09-b537-19a875679674'::uuid, '456b2ac9-0110-5359-b6a9-24f1909a0f8f'::uuid, '03d924c7-38c5-5e68-8929-cfb838a4b9a9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1bb8e056-e4ca-5753-851a-ad0e29f1cbfe'::uuid, '03d924c7-38c5-5e68-8929-cfb838a4b9a9'::uuid, '456b2ac9-0110-5359-b6a9-24f1909a0f8f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('41ae81ff-54d5-556e-9819-8252ab3bcab1'::uuid, '03d924c7-38c5-5e68-8929-cfb838a4b9a9'::uuid, '456b2ac9-0110-5359-b6a9-24f1909a0f8f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7096d500-acc4-5c69-b765-e5daf388d964'::uuid, '35a428fe-b59e-5243-9778-10ebb91a070a'::uuid, 'df3e1c62-4247-510c-80e8-205376b04cf6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5665c71b-ec38-56c8-973d-e8e937376c2d'::uuid, 'df3e1c62-4247-510c-80e8-205376b04cf6'::uuid, '35a428fe-b59e-5243-9778-10ebb91a070a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1cc36e09-73f6-504c-a9d0-6ab2cd9b09ac'::uuid, '35a428fe-b59e-5243-9778-10ebb91a070a'::uuid, 'df3e1c62-4247-510c-80e8-205376b04cf6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd366ca7a-cffb-5912-88f5-bfd4306907d2'::uuid,
  '1cc36e09-73f6-504c-a9d0-6ab2cd9b09ac'::uuid,
  '35a428fe-b59e-5243-9778-10ebb91a070a'::uuid,
  'df3e1c62-4247-510c-80e8-205376b04cf6'::uuid,
  'Hi Ethan — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c997f64a-779d-52bd-aab8-8feb88dd2998'::uuid,
  '1cc36e09-73f6-504c-a9d0-6ab2cd9b09ac'::uuid,
  'df3e1c62-4247-510c-80e8-205376b04cf6'::uuid,
  '35a428fe-b59e-5243-9778-10ebb91a070a'::uuid,
  'Thanks Amina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('63b6b71b-3785-58b7-96f4-b3bd969fda58'::uuid, '3a305db2-a0f9-5bd9-94ce-ca6892b43188'::uuid, '3e632bb3-c208-5e8f-92a2-9dde3d847af2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('507b59cd-09ed-5d28-b188-99854dcfe93d'::uuid, '3e632bb3-c208-5e8f-92a2-9dde3d847af2'::uuid, '3a305db2-a0f9-5bd9-94ce-ca6892b43188'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1e3cb50b-b78e-5403-8530-f7c4783ba5ac'::uuid, '3a305db2-a0f9-5bd9-94ce-ca6892b43188'::uuid, '3e632bb3-c208-5e8f-92a2-9dde3d847af2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a2929a5f-042f-5429-a044-f94ad1382f30'::uuid, '70103f92-ccdb-5034-9fc6-6c6543caddfc'::uuid, '2a19e5bf-12b6-5a5c-b22b-83a66f6241e7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ee00425a-850a-5d47-ae78-6821de357069'::uuid, '2a19e5bf-12b6-5a5c-b22b-83a66f6241e7'::uuid, '70103f92-ccdb-5034-9fc6-6c6543caddfc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f6698727-5a95-550e-8b00-bd805ade086e'::uuid, '2a19e5bf-12b6-5a5c-b22b-83a66f6241e7'::uuid, '70103f92-ccdb-5034-9fc6-6c6543caddfc'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9ed53ebe-cc2c-570d-bf38-4d5608dc39ee'::uuid,
  'f6698727-5a95-550e-8b00-bd805ade086e'::uuid,
  '70103f92-ccdb-5034-9fc6-6c6543caddfc'::uuid,
  '2a19e5bf-12b6-5a5c-b22b-83a66f6241e7'::uuid,
  'Hi Caleb — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a9e88d72-1c5b-556a-a104-ec1984c98b52'::uuid,
  'f6698727-5a95-550e-8b00-bd805ade086e'::uuid,
  '2a19e5bf-12b6-5a5c-b22b-83a66f6241e7'::uuid,
  '70103f92-ccdb-5034-9fc6-6c6543caddfc'::uuid,
  'Thanks Hannah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6f065bee-4383-5058-87b5-b5a1e4bf3b0c'::uuid, '70103f92-ccdb-5034-9fc6-6c6543caddfc'::uuid, 'a901d64a-c165-5007-b311-05725dddb634'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('756ed1c4-51c2-500e-95a1-24f572b5cff8'::uuid, 'a901d64a-c165-5007-b311-05725dddb634'::uuid, '70103f92-ccdb-5034-9fc6-6c6543caddfc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3b59c631-9beb-5331-b8a5-4afba1984659'::uuid, '70103f92-ccdb-5034-9fc6-6c6543caddfc'::uuid, 'a901d64a-c165-5007-b311-05725dddb634'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4f218eb5-387b-51be-b35d-5dcf89d15756'::uuid, 'e3b015fb-e2b1-5f62-9882-ced1747b09f9'::uuid, '756be686-ee02-559a-b9e7-8de1b4fe3b29'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f52d5bb9-a85e-55cd-ab29-25df6ed2251f'::uuid, '756be686-ee02-559a-b9e7-8de1b4fe3b29'::uuid, 'e3b015fb-e2b1-5f62-9882-ced1747b09f9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('472179de-fad9-5ad8-a3e8-d86b0c397724'::uuid, '756be686-ee02-559a-b9e7-8de1b4fe3b29'::uuid, 'e3b015fb-e2b1-5f62-9882-ced1747b09f9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b617dfac-7e3c-5428-8e65-4286d474d59a'::uuid,
  '472179de-fad9-5ad8-a3e8-d86b0c397724'::uuid,
  'e3b015fb-e2b1-5f62-9882-ced1747b09f9'::uuid,
  '756be686-ee02-559a-b9e7-8de1b4fe3b29'::uuid,
  'Hi Sana — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7a60f15c-0cf0-5cec-844e-e7e0cfd2c04c'::uuid,
  '472179de-fad9-5ad8-a3e8-d86b0c397724'::uuid,
  '756be686-ee02-559a-b9e7-8de1b4fe3b29'::uuid,
  'e3b015fb-e2b1-5f62-9882-ced1747b09f9'::uuid,
  'Thanks Julian! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a5de755e-cc16-532e-a055-87290436e42d'::uuid, 'a422bbc4-90f3-569d-90f8-8c220153f0b4'::uuid, '6920da0a-a803-5817-876c-c73449120e9d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('72312107-a144-5bba-8460-43d06be320a4'::uuid, '6920da0a-a803-5817-876c-c73449120e9d'::uuid, 'a422bbc4-90f3-569d-90f8-8c220153f0b4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('18d92b35-261f-5e1f-9432-f22d0aa29692'::uuid, '6920da0a-a803-5817-876c-c73449120e9d'::uuid, 'a422bbc4-90f3-569d-90f8-8c220153f0b4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2be227e2-1970-5935-87bd-44a33d3b3b06'::uuid, '2f973087-14f2-5e74-b267-236219d92b2b'::uuid, 'cdf6b929-635e-5023-8098-73c102653a89'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d19c7c00-97db-551b-a053-638427bc2541'::uuid, 'cdf6b929-635e-5023-8098-73c102653a89'::uuid, '2f973087-14f2-5e74-b267-236219d92b2b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f5991076-a837-536b-85d1-59217e93aa95'::uuid, '2f973087-14f2-5e74-b267-236219d92b2b'::uuid, 'cdf6b929-635e-5023-8098-73c102653a89'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '19d77010-7453-5c71-afad-9a6db9e0f328'::uuid,
  'f5991076-a837-536b-85d1-59217e93aa95'::uuid,
  '2f973087-14f2-5e74-b267-236219d92b2b'::uuid,
  'cdf6b929-635e-5023-8098-73c102653a89'::uuid,
  'Hi Hana — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '21500d4e-34c1-530b-bf5d-37705d49cbef'::uuid,
  'f5991076-a837-536b-85d1-59217e93aa95'::uuid,
  'cdf6b929-635e-5023-8098-73c102653a89'::uuid,
  '2f973087-14f2-5e74-b267-236219d92b2b'::uuid,
  'Thanks Isaac! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e056d023-1acd-5a62-9304-4d1d37481b98'::uuid, '5b4d74cc-c6ad-59dc-a192-6bc864ef642f'::uuid, 'fd89cd4b-db01-5882-96e0-d179f823c010'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8a242556-383f-54b3-99df-4eb582b1e122'::uuid, 'fd89cd4b-db01-5882-96e0-d179f823c010'::uuid, '5b4d74cc-c6ad-59dc-a192-6bc864ef642f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('91612032-3111-59c8-a715-1609beab48a0'::uuid, '5b4d74cc-c6ad-59dc-a192-6bc864ef642f'::uuid, 'fd89cd4b-db01-5882-96e0-d179f823c010'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5629a7e0-c045-5d70-820b-6696c8528a5d'::uuid, '874f22d1-d122-5efa-91b2-609b82abcb7b'::uuid, 'e5d0f288-9f92-5299-b807-495269bcd8ca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('98342b18-8fd6-5e32-9241-327ab3b5d8ed'::uuid, 'e5d0f288-9f92-5299-b807-495269bcd8ca'::uuid, '874f22d1-d122-5efa-91b2-609b82abcb7b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5c1f1484-cd17-5475-844e-a51640f5810c'::uuid, '874f22d1-d122-5efa-91b2-609b82abcb7b'::uuid, 'e5d0f288-9f92-5299-b807-495269bcd8ca'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e09b1747-a28c-5c03-903d-4c4a64c48457'::uuid,
  '5c1f1484-cd17-5475-844e-a51640f5810c'::uuid,
  '874f22d1-d122-5efa-91b2-609b82abcb7b'::uuid,
  'e5d0f288-9f92-5299-b807-495269bcd8ca'::uuid,
  'Hi Elena — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '76154203-9568-5289-8fc3-0ef6657cc25b'::uuid,
  '5c1f1484-cd17-5475-844e-a51640f5810c'::uuid,
  'e5d0f288-9f92-5299-b807-495269bcd8ca'::uuid,
  '874f22d1-d122-5efa-91b2-609b82abcb7b'::uuid,
  'Thanks Felix! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e6bc4155-edfb-5b95-8d06-42785018f5cf'::uuid, '874f22d1-d122-5efa-91b2-609b82abcb7b'::uuid, '42100420-3e43-57ff-96c6-5945409a49d1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4d9af9de-d05f-5753-ae96-8d56ce944d82'::uuid, '42100420-3e43-57ff-96c6-5945409a49d1'::uuid, '874f22d1-d122-5efa-91b2-609b82abcb7b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('afed21de-c1c7-5546-a8b5-92f7f5a6f380'::uuid, '42100420-3e43-57ff-96c6-5945409a49d1'::uuid, '874f22d1-d122-5efa-91b2-609b82abcb7b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('996f8b0e-a93a-5cd2-b7d7-1c415eac85f9'::uuid, '2f7357e8-f852-5e6d-a819-d0062717ec63'::uuid, '23b5ee7f-0bbd-521e-aaa0-3c98767ba963'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7f71a082-64a3-506f-b690-277629a64a6a'::uuid, '23b5ee7f-0bbd-521e-aaa0-3c98767ba963'::uuid, '2f7357e8-f852-5e6d-a819-d0062717ec63'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9708bd4b-e3ca-5332-995c-9495fdd57394'::uuid, '23b5ee7f-0bbd-521e-aaa0-3c98767ba963'::uuid, '2f7357e8-f852-5e6d-a819-d0062717ec63'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8085842c-9c6f-5bb6-811f-5bc818790f2f'::uuid,
  '9708bd4b-e3ca-5332-995c-9495fdd57394'::uuid,
  '2f7357e8-f852-5e6d-a819-d0062717ec63'::uuid,
  '23b5ee7f-0bbd-521e-aaa0-3c98767ba963'::uuid,
  'Hi Rohan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c66b293c-4579-5e17-b43b-7c1e23384e49'::uuid,
  '9708bd4b-e3ca-5332-995c-9495fdd57394'::uuid,
  '23b5ee7f-0bbd-521e-aaa0-3c98767ba963'::uuid,
  '2f7357e8-f852-5e6d-a819-d0062717ec63'::uuid,
  'Thanks Sara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1495735f-9820-5ec6-8c3d-ea6d32df3732'::uuid, 'c241b52a-7067-5347-84d1-7a7ccbb39966'::uuid, 'bf0af558-883d-514f-a05c-6d86200699c1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d0881878-0203-5a0e-8b07-e6258d999d2c'::uuid, 'bf0af558-883d-514f-a05c-6d86200699c1'::uuid, 'c241b52a-7067-5347-84d1-7a7ccbb39966'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('78632feb-c168-5854-ba19-e277a2d3856f'::uuid, 'bf0af558-883d-514f-a05c-6d86200699c1'::uuid, 'c241b52a-7067-5347-84d1-7a7ccbb39966'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f1b95c48-389e-538b-bbc8-266f87021c7e'::uuid, '5baa9a49-86d9-5b96-8662-a6e76f4aa203'::uuid, 'c9a78c52-bd19-5259-91ef-08c71fda445d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1f130202-69ac-5cef-af63-d696b9c33e6a'::uuid, 'c9a78c52-bd19-5259-91ef-08c71fda445d'::uuid, '5baa9a49-86d9-5b96-8662-a6e76f4aa203'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8e245ef6-0170-566f-b90f-2e59e8bbb762'::uuid, '5baa9a49-86d9-5b96-8662-a6e76f4aa203'::uuid, 'c9a78c52-bd19-5259-91ef-08c71fda445d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9081053f-c4e6-527e-ac22-309d16b9ef6d'::uuid,
  '8e245ef6-0170-566f-b90f-2e59e8bbb762'::uuid,
  '5baa9a49-86d9-5b96-8662-a6e76f4aa203'::uuid,
  'c9a78c52-bd19-5259-91ef-08c71fda445d'::uuid,
  'Hi Samir — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'bdfa2817-840a-59a9-b2a6-e531e514538a'::uuid,
  '8e245ef6-0170-566f-b90f-2e59e8bbb762'::uuid,
  'c9a78c52-bd19-5259-91ef-08c71fda445d'::uuid,
  '5baa9a49-86d9-5b96-8662-a6e76f4aa203'::uuid,
  'Thanks Grace! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7ff77c8e-7f96-5fd4-918d-1caeaab9fc2e'::uuid, '0766e457-77cd-5217-9c3b-2b0dcd4b955f'::uuid, '246bcb7d-f6ac-555a-b9a5-8c11a5d0f5d2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c4e70572-855c-5e51-954a-2a83de73cd55'::uuid, '246bcb7d-f6ac-555a-b9a5-8c11a5d0f5d2'::uuid, '0766e457-77cd-5217-9c3b-2b0dcd4b955f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b6b9e321-463c-57ea-bb2a-6b53752f2284'::uuid, '0766e457-77cd-5217-9c3b-2b0dcd4b955f'::uuid, '246bcb7d-f6ac-555a-b9a5-8c11a5d0f5d2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8275f02b-399f-5a59-b6fc-3e2465a5fd58'::uuid, 'e81750f1-0ea2-5b78-a375-74bb06b5b584'::uuid, 'b8f3c581-831a-5e5a-a62b-11337746e107'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('182de8d2-ff23-5980-9704-0bb948b16ecd'::uuid, 'b8f3c581-831a-5e5a-a62b-11337746e107'::uuid, 'e81750f1-0ea2-5b78-a375-74bb06b5b584'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b8d356d6-f96a-5286-b7b5-a47e4a1f8023'::uuid, 'b8f3c581-831a-5e5a-a62b-11337746e107'::uuid, 'e81750f1-0ea2-5b78-a375-74bb06b5b584'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6927736e-ac5b-55c0-9a27-dc5c4245d5c8'::uuid,
  'b8d356d6-f96a-5286-b7b5-a47e4a1f8023'::uuid,
  'e81750f1-0ea2-5b78-a375-74bb06b5b584'::uuid,
  'b8f3c581-831a-5e5a-a62b-11337746e107'::uuid,
  'Hi Daniel — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '65457eb1-cd5e-518e-803f-da74df1777d7'::uuid,
  'b8d356d6-f96a-5286-b7b5-a47e4a1f8023'::uuid,
  'b8f3c581-831a-5e5a-a62b-11337746e107'::uuid,
  'e81750f1-0ea2-5b78-a375-74bb06b5b584'::uuid,
  'Thanks Isla! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8e76a34e-e817-535a-b195-fe45228f9955'::uuid, 'e81750f1-0ea2-5b78-a375-74bb06b5b584'::uuid, 'a6d22533-4b09-5974-a116-4c83d9a214f8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7b2a8132-af6c-5a61-b8a1-06c98e0674e4'::uuid, 'a6d22533-4b09-5974-a116-4c83d9a214f8'::uuid, 'e81750f1-0ea2-5b78-a375-74bb06b5b584'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fd692b78-a2ce-56d5-ae5e-f87ca6b8d66f'::uuid, 'a6d22533-4b09-5974-a116-4c83d9a214f8'::uuid, 'e81750f1-0ea2-5b78-a375-74bb06b5b584'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4efbaff5-da55-5277-93a4-6e9735f41ba8'::uuid, 'eae2b40f-cbad-57de-b268-6c4b724cc18c'::uuid, 'b27daf1d-8ab8-5889-9504-0c12a10afbfb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('22ccd4d6-35ca-5829-9663-dc1f01ed218c'::uuid, 'b27daf1d-8ab8-5889-9504-0c12a10afbfb'::uuid, 'eae2b40f-cbad-57de-b268-6c4b724cc18c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('72f4a2bd-09c6-5bf8-86d7-ed792d27d728'::uuid, 'b27daf1d-8ab8-5889-9504-0c12a10afbfb'::uuid, 'eae2b40f-cbad-57de-b268-6c4b724cc18c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '59e328ab-cc42-517b-a07f-45b46e4735fe'::uuid,
  '72f4a2bd-09c6-5bf8-86d7-ed792d27d728'::uuid,
  'eae2b40f-cbad-57de-b268-6c4b724cc18c'::uuid,
  'b27daf1d-8ab8-5889-9504-0c12a10afbfb'::uuid,
  'Hi Nina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'bf53f15a-2c18-55c9-9d0c-422efde089e4'::uuid,
  '72f4a2bd-09c6-5bf8-86d7-ed792d27d728'::uuid,
  'b27daf1d-8ab8-5889-9504-0c12a10afbfb'::uuid,
  'eae2b40f-cbad-57de-b268-6c4b724cc18c'::uuid,
  'Thanks Theo! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('49aeaeb1-078c-5c03-b941-44c129c29cea'::uuid, '345c8171-44e4-513a-98ee-6a601680d628'::uuid, '4c0bc010-334e-5366-bbb5-89f5fbd0f1c1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1b830819-b8d9-5bf2-8193-e26b22a356fb'::uuid, '4c0bc010-334e-5366-bbb5-89f5fbd0f1c1'::uuid, '345c8171-44e4-513a-98ee-6a601680d628'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('09ef492d-527b-5539-b712-87d45a728e9c'::uuid, '345c8171-44e4-513a-98ee-6a601680d628'::uuid, '4c0bc010-334e-5366-bbb5-89f5fbd0f1c1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('390c2846-d8c0-5069-addd-1dc6aee19b62'::uuid, '559ed6d7-7717-5fb9-b2f1-68534a7ee556'::uuid, '17f60a9d-3628-5de0-a717-35480b0cc51d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('59dcef5b-9364-5d43-9fca-b923ac2c5544'::uuid, '17f60a9d-3628-5de0-a717-35480b0cc51d'::uuid, '559ed6d7-7717-5fb9-b2f1-68534a7ee556'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c129fb1a-7ff3-5600-9a96-dec0b82dd747'::uuid, '17f60a9d-3628-5de0-a717-35480b0cc51d'::uuid, '559ed6d7-7717-5fb9-b2f1-68534a7ee556'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '124b564d-b9ad-5b63-afc8-5ebf58ceb774'::uuid,
  'c129fb1a-7ff3-5600-9a96-dec0b82dd747'::uuid,
  '559ed6d7-7717-5fb9-b2f1-68534a7ee556'::uuid,
  '17f60a9d-3628-5de0-a717-35480b0cc51d'::uuid,
  'Hi Sofia — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cf49784b-98d9-5128-b36d-e6d8cc48197a'::uuid,
  'c129fb1a-7ff3-5600-9a96-dec0b82dd747'::uuid,
  '17f60a9d-3628-5de0-a717-35480b0cc51d'::uuid,
  '559ed6d7-7717-5fb9-b2f1-68534a7ee556'::uuid,
  'Thanks Lucas! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f23f7bca-78c5-5903-b33c-e78a8dd9f76e'::uuid, '3bd2ebbe-1d87-59b0-bbcc-11eda780a6bc'::uuid, '03d08a86-991b-58ec-aed4-2669d15698ab'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('01f22f3f-636d-5813-a90d-c64bd1a8386a'::uuid, '03d08a86-991b-58ec-aed4-2669d15698ab'::uuid, '3bd2ebbe-1d87-59b0-bbcc-11eda780a6bc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('961ffaeb-5405-5c02-9740-50f43b5c835f'::uuid, '03d08a86-991b-58ec-aed4-2669d15698ab'::uuid, '3bd2ebbe-1d87-59b0-bbcc-11eda780a6bc'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9290e56b-67bb-52ba-a042-11b15cc05578'::uuid, '05c0c723-6829-5a0e-abc6-dafc9db5aa7c'::uuid, '99a26567-fc56-5088-8ed4-aaf0cd314f3e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f20e26b6-9f98-5eca-8767-1ab5cb0cdb2a'::uuid, '99a26567-fc56-5088-8ed4-aaf0cd314f3e'::uuid, '05c0c723-6829-5a0e-abc6-dafc9db5aa7c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fca1bff1-3853-5a89-8d0f-8aabdef84bdc'::uuid, '05c0c723-6829-5a0e-abc6-dafc9db5aa7c'::uuid, '99a26567-fc56-5088-8ed4-aaf0cd314f3e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '18b06fae-da79-5190-b7f5-e008d2ae8710'::uuid,
  'fca1bff1-3853-5a89-8d0f-8aabdef84bdc'::uuid,
  '05c0c723-6829-5a0e-abc6-dafc9db5aa7c'::uuid,
  '99a26567-fc56-5088-8ed4-aaf0cd314f3e'::uuid,
  'Hi Zara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9297e37e-2a87-5ebd-8fc9-75214ff94dda'::uuid,
  'fca1bff1-3853-5a89-8d0f-8aabdef84bdc'::uuid,
  '99a26567-fc56-5088-8ed4-aaf0cd314f3e'::uuid,
  '05c0c723-6829-5a0e-abc6-dafc9db5aa7c'::uuid,
  'Thanks David! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0974df8f-42ca-579c-a6e3-b7a6b62a8272'::uuid, '05c0c723-6829-5a0e-abc6-dafc9db5aa7c'::uuid, '9c4efb8c-21ae-57f3-aa6d-9013dfe07bed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('460a3544-ee53-5f00-987b-54c739db452f'::uuid, '9c4efb8c-21ae-57f3-aa6d-9013dfe07bed'::uuid, '05c0c723-6829-5a0e-abc6-dafc9db5aa7c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('60b52680-125d-5adc-b7fd-15f6f681b484'::uuid, '05c0c723-6829-5a0e-abc6-dafc9db5aa7c'::uuid, '9c4efb8c-21ae-57f3-aa6d-9013dfe07bed'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f018f116-e23e-5ef1-8159-a18fe0e1632f'::uuid, '53a7a968-97f9-5f8a-be3a-9717574c6e58'::uuid, '30b17759-7407-5607-a4e6-182ee0e7047f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6490b98e-354c-5a66-9ebe-b094ccf5118a'::uuid, '30b17759-7407-5607-a4e6-182ee0e7047f'::uuid, '53a7a968-97f9-5f8a-be3a-9717574c6e58'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('89b7fc0d-a3e7-5b6d-bdce-ca1173318623'::uuid, '30b17759-7407-5607-a4e6-182ee0e7047f'::uuid, '53a7a968-97f9-5f8a-be3a-9717574c6e58'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cd9175ac-c9f9-560b-b642-61a86c472da3'::uuid,
  '89b7fc0d-a3e7-5b6d-bdce-ca1173318623'::uuid,
  '53a7a968-97f9-5f8a-be3a-9717574c6e58'::uuid,
  '30b17759-7407-5607-a4e6-182ee0e7047f'::uuid,
  'Hi Kai — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '59f9cf9a-320b-525f-a0fd-0843f99581e3'::uuid,
  '89b7fc0d-a3e7-5b6d-bdce-ca1173318623'::uuid,
  '30b17759-7407-5607-a4e6-182ee0e7047f'::uuid,
  '53a7a968-97f9-5f8a-be3a-9717574c6e58'::uuid,
  'Thanks Aisha! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bb844046-6c2d-5eb0-aaed-fb7bf7c0bbb4'::uuid, '45150839-6840-5863-8a4a-6531e7974e3f'::uuid, 'eb6564c3-b3de-5c08-8236-eee1ca3d0923'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4071a933-269f-5df4-8496-63cb24908f1c'::uuid, 'eb6564c3-b3de-5c08-8236-eee1ca3d0923'::uuid, '45150839-6840-5863-8a4a-6531e7974e3f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('769f3521-bbf1-557b-8088-664e774da9bd'::uuid, '45150839-6840-5863-8a4a-6531e7974e3f'::uuid, 'eb6564c3-b3de-5c08-8236-eee1ca3d0923'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('035c7775-000e-5168-806a-cfa71610dafa'::uuid, '7f1973e3-c24f-5d08-864f-0ad85e4e2f45'::uuid, 'c60358ac-d97a-56dd-9277-fc0ca739aeeb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d197a477-6a41-59e9-a5be-54a1c1277b32'::uuid, 'c60358ac-d97a-56dd-9277-fc0ca739aeeb'::uuid, '7f1973e3-c24f-5d08-864f-0ad85e4e2f45'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2897ef0a-8608-5443-9581-8babbd4b3dac'::uuid, '7f1973e3-c24f-5d08-864f-0ad85e4e2f45'::uuid, 'c60358ac-d97a-56dd-9277-fc0ca739aeeb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c3ccc2c1-28d6-50f9-8777-3f6d42492d35'::uuid,
  '2897ef0a-8608-5443-9581-8babbd4b3dac'::uuid,
  '7f1973e3-c24f-5d08-864f-0ad85e4e2f45'::uuid,
  'c60358ac-d97a-56dd-9277-fc0ca739aeeb'::uuid,
  'Hi Benjamin — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'eeda8663-eb51-5ee3-8492-ebd401d9a27e'::uuid,
  '2897ef0a-8608-5443-9581-8babbd4b3dac'::uuid,
  'c60358ac-d97a-56dd-9277-fc0ca739aeeb'::uuid,
  '7f1973e3-c24f-5d08-864f-0ad85e4e2f45'::uuid,
  'Thanks Nadia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('41fade3c-bb49-5584-b5f2-6cea54d488d0'::uuid, 'a44778cb-c276-5a51-bc92-31e723fba28c'::uuid, 'd3f36a02-cd5b-55ce-ad08-55cabb0f2e7b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('be5de321-2c96-590b-afa5-3bbc2f554199'::uuid, 'd3f36a02-cd5b-55ce-ad08-55cabb0f2e7b'::uuid, 'a44778cb-c276-5a51-bc92-31e723fba28c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dc229ab5-b8aa-585b-b980-6e1df2a85c98'::uuid, 'a44778cb-c276-5a51-bc92-31e723fba28c'::uuid, 'd3f36a02-cd5b-55ce-ad08-55cabb0f2e7b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('290f2145-8413-585d-bd74-591f873db596'::uuid, 'f0b67df3-69c6-55af-85f4-d8d0f4ea1143'::uuid, '53500f58-1453-5133-8118-eb17c7a347e0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fb56e6bc-f6ff-5f3c-b840-4dba54674703'::uuid, '53500f58-1453-5133-8118-eb17c7a347e0'::uuid, 'f0b67df3-69c6-55af-85f4-d8d0f4ea1143'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bac40750-d401-53b2-bafe-106fcaf3c930'::uuid, '53500f58-1453-5133-8118-eb17c7a347e0'::uuid, 'f0b67df3-69c6-55af-85f4-d8d0f4ea1143'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4520db47-762f-59d7-8372-ad36cd159c9c'::uuid,
  'bac40750-d401-53b2-bafe-106fcaf3c930'::uuid,
  'f0b67df3-69c6-55af-85f4-d8d0f4ea1143'::uuid,
  '53500f58-1453-5133-8118-eb17c7a347e0'::uuid,
  'Hi Sebastian — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4bb31ce3-19d9-5bd1-9350-824f192311a9'::uuid,
  'bac40750-d401-53b2-bafe-106fcaf3c930'::uuid,
  '53500f58-1453-5133-8118-eb17c7a347e0'::uuid,
  'f0b67df3-69c6-55af-85f4-d8d0f4ea1143'::uuid,
  'Thanks Mei! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ff9a7602-1e8e-51af-b54b-8fd1bde26319'::uuid, 'f0b67df3-69c6-55af-85f4-d8d0f4ea1143'::uuid, '0033dc27-0b51-5a94-8a47-524ed782f504'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('417533cd-0a6b-5c0c-9424-1c4b455ae1a6'::uuid, '0033dc27-0b51-5a94-8a47-524ed782f504'::uuid, 'f0b67df3-69c6-55af-85f4-d8d0f4ea1143'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cada7cfe-ded8-5da6-8f84-5418073f3864'::uuid, '0033dc27-0b51-5a94-8a47-524ed782f504'::uuid, 'f0b67df3-69c6-55af-85f4-d8d0f4ea1143'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b50c4598-91e3-5606-b3b0-cbdb9eeca3d3'::uuid, 'c26b5733-2d5f-5503-a13e-2fd663e7bdcd'::uuid, 'b9bc161a-f1e9-50c1-93ea-4e1ffb4f3b45'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('aa14265b-6fbb-576f-ba0e-025b92c3b4e3'::uuid, 'b9bc161a-f1e9-50c1-93ea-4e1ffb4f3b45'::uuid, 'c26b5733-2d5f-5503-a13e-2fd663e7bdcd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5616567e-8478-5b86-a1a1-93b006306b82'::uuid, 'b9bc161a-f1e9-50c1-93ea-4e1ffb4f3b45'::uuid, 'c26b5733-2d5f-5503-a13e-2fd663e7bdcd'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6f95451c-97c3-519a-a5b1-5cb5747207e7'::uuid,
  '5616567e-8478-5b86-a1a1-93b006306b82'::uuid,
  'c26b5733-2d5f-5503-a13e-2fd663e7bdcd'::uuid,
  'b9bc161a-f1e9-50c1-93ea-4e1ffb4f3b45'::uuid,
  'Hi Amina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1092fce2-6c3e-5484-9124-82cf470155e6'::uuid,
  '5616567e-8478-5b86-a1a1-93b006306b82'::uuid,
  'b9bc161a-f1e9-50c1-93ea-4e1ffb4f3b45'::uuid,
  'c26b5733-2d5f-5503-a13e-2fd663e7bdcd'::uuid,
  'Thanks Henry! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c2a326bf-9ae1-5e7b-a521-ae4feddf11ac'::uuid, '83edcab9-6153-5dfa-86b0-e2e832723741'::uuid, '615aae5c-381c-5bcd-83c3-76cecc3fb911'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f5f304dc-1e65-53cc-b9ed-ce020702d318'::uuid, '615aae5c-381c-5bcd-83c3-76cecc3fb911'::uuid, '83edcab9-6153-5dfa-86b0-e2e832723741'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a657aa5f-36f4-5479-a9fb-265a1debb4b5'::uuid, '615aae5c-381c-5bcd-83c3-76cecc3fb911'::uuid, '83edcab9-6153-5dfa-86b0-e2e832723741'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('57918583-647a-5303-86c3-618ce1b65513'::uuid, '524baf06-4daa-5adc-b266-e2987e12aa98'::uuid, 'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bf3c9bac-3644-5daf-a397-bda913493d51'::uuid, 'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid, '524baf06-4daa-5adc-b266-e2987e12aa98'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0e85a772-f7f9-5c08-a171-c11e92adddf6'::uuid, '524baf06-4daa-5adc-b266-e2987e12aa98'::uuid, 'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'bef8ad18-4832-54b8-8638-0a6d41187bd4'::uuid,
  '0e85a772-f7f9-5c08-a171-c11e92adddf6'::uuid,
  '524baf06-4daa-5adc-b266-e2987e12aa98'::uuid,
  'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid,
  'Hi Hannah — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3dac71ef-158c-5427-b979-e11c9c56afbc'::uuid,
  '0e85a772-f7f9-5c08-a171-c11e92adddf6'::uuid,
  'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid,
  '524baf06-4daa-5adc-b266-e2987e12aa98'::uuid,
  'Thanks Nathan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('63519e5a-b1a6-59ac-bd46-f2bf16c0ea8f'::uuid, '38543983-3393-5fc5-91f8-ed27a8f5cfee'::uuid, '6d947ae2-d338-5a25-a719-fc615fbecd70'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('12616925-9ea0-5a19-82f6-a33f40ca3eb5'::uuid, '6d947ae2-d338-5a25-a719-fc615fbecd70'::uuid, '38543983-3393-5fc5-91f8-ed27a8f5cfee'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c29a057c-92c3-51e7-807d-5a9cb464d721'::uuid, '38543983-3393-5fc5-91f8-ed27a8f5cfee'::uuid, '6d947ae2-d338-5a25-a719-fc615fbecd70'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c77a41d3-0e8c-5d45-b934-f0ee3278ffdd'::uuid, '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid, '4c408ffd-f61b-5dd9-88bf-5a5065140dbf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8a2d9782-f7f7-5599-9e2a-81f0669fd428'::uuid, '4c408ffd-f61b-5dd9-88bf-5a5065140dbf'::uuid, '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e060b23e-6513-50e4-a74b-3b6427282f45'::uuid, '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid, '4c408ffd-f61b-5dd9-88bf-5a5065140dbf'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7373324b-dbea-50a1-9fde-ba75525a1b12'::uuid,
  'e060b23e-6513-50e4-a74b-3b6427282f45'::uuid,
  '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid,
  '4c408ffd-f61b-5dd9-88bf-5a5065140dbf'::uuid,
  'Hi Nora — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'becaf4f7-cc4e-562b-8bb2-31251bee5c1a'::uuid,
  'e060b23e-6513-50e4-a74b-3b6427282f45'::uuid,
  '4c408ffd-f61b-5dd9-88bf-5a5065140dbf'::uuid,
  '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid,
  'Thanks Omar! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ecb77696-66b9-5c0b-ab5f-14e56a349e2d'::uuid, '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid, 'ba58a0d4-31c0-534b-8a30-c476559e8c17'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0b3c72d2-6af0-576e-ae6c-c301162d9b59'::uuid, 'ba58a0d4-31c0-534b-8a30-c476559e8c17'::uuid, '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a30d7f22-954c-5a28-a4d4-2c1418b56949'::uuid, '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid, 'ba58a0d4-31c0-534b-8a30-c476559e8c17'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3afdd225-4530-5e86-ae92-5b874fe021b3'::uuid, '337045f6-3ef4-54fc-a3cb-5ebf6f7a70a4'::uuid, '33aec7f2-5690-57b3-9664-6aebc7b43952'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('44678133-a8d5-5c48-886a-ed0c2c748f5d'::uuid, '33aec7f2-5690-57b3-9664-6aebc7b43952'::uuid, '337045f6-3ef4-54fc-a3cb-5ebf6f7a70a4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('459e373e-800f-5224-8ed9-015a023f97c1'::uuid, '337045f6-3ef4-54fc-a3cb-5ebf6f7a70a4'::uuid, '33aec7f2-5690-57b3-9664-6aebc7b43952'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9506fa14-8ce3-5853-9f68-c886463c61a6'::uuid,
  '459e373e-800f-5224-8ed9-015a023f97c1'::uuid,
  '337045f6-3ef4-54fc-a3cb-5ebf6f7a70a4'::uuid,
  '33aec7f2-5690-57b3-9664-6aebc7b43952'::uuid,
  'Hi Isaac — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fce9c62a-b25e-5520-8ba3-63085179a78b'::uuid,
  '459e373e-800f-5224-8ed9-015a023f97c1'::uuid,
  '33aec7f2-5690-57b3-9664-6aebc7b43952'::uuid,
  '337045f6-3ef4-54fc-a3cb-5ebf6f7a70a4'::uuid,
  'Thanks Chloe! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d3ff73b5-5352-5025-8361-40e414b7e163'::uuid, '1eaa537d-6771-5fa2-8cbe-f4faed6ab222'::uuid, '3dd86691-9e6d-5f95-b08a-8f29f3faa19d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8bfe0438-cce4-5d2b-aff5-edaebc8512a0'::uuid, '3dd86691-9e6d-5f95-b08a-8f29f3faa19d'::uuid, '1eaa537d-6771-5fa2-8cbe-f4faed6ab222'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('76b4be43-cbfd-5420-a5f5-20d3fd5115c3'::uuid, '1eaa537d-6771-5fa2-8cbe-f4faed6ab222'::uuid, '3dd86691-9e6d-5f95-b08a-8f29f3faa19d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c2212c1b-c527-53fe-bd35-52db75aed324'::uuid, 'e39e6b56-0b6e-5ec5-80ef-6b410471ac02'::uuid, '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7981a97a-0eb9-5ea6-8a7e-b40fd427aad0'::uuid, '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid, 'e39e6b56-0b6e-5ec5-80ef-6b410471ac02'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9a9a5f3f-7827-596a-8f67-19f7c9ed36fc'::uuid, '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid, 'e39e6b56-0b6e-5ec5-80ef-6b410471ac02'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7b746d3d-d651-584e-8b03-3288a7145baa'::uuid,
  '9a9a5f3f-7827-596a-8f67-19f7c9ed36fc'::uuid,
  'e39e6b56-0b6e-5ec5-80ef-6b410471ac02'::uuid,
  '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid,
  'Hi Felix — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'dc30dc8e-8a1b-5db2-877e-5adf074922ba'::uuid,
  '9a9a5f3f-7827-596a-8f67-19f7c9ed36fc'::uuid,
  '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid,
  'e39e6b56-0b6e-5ec5-80ef-6b410471ac02'::uuid,
  'Thanks Violet! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('46824596-92dd-51e3-9442-6be38105ef7c'::uuid, 'db3c49e7-bfea-5580-92ae-3b7c4329da27'::uuid, 'a09224b4-4489-5f26-acc8-6d59bf83ca40'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e0c9d16d-4404-52cf-a3b6-203ac2ff315e'::uuid, 'a09224b4-4489-5f26-acc8-6d59bf83ca40'::uuid, 'db3c49e7-bfea-5580-92ae-3b7c4329da27'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3de4f309-aa01-59a7-bd66-d5e707dfd3c1'::uuid, 'a09224b4-4489-5f26-acc8-6d59bf83ca40'::uuid, 'db3c49e7-bfea-5580-92ae-3b7c4329da27'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3919a448-2990-54f2-abb1-a8a7b9bbb844'::uuid, '53f80aef-090c-5c26-b62a-6a01e277d754'::uuid, '1fd23b49-1f61-56f1-87d2-a4baac0eff85'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('70d3a2ad-63ac-5dfe-a42b-878dcfd74db0'::uuid, '1fd23b49-1f61-56f1-87d2-a4baac0eff85'::uuid, '53f80aef-090c-5c26-b62a-6a01e277d754'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b88859d2-6151-5b19-b3a4-75f61b5dfef0'::uuid, '1fd23b49-1f61-56f1-87d2-a4baac0eff85'::uuid, '53f80aef-090c-5c26-b62a-6a01e277d754'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '068815f7-62be-5c69-9aa1-07f7037d6800'::uuid,
  'b88859d2-6151-5b19-b3a4-75f61b5dfef0'::uuid,
  '53f80aef-090c-5c26-b62a-6a01e277d754'::uuid,
  '1fd23b49-1f61-56f1-87d2-a4baac0eff85'::uuid,
  'Hi James — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0d942a68-1a7d-54bb-b1e0-a8ac3e9d8387'::uuid,
  'b88859d2-6151-5b19-b3a4-75f61b5dfef0'::uuid,
  '1fd23b49-1f61-56f1-87d2-a4baac0eff85'::uuid,
  '53f80aef-090c-5c26-b62a-6a01e277d754'::uuid,
  'Thanks Tara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dcd633bf-b69e-5e9d-bc08-5d36a215f3d4'::uuid, '53f80aef-090c-5c26-b62a-6a01e277d754'::uuid, '6c9d0537-63f0-513c-9725-e07e525bd742'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3671062b-719a-5f31-8504-9d11dfbd7ace'::uuid, '6c9d0537-63f0-513c-9725-e07e525bd742'::uuid, '53f80aef-090c-5c26-b62a-6a01e277d754'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bb3fadeb-d171-5173-b71b-0be15e05f0af'::uuid, '53f80aef-090c-5c26-b62a-6a01e277d754'::uuid, '6c9d0537-63f0-513c-9725-e07e525bd742'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0e5d1b36-ea9b-59b2-88e1-4986dca96320'::uuid, 'e8942547-2905-5750-a298-06aa7d0cac82'::uuid, '22f392fb-623b-5e10-9abd-4e1da0ed6aa7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0c67363b-dfff-53f6-b27b-0a4e94962646'::uuid, '22f392fb-623b-5e10-9abd-4e1da0ed6aa7'::uuid, 'e8942547-2905-5750-a298-06aa7d0cac82'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3325ac7a-28cd-5646-a033-b1b393971c07'::uuid, '22f392fb-623b-5e10-9abd-4e1da0ed6aa7'::uuid, 'e8942547-2905-5750-a298-06aa7d0cac82'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fb0127d6-ce78-557a-b4f7-b06d157dc404'::uuid,
  '3325ac7a-28cd-5646-a033-b1b393971c07'::uuid,
  'e8942547-2905-5750-a298-06aa7d0cac82'::uuid,
  '22f392fb-623b-5e10-9abd-4e1da0ed6aa7'::uuid,
  'Hi Grace — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0e8d7be8-5644-5941-a0d5-3e02666b8cb3'::uuid,
  '3325ac7a-28cd-5646-a033-b1b393971c07'::uuid,
  '22f392fb-623b-5e10-9abd-4e1da0ed6aa7'::uuid,
  'e8942547-2905-5750-a298-06aa7d0cac82'::uuid,
  'Thanks Aaron! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c7821ed9-be5f-5fe9-85b8-77496ce5cb99'::uuid, 'd607c5db-de3d-5283-938a-378840208167'::uuid, '15eaa3ae-24eb-57ee-bc4c-1401230faa23'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cea6aae4-9c63-5f51-a915-cd3a2e1dbefa'::uuid, '15eaa3ae-24eb-57ee-bc4c-1401230faa23'::uuid, 'd607c5db-de3d-5283-938a-378840208167'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5350781c-16d0-5ab2-9456-6bf100a665d0'::uuid, '15eaa3ae-24eb-57ee-bc4c-1401230faa23'::uuid, 'd607c5db-de3d-5283-938a-378840208167'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c9fd2e62-9b4b-5205-ae0a-36b3e388fb0e'::uuid, 'bfc0cd00-9ae0-5c3f-9654-979ab870cc76'::uuid, '3be530d6-9f24-5f93-978c-7010f5821a79'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a5bf2b32-22ef-5178-9ead-31c162ef84da'::uuid, '3be530d6-9f24-5f93-978c-7010f5821a79'::uuid, 'bfc0cd00-9ae0-5c3f-9654-979ab870cc76'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ec34b05a-d203-5423-92fc-e3915a991df4'::uuid, '3be530d6-9f24-5f93-978c-7010f5821a79'::uuid, 'bfc0cd00-9ae0-5c3f-9654-979ab870cc76'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8227dadb-d7d4-580f-b286-f98b343388d2'::uuid,
  'ec34b05a-d203-5423-92fc-e3915a991df4'::uuid,
  'bfc0cd00-9ae0-5c3f-9654-979ab870cc76'::uuid,
  '3be530d6-9f24-5f93-978c-7010f5821a79'::uuid,
  'Hi Isla — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'da85b2d5-1aa2-5193-aa13-bc4bd78f3480'::uuid,
  'ec34b05a-d203-5423-92fc-e3915a991df4'::uuid,
  '3be530d6-9f24-5f93-978c-7010f5821a79'::uuid,
  'bfc0cd00-9ae0-5c3f-9654-979ab870cc76'::uuid,
  'Thanks Noah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e0d0eaa6-cc88-5e5f-9933-481c2eb27705'::uuid, '03d924c7-38c5-5e68-8929-cfb838a4b9a9'::uuid, '8b6b1fce-29fe-5268-ab56-fe53e689e098'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('13c5d930-722d-52ee-8105-94c9aefc23ed'::uuid, '8b6b1fce-29fe-5268-ab56-fe53e689e098'::uuid, '03d924c7-38c5-5e68-8929-cfb838a4b9a9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8e12e5d4-ac7a-564c-9a86-efb0bed9a2a2'::uuid, '03d924c7-38c5-5e68-8929-cfb838a4b9a9'::uuid, '8b6b1fce-29fe-5268-ab56-fe53e689e098'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b52b52f1-01af-5438-a138-11f86260677c'::uuid, 'df3e1c62-4247-510c-80e8-205376b04cf6'::uuid, 'c8f46057-70bf-5ff9-b0da-9eed0f520276'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;
