INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '71b236ed-eec1-5611-9c49-8f5b15410c48'::uuid,
  '00e72279-faf9-5454-8b40-9e103ecfcaed'::uuid,
  'cc1db32d-aecf-5367-82a6-742e79691a64'::uuid,
  'da23348a-cb61-5775-bac1-f4088289d969'::uuid,
  'Hi Benjamin — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c293e1c7-fb30-5224-8677-01fde174a1b9'::uuid,
  '00e72279-faf9-5454-8b40-9e103ecfcaed'::uuid,
  'da23348a-cb61-5775-bac1-f4088289d969'::uuid,
  'cc1db32d-aecf-5367-82a6-742e79691a64'::uuid,
  'Thanks Nadia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('496de158-575a-50c6-8d2e-9a59ebc45b6c'::uuid, '8bb8a23a-9edf-5a77-92bb-92fa6ea26628'::uuid, 'e9cf01e2-c731-5f25-a3b2-0abccfa7cfbe'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f442c5a6-6a08-5d9e-86fa-84f5a4f70ccf'::uuid, 'e9cf01e2-c731-5f25-a3b2-0abccfa7cfbe'::uuid, '8bb8a23a-9edf-5a77-92bb-92fa6ea26628'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a97c12e9-ccfc-58fc-97e5-26683c78fa1d'::uuid, '8bb8a23a-9edf-5a77-92bb-92fa6ea26628'::uuid, 'e9cf01e2-c731-5f25-a3b2-0abccfa7cfbe'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('23b802eb-b820-5072-bf4e-5e23805999ea'::uuid, 'ce7769bd-532f-5bdc-ad75-945193340435'::uuid, '456b2ac9-0110-5359-b6a9-24f1909a0f8f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a9f50555-5b6f-5ec5-b345-e05932b2fece'::uuid, '456b2ac9-0110-5359-b6a9-24f1909a0f8f'::uuid, 'ce7769bd-532f-5bdc-ad75-945193340435'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c2903487-cda3-5929-896f-97869d74f6f9'::uuid, '456b2ac9-0110-5359-b6a9-24f1909a0f8f'::uuid, 'ce7769bd-532f-5bdc-ad75-945193340435'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '457db7bf-70ba-5e2f-8e03-2b3b019560ca'::uuid,
  'c2903487-cda3-5929-896f-97869d74f6f9'::uuid,
  'ce7769bd-532f-5bdc-ad75-945193340435'::uuid,
  '456b2ac9-0110-5359-b6a9-24f1909a0f8f'::uuid,
  'Hi Sebastian — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f82f489f-11ba-539f-9c4a-4407ac6e50ed'::uuid,
  'c2903487-cda3-5929-896f-97869d74f6f9'::uuid,
  '456b2ac9-0110-5359-b6a9-24f1909a0f8f'::uuid,
  'ce7769bd-532f-5bdc-ad75-945193340435'::uuid,
  'Thanks Mei! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('29530031-66e1-54cb-8976-3882c8a4aa17'::uuid, 'ce7769bd-532f-5bdc-ad75-945193340435'::uuid, '8b6b1fce-29fe-5268-ab56-fe53e689e098'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1eb23ca6-3335-5808-82b3-d91533c527e0'::uuid, '8b6b1fce-29fe-5268-ab56-fe53e689e098'::uuid, 'ce7769bd-532f-5bdc-ad75-945193340435'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fec390c7-74f3-5a05-a3be-6758ddc36659'::uuid, '8b6b1fce-29fe-5268-ab56-fe53e689e098'::uuid, 'ce7769bd-532f-5bdc-ad75-945193340435'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('133cf66b-d42f-5268-8aba-a02d8ba358fd'::uuid, '2d1a6824-fe3c-5305-a454-69c87e85e8e6'::uuid, '35a428fe-b59e-5243-9778-10ebb91a070a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('623a71d3-b736-55ca-b6a5-28c747395369'::uuid, '35a428fe-b59e-5243-9778-10ebb91a070a'::uuid, '2d1a6824-fe3c-5305-a454-69c87e85e8e6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0370afe6-916c-51ed-95c0-fb84869f45eb'::uuid, '2d1a6824-fe3c-5305-a454-69c87e85e8e6'::uuid, '35a428fe-b59e-5243-9778-10ebb91a070a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '50b8bdda-1fc4-5dad-8eea-6522812d8f50'::uuid,
  '0370afe6-916c-51ed-95c0-fb84869f45eb'::uuid,
  '2d1a6824-fe3c-5305-a454-69c87e85e8e6'::uuid,
  '35a428fe-b59e-5243-9778-10ebb91a070a'::uuid,
  'Hi Amina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0cd59925-01e7-596a-b264-c9996c572e68'::uuid,
  '0370afe6-916c-51ed-95c0-fb84869f45eb'::uuid,
  '35a428fe-b59e-5243-9778-10ebb91a070a'::uuid,
  '2d1a6824-fe3c-5305-a454-69c87e85e8e6'::uuid,
  'Thanks Henry! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5544d1c8-291b-59ed-a438-7feb4a5000f0'::uuid, 'd899293f-c851-5a79-94e1-f335e67d7e3d'::uuid, '3a305db2-a0f9-5bd9-94ce-ca6892b43188'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('19fabf24-dd7b-59c0-93ac-90d4f8fd3a9f'::uuid, '3a305db2-a0f9-5bd9-94ce-ca6892b43188'::uuid, 'd899293f-c851-5a79-94e1-f335e67d7e3d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('08b37f87-3b93-5f55-b9f0-062a9593b881'::uuid, '3a305db2-a0f9-5bd9-94ce-ca6892b43188'::uuid, 'd899293f-c851-5a79-94e1-f335e67d7e3d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d8c2ea59-0e66-582d-b171-560eab437243'::uuid, '0cc4fabb-a80c-55be-8e1f-cffdf500b737'::uuid, '70103f92-ccdb-5034-9fc6-6c6543caddfc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('62851d4e-d04d-5932-90d2-8dc30dde0844'::uuid, '70103f92-ccdb-5034-9fc6-6c6543caddfc'::uuid, '0cc4fabb-a80c-55be-8e1f-cffdf500b737'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d1511ba4-b9e9-5a49-ae0b-8200061642ac'::uuid, '0cc4fabb-a80c-55be-8e1f-cffdf500b737'::uuid, '70103f92-ccdb-5034-9fc6-6c6543caddfc'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'de4ff816-94c0-5fc9-b2ad-3d8e3f5bd2c5'::uuid,
  'd1511ba4-b9e9-5a49-ae0b-8200061642ac'::uuid,
  '0cc4fabb-a80c-55be-8e1f-cffdf500b737'::uuid,
  '70103f92-ccdb-5034-9fc6-6c6543caddfc'::uuid,
  'Hi Hannah — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '54ef4029-f3b7-53d3-8a96-7946331e0d79'::uuid,
  'd1511ba4-b9e9-5a49-ae0b-8200061642ac'::uuid,
  '70103f92-ccdb-5034-9fc6-6c6543caddfc'::uuid,
  '0cc4fabb-a80c-55be-8e1f-cffdf500b737'::uuid,
  'Thanks Nathan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5fbb8fb1-8497-55f6-9b7e-850026d57e31'::uuid, '770fdfc7-b37c-557f-aa86-9108d6059d54'::uuid, 'e3b015fb-e2b1-5f62-9882-ced1747b09f9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5573c0eb-cf50-5ec5-aa38-a1a9294a0a4f'::uuid, 'e3b015fb-e2b1-5f62-9882-ced1747b09f9'::uuid, '770fdfc7-b37c-557f-aa86-9108d6059d54'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('04448ca1-dd3b-5af5-af45-96f3c800a4c2'::uuid, '770fdfc7-b37c-557f-aa86-9108d6059d54'::uuid, 'e3b015fb-e2b1-5f62-9882-ced1747b09f9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('33038781-1a27-51da-927d-8f7d4268cdd5'::uuid, 'cd6a5266-d788-5ee5-87b0-0034c508c35a'::uuid, 'a422bbc4-90f3-569d-90f8-8c220153f0b4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('545b4394-1159-5cca-87f6-a8c6804768a5'::uuid, 'a422bbc4-90f3-569d-90f8-8c220153f0b4'::uuid, 'cd6a5266-d788-5ee5-87b0-0034c508c35a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('70d31345-0099-5aaa-85aa-db630a28aa50'::uuid, 'a422bbc4-90f3-569d-90f8-8c220153f0b4'::uuid, 'cd6a5266-d788-5ee5-87b0-0034c508c35a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c29ffcdf-8b20-50be-a385-32761014496b'::uuid,
  '70d31345-0099-5aaa-85aa-db630a28aa50'::uuid,
  'cd6a5266-d788-5ee5-87b0-0034c508c35a'::uuid,
  'a422bbc4-90f3-569d-90f8-8c220153f0b4'::uuid,
  'Hi Nora — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9aeaebbc-53a4-552f-b4c4-1b6a4c44e1f6'::uuid,
  '70d31345-0099-5aaa-85aa-db630a28aa50'::uuid,
  'a422bbc4-90f3-569d-90f8-8c220153f0b4'::uuid,
  'cd6a5266-d788-5ee5-87b0-0034c508c35a'::uuid,
  'Thanks Omar! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('88b98c06-37cb-5b12-ab55-4c612aca69ac'::uuid, 'cd6a5266-d788-5ee5-87b0-0034c508c35a'::uuid, '728e8630-512a-51eb-9316-3e71371d2478'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0f459b8a-a7cc-5b51-a7d9-f507cc59ecd3'::uuid, '728e8630-512a-51eb-9316-3e71371d2478'::uuid, 'cd6a5266-d788-5ee5-87b0-0034c508c35a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6e7e67cf-6ec4-54e3-8628-d7233a08bd32'::uuid, '728e8630-512a-51eb-9316-3e71371d2478'::uuid, 'cd6a5266-d788-5ee5-87b0-0034c508c35a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('25c8b939-2231-5247-a4ce-721177505c6a'::uuid, '4b5ce663-76c6-53ea-9e74-cedb914dfad3'::uuid, '2f973087-14f2-5e74-b267-236219d92b2b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e25caeca-2154-50a2-bef8-f55a58a95319'::uuid, '2f973087-14f2-5e74-b267-236219d92b2b'::uuid, '4b5ce663-76c6-53ea-9e74-cedb914dfad3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e4be50fe-dff9-5e8e-b7f8-aa5c745fd756'::uuid, '2f973087-14f2-5e74-b267-236219d92b2b'::uuid, '4b5ce663-76c6-53ea-9e74-cedb914dfad3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;