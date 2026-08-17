INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6238bd7e-fabd-5855-9505-45b429e0af0e'::uuid,
  'ad5e9651-b297-5be6-b278-11f4992ac079'::uuid,
  '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid,
  'ade99177-449e-5b6c-b3ed-6600e8ee7b8b'::uuid,
  'Hi Tara — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ca5458f0-5318-5b3d-b04a-50ab47f127aa'::uuid,
  'ad5e9651-b297-5be6-b278-11f4992ac079'::uuid,
  'ade99177-449e-5b6c-b3ed-6600e8ee7b8b'::uuid,
  '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid,
  'Thanks Kai! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ecfe21ac-760c-53f4-9597-a6a881136b65'::uuid, '1930b2bd-9292-5ae1-8aa8-87ba01cf39b3'::uuid, '1f4552e1-d512-585b-9efa-c5fa6d387b36'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7a029d3b-bb35-5958-84e1-9f38b0953302'::uuid, '1f4552e1-d512-585b-9efa-c5fa6d387b36'::uuid, '1930b2bd-9292-5ae1-8aa8-87ba01cf39b3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1cb0ee32-c0ad-5393-82f9-d1a01364ba28'::uuid, '1930b2bd-9292-5ae1-8aa8-87ba01cf39b3'::uuid, '1f4552e1-d512-585b-9efa-c5fa6d387b36'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('34eece64-206d-5051-9144-aa44ec1e152f'::uuid, '113d16a0-5709-5fb9-8d07-e289327584ed'::uuid, 'e689d62a-1c67-5a79-87ec-81b794bd9c0f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b5a656a0-3182-5fc0-a46d-447f56911309'::uuid, 'e689d62a-1c67-5a79-87ec-81b794bd9c0f'::uuid, '113d16a0-5709-5fb9-8d07-e289327584ed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6e22031b-7e60-5565-880d-914f8dee157a'::uuid, '113d16a0-5709-5fb9-8d07-e289327584ed'::uuid, 'e689d62a-1c67-5a79-87ec-81b794bd9c0f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3e22ae5b-f934-5ee8-903f-5858b5eda96a'::uuid,
  '6e22031b-7e60-5565-880d-914f8dee157a'::uuid,
  '113d16a0-5709-5fb9-8d07-e289327584ed'::uuid,
  'e689d62a-1c67-5a79-87ec-81b794bd9c0f'::uuid,
  'Hi Imani — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '41f34508-044c-5c95-bb39-ec1ff47d54fc'::uuid,
  '6e22031b-7e60-5565-880d-914f8dee157a'::uuid,
  'e689d62a-1c67-5a79-87ec-81b794bd9c0f'::uuid,
  '113d16a0-5709-5fb9-8d07-e289327584ed'::uuid,
  'Thanks Benjamin! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3adea482-4015-5a08-a6c4-41f2b2264d73'::uuid, '113d16a0-5709-5fb9-8d07-e289327584ed'::uuid, '246bcb7d-f6ac-555a-b9a5-8c11a5d0f5d2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c76ed023-f36a-5915-bde1-235118c19542'::uuid, '246bcb7d-f6ac-555a-b9a5-8c11a5d0f5d2'::uuid, '113d16a0-5709-5fb9-8d07-e289327584ed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ed7860ce-90ab-55bd-a6ac-628e15b892c5'::uuid, '113d16a0-5709-5fb9-8d07-e289327584ed'::uuid, '246bcb7d-f6ac-555a-b9a5-8c11a5d0f5d2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8404ad22-4591-5f60-b4e7-56604d42ee44'::uuid, 'ed19adb5-3942-532c-aeef-104ad492eab3'::uuid, '7b408ed2-1e1b-5814-8f06-42702ec39ff5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('089f3b8c-d2f5-5d97-96ff-b9f2f321343b'::uuid, '7b408ed2-1e1b-5814-8f06-42702ec39ff5'::uuid, 'ed19adb5-3942-532c-aeef-104ad492eab3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1525b5aa-eb3c-522d-8855-2ee5608841b4'::uuid, '7b408ed2-1e1b-5814-8f06-42702ec39ff5'::uuid, 'ed19adb5-3942-532c-aeef-104ad492eab3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0b8b3573-2cca-545f-86f0-94bfc5f2627c'::uuid,
  '1525b5aa-eb3c-522d-8855-2ee5608841b4'::uuid,
  'ed19adb5-3942-532c-aeef-104ad492eab3'::uuid,
  '7b408ed2-1e1b-5814-8f06-42702ec39ff5'::uuid,
  'Hi Noah — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '77855baa-3390-5a94-acca-4deae8f59dc5'::uuid,
  '1525b5aa-eb3c-522d-8855-2ee5608841b4'::uuid,
  '7b408ed2-1e1b-5814-8f06-42702ec39ff5'::uuid,
  'ed19adb5-3942-532c-aeef-104ad492eab3'::uuid,
  'Thanks Ava! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1e92f887-eba6-59dc-b357-3e304e9a3e31'::uuid, 'd708a5b4-b620-51f1-80dc-cab1cf1aba19'::uuid, '9324daab-fb79-5728-896a-07ab22a4beb6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('80815577-a541-5240-82f9-ec62ac18cabc'::uuid, '9324daab-fb79-5728-896a-07ab22a4beb6'::uuid, 'd708a5b4-b620-51f1-80dc-cab1cf1aba19'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a2d7445b-042b-5b78-8992-3318badc87d2'::uuid, '9324daab-fb79-5728-896a-07ab22a4beb6'::uuid, 'd708a5b4-b620-51f1-80dc-cab1cf1aba19'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5f9bcbb1-4791-5fad-a6fe-2165eb0e57bd'::uuid, '13eeb55e-7dde-51bb-b7f5-3db2c62e28e7'::uuid, '613b2f0f-fb54-55e5-95a9-2be7539b4ec3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6635bb9e-0ed9-5b6b-b89d-dcbf343feda0'::uuid, '613b2f0f-fb54-55e5-95a9-2be7539b4ec3'::uuid, '13eeb55e-7dde-51bb-b7f5-3db2c62e28e7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f4de18cf-becd-5540-9950-fb32514e5e8a'::uuid, '13eeb55e-7dde-51bb-b7f5-3db2c62e28e7'::uuid, '613b2f0f-fb54-55e5-95a9-2be7539b4ec3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '052328bf-da44-581d-833b-073a4bde87d8'::uuid,
  'f4de18cf-becd-5540-9950-fb32514e5e8a'::uuid,
  '13eeb55e-7dde-51bb-b7f5-3db2c62e28e7'::uuid,
  '613b2f0f-fb54-55e5-95a9-2be7539b4ec3'::uuid,
  'Hi Ethan — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4fa7e40e-e7a6-52e5-b3f6-eb1341af019a'::uuid,
  'f4de18cf-becd-5540-9950-fb32514e5e8a'::uuid,
  '613b2f0f-fb54-55e5-95a9-2be7539b4ec3'::uuid,
  '13eeb55e-7dde-51bb-b7f5-3db2c62e28e7'::uuid,
  'Thanks Amina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c841db22-539b-51ca-b520-baf3649cb697'::uuid, '32c996f0-f86e-5230-9f69-860c68c2a67c'::uuid, 'bdbffa25-5dda-547c-904d-3abab742a813'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6d7f6785-3544-5eb9-88b9-0be7826c7705'::uuid, 'bdbffa25-5dda-547c-904d-3abab742a813'::uuid, '32c996f0-f86e-5230-9f69-860c68c2a67c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4891c54a-eea1-510d-b1e2-310a08b9fd7a'::uuid, '32c996f0-f86e-5230-9f69-860c68c2a67c'::uuid, 'bdbffa25-5dda-547c-904d-3abab742a813'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ea4b4b44-758b-5978-868e-f7b192d55442'::uuid, '09f6f046-2d8f-58d1-be5f-2a968e9c243e'::uuid, 'e57c50be-fd3b-5bcb-a5e2-fc50014c7bf9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ed1e636e-ccd3-5277-8c2d-0988974f3004'::uuid, 'e57c50be-fd3b-5bcb-a5e2-fc50014c7bf9'::uuid, '09f6f046-2d8f-58d1-be5f-2a968e9c243e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b32570e7-587e-5ef9-bafa-2c20c34c50c4'::uuid, '09f6f046-2d8f-58d1-be5f-2a968e9c243e'::uuid, 'e57c50be-fd3b-5bcb-a5e2-fc50014c7bf9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0bb4db0c-2ea6-5681-a81c-b37bb03c23b0'::uuid,
  'b32570e7-587e-5ef9-bafa-2c20c34c50c4'::uuid,
  '09f6f046-2d8f-58d1-be5f-2a968e9c243e'::uuid,
  'e57c50be-fd3b-5bcb-a5e2-fc50014c7bf9'::uuid,
  'Hi Caleb — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9f492ec8-1b92-57bc-8b21-2dc80cde64a5'::uuid,
  'b32570e7-587e-5ef9-bafa-2c20c34c50c4'::uuid,
  'e57c50be-fd3b-5bcb-a5e2-fc50014c7bf9'::uuid,
  '09f6f046-2d8f-58d1-be5f-2a968e9c243e'::uuid,
  'Thanks Hannah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0a63ebc8-b180-565e-82e6-60fd06a16587'::uuid, '09f6f046-2d8f-58d1-be5f-2a968e9c243e'::uuid, '03d08a86-991b-58ec-aed4-2669d15698ab'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('af0bb8f5-51c9-53f0-993c-51229e1008f0'::uuid, '03d08a86-991b-58ec-aed4-2669d15698ab'::uuid, '09f6f046-2d8f-58d1-be5f-2a968e9c243e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7de30ec4-5d11-5150-8a0e-ba14f9f8cbb5'::uuid, '03d08a86-991b-58ec-aed4-2669d15698ab'::uuid, '09f6f046-2d8f-58d1-be5f-2a968e9c243e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9e43bd0d-c903-561d-9c2c-56ce5b3ee6fe'::uuid, '3ded6ddb-d842-54f0-abf2-3e272b3178be'::uuid, '411c1778-e6b2-5e2a-bd42-945f2962ece3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dd740fb9-fd3b-5b90-ba08-cc04bc518e50'::uuid, '411c1778-e6b2-5e2a-bd42-945f2962ece3'::uuid, '3ded6ddb-d842-54f0-abf2-3e272b3178be'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('214318e4-62d4-51f2-ba0a-5ee49b841897'::uuid, '3ded6ddb-d842-54f0-abf2-3e272b3178be'::uuid, '411c1778-e6b2-5e2a-bd42-945f2962ece3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;