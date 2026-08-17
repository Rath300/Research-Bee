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