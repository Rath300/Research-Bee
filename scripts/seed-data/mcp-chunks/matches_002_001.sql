INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f9b21878-04eb-5429-9957-f6af7a62aacb'::uuid, '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid, 'c0191e5c-cf8d-5cd5-ad91-0d315ea0fa4c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e4b3a2c4-dc54-509b-ba95-f10ca6e96dea'::uuid, '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid, '7cf7e55e-654d-5e79-b232-39768fa55c75'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9371664c-629b-50a0-9933-d34c9360e52f'::uuid, 'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid, '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3b14a485-829c-5d29-afba-c0cb4166b314'::uuid, '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid, 'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0a1c0e39-14aa-5dc7-b8b8-fe8f16986d6e'::uuid, '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid, 'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8312b3d3-f4e6-572c-b0bf-70391ca5aa63'::uuid,
  '0a1c0e39-14aa-5dc7-b8b8-fe8f16986d6e'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  'Hi Hannah — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f9ff3265-52c5-5acf-88bd-e6f6dfe7604a'::uuid,
  '0a1c0e39-14aa-5dc7-b8b8-fe8f16986d6e'::uuid,
  '8be15157-cad0-532e-962a-a7cbe9d15168'::uuid,
  'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid,
  'Thanks Nathan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dc2f9bf0-1217-562f-be6b-5761de32a120'::uuid, '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid, 'd74dc0cb-820b-5f6f-954d-0d679912ed4e'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('41697995-606b-5560-849a-c176c2da59b6'::uuid, '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid, 'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b63fdf2c-3c4e-5d21-97a7-ef80eeb71615'::uuid, 'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid, '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('19aca3db-9551-5033-bb8e-64a1124c4d13'::uuid, '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid, 'b03663f0-3559-504c-9edd-b309b7ecae32'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a88b545f-18d6-51e0-b555-8604c77ee7ef'::uuid, '263df343-2b67-501a-b026-d2ab5db9eead'::uuid, '3e51c6e0-9b46-5e74-b5a1-d55b56ac649a'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7ea42e5a-762f-5656-ba2b-b9d5b2af00d4'::uuid, 'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid, 'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2ecfd569-8557-5da9-99ca-20043243c3b0'::uuid, 'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid, 'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fd3ae693-0370-59ff-86d6-bffc67c2a939'::uuid, 'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid, 'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ce82b7c9-a904-597e-997c-116b768c6e87'::uuid,
  'fd3ae693-0370-59ff-86d6-bffc67c2a939'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  'Hi Nora — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1288a0ec-d008-5285-b34b-5643f147d50b'::uuid,
  'fd3ae693-0370-59ff-86d6-bffc67c2a939'::uuid,
  'cd79b605-9942-507b-9ddb-bf83f9eb116e'::uuid,
  'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid,
  'Thanks Omar! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('aa78dbc2-e0c2-5796-ac11-123af55d1119'::uuid, 'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid, '32cf71fe-60c4-5273-8a0b-09ee4e6bfff9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('204d7e09-97ed-5d0f-8c12-868cd689dc9d'::uuid, '32cf71fe-60c4-5273-8a0b-09ee4e6bfff9'::uuid, 'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('47419c48-aaae-5b6d-a769-f00e4e0c9e52'::uuid, '32cf71fe-60c4-5273-8a0b-09ee4e6bfff9'::uuid, 'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('64676e7e-f609-5b34-a9e4-0276fc85c554'::uuid, 'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid, 'a1cfdb84-f2b7-5750-8d60-403618604cff'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c9ea79fc-6bb8-5288-8c20-df58da845695'::uuid, 'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid, '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('de896fe6-2ac6-5cfd-bd6a-ff908aae818a'::uuid, '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid, 'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a0c80d9e-079f-52c5-86ac-86513027b957'::uuid, '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid, 'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a63f0917-ab65-570b-9f36-a824131c6f92'::uuid,
  'a0c80d9e-079f-52c5-86ac-86513027b957'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  'Hi Isaac — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7b5ae8fe-c500-5030-ac9b-c8233b3db097'::uuid,
  'a0c80d9e-079f-52c5-86ac-86513027b957'::uuid,
  '67b685cd-7359-54d3-8f4d-1e2ab27e3714'::uuid,
  'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid,
  'Thanks Chloe! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('59331f5c-6321-5425-8185-9a6f880face8'::uuid, 'd10ff30d-b52f-5005-b7d9-c5bc93e5cc0a'::uuid, 'b5d58a15-c8e8-56e5-81e0-ac6acec9a6e9'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('26cd25f2-8d86-5aa1-b41f-473b683790f8'::uuid, '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid, '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d22d265f-6c5a-5281-85ad-0f52b124fef4'::uuid, '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid, '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4d8a3176-9727-583f-a494-63484dc51b65'::uuid, '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid, '7965f5bd-8aa9-5a03-915e-eb6837c31111'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5bfa7540-911c-5784-a267-5e43749fd366'::uuid, '1b8db4bd-1661-5871-85a7-42b10fcbd03e'::uuid, '411ecfe2-5b84-5b56-8f61-12a1ab560130'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b8581a99-ef10-5811-b05c-0ad3cfef2b1a'::uuid, '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid, '263df343-2b67-501a-b026-d2ab5db9eead'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c21ebed9-d880-5833-aed6-d82e3870004d'::uuid, '263df343-2b67-501a-b026-d2ab5db9eead'::uuid, '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3636cf92-b407-5682-adf0-e7539023cb0d'::uuid, '263df343-2b67-501a-b026-d2ab5db9eead'::uuid, '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e91020e7-16d5-507d-83ca-fd4cf302d870'::uuid,
  '3636cf92-b407-5682-adf0-e7539023cb0d'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  'Hi Felix — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a8810801-6766-5efa-8708-4eee5741617b'::uuid,
  '3636cf92-b407-5682-adf0-e7539023cb0d'::uuid,
  '263df343-2b67-501a-b026-d2ab5db9eead'::uuid,
  '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid,
  'Thanks Violet! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('672c9457-5daa-5a95-891f-8fd3391c581c'::uuid, '922c0481-709a-5db3-8ec3-323549ac8205'::uuid, '53c3ff93-411e-50a0-9ecf-897fc8d295e5'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3ee671f1-070f-5b21-a6f8-221a77b70661'::uuid, 'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid, 'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9f2ebd3b-ed5d-5193-9243-cd201c70511e'::uuid, 'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid, 'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f12a1416-ffe5-54a0-befd-7fe2f8f80bb8'::uuid, 'e0e15c9d-ff83-5981-8131-0ffadb1f8039'::uuid, 'e76720a9-335c-505e-ae5f-74940d7283ed'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;