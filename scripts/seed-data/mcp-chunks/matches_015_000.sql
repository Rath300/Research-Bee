INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8405305c-6d64-5ba8-ba45-2ad90c852ba9'::uuid, '07e78528-7a32-5945-9289-b917095c02bc'::uuid, 'ba7fc771-ba33-54f2-b75c-bf563b08e7e3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('19f2763c-bd29-57d9-b753-6167edc410e2'::uuid, 'f86df400-9392-5e5e-b646-34ad46c78283'::uuid, '50ad2705-6c08-5d3c-a6f7-dd4d59b16af6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1866763f-d17f-5df6-a1ba-6685f4af6d79'::uuid, '50ad2705-6c08-5d3c-a6f7-dd4d59b16af6'::uuid, 'f86df400-9392-5e5e-b646-34ad46c78283'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('817e838f-a2f1-5149-ba4b-cb0dd55317c3'::uuid, '50ad2705-6c08-5d3c-a6f7-dd4d59b16af6'::uuid, 'f86df400-9392-5e5e-b646-34ad46c78283'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8a0d1b4d-c816-54d5-82f3-65df7e1912d9'::uuid,
  '817e838f-a2f1-5149-ba4b-cb0dd55317c3'::uuid,
  'f86df400-9392-5e5e-b646-34ad46c78283'::uuid,
  '50ad2705-6c08-5d3c-a6f7-dd4d59b16af6'::uuid,
  'Hi Hana — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7a63e00c-fa8a-5ee1-906f-d4821efbd484'::uuid,
  '817e838f-a2f1-5149-ba4b-cb0dd55317c3'::uuid,
  '50ad2705-6c08-5d3c-a6f7-dd4d59b16af6'::uuid,
  'f86df400-9392-5e5e-b646-34ad46c78283'::uuid,
  'Thanks Isaac! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7461d2a4-d836-5edb-b05c-20a25ee9c33b'::uuid, 'f7b3b033-ebce-5a30-8f09-ab76dc00d493'::uuid, 'd7da1031-b378-592c-82ed-381c68c0b7ca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5900678a-f3f4-519f-b3f9-4e9e4714dc3c'::uuid, 'd7da1031-b378-592c-82ed-381c68c0b7ca'::uuid, 'f7b3b033-ebce-5a30-8f09-ab76dc00d493'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('44976042-5611-5ec1-b602-5b3c6187b4db'::uuid, 'd7da1031-b378-592c-82ed-381c68c0b7ca'::uuid, 'f7b3b033-ebce-5a30-8f09-ab76dc00d493'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('468736f2-296c-560e-aefd-5889869ed4b5'::uuid, 'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210'::uuid, '15865a04-1474-5ed2-83c7-7253a44f846b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ee6e8555-3d96-5102-b511-9b40c7b57821'::uuid, '15865a04-1474-5ed2-83c7-7253a44f846b'::uuid, 'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('57ca5df7-1e08-533c-b1c0-eed0176dcb33'::uuid, '15865a04-1474-5ed2-83c7-7253a44f846b'::uuid, 'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'dac8037e-5771-549d-80d4-4636777ffb03'::uuid,
  '57ca5df7-1e08-533c-b1c0-eed0176dcb33'::uuid,
  'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210'::uuid,
  '15865a04-1474-5ed2-83c7-7253a44f846b'::uuid,
  'Hi Elena — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cb54c5d1-e70e-5d06-a2ab-4c118b92c39a'::uuid,
  '57ca5df7-1e08-533c-b1c0-eed0176dcb33'::uuid,
  '15865a04-1474-5ed2-83c7-7253a44f846b'::uuid,
  'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210'::uuid,
  'Thanks Felix! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('61ccfd75-44c2-5484-b316-0b163491329d'::uuid, 'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210'::uuid, 'e9cf01e2-c731-5f25-a3b2-0abccfa7cfbe'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7cd80a8d-f7b4-513b-82f1-e51433bbefbd'::uuid, 'e9cf01e2-c731-5f25-a3b2-0abccfa7cfbe'::uuid, 'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bd1280ad-fb0f-5f2f-ade9-e158e1014906'::uuid, 'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210'::uuid, 'e9cf01e2-c731-5f25-a3b2-0abccfa7cfbe'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a4fe4a86-ae5e-5530-8a63-f6f8e5ec49f5'::uuid, '73333d77-69c7-5858-a0a3-c3ac5f504d8b'::uuid, 'aa885fbb-6de3-5ab0-85fd-6ea5a6800fb4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('20c253d6-21e8-5e26-bc83-52f0d8ec9c21'::uuid, 'aa885fbb-6de3-5ab0-85fd-6ea5a6800fb4'::uuid, '73333d77-69c7-5858-a0a3-c3ac5f504d8b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('43caa7b6-1e10-5841-943d-0ee709e47b7b'::uuid, '73333d77-69c7-5858-a0a3-c3ac5f504d8b'::uuid, 'aa885fbb-6de3-5ab0-85fd-6ea5a6800fb4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7c89b686-9557-5b9a-ad7e-19b86817c336'::uuid,
  '43caa7b6-1e10-5841-943d-0ee709e47b7b'::uuid,
  '73333d77-69c7-5858-a0a3-c3ac5f504d8b'::uuid,
  'aa885fbb-6de3-5ab0-85fd-6ea5a6800fb4'::uuid,
  'Hi Rohan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8e1e5695-3116-59b0-8c6d-07e3a1345f24'::uuid,
  '43caa7b6-1e10-5841-943d-0ee709e47b7b'::uuid,
  'aa885fbb-6de3-5ab0-85fd-6ea5a6800fb4'::uuid,
  '73333d77-69c7-5858-a0a3-c3ac5f504d8b'::uuid,
  'Thanks Sara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ea8e55bd-d1aa-5958-98ee-d08ebf9e7557'::uuid, '7ccb1fe0-e8a9-5309-a20c-f4eec4fe5156'::uuid, '7bb33105-f9a4-5ba2-b9bc-caaf0a756d2b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b800a6f8-950e-591e-95c0-ccc754c3eb27'::uuid, '7bb33105-f9a4-5ba2-b9bc-caaf0a756d2b'::uuid, '7ccb1fe0-e8a9-5309-a20c-f4eec4fe5156'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5e4e420c-db5a-5639-b586-e2708fb63960'::uuid, '7bb33105-f9a4-5ba2-b9bc-caaf0a756d2b'::uuid, '7ccb1fe0-e8a9-5309-a20c-f4eec4fe5156'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3c84950f-401b-5094-8296-c4f6a8ba5be3'::uuid, 'e490df88-38c2-5929-9c18-233d575e2a3c'::uuid, '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3ddbc9b5-da1d-5ab3-8952-77b0e122e00d'::uuid, '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid, 'e490df88-38c2-5929-9c18-233d575e2a3c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('519e98f4-1db3-5275-9b20-42785dfb5670'::uuid, '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid, 'e490df88-38c2-5929-9c18-233d575e2a3c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '741ccf48-0908-5371-bc55-5a874baee8d4'::uuid,
  '519e98f4-1db3-5275-9b20-42785dfb5670'::uuid,
  'e490df88-38c2-5929-9c18-233d575e2a3c'::uuid,
  '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid,
  'Hi Samir — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'beae1f49-0d3b-5b81-a1d2-97ecf9d2921a'::uuid,
  '519e98f4-1db3-5275-9b20-42785dfb5670'::uuid,
  '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid,
  'e490df88-38c2-5929-9c18-233d575e2a3c'::uuid,
  'Thanks Grace! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b36bd570-fb50-578f-a682-f26097a7d04a'::uuid, '4d8cd75d-d374-569f-85a8-6440bd0fe5a2'::uuid, 'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9d752244-351f-5d4a-a900-a09464fcfcbb'::uuid, 'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid, '4d8cd75d-d374-569f-85a8-6440bd0fe5a2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ffcfb397-75d1-5c97-b841-e267d71f0743'::uuid, '4d8cd75d-d374-569f-85a8-6440bd0fe5a2'::uuid, 'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2a45f768-6a8b-5cd4-874e-3076eb330c59'::uuid, '0c81417a-20bd-5878-bb5d-1d34f41f817b'::uuid, '89aa91c4-b9ae-510d-a439-dabca78c14c8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5f32a709-9c2a-5320-b42e-951b6590f1c6'::uuid, '89aa91c4-b9ae-510d-a439-dabca78c14c8'::uuid, '0c81417a-20bd-5878-bb5d-1d34f41f817b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8e675275-9401-5289-9fdd-b1368f3b9be5'::uuid, '0c81417a-20bd-5878-bb5d-1d34f41f817b'::uuid, '89aa91c4-b9ae-510d-a439-dabca78c14c8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b7b8ccab-54fc-5937-ae0b-fa5392ce111e'::uuid,
  '8e675275-9401-5289-9fdd-b1368f3b9be5'::uuid,
  '0c81417a-20bd-5878-bb5d-1d34f41f817b'::uuid,
  '89aa91c4-b9ae-510d-a439-dabca78c14c8'::uuid,
  'Hi Daniel — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8e50a775-6025-5b99-8b41-307eab0fef51'::uuid,
  '8e675275-9401-5289-9fdd-b1368f3b9be5'::uuid,
  '89aa91c4-b9ae-510d-a439-dabca78c14c8'::uuid,
  '0c81417a-20bd-5878-bb5d-1d34f41f817b'::uuid,
  'Thanks Isla! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('552fb76f-5a44-5344-8bc7-95223cae01e1'::uuid, '0c81417a-20bd-5878-bb5d-1d34f41f817b'::uuid, 'e3b015fb-e2b1-5f62-9882-ced1747b09f9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('daed4a44-3b9d-5afd-90c7-b337512d7118'::uuid, 'e3b015fb-e2b1-5f62-9882-ced1747b09f9'::uuid, '0c81417a-20bd-5878-bb5d-1d34f41f817b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;