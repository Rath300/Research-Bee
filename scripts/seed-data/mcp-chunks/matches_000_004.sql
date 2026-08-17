INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('024150f5-9743-5ccc-a831-2b54f4407f8a'::uuid, '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid, '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6eda4f9c-3f69-5948-93a5-96e013f11be4'::uuid, '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid, '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e654fc87-2401-5a52-b78a-92c33d22486c'::uuid, 'cf10333a-2152-5178-8468-d28b33af4122'::uuid, '8b3647c6-c5a6-5d0a-b381-3c9ed7bf1a2c'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('60f5bab1-30be-5487-8fb9-960fca0c6b45'::uuid, '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid, '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4a9f1bee-39c0-5ec4-832f-e1ba62d9b271'::uuid, '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid, '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f7181134-6649-5886-8a02-b599b8bd4e34'::uuid, '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid, '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f9067847-4dd8-5b2b-a5a4-50f87d913b7c'::uuid,
  'f7181134-6649-5886-8a02-b599b8bd4e34'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  'Hi Benjamin — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5d40c665-c686-5e94-9083-7d8568b1c997'::uuid,
  'f7181134-6649-5886-8a02-b599b8bd4e34'::uuid,
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid,
  'Thanks Nadia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('07c4fa1a-0f5c-51cc-9049-24d6d65405a9'::uuid, 'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid, '141c92ef-d422-58bc-90d5-247e09ea80e4'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c64b68bb-3de3-5613-9914-31986ec81a37'::uuid, 'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid, '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('91597236-208c-54f3-9272-2b5f60105ff1'::uuid, '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid, 'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d09db5da-9aa3-5c1a-b02c-1d1854067159'::uuid, '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid, 'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bbe6257a-29ae-59f6-98ec-74c272837dfa'::uuid, 'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid, 'ff2a2b72-aacc-562d-876e-9a52304bd7a0'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('84209aae-0ca7-5ba7-bba5-826758d45bf8'::uuid, 'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid, 'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a9101339-17a2-54c8-acf6-c711f2db6725'::uuid, 'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid, 'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d8a4ce17-a37c-51dc-934c-ea847735350b'::uuid, 'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid, 'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f4e0a535-0277-525f-8c43-1008448d2c41'::uuid,
  'd8a4ce17-a37c-51dc-934c-ea847735350b'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid,
  'Hi Sebastian — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '74f53bca-cfb3-5204-a9a0-a8a844066d78'::uuid,
  'd8a4ce17-a37c-51dc-934c-ea847735350b'::uuid,
  'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid,
  'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid,
  'Thanks Mei! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('da5d3420-3101-598e-bd73-6da7384243b4'::uuid, 'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid, '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d7c7e7bc-42a3-54fc-8e13-936e754c7233'::uuid, '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid, 'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a2888107-19b1-5460-8c45-cab80b9815b7'::uuid, '98ecb9b0-0e91-5dca-a993-8f405c25082e'::uuid, 'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f7b4036b-bae6-5e8a-9492-695ae23049cb'::uuid, 'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid, 'fbfd9e14-c1b3-5fdd-9997-63ce47de5223'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6cfea153-6465-5b3d-935f-ca5cc658155e'::uuid, '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid, 'cf10333a-2152-5178-8468-d28b33af4122'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7cde5606-0906-59c0-8252-8b38179556b2'::uuid, 'cf10333a-2152-5178-8468-d28b33af4122'::uuid, '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a8cd0501-c179-5c6e-bc0f-b2f09c32d7ea'::uuid, '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid, 'cf10333a-2152-5178-8468-d28b33af4122'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c553f782-6369-5337-9d5f-800575a02940'::uuid,
  'a8cd0501-c179-5c6e-bc0f-b2f09c32d7ea'::uuid,
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  'Hi Amina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e17e59c1-966b-5da1-a5d1-7ad24094cdd7'::uuid,
  'a8cd0501-c179-5c6e-bc0f-b2f09c32d7ea'::uuid,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid,
  'Thanks Henry! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1769e2be-b38a-5b48-adff-c37852e597d1'::uuid, 'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid, '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4aad7a83-3197-5c2e-959a-0afe213a94f2'::uuid, 'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid, 'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2b928b2b-1416-57e6-8f53-6ddc5486b101'::uuid, 'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid, 'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a3456903-4e72-50b2-a656-779ea15f8da8'::uuid, 'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid, 'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1ec6c5c6-bd28-5ace-b6ac-75bbc1677ecb'::uuid, '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid, 'ecda9e9a-9d5f-564d-b7ba-2c13bf75ae56'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('40c8ca17-3962-53d5-81d0-d0777bb10503'::uuid, '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid, 'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ad3939bb-a66f-5ba7-8de2-f8fe2ff91792'::uuid, 'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid, '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4238aef9-3bf8-50a4-9980-8163c4e9fc8a'::uuid, '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid, 'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c5e3e045-dff9-5b93-8cf5-18e566926b2f'::uuid,
  '4238aef9-3bf8-50a4-9980-8163c4e9fc8a'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  'Hi Hannah — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '74f045e9-e462-5069-abc6-6be19a3e883a'::uuid,
  '4238aef9-3bf8-50a4-9980-8163c4e9fc8a'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid,
  'Thanks Nathan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3497fb34-2987-5801-893c-fee3fa7c7756'::uuid, '920410e2-89ac-581b-95cc-1c86177f436b'::uuid, '501b1980-4f2e-559e-a732-fb5f6ddf50e8'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('35111f39-c442-5cf4-ad56-2619aad7db18'::uuid, 'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid, 'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ee7a9e31-d0ab-570b-b1ff-8dea3e93f1c0'::uuid, 'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid, 'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;