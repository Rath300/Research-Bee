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

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ad31acb3-355e-5034-aee2-d9e73b464d09'::uuid, '0c81417a-20bd-5878-bb5d-1d34f41f817b'::uuid, 'e3b015fb-e2b1-5f62-9882-ced1747b09f9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1fc787e2-b0e9-5cb8-a6df-732485dc6592'::uuid, 'b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b'::uuid, '85a88a42-7b3b-5fdb-a22a-99a60988005b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0a4f3b9a-7660-58a3-a774-191820911316'::uuid, '85a88a42-7b3b-5fdb-a22a-99a60988005b'::uuid, 'b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0fe98d81-7371-5aba-ab30-5dcbf39ef13b'::uuid, '85a88a42-7b3b-5fdb-a22a-99a60988005b'::uuid, 'b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2edf3208-d8a4-518e-8f00-b6e9c2c24f6b'::uuid,
  '0fe98d81-7371-5aba-ab30-5dcbf39ef13b'::uuid,
  'b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b'::uuid,
  '85a88a42-7b3b-5fdb-a22a-99a60988005b'::uuid,
  'Hi Nina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8dabc0b3-ba5b-51a3-9d62-c99e51f41580'::uuid,
  '0fe98d81-7371-5aba-ab30-5dcbf39ef13b'::uuid,
  '85a88a42-7b3b-5fdb-a22a-99a60988005b'::uuid,
  'b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b'::uuid,
  'Thanks Theo! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a56bcd82-2e1d-57a6-adf1-59519c02b725'::uuid, '81cf8362-41ca-534d-8d37-48b6fd6c7739'::uuid, '4f80ee7a-7c51-5b23-b65f-24dd7396e442'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4eced756-d330-5b8a-b1a6-2e9fb4819b3f'::uuid, '4f80ee7a-7c51-5b23-b65f-24dd7396e442'::uuid, '81cf8362-41ca-534d-8d37-48b6fd6c7739'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('aaa6bce8-c22d-5e76-9d75-332b6ba63bd5'::uuid, '4f80ee7a-7c51-5b23-b65f-24dd7396e442'::uuid, '81cf8362-41ca-534d-8d37-48b6fd6c7739'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c9d2efd2-f706-5251-901a-5c70d81d644b'::uuid, '7cc7401c-94bd-5f9c-ae2e-38ffaaeeb8e9'::uuid, 'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cfed1592-546f-5029-9c3f-145d78ee661f'::uuid, 'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid, '7cc7401c-94bd-5f9c-ae2e-38ffaaeeb8e9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('42a46406-5477-5cab-98e7-f72ae7953b01'::uuid, '7cc7401c-94bd-5f9c-ae2e-38ffaaeeb8e9'::uuid, 'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3c1b00ff-38c8-5e83-9950-e65ab6c68b02'::uuid,
  '42a46406-5477-5cab-98e7-f72ae7953b01'::uuid,
  '7cc7401c-94bd-5f9c-ae2e-38ffaaeeb8e9'::uuid,
  'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid,
  'Hi Sofia — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '32fddaf1-5339-56c0-a66b-3e32185da763'::uuid,
  '42a46406-5477-5cab-98e7-f72ae7953b01'::uuid,
  'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid,
  '7cc7401c-94bd-5f9c-ae2e-38ffaaeeb8e9'::uuid,
  'Thanks Lucas! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('08d20879-9974-5ca4-beb5-13ecebe9c28e'::uuid, 'd670e0d8-a814-5c12-8c3a-fe0efb45bd7a'::uuid, 'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8001edac-5a04-58f2-9eca-ed62e1060c02'::uuid, 'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid, 'd670e0d8-a814-5c12-8c3a-fe0efb45bd7a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('903bebcc-86a8-5f8a-9816-a8001c71a399'::uuid, 'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid, 'd670e0d8-a814-5c12-8c3a-fe0efb45bd7a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fa846450-b76e-5392-8ba3-295f0c95e8a7'::uuid, '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid, 'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('acdec470-60bb-5852-8973-fc6e95b97c23'::uuid, 'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid, '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('09b9615d-c716-55ce-9392-d5342ba5eb26'::uuid, '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid, 'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ca256a6d-cb7e-516c-b501-d702181930a1'::uuid,
  '09b9615d-c716-55ce-9392-d5342ba5eb26'::uuid,
  '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid,
  'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid,
  'Hi Zara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6ad9695a-67a0-5213-b028-0b9e8ac109b3'::uuid,
  '09b9615d-c716-55ce-9392-d5342ba5eb26'::uuid,
  'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid,
  '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid,
  'Thanks David! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('31e53a7d-22ec-5ee4-bf62-c328ebc08765'::uuid, '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid, '2f7357e8-f852-5e6d-a819-d0062717ec63'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1f1d341c-c471-5d3e-9b31-a347ce978d14'::uuid, '2f7357e8-f852-5e6d-a819-d0062717ec63'::uuid, '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6e5e9a7f-39bb-5a11-8fc2-fc7754af4458'::uuid, '2f7357e8-f852-5e6d-a819-d0062717ec63'::uuid, '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ae833364-98a2-58a2-a219-f874920f206d'::uuid, '67542a7b-0a85-5077-bd31-13e04bc34e8f'::uuid, '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ae765dd3-8e7c-5083-b3ee-e543612f97bb'::uuid, '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid, '67542a7b-0a85-5077-bd31-13e04bc34e8f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0e319963-9283-57b6-ad56-6f12e6588d2b'::uuid, '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid, '67542a7b-0a85-5077-bd31-13e04bc34e8f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '13b8d22e-0202-580c-82aa-c367fa7e77a2'::uuid,
  '0e319963-9283-57b6-ad56-6f12e6588d2b'::uuid,
  '67542a7b-0a85-5077-bd31-13e04bc34e8f'::uuid,
  '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid,
  'Hi Kai — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ddfa8082-c0e9-564c-a92a-c12abc3088b8'::uuid,
  '0e319963-9283-57b6-ad56-6f12e6588d2b'::uuid,
  '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid,
  '67542a7b-0a85-5077-bd31-13e04bc34e8f'::uuid,
  'Thanks Aisha! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e31fdc81-23e1-5191-b60f-d0febdd8f50e'::uuid, 'f0b6a384-fa41-5f30-8508-7717e8c5d4fc'::uuid, '1930b2bd-9292-5ae1-8aa8-87ba01cf39b3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3d1ba74d-51ac-5941-a689-c7b30f34417b'::uuid, '1930b2bd-9292-5ae1-8aa8-87ba01cf39b3'::uuid, 'f0b6a384-fa41-5f30-8508-7717e8c5d4fc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dd762ab6-1eef-5a4f-83ed-f5ad80cc2e94'::uuid, '1930b2bd-9292-5ae1-8aa8-87ba01cf39b3'::uuid, 'f0b6a384-fa41-5f30-8508-7717e8c5d4fc'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('367863f8-9856-5fe1-be30-3ec17b72c277'::uuid, '58f91761-2dc2-582b-8d47-64a7f02a5619'::uuid, '113d16a0-5709-5fb9-8d07-e289327584ed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f8409aa1-ad91-5a06-a0e8-d3c816bddf80'::uuid, '113d16a0-5709-5fb9-8d07-e289327584ed'::uuid, '58f91761-2dc2-582b-8d47-64a7f02a5619'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('645123c8-a518-5118-88f5-671a135dd150'::uuid, '113d16a0-5709-5fb9-8d07-e289327584ed'::uuid, '58f91761-2dc2-582b-8d47-64a7f02a5619'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7a4a14fd-ccde-5a63-bd87-9a8c60590a74'::uuid,
  '645123c8-a518-5118-88f5-671a135dd150'::uuid,
  '58f91761-2dc2-582b-8d47-64a7f02a5619'::uuid,
  '113d16a0-5709-5fb9-8d07-e289327584ed'::uuid,
  'Hi Benjamin — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '248e7b24-440d-572e-a3d8-05ffe81156c1'::uuid,
  '645123c8-a518-5118-88f5-671a135dd150'::uuid,
  '113d16a0-5709-5fb9-8d07-e289327584ed'::uuid,
  '58f91761-2dc2-582b-8d47-64a7f02a5619'::uuid,
  'Thanks Nadia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('19c642e6-573f-589a-be5c-e28bb8281f78'::uuid, '3d066e72-74c1-5d8d-ba3f-96311bb9e942'::uuid, 'ed19adb5-3942-532c-aeef-104ad492eab3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('025f2a08-3e8b-595b-bb94-9c99f1801440'::uuid, 'ed19adb5-3942-532c-aeef-104ad492eab3'::uuid, '3d066e72-74c1-5d8d-ba3f-96311bb9e942'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f38074b9-7db1-5b25-a82d-387105c062a5'::uuid, '3d066e72-74c1-5d8d-ba3f-96311bb9e942'::uuid, 'ed19adb5-3942-532c-aeef-104ad492eab3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('16051e48-6c67-59e2-9c78-7bdbe75da7f8'::uuid, 'cbdfa327-b276-57c7-8554-37966d1b054b'::uuid, 'd708a5b4-b620-51f1-80dc-cab1cf1aba19'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('73dc3ade-8a47-57ab-8bfd-1f8b800a69f3'::uuid, 'd708a5b4-b620-51f1-80dc-cab1cf1aba19'::uuid, 'cbdfa327-b276-57c7-8554-37966d1b054b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1bab87da-3ae0-55f4-80da-631b66331173'::uuid, 'cbdfa327-b276-57c7-8554-37966d1b054b'::uuid, 'd708a5b4-b620-51f1-80dc-cab1cf1aba19'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b0fd1664-8945-5c6f-b719-2b8f10272ca7'::uuid,
  '1bab87da-3ae0-55f4-80da-631b66331173'::uuid,
  'cbdfa327-b276-57c7-8554-37966d1b054b'::uuid,
  'd708a5b4-b620-51f1-80dc-cab1cf1aba19'::uuid,
  'Hi Sebastian — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd4200219-a1c4-5e2c-b677-62efbb64df85'::uuid,
  '1bab87da-3ae0-55f4-80da-631b66331173'::uuid,
  'd708a5b4-b620-51f1-80dc-cab1cf1aba19'::uuid,
  'cbdfa327-b276-57c7-8554-37966d1b054b'::uuid,
  'Thanks Mei! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('21585faa-bb4f-5682-a3f2-1070efb7b308'::uuid, 'cbdfa327-b276-57c7-8554-37966d1b054b'::uuid, 'eae2b40f-cbad-57de-b268-6c4b724cc18c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ad60f59e-9081-5149-b7c2-3f86ad40995d'::uuid, 'eae2b40f-cbad-57de-b268-6c4b724cc18c'::uuid, 'cbdfa327-b276-57c7-8554-37966d1b054b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fd1330e2-ef4a-5141-a44b-b73e39293df7'::uuid, 'cbdfa327-b276-57c7-8554-37966d1b054b'::uuid, 'eae2b40f-cbad-57de-b268-6c4b724cc18c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('07659d01-3544-5701-9ce2-19f9e488dc43'::uuid, '08db061d-1b19-5130-bfeb-39ece1268dcb'::uuid, '13eeb55e-7dde-51bb-b7f5-3db2c62e28e7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9000bf8a-18d3-5337-9525-847560f7df88'::uuid, '13eeb55e-7dde-51bb-b7f5-3db2c62e28e7'::uuid, '08db061d-1b19-5130-bfeb-39ece1268dcb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('05d11951-3f6c-5c80-a1ff-e225a6afa717'::uuid, '08db061d-1b19-5130-bfeb-39ece1268dcb'::uuid, '13eeb55e-7dde-51bb-b7f5-3db2c62e28e7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '592b2f18-59b1-596f-baa1-33010d9d7d22'::uuid,
  '05d11951-3f6c-5c80-a1ff-e225a6afa717'::uuid,
  '08db061d-1b19-5130-bfeb-39ece1268dcb'::uuid,
  '13eeb55e-7dde-51bb-b7f5-3db2c62e28e7'::uuid,
  'Hi Amina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '35497425-8a18-59e9-9ebe-c877ee37c599'::uuid,
  '05d11951-3f6c-5c80-a1ff-e225a6afa717'::uuid,
  '13eeb55e-7dde-51bb-b7f5-3db2c62e28e7'::uuid,
  '08db061d-1b19-5130-bfeb-39ece1268dcb'::uuid,
  'Thanks Henry! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ca151e41-799f-5e8d-b7c6-55bfa439cae3'::uuid, 'eaed69b5-c60d-5133-86c3-ed579a4125f2'::uuid, '32c996f0-f86e-5230-9f69-860c68c2a67c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c8cc2514-0981-50e0-8e35-7680746db052'::uuid, '32c996f0-f86e-5230-9f69-860c68c2a67c'::uuid, 'eaed69b5-c60d-5133-86c3-ed579a4125f2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4a217675-48ba-58cf-a1e9-892059884ecb'::uuid, '32c996f0-f86e-5230-9f69-860c68c2a67c'::uuid, 'eaed69b5-c60d-5133-86c3-ed579a4125f2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('078fe5bb-a8b2-5a65-8e2e-37acc9c7a991'::uuid, '65b33e40-2eb6-5baa-bc71-7a8885b5779f'::uuid, '09f6f046-2d8f-58d1-be5f-2a968e9c243e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b015d431-1e85-5e80-bd95-943faf89cf58'::uuid, '09f6f046-2d8f-58d1-be5f-2a968e9c243e'::uuid, '65b33e40-2eb6-5baa-bc71-7a8885b5779f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e0a71de5-864b-5168-a890-a259224a3253'::uuid, '09f6f046-2d8f-58d1-be5f-2a968e9c243e'::uuid, '65b33e40-2eb6-5baa-bc71-7a8885b5779f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8181dad6-2664-5f5d-b30b-2f15865b8ccc'::uuid,
  'e0a71de5-864b-5168-a890-a259224a3253'::uuid,
  '65b33e40-2eb6-5baa-bc71-7a8885b5779f'::uuid,
  '09f6f046-2d8f-58d1-be5f-2a968e9c243e'::uuid,
  'Hi Hannah — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '80c93064-ad18-5c84-95d4-69f55bbfbe19'::uuid,
  'e0a71de5-864b-5168-a890-a259224a3253'::uuid,
  '09f6f046-2d8f-58d1-be5f-2a968e9c243e'::uuid,
  '65b33e40-2eb6-5baa-bc71-7a8885b5779f'::uuid,
  'Thanks Nathan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('38e6a909-3116-55e4-aa72-1d5e805ca0e2'::uuid, '862f430e-1fe4-5ce4-a791-d17a77f2153c'::uuid, '3ded6ddb-d842-54f0-abf2-3e272b3178be'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a005ebda-c779-5ffa-92cd-f2dca7e8b1e1'::uuid, '3ded6ddb-d842-54f0-abf2-3e272b3178be'::uuid, '862f430e-1fe4-5ce4-a791-d17a77f2153c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8e940dd3-c451-5faf-8984-c089c0002872'::uuid, '3ded6ddb-d842-54f0-abf2-3e272b3178be'::uuid, '862f430e-1fe4-5ce4-a791-d17a77f2153c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ccb7d3f3-0e98-56b9-af6d-8a5335e1b780'::uuid, 'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid, 'b8aa1b83-3c0a-53f5-a401-eacdd52c5a59'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ccbecb13-586d-547f-97e6-1c0670f8f105'::uuid, 'b8aa1b83-3c0a-53f5-a401-eacdd52c5a59'::uuid, 'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2a60b090-3ce5-5098-a917-464c07b19507'::uuid, 'b8aa1b83-3c0a-53f5-a401-eacdd52c5a59'::uuid, 'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd65d571b-1311-566c-abdd-47108b71beb0'::uuid,
  '2a60b090-3ce5-5098-a917-464c07b19507'::uuid,
  'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid,
  'b8aa1b83-3c0a-53f5-a401-eacdd52c5a59'::uuid,
  'Hi Nora — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '45eb7a2a-522d-53b9-90fe-06b23b017e8c'::uuid,
  '2a60b090-3ce5-5098-a917-464c07b19507'::uuid,
  'b8aa1b83-3c0a-53f5-a401-eacdd52c5a59'::uuid,
  'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid,
  'Thanks Omar! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dc16dfd4-a96f-5a64-8717-008577af1f47'::uuid, 'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid, '53a7a968-97f9-5f8a-be3a-9717574c6e58'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7c4272c8-de62-54ff-8f1f-b77a5caa9734'::uuid, '53a7a968-97f9-5f8a-be3a-9717574c6e58'::uuid, 'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a618bf10-b826-5110-8fcf-4468ff8523b8'::uuid, '53a7a968-97f9-5f8a-be3a-9717574c6e58'::uuid, 'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('03f46ef8-c1ca-54e2-809e-d6aea3f83755'::uuid, '596f1efc-5edd-5271-b22f-b2020762115f'::uuid, 'b2898457-57d2-5375-845d-3da865e52c68'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8a3212ae-3822-5d6d-b25d-7c27b654a5a2'::uuid, 'b2898457-57d2-5375-845d-3da865e52c68'::uuid, '596f1efc-5edd-5271-b22f-b2020762115f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('26887b84-8b7f-5e52-937b-8ade7f030deb'::uuid, '596f1efc-5edd-5271-b22f-b2020762115f'::uuid, 'b2898457-57d2-5375-845d-3da865e52c68'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '303e7bb5-004d-5dd5-843b-8094876c1441'::uuid,
  '26887b84-8b7f-5e52-937b-8ade7f030deb'::uuid,
  '596f1efc-5edd-5271-b22f-b2020762115f'::uuid,
  'b2898457-57d2-5375-845d-3da865e52c68'::uuid,
  'Hi Isaac — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cdf5f430-ca43-51c2-ad76-4441b6f32fbb'::uuid,
  '26887b84-8b7f-5e52-937b-8ade7f030deb'::uuid,
  'b2898457-57d2-5375-845d-3da865e52c68'::uuid,
  '596f1efc-5edd-5271-b22f-b2020762115f'::uuid,
  'Thanks Chloe! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c6bdc5cd-b30d-5a9e-a7b9-779f96531130'::uuid, '3f7dcc86-e0ad-5d04-8fba-af19edc21152'::uuid, '90318e9c-7673-5d60-8f47-d5f4fd26dbd6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('958598e1-30aa-5e7f-8692-017bfde55fa4'::uuid, '90318e9c-7673-5d60-8f47-d5f4fd26dbd6'::uuid, '3f7dcc86-e0ad-5d04-8fba-af19edc21152'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

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

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2f281d63-5f26-5a21-bf4a-b38109e1e586'::uuid, '337045f6-3ef4-54fc-a3cb-5ebf6f7a70a4'::uuid, 'b6490efa-6d6a-5491-af21-1ed30bf639f0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cc38b5fa-9ae4-5cde-abdf-f3382be9c3a6'::uuid, 'fc5ffa00-9523-5cbc-b75c-9624baeb1992'::uuid, '138b24f6-2614-5f93-970c-fd5a958ff796'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5ddd9c35-bada-5879-bb75-db5cd2c13255'::uuid, '138b24f6-2614-5f93-970c-fd5a958ff796'::uuid, 'fc5ffa00-9523-5cbc-b75c-9624baeb1992'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dd1fd252-904b-5f28-a0c3-4b6f5c9f771e'::uuid, '138b24f6-2614-5f93-970c-fd5a958ff796'::uuid, 'fc5ffa00-9523-5cbc-b75c-9624baeb1992'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2eb53d0c-2443-584c-8e4c-7cd8fd28ef93'::uuid,
  'dd1fd252-904b-5f28-a0c3-4b6f5c9f771e'::uuid,
  'fc5ffa00-9523-5cbc-b75c-9624baeb1992'::uuid,
  '138b24f6-2614-5f93-970c-fd5a958ff796'::uuid,
  'Hi Lucas — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a17f741e-f638-5453-bdf2-be74781d7b50'::uuid,
  'dd1fd252-904b-5f28-a0c3-4b6f5c9f771e'::uuid,
  '138b24f6-2614-5f93-970c-fd5a958ff796'::uuid,
  'fc5ffa00-9523-5cbc-b75c-9624baeb1992'::uuid,
  'Thanks Leila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('60212f10-60b9-57ce-96ac-89c33ea9333d'::uuid, 'b81754bd-ca00-5b38-b9dd-84e4572e645e'::uuid, 'b6eb43c5-600f-5ee8-ab63-a5bf5ad349ab'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('417515b5-15c5-5d63-a1cf-0c28afbaa52a'::uuid, 'b6eb43c5-600f-5ee8-ab63-a5bf5ad349ab'::uuid, 'b81754bd-ca00-5b38-b9dd-84e4572e645e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c58a7421-7f1d-5990-9bd4-e3195fbc905e'::uuid, 'b6eb43c5-600f-5ee8-ab63-a5bf5ad349ab'::uuid, 'b81754bd-ca00-5b38-b9dd-84e4572e645e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ebe32cf5-ff05-5b58-b429-a7322e67e651'::uuid, 'bc781f9c-1d1a-53c6-aaec-f25806c05382'::uuid, 'b1e72a51-f356-529d-b1eb-19edd96f02cb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f14c816a-eb25-5c25-bc4d-88e2c8448bd3'::uuid, 'b1e72a51-f356-529d-b1eb-19edd96f02cb'::uuid, 'bc781f9c-1d1a-53c6-aaec-f25806c05382'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f3149175-c33e-59ec-b7c7-f1c030283815'::uuid, 'b1e72a51-f356-529d-b1eb-19edd96f02cb'::uuid, 'bc781f9c-1d1a-53c6-aaec-f25806c05382'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f35372ff-c2ea-5fce-b714-545851f07ac5'::uuid,
  'f3149175-c33e-59ec-b7c7-f1c030283815'::uuid,
  'bc781f9c-1d1a-53c6-aaec-f25806c05382'::uuid,
  'b1e72a51-f356-529d-b1eb-19edd96f02cb'::uuid,
  'Hi David — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a960482f-857b-585f-9387-f7daaffafa43'::uuid,
  'f3149175-c33e-59ec-b7c7-f1c030283815'::uuid,
  'b1e72a51-f356-529d-b1eb-19edd96f02cb'::uuid,
  'bc781f9c-1d1a-53c6-aaec-f25806c05382'::uuid,
  'Thanks Sana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('515d2927-1414-5bd7-95e8-963516dc37a0'::uuid, 'ba7fc771-ba33-54f2-b75c-bf563b08e7e3'::uuid, 'a6a3a75d-592b-5db5-94cc-5d78a74d7890'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('aa60624b-d3fc-578a-ab01-d9a40c6856cd'::uuid, 'a6a3a75d-592b-5db5-94cc-5d78a74d7890'::uuid, 'ba7fc771-ba33-54f2-b75c-bf563b08e7e3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('57c0d5c5-5e4a-5258-9893-1cc5d98ce50f'::uuid, 'a6a3a75d-592b-5db5-94cc-5d78a74d7890'::uuid, 'ba7fc771-ba33-54f2-b75c-bf563b08e7e3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ade96ab5-0c99-5cdd-9d7b-ba478d4127e2'::uuid, '50ad2705-6c08-5d3c-a6f7-dd4d59b16af6'::uuid, '0b206d9d-85dd-5e6b-b77d-5850790c8b18'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('309dbb8b-6d2c-572e-baf4-4f50a0d7bbfc'::uuid, '0b206d9d-85dd-5e6b-b77d-5850790c8b18'::uuid, '50ad2705-6c08-5d3c-a6f7-dd4d59b16af6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('22f7924e-85ef-53c1-8105-fd2d4ddc0aa0'::uuid, '0b206d9d-85dd-5e6b-b77d-5850790c8b18'::uuid, '50ad2705-6c08-5d3c-a6f7-dd4d59b16af6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '118797f1-b5fb-52b9-bcdc-484e493621d0'::uuid,
  '22f7924e-85ef-53c1-8105-fd2d4ddc0aa0'::uuid,
  '50ad2705-6c08-5d3c-a6f7-dd4d59b16af6'::uuid,
  '0b206d9d-85dd-5e6b-b77d-5850790c8b18'::uuid,
  'Hi Diego — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '193b761f-44ae-531e-aadd-39af4b22219f'::uuid,
  '22f7924e-85ef-53c1-8105-fd2d4ddc0aa0'::uuid,
  '0b206d9d-85dd-5e6b-b77d-5850790c8b18'::uuid,
  '50ad2705-6c08-5d3c-a6f7-dd4d59b16af6'::uuid,
  'Thanks Hana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c4b799a2-4fcc-50b5-8e71-4f83f803196b'::uuid, '50ad2705-6c08-5d3c-a6f7-dd4d59b16af6'::uuid, 'e8942547-2905-5750-a298-06aa7d0cac82'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b0beae8f-e9df-5234-a207-5d6b143b381d'::uuid, 'e8942547-2905-5750-a298-06aa7d0cac82'::uuid, '50ad2705-6c08-5d3c-a6f7-dd4d59b16af6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('436ffe99-f55f-58a4-836e-66541ee897ed'::uuid, '50ad2705-6c08-5d3c-a6f7-dd4d59b16af6'::uuid, 'e8942547-2905-5750-a298-06aa7d0cac82'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e2d90496-9d6e-5a7e-a3ad-cd6bfdac5a07'::uuid, 'd7da1031-b378-592c-82ed-381c68c0b7ca'::uuid, 'cc1db32d-aecf-5367-82a6-742e79691a64'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6d67db98-8cdb-53d3-b755-9d13aed326a5'::uuid, 'cc1db32d-aecf-5367-82a6-742e79691a64'::uuid, 'd7da1031-b378-592c-82ed-381c68c0b7ca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dd992c66-0b74-5050-ae15-40834a93f036'::uuid, 'cc1db32d-aecf-5367-82a6-742e79691a64'::uuid, 'd7da1031-b378-592c-82ed-381c68c0b7ca'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cc4e6df0-1294-56ef-9802-88e8d7209eb7'::uuid,
  'dd992c66-0b74-5050-ae15-40834a93f036'::uuid,
  'd7da1031-b378-592c-82ed-381c68c0b7ca'::uuid,
  'cc1db32d-aecf-5367-82a6-742e79691a64'::uuid,
  'Hi Nadia — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f050f2c4-6b20-5df2-9759-7d662dcbf42f'::uuid,
  'dd992c66-0b74-5050-ae15-40834a93f036'::uuid,
  'cc1db32d-aecf-5367-82a6-742e79691a64'::uuid,
  'd7da1031-b378-592c-82ed-381c68c0b7ca'::uuid,
  'Thanks Maya! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dd272558-9bdd-5d1e-9a31-7fe13ef61107'::uuid, '15865a04-1474-5ed2-83c7-7253a44f846b'::uuid, '8bb8a23a-9edf-5a77-92bb-92fa6ea26628'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('024111e9-3e85-5e57-ae0b-de2e922fed7f'::uuid, '8bb8a23a-9edf-5a77-92bb-92fa6ea26628'::uuid, '15865a04-1474-5ed2-83c7-7253a44f846b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a1f17fd6-2b6a-5218-a730-32c76bd7f9c0'::uuid, '15865a04-1474-5ed2-83c7-7253a44f846b'::uuid, '8bb8a23a-9edf-5a77-92bb-92fa6ea26628'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d1ae29a8-ee27-52c1-8bab-af7c8198a25d'::uuid, 'aa885fbb-6de3-5ab0-85fd-6ea5a6800fb4'::uuid, 'ce7769bd-532f-5bdc-ad75-945193340435'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1ffcf652-3555-552c-b8aa-718a38881516'::uuid, 'ce7769bd-532f-5bdc-ad75-945193340435'::uuid, 'aa885fbb-6de3-5ab0-85fd-6ea5a6800fb4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('859177a5-da29-555f-a206-6b9f134f7aa4'::uuid, 'aa885fbb-6de3-5ab0-85fd-6ea5a6800fb4'::uuid, 'ce7769bd-532f-5bdc-ad75-945193340435'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '35f2f8f7-f9f8-5763-b5b0-467c99ab01d2'::uuid,
  '859177a5-da29-555f-a206-6b9f134f7aa4'::uuid,
  'aa885fbb-6de3-5ab0-85fd-6ea5a6800fb4'::uuid,
  'ce7769bd-532f-5bdc-ad75-945193340435'::uuid,
  'Hi Mei — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '135f6b0b-f98c-51b2-8dbc-75fc5dbd8cd0'::uuid,
  '859177a5-da29-555f-a206-6b9f134f7aa4'::uuid,
  'ce7769bd-532f-5bdc-ad75-945193340435'::uuid,
  'aa885fbb-6de3-5ab0-85fd-6ea5a6800fb4'::uuid,
  'Thanks Rohan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a7c7552a-c1c1-586d-a497-640fe04e4740'::uuid, '7bb33105-f9a4-5ba2-b9bc-caaf0a756d2b'::uuid, '2d1a6824-fe3c-5305-a454-69c87e85e8e6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e1eb4191-997d-5cfc-bfbe-0b8721517932'::uuid, '2d1a6824-fe3c-5305-a454-69c87e85e8e6'::uuid, '7bb33105-f9a4-5ba2-b9bc-caaf0a756d2b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('19b5dbb1-70b4-5f61-a3f9-6b9668d0bc68'::uuid, '2d1a6824-fe3c-5305-a454-69c87e85e8e6'::uuid, '7bb33105-f9a4-5ba2-b9bc-caaf0a756d2b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8598ed2d-8047-5337-8ebf-58c51e8aaba9'::uuid, '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid, 'd899293f-c851-5a79-94e1-f335e67d7e3d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ad967540-98a9-5786-88c4-8e7a107861fe'::uuid, 'd899293f-c851-5a79-94e1-f335e67d7e3d'::uuid, '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1e4ead6d-9673-5ef1-beaa-2dc44f1a380e'::uuid, '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid, 'd899293f-c851-5a79-94e1-f335e67d7e3d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f67b6fdf-ea59-5c83-95f2-889b898d98de'::uuid,
  '1e4ead6d-9673-5ef1-beaa-2dc44f1a380e'::uuid,
  '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid,
  'd899293f-c851-5a79-94e1-f335e67d7e3d'::uuid,
  'Hi Riya — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0ae9a270-5192-5156-89a8-4ce379cdc875'::uuid,
  '1e4ead6d-9673-5ef1-beaa-2dc44f1a380e'::uuid,
  'd899293f-c851-5a79-94e1-f335e67d7e3d'::uuid,
  '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid,
  'Thanks Samir! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f902ba8d-afcc-5cfd-8067-6efdf914af80'::uuid, '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid, '3e632bb3-c208-5e8f-92a2-9dde3d847af2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fa54f542-39c1-585f-9ba7-1890c32d9bb1'::uuid, '3e632bb3-c208-5e8f-92a2-9dde3d847af2'::uuid, '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8496787c-4fcf-5975-b20e-2754d978bbd7'::uuid, '2c5eb884-3405-5789-9702-6108c737ec7e'::uuid, '3e632bb3-c208-5e8f-92a2-9dde3d847af2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e36fb765-8405-51ab-9244-8a5ea13bc81d'::uuid, 'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid, '0cc4fabb-a80c-55be-8e1f-cffdf500b737'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2d68f0e5-1de0-5f8b-aff5-7f8be2465f87'::uuid, '0cc4fabb-a80c-55be-8e1f-cffdf500b737'::uuid, 'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('74fc2f03-35ab-5ad8-b33d-08f460dffd5a'::uuid, '0cc4fabb-a80c-55be-8e1f-cffdf500b737'::uuid, 'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '758edd1d-c48e-5204-8caa-b20a9ba1d0f1'::uuid,
  '74fc2f03-35ab-5ad8-b33d-08f460dffd5a'::uuid,
  'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid,
  '0cc4fabb-a80c-55be-8e1f-cffdf500b737'::uuid,
  'Hi Nathan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '22869ef2-40f1-5feb-95e1-f8ee1e63f87f'::uuid,
  '74fc2f03-35ab-5ad8-b33d-08f460dffd5a'::uuid,
  '0cc4fabb-a80c-55be-8e1f-cffdf500b737'::uuid,
  'ca6e036a-10af-55b8-92da-f460eafa38a5'::uuid,
  'Thanks Camila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5ba3b84f-66bd-5571-8dde-db3c526c7621'::uuid, '89aa91c4-b9ae-510d-a439-dabca78c14c8'::uuid, '770fdfc7-b37c-557f-aa86-9108d6059d54'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4cac13bb-1136-5ff7-8d94-9fd3e2675235'::uuid, '770fdfc7-b37c-557f-aa86-9108d6059d54'::uuid, '89aa91c4-b9ae-510d-a439-dabca78c14c8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a8e9ea13-d444-543a-be86-b693c6850a77'::uuid, '770fdfc7-b37c-557f-aa86-9108d6059d54'::uuid, '89aa91c4-b9ae-510d-a439-dabca78c14c8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('24f3ac3e-3c7e-5067-97b1-c219b8896f3b'::uuid, '85a88a42-7b3b-5fdb-a22a-99a60988005b'::uuid, 'cd6a5266-d788-5ee5-87b0-0034c508c35a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('140d2de3-08f7-510d-aba2-5003897e4c6b'::uuid, 'cd6a5266-d788-5ee5-87b0-0034c508c35a'::uuid, '85a88a42-7b3b-5fdb-a22a-99a60988005b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b4c707c8-c511-59f4-8597-469589a6aa85'::uuid, '85a88a42-7b3b-5fdb-a22a-99a60988005b'::uuid, 'cd6a5266-d788-5ee5-87b0-0034c508c35a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ccddf53e-b0c6-59b6-a638-ae50ca6f3add'::uuid,
  'b4c707c8-c511-59f4-8597-469589a6aa85'::uuid,
  '85a88a42-7b3b-5fdb-a22a-99a60988005b'::uuid,
  'cd6a5266-d788-5ee5-87b0-0034c508c35a'::uuid,
  'Hi Omar — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e61443ec-a0b6-51e0-b49c-6c92f81a6a90'::uuid,
  'b4c707c8-c511-59f4-8597-469589a6aa85'::uuid,
  'cd6a5266-d788-5ee5-87b0-0034c508c35a'::uuid,
  '85a88a42-7b3b-5fdb-a22a-99a60988005b'::uuid,
  'Thanks Nina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1218517b-198c-57f5-821e-10740cd09df8'::uuid, '4f80ee7a-7c51-5b23-b65f-24dd7396e442'::uuid, '4b5ce663-76c6-53ea-9e74-cedb914dfad3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7093fba0-06bd-52c1-8e3e-0a479c8598a4'::uuid, '4b5ce663-76c6-53ea-9e74-cedb914dfad3'::uuid, '4f80ee7a-7c51-5b23-b65f-24dd7396e442'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('82b396eb-c38d-5e7d-8215-d10dccf01512'::uuid, '4b5ce663-76c6-53ea-9e74-cedb914dfad3'::uuid, '4f80ee7a-7c51-5b23-b65f-24dd7396e442'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a0ab6e3b-d4cf-50d2-a387-653c37c7f6b1'::uuid, 'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid, '2ba9af1f-cad6-5410-9096-568e6ffa5579'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('962bb3b3-0d76-5e29-ba5d-e714faca5908'::uuid, '2ba9af1f-cad6-5410-9096-568e6ffa5579'::uuid, 'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c4951ad9-6511-55e0-8bcb-839cd757585d'::uuid, '2ba9af1f-cad6-5410-9096-568e6ffa5579'::uuid, 'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f73526dd-f7cf-5cba-806b-2da3227d0b7d'::uuid,
  'c4951ad9-6511-55e0-8bcb-839cd757585d'::uuid,
  'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid,
  '2ba9af1f-cad6-5410-9096-568e6ffa5579'::uuid,
  'Hi Owen — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ef0d7c18-2e88-58bf-b047-a362307f6a83'::uuid,
  'c4951ad9-6511-55e0-8bcb-839cd757585d'::uuid,
  '2ba9af1f-cad6-5410-9096-568e6ffa5579'::uuid,
  'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid,
  'Thanks Sofia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ffed30da-0f4c-57e6-b15f-4af1a946989a'::uuid, 'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid, 'fd89cd4b-db01-5882-96e0-d179f823c010'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('54ce9191-f662-58ff-9892-a2eb4e112981'::uuid, 'fd89cd4b-db01-5882-96e0-d179f823c010'::uuid, 'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('966923bc-f0ac-5ae9-945b-556ad1239bed'::uuid, 'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid, 'fd89cd4b-db01-5882-96e0-d179f823c010'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('29604a5f-f01d-581c-b6d8-37dd233e50c0'::uuid, 'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid, 'ab5991aa-60c6-564f-94c4-70fdd9a67e7d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('62959d78-b477-568e-b02c-c69e9f072a08'::uuid, 'ab5991aa-60c6-564f-94c4-70fdd9a67e7d'::uuid, 'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('588cc5a7-9387-5a4e-964a-6a8af18aa7be'::uuid, 'ab5991aa-60c6-564f-94c4-70fdd9a67e7d'::uuid, 'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '430f0ead-aec2-5a48-a77c-5ccc10df1d7e'::uuid,
  '588cc5a7-9387-5a4e-964a-6a8af18aa7be'::uuid,
  'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid,
  'ab5991aa-60c6-564f-94c4-70fdd9a67e7d'::uuid,
  'Hi Violet — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '123ec15d-8121-571c-9057-41bc0434e7cd'::uuid,
  '588cc5a7-9387-5a4e-964a-6a8af18aa7be'::uuid,
  'ab5991aa-60c6-564f-94c4-70fdd9a67e7d'::uuid,
  'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid,
  'Thanks Kenji! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c17092fe-9d7e-5e3c-9c38-7587c55691ec'::uuid, 'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid, '251eed55-e7bd-5e13-a2ca-cea6ceee8615'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('36f748bd-2790-5d64-8da3-55001b93f1b3'::uuid, '251eed55-e7bd-5e13-a2ca-cea6ceee8615'::uuid, 'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('849c882d-12ba-593b-967b-9770524175f7'::uuid, '251eed55-e7bd-5e13-a2ca-cea6ceee8615'::uuid, 'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e207d3a7-5682-5285-bb1d-6706f25565fb'::uuid, '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid, 'ade99177-449e-5b6c-b3ed-6600e8ee7b8b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d08a6d99-a341-58b9-8475-3953681d642b'::uuid, 'ade99177-449e-5b6c-b3ed-6600e8ee7b8b'::uuid, '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ad5e9651-b297-5be6-b278-11f4992ac079'::uuid, '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid, 'ade99177-449e-5b6c-b3ed-6600e8ee7b8b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;
