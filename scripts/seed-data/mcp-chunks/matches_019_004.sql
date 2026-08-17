INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4c2cee8b-d830-5f5a-8aac-e901b258dca1'::uuid,
  '3c2b7265-d5b1-5b32-8feb-94454d4dfe94'::uuid,
  'b7c96328-bb46-5e8b-8652-b1c7f00c6ee2'::uuid,
  'ebda259a-3ff4-5c2d-86f4-3288207f73de'::uuid,
  'Thanks Amina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ca895d38-000c-5650-a75b-bc10178f4e00'::uuid, 'c46e7cda-0508-5698-96a2-a7236d3d50ed'::uuid, 'a26aee00-05f2-505c-a479-ae1852915911'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('58c4a07b-d96c-52bb-88ba-650a31aca090'::uuid, 'a26aee00-05f2-505c-a479-ae1852915911'::uuid, 'c46e7cda-0508-5698-96a2-a7236d3d50ed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a6eaafb4-46d1-5999-a069-41f9a03f4824'::uuid, 'a26aee00-05f2-505c-a479-ae1852915911'::uuid, 'c46e7cda-0508-5698-96a2-a7236d3d50ed'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('af811057-4435-57ec-90fd-4d2eddfdbc65'::uuid, 'd61f9134-0a6b-57c5-a04b-1a83a5f6fcdd'::uuid, '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c3fa79a5-1ebb-5fd5-99df-9e710123a7d7'::uuid, '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid, 'd61f9134-0a6b-57c5-a04b-1a83a5f6fcdd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a893d2a4-05da-5700-975f-079bcc579b6d'::uuid, '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid, 'd61f9134-0a6b-57c5-a04b-1a83a5f6fcdd'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '734f60dc-9e59-5c69-819c-37a014089936'::uuid,
  'a893d2a4-05da-5700-975f-079bcc579b6d'::uuid,
  'd61f9134-0a6b-57c5-a04b-1a83a5f6fcdd'::uuid,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  'Hi Sebastian — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3d0b9d0f-73e4-58ed-8b31-a479a14de514'::uuid,
  'a893d2a4-05da-5700-975f-079bcc579b6d'::uuid,
  '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid,
  'd61f9134-0a6b-57c5-a04b-1a83a5f6fcdd'::uuid,
  'Thanks Hannah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d3f6e2af-b974-5ace-af89-96ce2db9e1fa'::uuid, 'd61f9134-0a6b-57c5-a04b-1a83a5f6fcdd'::uuid, 'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('77b9b3c3-7de5-5619-8015-f73b465b4fd4'::uuid, 'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid, 'd61f9134-0a6b-57c5-a04b-1a83a5f6fcdd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('294ecbbc-b423-5e8d-8906-d0e754954d46'::uuid, 'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid, 'd61f9134-0a6b-57c5-a04b-1a83a5f6fcdd'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('30ec80af-5764-5049-9f55-82e2234c11f3'::uuid, 'a6d22533-4b09-5974-a116-4c83d9a214f8'::uuid, '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6243239e-d26a-54ca-9ebb-769aa7ba4c71'::uuid, '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid, 'a6d22533-4b09-5974-a116-4c83d9a214f8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('86571ba5-4ceb-5d5f-9090-c8f56ac097bc'::uuid, '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid, 'a6d22533-4b09-5974-a116-4c83d9a214f8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '381f93d9-ba83-5e78-bf5b-44852d21cac9'::uuid,
  '86571ba5-4ceb-5d5f-9090-c8f56ac097bc'::uuid,
  'a6d22533-4b09-5974-a116-4c83d9a214f8'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  'Hi Amina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5128dd32-2249-513a-b6a8-9b78f8d90239'::uuid,
  '86571ba5-4ceb-5d5f-9090-c8f56ac097bc'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  'a6d22533-4b09-5974-a116-4c83d9a214f8'::uuid,
  'Thanks Julian! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5f3afd01-5629-5d6d-93a9-788515e5b10b'::uuid, 'b71701ff-0ccc-5cb3-96ca-f0002bc3c753'::uuid, '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ead31dcf-310d-5c0d-abe0-2fb622c97d43'::uuid, '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid, 'b71701ff-0ccc-5cb3-96ca-f0002bc3c753'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('95f45cbd-1577-5e90-a1e7-1f14268d01af'::uuid, '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid, 'b71701ff-0ccc-5cb3-96ca-f0002bc3c753'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9da35940-bbd4-599c-95d9-88dbabbd05d7'::uuid, '0392fa60-6bcf-535c-9b0b-61d11c875f58'::uuid, '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0758d219-f2a6-5ecf-a5d2-36cb9c6dee2e'::uuid, '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid, '0392fa60-6bcf-535c-9b0b-61d11c875f58'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0c696f9c-4395-5d61-9c93-11cbe775eebd'::uuid, '0392fa60-6bcf-535c-9b0b-61d11c875f58'::uuid, '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6fc8d7c3-2059-5720-84e8-2c0012fe544a'::uuid,
  '0c696f9c-4395-5d61-9c93-11cbe775eebd'::uuid,
  '0392fa60-6bcf-535c-9b0b-61d11c875f58'::uuid,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  'Hi Hannah — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '082ada63-b104-5dfe-aeb5-09395fdadd8f'::uuid,
  '0c696f9c-4395-5d61-9c93-11cbe775eebd'::uuid,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  '0392fa60-6bcf-535c-9b0b-61d11c875f58'::uuid,
  'Thanks Isaac! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d2d4bb62-2f5e-5295-990d-ca32a1ab18b3'::uuid, '31a92ffb-1141-5a66-8e06-de366d600dd7'::uuid, '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6fcf91cb-cfa3-5bdb-be05-bb9d68ecf1e4'::uuid, '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid, '31a92ffb-1141-5a66-8e06-de366d600dd7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('88175fec-c1d1-5acf-ae55-c8866320010f'::uuid, '31a92ffb-1141-5a66-8e06-de366d600dd7'::uuid, '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e4dcd88c-75e0-55eb-b9ab-4777eb8d6623'::uuid, 'c907b363-8018-51fd-b157-c7efc9483a3a'::uuid, 'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fa1347db-4dbb-53ce-9294-366bd6aaf252'::uuid, 'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid, 'c907b363-8018-51fd-b157-c7efc9483a3a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b8acd67f-299a-5d93-b1ce-1f45088b13a6'::uuid, 'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid, 'c907b363-8018-51fd-b157-c7efc9483a3a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '57abbdd1-4f15-580d-aa1c-1ad17d4b5725'::uuid,
  'b8acd67f-299a-5d93-b1ce-1f45088b13a6'::uuid,
  'c907b363-8018-51fd-b157-c7efc9483a3a'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  'Hi Nora — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c171f096-7e9d-50f7-9fb2-9c3aff67c4c7'::uuid,
  'b8acd67f-299a-5d93-b1ce-1f45088b13a6'::uuid,
  'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid,
  'c907b363-8018-51fd-b157-c7efc9483a3a'::uuid,
  'Thanks Felix! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('172d6a88-c372-5a9f-85a4-e6fe65a7973f'::uuid, 'c907b363-8018-51fd-b157-c7efc9483a3a'::uuid, 'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cd914aa7-67e9-5a9e-8e13-fde151adaf33'::uuid, 'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid, 'c907b363-8018-51fd-b157-c7efc9483a3a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('eb6c9ca9-0589-5f3a-a70d-3bc73dd28970'::uuid, 'c76e3013-9ccc-54e7-b7d0-8f70ef55b827'::uuid, 'c907b363-8018-51fd-b157-c7efc9483a3a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8301ae90-423c-587a-a3a5-7f19fd2bf858'::uuid, '9c4efb8c-21ae-57f3-aa6d-9013dfe07bed'::uuid, 'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('682ec584-08c6-503f-a2f0-bd2f154b2c28'::uuid, 'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid, '9c4efb8c-21ae-57f3-aa6d-9013dfe07bed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c601a1f4-f6b0-573b-a816-aa00e459fb70'::uuid, '9c4efb8c-21ae-57f3-aa6d-9013dfe07bed'::uuid, 'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '17d9085c-4e7a-5045-88b6-afc751727868'::uuid,
  'c601a1f4-f6b0-573b-a816-aa00e459fb70'::uuid,
  '9c4efb8c-21ae-57f3-aa6d-9013dfe07bed'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  'Hi Isaac — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;