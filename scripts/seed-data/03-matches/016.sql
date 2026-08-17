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

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c53da62c-359a-5297-ad48-a57a59c3f00c'::uuid,
  '214318e4-62d4-51f2-ba0a-5ee49b841897'::uuid,
  '3ded6ddb-d842-54f0-abf2-3e272b3178be'::uuid,
  '411c1778-e6b2-5e2a-bd42-945f2962ece3'::uuid,
  'Hi Sana — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2d8a0abb-ed8f-5fea-9a49-55241952d191'::uuid,
  '214318e4-62d4-51f2-ba0a-5ee49b841897'::uuid,
  '411c1778-e6b2-5e2a-bd42-945f2962ece3'::uuid,
  '3ded6ddb-d842-54f0-abf2-3e272b3178be'::uuid,
  'Thanks Julian! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e21811a6-7e9b-5d3e-8f81-747e98b92375'::uuid, 'b8aa1b83-3c0a-53f5-a401-eacdd52c5a59'::uuid, '7ef20ab1-ba74-5bbd-8474-5509bd90af81'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('945ba5ac-2b50-5283-9ce6-d024ddfbd3fe'::uuid, '7ef20ab1-ba74-5bbd-8474-5509bd90af81'::uuid, 'b8aa1b83-3c0a-53f5-a401-eacdd52c5a59'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dc45e4c0-ddef-54e9-b6ea-0282021d47d1'::uuid, '7ef20ab1-ba74-5bbd-8474-5509bd90af81'::uuid, 'b8aa1b83-3c0a-53f5-a401-eacdd52c5a59'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('daf5559e-820d-50e1-ba94-9ac71bcd7675'::uuid, 'b2898457-57d2-5375-845d-3da865e52c68'::uuid, '43b38cd0-7ecb-53bb-86c7-76bed869d19f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('43514be0-59f2-5c75-9f35-b274da2c298a'::uuid, '43b38cd0-7ecb-53bb-86c7-76bed869d19f'::uuid, 'b2898457-57d2-5375-845d-3da865e52c68'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('706e3327-50f9-5038-b834-3f62978c8399'::uuid, '43b38cd0-7ecb-53bb-86c7-76bed869d19f'::uuid, 'b2898457-57d2-5375-845d-3da865e52c68'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3faef435-1000-501c-bd19-88621ccf081c'::uuid,
  '706e3327-50f9-5038-b834-3f62978c8399'::uuid,
  'b2898457-57d2-5375-845d-3da865e52c68'::uuid,
  '43b38cd0-7ecb-53bb-86c7-76bed869d19f'::uuid,
  'Hi Hana — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0cdee981-813c-5f80-993f-b06efce32573'::uuid,
  '706e3327-50f9-5038-b834-3f62978c8399'::uuid,
  '43b38cd0-7ecb-53bb-86c7-76bed869d19f'::uuid,
  'b2898457-57d2-5375-845d-3da865e52c68'::uuid,
  'Thanks Isaac! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8ab478c7-96c4-5674-99e5-004424acc43f'::uuid, '90318e9c-7673-5d60-8f47-d5f4fd26dbd6'::uuid, '601a15d3-ba12-5ed0-8b38-d924a5e127f4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('68e93f3c-8935-5653-b860-d607a23c3440'::uuid, '601a15d3-ba12-5ed0-8b38-d924a5e127f4'::uuid, '90318e9c-7673-5d60-8f47-d5f4fd26dbd6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bc6cc298-b0bd-5f31-b683-a3b159bc975a'::uuid, '601a15d3-ba12-5ed0-8b38-d924a5e127f4'::uuid, '90318e9c-7673-5d60-8f47-d5f4fd26dbd6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8d92249e-6a6e-5830-ad2f-dd53b368c679'::uuid, '90c6682a-8f8a-58a6-852c-1f4842a5def5'::uuid, '8d53c389-fe52-5d2a-9fe2-d66af24c329d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('75b4a107-e4e0-5e7d-8fca-a53295016e97'::uuid, '8d53c389-fe52-5d2a-9fe2-d66af24c329d'::uuid, '90c6682a-8f8a-58a6-852c-1f4842a5def5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3bf9cb4c-6731-5fff-a056-0abb9742fb82'::uuid, '8d53c389-fe52-5d2a-9fe2-d66af24c329d'::uuid, '90c6682a-8f8a-58a6-852c-1f4842a5def5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'dcc7aa55-ff60-58b7-ba9e-a4ebec555b5e'::uuid,
  '3bf9cb4c-6731-5fff-a056-0abb9742fb82'::uuid,
  '90c6682a-8f8a-58a6-852c-1f4842a5def5'::uuid,
  '8d53c389-fe52-5d2a-9fe2-d66af24c329d'::uuid,
  'Hi Elena — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd2c5d14d-c27d-5351-b359-a0c08a101d83'::uuid,
  '3bf9cb4c-6731-5fff-a056-0abb9742fb82'::uuid,
  '8d53c389-fe52-5d2a-9fe2-d66af24c329d'::uuid,
  '90c6682a-8f8a-58a6-852c-1f4842a5def5'::uuid,
  'Thanks Felix! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('836e727d-823b-577f-b401-4d593f0446ff'::uuid, '90c6682a-8f8a-58a6-852c-1f4842a5def5'::uuid, 'd3f36a02-cd5b-55ce-ad08-55cabb0f2e7b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0eed067e-dfb3-5a2e-a75a-f76d95f58086'::uuid, 'd3f36a02-cd5b-55ce-ad08-55cabb0f2e7b'::uuid, '90c6682a-8f8a-58a6-852c-1f4842a5def5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1d77efd7-ddab-5c9e-a35c-7329127f8e16'::uuid, '90c6682a-8f8a-58a6-852c-1f4842a5def5'::uuid, 'd3f36a02-cd5b-55ce-ad08-55cabb0f2e7b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5d85fcd4-b465-5a99-98ca-bea630749a55'::uuid, '5cd17e21-fe4e-5ed4-b394-0f20f92ff70b'::uuid, '082a2d5f-3bf4-561b-af30-d0b06299b4ba'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e6856281-5af8-590a-9232-d179a9cb2a64'::uuid, '082a2d5f-3bf4-561b-af30-d0b06299b4ba'::uuid, '5cd17e21-fe4e-5ed4-b394-0f20f92ff70b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fe97c3db-364e-5a97-8021-7bf3ce98e49f'::uuid, '082a2d5f-3bf4-561b-af30-d0b06299b4ba'::uuid, '5cd17e21-fe4e-5ed4-b394-0f20f92ff70b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '12970841-66a1-584d-aaca-af4769b531c5'::uuid,
  'fe97c3db-364e-5a97-8021-7bf3ce98e49f'::uuid,
  '5cd17e21-fe4e-5ed4-b394-0f20f92ff70b'::uuid,
  '082a2d5f-3bf4-561b-af30-d0b06299b4ba'::uuid,
  'Hi Rohan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ae878c87-c2b3-57a3-9b6e-d0ec382a1954'::uuid,
  'fe97c3db-364e-5a97-8021-7bf3ce98e49f'::uuid,
  '082a2d5f-3bf4-561b-af30-d0b06299b4ba'::uuid,
  '5cd17e21-fe4e-5ed4-b394-0f20f92ff70b'::uuid,
  'Thanks Sara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2f465046-8822-5f6d-9f8f-b708ffe154fb'::uuid, '3d8d5666-d328-525f-af6f-5d62770e273a'::uuid, '3ac0579f-90fa-5ec3-a6b9-b42e7d425f0f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8abd4d65-12ca-52c5-8f16-4d41d0804a1d'::uuid, '3ac0579f-90fa-5ec3-a6b9-b42e7d425f0f'::uuid, '3d8d5666-d328-525f-af6f-5d62770e273a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8e486df6-3a8b-5e39-befe-1f9cc6e9e994'::uuid, '3ac0579f-90fa-5ec3-a6b9-b42e7d425f0f'::uuid, '3d8d5666-d328-525f-af6f-5d62770e273a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ff97750d-54df-5d82-a88b-f1eac54609cd'::uuid, 'eab6b3ab-8b1a-55f2-98e3-08e308d55581'::uuid, '5da55f8b-d3b7-530d-a326-88e4303e90db'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cbd8214d-2708-5db2-85ba-8115c9554fdd'::uuid, '5da55f8b-d3b7-530d-a326-88e4303e90db'::uuid, 'eab6b3ab-8b1a-55f2-98e3-08e308d55581'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0461a378-6784-5894-a0f4-2a35472c71e9'::uuid, '5da55f8b-d3b7-530d-a326-88e4303e90db'::uuid, 'eab6b3ab-8b1a-55f2-98e3-08e308d55581'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '27b9fc9c-5f75-5be6-bbe5-29d23de11892'::uuid,
  '0461a378-6784-5894-a0f4-2a35472c71e9'::uuid,
  'eab6b3ab-8b1a-55f2-98e3-08e308d55581'::uuid,
  '5da55f8b-d3b7-530d-a326-88e4303e90db'::uuid,
  'Hi Samir — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b0830ac2-f83e-5531-93c8-9207653552c8'::uuid,
  '0461a378-6784-5894-a0f4-2a35472c71e9'::uuid,
  '5da55f8b-d3b7-530d-a326-88e4303e90db'::uuid,
  'eab6b3ab-8b1a-55f2-98e3-08e308d55581'::uuid,
  'Thanks Grace! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7930fd72-2dab-5034-9c2d-cb51ba1bdc19'::uuid, '909cb930-459e-5e27-b948-adfab9f63565'::uuid, '789cb839-9c80-5444-ae46-de39fa27b287'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('53023752-30b6-513a-8cc4-d6a8da27b9c5'::uuid, '789cb839-9c80-5444-ae46-de39fa27b287'::uuid, '909cb930-459e-5e27-b948-adfab9f63565'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d727d0e2-0a4b-5efb-8a60-d9d9875bb73a'::uuid, '789cb839-9c80-5444-ae46-de39fa27b287'::uuid, '909cb930-459e-5e27-b948-adfab9f63565'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('989dc28a-a069-50bf-9076-c98bf4c5660f'::uuid, '00ef4dfa-c228-537e-9a85-59448ff863f9'::uuid, '62d73a72-61fa-5bba-b89f-1aab728b4b14'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cf884ed0-90cf-5c57-a7a8-12b620a33420'::uuid, '62d73a72-61fa-5bba-b89f-1aab728b4b14'::uuid, '00ef4dfa-c228-537e-9a85-59448ff863f9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9093d58d-8905-5eda-b136-0016b76f1d8c'::uuid, '00ef4dfa-c228-537e-9a85-59448ff863f9'::uuid, '62d73a72-61fa-5bba-b89f-1aab728b4b14'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3867c861-4268-5d20-900e-a6e9c46100c8'::uuid,
  '9093d58d-8905-5eda-b136-0016b76f1d8c'::uuid,
  '00ef4dfa-c228-537e-9a85-59448ff863f9'::uuid,
  '62d73a72-61fa-5bba-b89f-1aab728b4b14'::uuid,
  'Hi Daniel — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '557d7500-045e-5388-9f7f-5003e601f7c0'::uuid,
  '9093d58d-8905-5eda-b136-0016b76f1d8c'::uuid,
  '62d73a72-61fa-5bba-b89f-1aab728b4b14'::uuid,
  '00ef4dfa-c228-537e-9a85-59448ff863f9'::uuid,
  'Thanks Isla! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5f2b421b-7dda-55e8-ab92-d15fb56e5c49'::uuid, '00ef4dfa-c228-537e-9a85-59448ff863f9'::uuid, '6d947ae2-d338-5a25-a719-fc615fbecd70'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('04b4848a-7fc6-5600-af83-f8c1314228a9'::uuid, '6d947ae2-d338-5a25-a719-fc615fbecd70'::uuid, '00ef4dfa-c228-537e-9a85-59448ff863f9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cc258da7-b5d9-550a-84d9-f379bd8bc9fb'::uuid, '00ef4dfa-c228-537e-9a85-59448ff863f9'::uuid, '6d947ae2-d338-5a25-a719-fc615fbecd70'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4cf14849-2fca-523f-852b-47db109f9619'::uuid, '8c8802de-eb32-550b-88b8-412797aef970'::uuid, '89156783-853d-5a14-aea6-b545cfc146a5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d1b2cfd1-e810-5ac5-940e-cfad993ffdf1'::uuid, '89156783-853d-5a14-aea6-b545cfc146a5'::uuid, '8c8802de-eb32-550b-88b8-412797aef970'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b78a193b-3851-5159-b651-64f40d708ceb'::uuid, '89156783-853d-5a14-aea6-b545cfc146a5'::uuid, '8c8802de-eb32-550b-88b8-412797aef970'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '53c646de-f667-5591-97a0-3cf6dd5ffb04'::uuid,
  'b78a193b-3851-5159-b651-64f40d708ceb'::uuid,
  '8c8802de-eb32-550b-88b8-412797aef970'::uuid,
  '89156783-853d-5a14-aea6-b545cfc146a5'::uuid,
  'Hi Nina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd9ec07cb-0a52-58dc-ae9b-281153eb8fd3'::uuid,
  'b78a193b-3851-5159-b651-64f40d708ceb'::uuid,
  '89156783-853d-5a14-aea6-b545cfc146a5'::uuid,
  '8c8802de-eb32-550b-88b8-412797aef970'::uuid,
  'Thanks Theo! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8fdad634-e2bc-5d18-b309-400b0eb5bae4'::uuid, 'd0ad7377-23be-599e-a7a4-536cf065e51d'::uuid, '5c62f76c-9d55-5526-baab-65a97b588ff2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ce3b63d0-dcb8-5a75-a9e7-60b67e9d2cf7'::uuid, '5c62f76c-9d55-5526-baab-65a97b588ff2'::uuid, 'd0ad7377-23be-599e-a7a4-536cf065e51d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e9905a32-26c0-56ad-9a6e-958a106313a3'::uuid, '5c62f76c-9d55-5526-baab-65a97b588ff2'::uuid, 'd0ad7377-23be-599e-a7a4-536cf065e51d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('047d085f-ecc5-5a44-900c-b391ee88cee8'::uuid, '138b24f6-2614-5f93-970c-fd5a958ff796'::uuid, 'd48b7652-dead-5b7f-9a02-4181503a52e0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8009fa18-a24c-59ef-a2c9-55257b7f27b9'::uuid, 'd48b7652-dead-5b7f-9a02-4181503a52e0'::uuid, '138b24f6-2614-5f93-970c-fd5a958ff796'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('839cba4b-dd70-5735-8e66-8d9adc0b8b82'::uuid, '138b24f6-2614-5f93-970c-fd5a958ff796'::uuid, 'd48b7652-dead-5b7f-9a02-4181503a52e0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '32de7e30-53ba-5fbf-8a52-50afd2f7ec09'::uuid,
  '839cba4b-dd70-5735-8e66-8d9adc0b8b82'::uuid,
  '138b24f6-2614-5f93-970c-fd5a958ff796'::uuid,
  'd48b7652-dead-5b7f-9a02-4181503a52e0'::uuid,
  'Hi Sofia — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c64162ef-cad7-5ced-acd6-d0ba2da9a188'::uuid,
  '839cba4b-dd70-5735-8e66-8d9adc0b8b82'::uuid,
  'd48b7652-dead-5b7f-9a02-4181503a52e0'::uuid,
  '138b24f6-2614-5f93-970c-fd5a958ff796'::uuid,
  'Thanks Lucas! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('30cf1ff2-9703-5dd0-96d3-313552a452b2'::uuid, 'b6eb43c5-600f-5ee8-ab63-a5bf5ad349ab'::uuid, '71ce71e0-3ea8-5d45-b77b-d5851945f3af'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('641bb0ab-bcee-5511-a18c-2ececbe278c3'::uuid, '71ce71e0-3ea8-5d45-b77b-d5851945f3af'::uuid, 'b6eb43c5-600f-5ee8-ab63-a5bf5ad349ab'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('98dd69e3-6069-593d-a406-935a43a55ee2'::uuid, '71ce71e0-3ea8-5d45-b77b-d5851945f3af'::uuid, 'b6eb43c5-600f-5ee8-ab63-a5bf5ad349ab'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bdd1545c-dfb8-5c3c-97d3-ec43c65642bb'::uuid, 'b1e72a51-f356-529d-b1eb-19edd96f02cb'::uuid, '5adbe397-780c-5a92-baa4-edd6c908ea3d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('484e7f01-6afa-52f8-ad21-74497098e3bb'::uuid, '5adbe397-780c-5a92-baa4-edd6c908ea3d'::uuid, 'b1e72a51-f356-529d-b1eb-19edd96f02cb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('97b870c0-d3a9-52da-a286-52c90552154b'::uuid, '5adbe397-780c-5a92-baa4-edd6c908ea3d'::uuid, 'b1e72a51-f356-529d-b1eb-19edd96f02cb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5839dbeb-8893-57da-9b62-651117280075'::uuid,
  '97b870c0-d3a9-52da-a286-52c90552154b'::uuid,
  'b1e72a51-f356-529d-b1eb-19edd96f02cb'::uuid,
  '5adbe397-780c-5a92-baa4-edd6c908ea3d'::uuid,
  'Hi Zara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3b00e424-5c20-542c-833f-d9d0685faeaf'::uuid,
  '97b870c0-d3a9-52da-a286-52c90552154b'::uuid,
  '5adbe397-780c-5a92-baa4-edd6c908ea3d'::uuid,
  'b1e72a51-f356-529d-b1eb-19edd96f02cb'::uuid,
  'Thanks David! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('74dac54f-9f83-5c78-b00e-477ade8dcae4'::uuid, 'b1e72a51-f356-529d-b1eb-19edd96f02cb'::uuid, 'a09224b4-4489-5f26-acc8-6d59bf83ca40'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9d144386-ebdd-5633-a3fb-9829a1eacc90'::uuid, 'a09224b4-4489-5f26-acc8-6d59bf83ca40'::uuid, 'b1e72a51-f356-529d-b1eb-19edd96f02cb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c6eed5f6-0c6d-5dcd-aabe-0439a34d4761'::uuid, 'a09224b4-4489-5f26-acc8-6d59bf83ca40'::uuid, 'b1e72a51-f356-529d-b1eb-19edd96f02cb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2faa5500-ef94-5121-a455-f464da99e014'::uuid, 'a6a3a75d-592b-5db5-94cc-5d78a74d7890'::uuid, 'a0be9746-2732-59d8-9d1c-52829b061343'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ffeb3ea8-16ce-59e1-9c88-44bd7d78949a'::uuid, 'a0be9746-2732-59d8-9d1c-52829b061343'::uuid, 'a6a3a75d-592b-5db5-94cc-5d78a74d7890'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a123f33d-9732-59f8-80b8-56f1227133dc'::uuid, 'a0be9746-2732-59d8-9d1c-52829b061343'::uuid, 'a6a3a75d-592b-5db5-94cc-5d78a74d7890'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '56451993-4b93-535b-8a1e-7250ada73681'::uuid,
  'a123f33d-9732-59f8-80b8-56f1227133dc'::uuid,
  'a6a3a75d-592b-5db5-94cc-5d78a74d7890'::uuid,
  'a0be9746-2732-59d8-9d1c-52829b061343'::uuid,
  'Hi Kai — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '54893d9b-ef19-5629-8f1a-519122b3e78a'::uuid,
  'a123f33d-9732-59f8-80b8-56f1227133dc'::uuid,
  'a0be9746-2732-59d8-9d1c-52829b061343'::uuid,
  'a6a3a75d-592b-5db5-94cc-5d78a74d7890'::uuid,
  'Thanks Aisha! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9eb30d81-078e-5bc1-a620-52f45528e245'::uuid, '0b206d9d-85dd-5e6b-b77d-5850790c8b18'::uuid, 'a2a0a60f-90e7-5a6d-bd00-9b45cdf0e153'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('83272a32-7ee0-5edc-a723-0551a999abc2'::uuid, 'a2a0a60f-90e7-5a6d-bd00-9b45cdf0e153'::uuid, '0b206d9d-85dd-5e6b-b77d-5850790c8b18'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1952cfa2-16d9-5bec-8d69-2d0769e983bc'::uuid, '0b206d9d-85dd-5e6b-b77d-5850790c8b18'::uuid, 'a2a0a60f-90e7-5a6d-bd00-9b45cdf0e153'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a0ef7c5d-a6ff-5029-87c0-3028e6517140'::uuid, 'cc1db32d-aecf-5367-82a6-742e79691a64'::uuid, 'da23348a-cb61-5775-bac1-f4088289d969'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b3396ba8-d1b3-515e-9263-3857f70e173f'::uuid, 'da23348a-cb61-5775-bac1-f4088289d969'::uuid, 'cc1db32d-aecf-5367-82a6-742e79691a64'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('00e72279-faf9-5454-8b40-9e103ecfcaed'::uuid, 'cc1db32d-aecf-5367-82a6-742e79691a64'::uuid, 'da23348a-cb61-5775-bac1-f4088289d969'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

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

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c3ba8d40-004a-5368-bbbd-5b57364468d2'::uuid,
  'e4be50fe-dff9-5e8e-b7f8-aa5c745fd756'::uuid,
  '4b5ce663-76c6-53ea-9e74-cedb914dfad3'::uuid,
  '2f973087-14f2-5e74-b267-236219d92b2b'::uuid,
  'Hi Isaac — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd8f95444-d413-5a88-89b7-c52ef24c609c'::uuid,
  'e4be50fe-dff9-5e8e-b7f8-aa5c745fd756'::uuid,
  '2f973087-14f2-5e74-b267-236219d92b2b'::uuid,
  '4b5ce663-76c6-53ea-9e74-cedb914dfad3'::uuid,
  'Thanks Chloe! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c0c55676-1a94-51e3-be7b-745e0b4263ed'::uuid, '2ba9af1f-cad6-5410-9096-568e6ffa5579'::uuid, '5b4d74cc-c6ad-59dc-a192-6bc864ef642f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('534da376-9b23-5319-9489-3b94022bd380'::uuid, '5b4d74cc-c6ad-59dc-a192-6bc864ef642f'::uuid, '2ba9af1f-cad6-5410-9096-568e6ffa5579'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('72e88d35-4358-55f9-8d66-326542e35ef2'::uuid, '2ba9af1f-cad6-5410-9096-568e6ffa5579'::uuid, '5b4d74cc-c6ad-59dc-a192-6bc864ef642f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c06a548e-7121-5131-985b-32a9d19d698d'::uuid, 'ab5991aa-60c6-564f-94c4-70fdd9a67e7d'::uuid, '874f22d1-d122-5efa-91b2-609b82abcb7b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('23e7ad1b-0c4d-500d-9c56-a5f121374b77'::uuid, '874f22d1-d122-5efa-91b2-609b82abcb7b'::uuid, 'ab5991aa-60c6-564f-94c4-70fdd9a67e7d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('623ff33e-8ec9-51db-877f-1cd5fc3b425e'::uuid, '874f22d1-d122-5efa-91b2-609b82abcb7b'::uuid, 'ab5991aa-60c6-564f-94c4-70fdd9a67e7d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '735fa2b2-0f97-5d21-8572-ff0ef3965553'::uuid,
  '623ff33e-8ec9-51db-877f-1cd5fc3b425e'::uuid,
  'ab5991aa-60c6-564f-94c4-70fdd9a67e7d'::uuid,
  '874f22d1-d122-5efa-91b2-609b82abcb7b'::uuid,
  'Hi Felix — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e689fad1-d266-5201-8e8a-61bf42988230'::uuid,
  '623ff33e-8ec9-51db-877f-1cd5fc3b425e'::uuid,
  '874f22d1-d122-5efa-91b2-609b82abcb7b'::uuid,
  'ab5991aa-60c6-564f-94c4-70fdd9a67e7d'::uuid,
  'Thanks Violet! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f2abd5fe-20c0-5038-b559-52db32b0c315'::uuid, '251eed55-e7bd-5e13-a2ca-cea6ceee8615'::uuid, '2f7357e8-f852-5e6d-a819-d0062717ec63'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b5f27c5a-a311-5a0c-85e4-a107b3634de4'::uuid, '2f7357e8-f852-5e6d-a819-d0062717ec63'::uuid, '251eed55-e7bd-5e13-a2ca-cea6ceee8615'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('90f28242-a708-5799-ad25-767ee843ace2'::uuid, '251eed55-e7bd-5e13-a2ca-cea6ceee8615'::uuid, '2f7357e8-f852-5e6d-a819-d0062717ec63'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e73f5d19-0936-58f0-a6db-72bf09a3c6d7'::uuid, 'ade99177-449e-5b6c-b3ed-6600e8ee7b8b'::uuid, 'c241b52a-7067-5347-84d1-7a7ccbb39966'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('aab1d5e5-cdea-5a33-b738-2890a7d020fd'::uuid, 'c241b52a-7067-5347-84d1-7a7ccbb39966'::uuid, 'ade99177-449e-5b6c-b3ed-6600e8ee7b8b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('86f954b9-7bfe-5da1-a65e-34c06733c282'::uuid, 'ade99177-449e-5b6c-b3ed-6600e8ee7b8b'::uuid, 'c241b52a-7067-5347-84d1-7a7ccbb39966'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'db6fef8a-a86a-5c2d-be8d-e38d1bf39241'::uuid,
  '86f954b9-7bfe-5da1-a65e-34c06733c282'::uuid,
  'ade99177-449e-5b6c-b3ed-6600e8ee7b8b'::uuid,
  'c241b52a-7067-5347-84d1-7a7ccbb39966'::uuid,
  'Hi James — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '98ba3f47-5560-556b-a0aa-c30c9255e4a0'::uuid,
  '86f954b9-7bfe-5da1-a65e-34c06733c282'::uuid,
  'c241b52a-7067-5347-84d1-7a7ccbb39966'::uuid,
  'ade99177-449e-5b6c-b3ed-6600e8ee7b8b'::uuid,
  'Thanks Tara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('75145aa5-ad1b-5fca-bf9d-ff54b0674092'::uuid, 'ade99177-449e-5b6c-b3ed-6600e8ee7b8b'::uuid, '2b5709bf-80c1-5736-9f7a-c5245a97240b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('67b179d6-eb75-564b-8606-227b818bf3b1'::uuid, '2b5709bf-80c1-5736-9f7a-c5245a97240b'::uuid, 'ade99177-449e-5b6c-b3ed-6600e8ee7b8b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('da86efa0-fc9e-5855-b650-8d40a0916c90'::uuid, '2b5709bf-80c1-5736-9f7a-c5245a97240b'::uuid, 'ade99177-449e-5b6c-b3ed-6600e8ee7b8b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4cdc8614-8251-5538-953f-570fa78234a4'::uuid, '1f4552e1-d512-585b-9efa-c5fa6d387b36'::uuid, '5baa9a49-86d9-5b96-8662-a6e76f4aa203'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7a9e9033-6a23-5e7e-89bf-0fdb5cb6a008'::uuid, '5baa9a49-86d9-5b96-8662-a6e76f4aa203'::uuid, '1f4552e1-d512-585b-9efa-c5fa6d387b36'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3e29e05d-7300-5c59-a1b6-12af38d5a764'::uuid, '1f4552e1-d512-585b-9efa-c5fa6d387b36'::uuid, '5baa9a49-86d9-5b96-8662-a6e76f4aa203'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c9fdd311-0727-5cc5-80ce-6160801ca2ed'::uuid,
  '3e29e05d-7300-5c59-a1b6-12af38d5a764'::uuid,
  '1f4552e1-d512-585b-9efa-c5fa6d387b36'::uuid,
  '5baa9a49-86d9-5b96-8662-a6e76f4aa203'::uuid,
  'Hi Grace — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e0fdba39-6bb0-5bd5-b153-2f26ef6d60f6'::uuid,
  '3e29e05d-7300-5c59-a1b6-12af38d5a764'::uuid,
  '5baa9a49-86d9-5b96-8662-a6e76f4aa203'::uuid,
  '1f4552e1-d512-585b-9efa-c5fa6d387b36'::uuid,
  'Thanks Aaron! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c127d992-b07a-50ae-890f-888b84c3b09d'::uuid, 'e689d62a-1c67-5a79-87ec-81b794bd9c0f'::uuid, '0766e457-77cd-5217-9c3b-2b0dcd4b955f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('42e4cb55-d63e-514e-9d71-5397b933d3e7'::uuid, '0766e457-77cd-5217-9c3b-2b0dcd4b955f'::uuid, 'e689d62a-1c67-5a79-87ec-81b794bd9c0f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1d738f01-5904-5bc0-bb32-682285e257f3'::uuid, '0766e457-77cd-5217-9c3b-2b0dcd4b955f'::uuid, 'e689d62a-1c67-5a79-87ec-81b794bd9c0f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a691c346-3548-5565-be42-2f36ae54422f'::uuid, '7b408ed2-1e1b-5814-8f06-42702ec39ff5'::uuid, 'e81750f1-0ea2-5b78-a375-74bb06b5b584'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('88cd3da6-0a01-5a98-b690-d94316a298c4'::uuid, 'e81750f1-0ea2-5b78-a375-74bb06b5b584'::uuid, '7b408ed2-1e1b-5814-8f06-42702ec39ff5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fc860878-afcd-5941-90c6-995bdb76a2cb'::uuid, '7b408ed2-1e1b-5814-8f06-42702ec39ff5'::uuid, 'e81750f1-0ea2-5b78-a375-74bb06b5b584'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a6dc417b-4cab-5c6a-bb38-90708a59d5cf'::uuid,
  'fc860878-afcd-5941-90c6-995bdb76a2cb'::uuid,
  '7b408ed2-1e1b-5814-8f06-42702ec39ff5'::uuid,
  'e81750f1-0ea2-5b78-a375-74bb06b5b584'::uuid,
  'Hi Isla — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7a7189c0-8745-585a-9808-39c31ba7594f'::uuid,
  'fc860878-afcd-5941-90c6-995bdb76a2cb'::uuid,
  'e81750f1-0ea2-5b78-a375-74bb06b5b584'::uuid,
  '7b408ed2-1e1b-5814-8f06-42702ec39ff5'::uuid,
  'Thanks Noah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('69ef2bbf-0257-5745-8004-8afc1571628f'::uuid, '9324daab-fb79-5728-896a-07ab22a4beb6'::uuid, 'eae2b40f-cbad-57de-b268-6c4b724cc18c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c1fc813a-ef12-5dbe-b7a8-4858f48cbab2'::uuid, 'eae2b40f-cbad-57de-b268-6c4b724cc18c'::uuid, '9324daab-fb79-5728-896a-07ab22a4beb6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3c8510e7-e07a-5667-80a1-3f584b13f419'::uuid, '9324daab-fb79-5728-896a-07ab22a4beb6'::uuid, 'eae2b40f-cbad-57de-b268-6c4b724cc18c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('919a59c8-4f11-5490-9043-af9f7cfebec7'::uuid, '613b2f0f-fb54-55e5-95a9-2be7539b4ec3'::uuid, '345c8171-44e4-513a-98ee-6a601680d628'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b04931af-061e-58e1-b4f5-a71a69d2c4df'::uuid, '345c8171-44e4-513a-98ee-6a601680d628'::uuid, '613b2f0f-fb54-55e5-95a9-2be7539b4ec3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('44428b8e-ed10-5552-8556-33f44b35ef9a'::uuid, '345c8171-44e4-513a-98ee-6a601680d628'::uuid, '613b2f0f-fb54-55e5-95a9-2be7539b4ec3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd13bca9a-8f74-5897-b708-2b14d5ea1abe'::uuid,
  '44428b8e-ed10-5552-8556-33f44b35ef9a'::uuid,
  '613b2f0f-fb54-55e5-95a9-2be7539b4ec3'::uuid,
  '345c8171-44e4-513a-98ee-6a601680d628'::uuid,
  'Hi Yara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '73bff1ae-ea04-58ea-b175-a0adc64d5fbc'::uuid,
  '44428b8e-ed10-5552-8556-33f44b35ef9a'::uuid,
  '345c8171-44e4-513a-98ee-6a601680d628'::uuid,
  '613b2f0f-fb54-55e5-95a9-2be7539b4ec3'::uuid,
  'Thanks Ethan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('28ed6140-ec2a-5874-9491-89169682c15c'::uuid, '613b2f0f-fb54-55e5-95a9-2be7539b4ec3'::uuid, 'b6d76b9c-c861-5e04-9a0b-242cf40b872e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('83f35578-2f6f-5a3b-8a95-e6c5eabac36d'::uuid, 'b6d76b9c-c861-5e04-9a0b-242cf40b872e'::uuid, '613b2f0f-fb54-55e5-95a9-2be7539b4ec3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('53b5e97d-95c1-593e-9d58-12c486ac6ebd'::uuid, '613b2f0f-fb54-55e5-95a9-2be7539b4ec3'::uuid, 'b6d76b9c-c861-5e04-9a0b-242cf40b872e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('07e5397c-ee1e-52d3-8ca2-a1ff8c5cb6af'::uuid, 'bdbffa25-5dda-547c-904d-3abab742a813'::uuid, '559ed6d7-7717-5fb9-b2f1-68534a7ee556'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9d0c7584-24d1-573a-b816-0d6c933ccfe9'::uuid, '559ed6d7-7717-5fb9-b2f1-68534a7ee556'::uuid, 'bdbffa25-5dda-547c-904d-3abab742a813'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bcafb873-d4a7-5f8b-92ec-823b1db44c46'::uuid, '559ed6d7-7717-5fb9-b2f1-68534a7ee556'::uuid, 'bdbffa25-5dda-547c-904d-3abab742a813'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5a964932-9cac-58f3-bf39-bb8084607c8e'::uuid,
  'bcafb873-d4a7-5f8b-92ec-823b1db44c46'::uuid,
  'bdbffa25-5dda-547c-904d-3abab742a813'::uuid,
  '559ed6d7-7717-5fb9-b2f1-68534a7ee556'::uuid,
  'Hi Lucas — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f5f7544d-87e5-5215-baf2-11798bd5e1b2'::uuid,
  'bcafb873-d4a7-5f8b-92ec-823b1db44c46'::uuid,
  '559ed6d7-7717-5fb9-b2f1-68534a7ee556'::uuid,
  'bdbffa25-5dda-547c-904d-3abab742a813'::uuid,
  'Thanks Leila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('713ab3e7-622a-57f1-87c3-24e83e215aa6'::uuid, 'e57c50be-fd3b-5bcb-a5e2-fc50014c7bf9'::uuid, '3bd2ebbe-1d87-59b0-bbcc-11eda780a6bc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c7a9bb38-1b88-5c83-92fa-c22df5e2fe50'::uuid, '3bd2ebbe-1d87-59b0-bbcc-11eda780a6bc'::uuid, 'e57c50be-fd3b-5bcb-a5e2-fc50014c7bf9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ca5fa2d6-a490-5044-92e4-c4d855a978d7'::uuid, '3bd2ebbe-1d87-59b0-bbcc-11eda780a6bc'::uuid, 'e57c50be-fd3b-5bcb-a5e2-fc50014c7bf9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a7dc9f98-1954-5295-8c4f-59ecb029d584'::uuid, '411c1778-e6b2-5e2a-bd42-945f2962ece3'::uuid, '05c0c723-6829-5a0e-abc6-dafc9db5aa7c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f8e04b70-9b9d-5676-9be4-dfc7440de4b8'::uuid, '05c0c723-6829-5a0e-abc6-dafc9db5aa7c'::uuid, '411c1778-e6b2-5e2a-bd42-945f2962ece3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dc7e7c0c-0ecb-5933-b86d-9497a004b825'::uuid, '05c0c723-6829-5a0e-abc6-dafc9db5aa7c'::uuid, '411c1778-e6b2-5e2a-bd42-945f2962ece3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2061ad79-cc3a-5599-b3a1-dcc79e2ea539'::uuid,
  'dc7e7c0c-0ecb-5933-b86d-9497a004b825'::uuid,
  '411c1778-e6b2-5e2a-bd42-945f2962ece3'::uuid,
  '05c0c723-6829-5a0e-abc6-dafc9db5aa7c'::uuid,
  'Hi David — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '82cf5a24-96fe-568d-9b04-27fbd65a1fdc'::uuid,
  'dc7e7c0c-0ecb-5933-b86d-9497a004b825'::uuid,
  '05c0c723-6829-5a0e-abc6-dafc9db5aa7c'::uuid,
  '411c1778-e6b2-5e2a-bd42-945f2962ece3'::uuid,
  'Thanks Sana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('48025f51-eec6-56af-a5e4-360f44588c85'::uuid, '7ef20ab1-ba74-5bbd-8474-5509bd90af81'::uuid, '53a7a968-97f9-5f8a-be3a-9717574c6e58'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('38107fa9-94ab-579d-8081-456688e27dca'::uuid, '53a7a968-97f9-5f8a-be3a-9717574c6e58'::uuid, '7ef20ab1-ba74-5bbd-8474-5509bd90af81'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('06ceecd3-cef0-55b8-88b5-83b6a19ff373'::uuid, '53a7a968-97f9-5f8a-be3a-9717574c6e58'::uuid, '7ef20ab1-ba74-5bbd-8474-5509bd90af81'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('196985c8-d41f-5b84-9c11-312c8b2d5212'::uuid, '43b38cd0-7ecb-53bb-86c7-76bed869d19f'::uuid, '45150839-6840-5863-8a4a-6531e7974e3f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1086f253-9405-5654-8dad-0781bb080819'::uuid, '45150839-6840-5863-8a4a-6531e7974e3f'::uuid, '43b38cd0-7ecb-53bb-86c7-76bed869d19f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fa8d40df-a3fb-5abd-98e2-92176886d088'::uuid, '43b38cd0-7ecb-53bb-86c7-76bed869d19f'::uuid, '45150839-6840-5863-8a4a-6531e7974e3f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9e889f42-3285-56db-bd22-0d8fe0b86100'::uuid,
  'fa8d40df-a3fb-5abd-98e2-92176886d088'::uuid,
  '43b38cd0-7ecb-53bb-86c7-76bed869d19f'::uuid,
  '45150839-6840-5863-8a4a-6531e7974e3f'::uuid,
  'Hi Diego — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f2c582dd-b841-5b34-a8dd-01c8ad71ea4c'::uuid,
  'fa8d40df-a3fb-5abd-98e2-92176886d088'::uuid,
  '45150839-6840-5863-8a4a-6531e7974e3f'::uuid,
  '43b38cd0-7ecb-53bb-86c7-76bed869d19f'::uuid,
  'Thanks Hana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('427057f3-d983-5026-a9bb-a470347e68c7'::uuid, '43b38cd0-7ecb-53bb-86c7-76bed869d19f'::uuid, '1502bff0-510c-5a05-84fb-941e5b0b0d0c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cf9ffe1b-fdbb-5564-bae1-78d05c498ea5'::uuid, '1502bff0-510c-5a05-84fb-941e5b0b0d0c'::uuid, '43b38cd0-7ecb-53bb-86c7-76bed869d19f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9ea01b2b-bb53-5498-aace-e9a2796e2586'::uuid, '1502bff0-510c-5a05-84fb-941e5b0b0d0c'::uuid, '43b38cd0-7ecb-53bb-86c7-76bed869d19f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ce398374-d2a0-5260-a8b1-0b28e84a60de'::uuid, '601a15d3-ba12-5ed0-8b38-d924a5e127f4'::uuid, '7f1973e3-c24f-5d08-864f-0ad85e4e2f45'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4276b47e-bfb8-5af7-97de-373c7fa1b0ad'::uuid, '7f1973e3-c24f-5d08-864f-0ad85e4e2f45'::uuid, '601a15d3-ba12-5ed0-8b38-d924a5e127f4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2c82eac5-91c6-5cda-ba23-848c7d2bed80'::uuid, '601a15d3-ba12-5ed0-8b38-d924a5e127f4'::uuid, '7f1973e3-c24f-5d08-864f-0ad85e4e2f45'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c6de0f24-73d7-58ef-b2be-5f117b6919b5'::uuid,
  '2c82eac5-91c6-5cda-ba23-848c7d2bed80'::uuid,
  '601a15d3-ba12-5ed0-8b38-d924a5e127f4'::uuid,
  '7f1973e3-c24f-5d08-864f-0ad85e4e2f45'::uuid,
  'Hi Nadia — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '493cc397-9506-5363-9f24-1adb665fe952'::uuid,
  '2c82eac5-91c6-5cda-ba23-848c7d2bed80'::uuid,
  '7f1973e3-c24f-5d08-864f-0ad85e4e2f45'::uuid,
  '601a15d3-ba12-5ed0-8b38-d924a5e127f4'::uuid,
  'Thanks Maya! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('346a1705-754a-559d-a97a-904124fa5572'::uuid, '8d53c389-fe52-5d2a-9fe2-d66af24c329d'::uuid, 'a44778cb-c276-5a51-bc92-31e723fba28c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('184d4dcc-3aba-5d57-bf02-571c4a329361'::uuid, 'a44778cb-c276-5a51-bc92-31e723fba28c'::uuid, '8d53c389-fe52-5d2a-9fe2-d66af24c329d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('19cbd9b1-55cd-5992-ae10-c8fd963f81c6'::uuid, '8d53c389-fe52-5d2a-9fe2-d66af24c329d'::uuid, 'a44778cb-c276-5a51-bc92-31e723fba28c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c4ad4e4d-b4ae-5923-b97f-37dc581a0cb0'::uuid, '082a2d5f-3bf4-561b-af30-d0b06299b4ba'::uuid, 'f0b67df3-69c6-55af-85f4-d8d0f4ea1143'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('49d85d57-0dbb-594c-885f-e273febef12d'::uuid, 'f0b67df3-69c6-55af-85f4-d8d0f4ea1143'::uuid, '082a2d5f-3bf4-561b-af30-d0b06299b4ba'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f9422141-a8d5-5a73-afdf-30ee0e5a39f0'::uuid, '082a2d5f-3bf4-561b-af30-d0b06299b4ba'::uuid, 'f0b67df3-69c6-55af-85f4-d8d0f4ea1143'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '105fc530-4d25-5d67-b9df-a899a6479e46'::uuid,
  'f9422141-a8d5-5a73-afdf-30ee0e5a39f0'::uuid,
  '082a2d5f-3bf4-561b-af30-d0b06299b4ba'::uuid,
  'f0b67df3-69c6-55af-85f4-d8d0f4ea1143'::uuid,
  'Hi Mei — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '654b9460-7f8a-563e-8358-41a6e59e8ed7'::uuid,
  'f9422141-a8d5-5a73-afdf-30ee0e5a39f0'::uuid,
  'f0b67df3-69c6-55af-85f4-d8d0f4ea1143'::uuid,
  '082a2d5f-3bf4-561b-af30-d0b06299b4ba'::uuid,
  'Thanks Rohan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;
