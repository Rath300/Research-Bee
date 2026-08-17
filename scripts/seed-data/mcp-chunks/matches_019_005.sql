INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b82cff3b-e874-528c-9ea4-58787e386b1f'::uuid,
  'c601a1f4-f6b0-573b-a816-aa00e459fb70'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  '9c4efb8c-21ae-57f3-aa6d-9013dfe07bed'::uuid,
  'Thanks Sara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3ea9a0c1-7b23-54d8-9cfd-cefe4e391464'::uuid, '260a37d7-cab0-5455-a9ea-4fdfc304c263'::uuid, '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('81412ed9-6a26-5bb7-aa30-3e73caf0197c'::uuid, '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid, '260a37d7-cab0-5455-a9ea-4fdfc304c263'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f0040b27-d259-5510-b8fa-b0e94088ef81'::uuid, '260a37d7-cab0-5455-a9ea-4fdfc304c263'::uuid, '3c1381f6-3bd4-58f0-a16f-7970097753d8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d90d7e45-ce77-58cd-a234-4ce7e7a4c9a0'::uuid, '4868a21a-f8c4-5dde-a114-6b20f5f20ac8'::uuid, '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('53498a73-32ba-57d8-89db-92c4ca284a65'::uuid, '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid, '4868a21a-f8c4-5dde-a114-6b20f5f20ac8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c2ec8765-c4f6-5df0-b32e-42df33fdc792'::uuid, '4868a21a-f8c4-5dde-a114-6b20f5f20ac8'::uuid, '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '77f17161-b812-5a52-b67b-6a190778d901'::uuid,
  'c2ec8765-c4f6-5df0-b32e-42df33fdc792'::uuid,
  '4868a21a-f8c4-5dde-a114-6b20f5f20ac8'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  'Hi Felix — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e67cbb60-8c0a-527d-b842-ae58a6bfdeff'::uuid,
  'c2ec8765-c4f6-5df0-b32e-42df33fdc792'::uuid,
  '4c3e76fa-0ddb-50bc-a671-89848b278b2f'::uuid,
  '4868a21a-f8c4-5dde-a114-6b20f5f20ac8'::uuid,
  'Thanks Grace! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('063c8621-414b-5edc-af37-3d8f8e4fb8f0'::uuid, '2793edac-d756-588c-b8dd-e83001afa7ec'::uuid, 'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('89278e92-807d-54c6-afd4-f7aa2370c984'::uuid, 'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid, '2793edac-d756-588c-b8dd-e83001afa7ec'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0919896f-c66a-5cad-9c4f-618bce48f244'::uuid, '2793edac-d756-588c-b8dd-e83001afa7ec'::uuid, 'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('35113854-e938-59a3-a15e-2c68ffd21c35'::uuid, '5deccd0c-da20-597e-b695-dd11f98e387e'::uuid, 'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9a141b5a-d83a-502d-855c-8c368cc09e59'::uuid, 'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid, '5deccd0c-da20-597e-b695-dd11f98e387e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4d2ad637-d2ab-5dcb-b2fc-9cc742e06769'::uuid, '5deccd0c-da20-597e-b695-dd11f98e387e'::uuid, 'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ffa92a65-1fc1-5e53-a521-d547e89cf0f6'::uuid,
  '4d2ad637-d2ab-5dcb-b2fc-9cc742e06769'::uuid,
  '5deccd0c-da20-597e-b695-dd11f98e387e'::uuid,
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  'Hi James — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5a9dd84a-5362-5e3f-b11e-62f760a2bf79'::uuid,
  '4d2ad637-d2ab-5dcb-b2fc-9cc742e06769'::uuid,
  'c5ea69a5-afb0-5cdb-9d92-40262165695f'::uuid,
  '5deccd0c-da20-597e-b695-dd11f98e387e'::uuid,
  'Thanks Isla! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('18c85ab9-945e-527f-880b-263b61361d9d'::uuid, '5deccd0c-da20-597e-b695-dd11f98e387e'::uuid, 'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('46cbc8ff-6be2-5a40-a2ba-96aad566111d'::uuid, 'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid, '5deccd0c-da20-597e-b695-dd11f98e387e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6a1d54c4-4be7-5e7b-b9d3-dfb921845881'::uuid, '5deccd0c-da20-597e-b695-dd11f98e387e'::uuid, 'b42e0014-ffee-565d-bb75-bc5256bb4798'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('52a90106-7632-5d18-a961-35cf4df2de1c'::uuid, '0033dc27-0b51-5a94-8a47-524ed782f504'::uuid, 'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4c97639f-80f5-5b14-9385-9f4bef3b5811'::uuid, 'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid, '0033dc27-0b51-5a94-8a47-524ed782f504'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8a25d6d1-1369-5526-ac28-dd58e2d33593'::uuid, '0033dc27-0b51-5a94-8a47-524ed782f504'::uuid, 'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1a8e5fa5-637b-5558-8d0a-a52552bfb37f'::uuid,
  '8a25d6d1-1369-5526-ac28-dd58e2d33593'::uuid,
  '0033dc27-0b51-5a94-8a47-524ed782f504'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  'Hi Grace — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0cd6298b-334f-56cf-951a-41bbd2c505fd'::uuid,
  '8a25d6d1-1369-5526-ac28-dd58e2d33593'::uuid,
  'cb9b4f11-a112-5fce-bd18-919d39edae5c'::uuid,
  '0033dc27-0b51-5a94-8a47-524ed782f504'::uuid,
  'Thanks Theo! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e0d66708-05cb-50e3-b8a6-0177090b706a'::uuid, '583bfe91-cab4-5267-967b-ebddedc1ff8b'::uuid, 'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('322ac631-8e57-5439-bf4f-64f1f154f047'::uuid, 'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid, '583bfe91-cab4-5267-967b-ebddedc1ff8b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9b43f874-587a-5641-a483-fdc7075c6d40'::uuid, '583bfe91-cab4-5267-967b-ebddedc1ff8b'::uuid, 'dd91f09c-8d09-5595-bb40-08e71cdda7c8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c02d43eb-57b3-50b5-938b-abf37278d60b'::uuid, 'a635b5eb-484e-505c-bfe4-65921d2c8a00'::uuid, '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e1bae175-3272-51d5-9500-c0f220c2ea94'::uuid, '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid, 'a635b5eb-484e-505c-bfe4-65921d2c8a00'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0119a522-71d9-5ad2-8559-6a4473af04cc'::uuid, '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid, 'a635b5eb-484e-505c-bfe4-65921d2c8a00'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '559b7a10-6cba-5e6a-ae92-e614e6636b2b'::uuid,
  '0119a522-71d9-5ad2-8559-6a4473af04cc'::uuid,
  'a635b5eb-484e-505c-bfe4-65921d2c8a00'::uuid,
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  'Hi Isla — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '40ed5827-a222-54e1-af09-d220a6c12e4a'::uuid,
  '0119a522-71d9-5ad2-8559-6a4473af04cc'::uuid,
  '0cdac292-5ccb-5dbb-bb01-5791779407d1'::uuid,
  'a635b5eb-484e-505c-bfe4-65921d2c8a00'::uuid,
  'Thanks Lucas! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5462db52-3433-5b59-bf50-e54e527db458'::uuid, 'fade7767-529a-55b3-b6ca-4e25b88b90fb'::uuid, '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8a33b735-d3e1-5619-8888-c0f7a1b8ea1e'::uuid, '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid, 'fade7767-529a-55b3-b6ca-4e25b88b90fb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('149bc454-cdfc-5e56-ab13-70e649d5d1c2'::uuid, '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid, 'fade7767-529a-55b3-b6ca-4e25b88b90fb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cb1ea357-60ca-589c-bba2-6706d51fce62'::uuid, '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid, 'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('53230aa3-887f-55e0-b3df-97fb11187ca4'::uuid, 'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid, '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('67908430-fb79-54f4-9263-eca2d7d31bc8'::uuid, '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid, 'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd32dbb9d-95da-51d2-bb28-defd071106ef'::uuid,
  '67908430-fb79-54f4-9263-eca2d7d31bc8'::uuid,
  '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid,
  'c4795637-3d3c-53be-8dba-8e6e4de6ba0a'::uuid,
  'Hi Yara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;