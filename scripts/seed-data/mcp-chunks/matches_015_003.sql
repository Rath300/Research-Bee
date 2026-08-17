INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e944fa02-6e01-587e-ac54-3c041055f64f'::uuid, '3f7dcc86-e0ad-5d04-8fba-af19edc21152'::uuid, '90318e9c-7673-5d60-8f47-d5f4fd26dbd6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a0904d20-d284-5d04-81fe-25db22f17927'::uuid, 'b06a5bb8-5c51-5c83-b14f-366ec1bcc6c2'::uuid, '90c6682a-8f8a-58a6-852c-1f4842a5def5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('614881e2-2ecf-5c86-bdac-cbd399335c7c'::uuid, '90c6682a-8f8a-58a6-852c-1f4842a5def5'::uuid, 'b06a5bb8-5c51-5c83-b14f-366ec1bcc6c2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('24da3198-4e82-504c-a281-95153c8a0dc6'::uuid, '90c6682a-8f8a-58a6-852c-1f4842a5def5'::uuid, 'b06a5bb8-5c51-5c83-b14f-366ec1bcc6c2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'db37eddc-1d57-5dd8-baf5-4b48b8a9cba7'::uuid,
  '24da3198-4e82-504c-a281-95153c8a0dc6'::uuid,
  'b06a5bb8-5c51-5c83-b14f-366ec1bcc6c2'::uuid,
  '90c6682a-8f8a-58a6-852c-1f4842a5def5'::uuid,
  'Hi Felix — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f9c33e1f-e9e0-530b-bd13-74e607b67dd1'::uuid,
  '24da3198-4e82-504c-a281-95153c8a0dc6'::uuid,
  '90c6682a-8f8a-58a6-852c-1f4842a5def5'::uuid,
  'b06a5bb8-5c51-5c83-b14f-366ec1bcc6c2'::uuid,
  'Thanks Violet! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c99edfc5-a7c5-5e16-9dcb-3e5fb1717c00'::uuid, '844bc8c1-568a-5c29-a8ee-695abfcc8b62'::uuid, '5cd17e21-fe4e-5ed4-b394-0f20f92ff70b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ce8798ce-0abb-5e46-ab7d-8cf0c97dbda4'::uuid, '5cd17e21-fe4e-5ed4-b394-0f20f92ff70b'::uuid, '844bc8c1-568a-5c29-a8ee-695abfcc8b62'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('14e7a6ac-c685-5588-bae1-a8514431a193'::uuid, '5cd17e21-fe4e-5ed4-b394-0f20f92ff70b'::uuid, '844bc8c1-568a-5c29-a8ee-695abfcc8b62'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d455a9c0-fa58-5bc5-ad00-08fbf1a90c2c'::uuid, 'd03250de-48b2-59ba-9295-19028affe265'::uuid, '3d8d5666-d328-525f-af6f-5d62770e273a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ff72e97e-4867-52c5-8dac-631d4f992120'::uuid, '3d8d5666-d328-525f-af6f-5d62770e273a'::uuid, 'd03250de-48b2-59ba-9295-19028affe265'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('34c86079-f13f-551d-8e81-05e19cb95fec'::uuid, '3d8d5666-d328-525f-af6f-5d62770e273a'::uuid, 'd03250de-48b2-59ba-9295-19028affe265'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'db08a2fe-c9db-5506-9ab6-aa5a5283ade5'::uuid,
  '34c86079-f13f-551d-8e81-05e19cb95fec'::uuid,
  'd03250de-48b2-59ba-9295-19028affe265'::uuid,
  '3d8d5666-d328-525f-af6f-5d62770e273a'::uuid,
  'Hi James — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cf36a00f-486d-5e02-beb7-a6cbb25bc3a9'::uuid,
  '34c86079-f13f-551d-8e81-05e19cb95fec'::uuid,
  '3d8d5666-d328-525f-af6f-5d62770e273a'::uuid,
  'd03250de-48b2-59ba-9295-19028affe265'::uuid,
  'Thanks Tara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('37985117-d9f4-50f2-bd2b-1264f0a205f5'::uuid, 'd03250de-48b2-59ba-9295-19028affe265'::uuid, 'c26b5733-2d5f-5503-a13e-2fd663e7bdcd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1336ad65-f4a5-5167-9ef8-b4399533ef92'::uuid, 'c26b5733-2d5f-5503-a13e-2fd663e7bdcd'::uuid, 'd03250de-48b2-59ba-9295-19028affe265'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('896ea1e2-7527-53ac-b973-0f61fb20b74e'::uuid, 'c26b5733-2d5f-5503-a13e-2fd663e7bdcd'::uuid, 'd03250de-48b2-59ba-9295-19028affe265'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('260013bf-6cf9-54f6-ac95-ddafefcfce05'::uuid, 'a6390256-0979-5984-bd9a-7a836b35c744'::uuid, 'eab6b3ab-8b1a-55f2-98e3-08e308d55581'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c567ff58-cbed-5cab-86c8-369289a2cb8b'::uuid, 'eab6b3ab-8b1a-55f2-98e3-08e308d55581'::uuid, 'a6390256-0979-5984-bd9a-7a836b35c744'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8e43bc08-1058-5d04-9e42-5b874ba2fbf2'::uuid, 'a6390256-0979-5984-bd9a-7a836b35c744'::uuid, 'eab6b3ab-8b1a-55f2-98e3-08e308d55581'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ec6b5048-50a0-5d7f-b6da-4221e574650a'::uuid,
  '8e43bc08-1058-5d04-9e42-5b874ba2fbf2'::uuid,
  'a6390256-0979-5984-bd9a-7a836b35c744'::uuid,
  'eab6b3ab-8b1a-55f2-98e3-08e308d55581'::uuid,
  'Hi Grace — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b1306afe-2e5d-5bc4-878b-9d9f59787cd1'::uuid,
  '8e43bc08-1058-5d04-9e42-5b874ba2fbf2'::uuid,
  'eab6b3ab-8b1a-55f2-98e3-08e308d55581'::uuid,
  'a6390256-0979-5984-bd9a-7a836b35c744'::uuid,
  'Thanks Aaron! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1a8e92ba-6427-580d-8e20-46a097ef762e'::uuid, 'ebf6481a-b2e8-5f6f-bfeb-dd1fac2d1f3d'::uuid, '909cb930-459e-5e27-b948-adfab9f63565'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8db56f17-0ead-5539-bede-e72933d07132'::uuid, '909cb930-459e-5e27-b948-adfab9f63565'::uuid, 'ebf6481a-b2e8-5f6f-bfeb-dd1fac2d1f3d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3878a029-64ca-5368-a700-0cf76c4f1e72'::uuid, '909cb930-459e-5e27-b948-adfab9f63565'::uuid, 'ebf6481a-b2e8-5f6f-bfeb-dd1fac2d1f3d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8958c75d-6358-562a-8349-d3d1afb94dd1'::uuid, '5cf4ccea-92d5-5091-acda-a50401fee6e4'::uuid, '00ef4dfa-c228-537e-9a85-59448ff863f9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('70eab88b-beb9-5f8e-8c49-2c443434668e'::uuid, '00ef4dfa-c228-537e-9a85-59448ff863f9'::uuid, '5cf4ccea-92d5-5091-acda-a50401fee6e4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4f025d4a-8ed3-59f9-887e-bb9cd39e7994'::uuid, '00ef4dfa-c228-537e-9a85-59448ff863f9'::uuid, '5cf4ccea-92d5-5091-acda-a50401fee6e4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '08fbc35b-c8e1-549f-85ca-895893153bf4'::uuid,
  '4f025d4a-8ed3-59f9-887e-bb9cd39e7994'::uuid,
  '5cf4ccea-92d5-5091-acda-a50401fee6e4'::uuid,
  '00ef4dfa-c228-537e-9a85-59448ff863f9'::uuid,
  'Hi Isla — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3bdb9eec-031e-530e-9a86-953989f6ef33'::uuid,
  '4f025d4a-8ed3-59f9-887e-bb9cd39e7994'::uuid,
  '00ef4dfa-c228-537e-9a85-59448ff863f9'::uuid,
  '5cf4ccea-92d5-5091-acda-a50401fee6e4'::uuid,
  'Thanks Noah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d0e42bb1-b0b1-560b-a3a6-b12032f66335'::uuid, '5de1fcbf-1f68-51c0-af75-2ad3cc81bc14'::uuid, '8c8802de-eb32-550b-88b8-412797aef970'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b44da203-0322-5403-a544-ef5ee179b9d8'::uuid, '8c8802de-eb32-550b-88b8-412797aef970'::uuid, '5de1fcbf-1f68-51c0-af75-2ad3cc81bc14'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4498b848-ebf0-5b0d-b613-e45a10703511'::uuid, '5de1fcbf-1f68-51c0-af75-2ad3cc81bc14'::uuid, '8c8802de-eb32-550b-88b8-412797aef970'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5a5449c8-ced5-5d9a-972d-9ff71740f574'::uuid, 'b6490efa-6d6a-5491-af21-1ed30bf639f0'::uuid, 'd0ad7377-23be-599e-a7a4-536cf065e51d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('884b2bb5-06c9-57f5-9bd0-5d07ccfa1248'::uuid, 'd0ad7377-23be-599e-a7a4-536cf065e51d'::uuid, 'b6490efa-6d6a-5491-af21-1ed30bf639f0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('257b75fa-f6ca-5c17-8ed7-a3f74b7788e0'::uuid, 'b6490efa-6d6a-5491-af21-1ed30bf639f0'::uuid, 'd0ad7377-23be-599e-a7a4-536cf065e51d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '02f4feff-0017-58a8-a555-2520d8af781c'::uuid,
  '257b75fa-f6ca-5c17-8ed7-a3f74b7788e0'::uuid,
  'b6490efa-6d6a-5491-af21-1ed30bf639f0'::uuid,
  'd0ad7377-23be-599e-a7a4-536cf065e51d'::uuid,
  'Hi Yara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a16ccfba-b083-5bba-85df-7f0c65d21824'::uuid,
  '257b75fa-f6ca-5c17-8ed7-a3f74b7788e0'::uuid,
  'd0ad7377-23be-599e-a7a4-536cf065e51d'::uuid,
  'b6490efa-6d6a-5491-af21-1ed30bf639f0'::uuid,
  'Thanks Ethan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6e883a71-a9de-5dd1-8789-45ad7a878714'::uuid, 'b6490efa-6d6a-5491-af21-1ed30bf639f0'::uuid, '337045f6-3ef4-54fc-a3cb-5ebf6f7a70a4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('80af615d-4c9a-5510-a105-72c97e2c30fc'::uuid, '337045f6-3ef4-54fc-a3cb-5ebf6f7a70a4'::uuid, 'b6490efa-6d6a-5491-af21-1ed30bf639f0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;