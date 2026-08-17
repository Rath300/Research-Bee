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