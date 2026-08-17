INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b04e6e65-341d-5da2-8468-c70b58a90411'::uuid, '8d5462b7-4218-57c6-9a6b-376005db3013'::uuid, '862bdad3-3f9f-50e4-b70c-45daf15a92f8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9ab049ac-1660-529e-a762-53948cad80bb'::uuid, '862bdad3-3f9f-50e4-b70c-45daf15a92f8'::uuid, '8d5462b7-4218-57c6-9a6b-376005db3013'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'af43ac59-e469-59b6-aaee-50bd638cadeb'::uuid,
  '9ab049ac-1660-529e-a762-53948cad80bb'::uuid,
  '862bdad3-3f9f-50e4-b70c-45daf15a92f8'::uuid,
  '8d5462b7-4218-57c6-9a6b-376005db3013'::uuid,
  'Hi James — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8d95c7af-35c9-5e27-9f13-83ad7f584908'::uuid,
  '9ab049ac-1660-529e-a762-53948cad80bb'::uuid,
  '8d5462b7-4218-57c6-9a6b-376005db3013'::uuid,
  '862bdad3-3f9f-50e4-b70c-45daf15a92f8'::uuid,
  'Thanks Tara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('eac32ecc-54d2-5f0d-83aa-d12e0e1654ef'::uuid, '862bdad3-3f9f-50e4-b70c-45daf15a92f8'::uuid, '08db061d-1b19-5130-bfeb-39ece1268dcb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a0214963-4a42-5f7e-b396-9770bbb32ce5'::uuid, '08db061d-1b19-5130-bfeb-39ece1268dcb'::uuid, '862bdad3-3f9f-50e4-b70c-45daf15a92f8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f2ab8210-343b-5609-85c3-6707ced811ec'::uuid, '08db061d-1b19-5130-bfeb-39ece1268dcb'::uuid, '862bdad3-3f9f-50e4-b70c-45daf15a92f8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e92c5434-38e3-5148-89ef-0ef0e92cea59'::uuid, 'a169404e-faf7-5071-b788-07d72b750c2c'::uuid, 'c704b89c-6279-5bf5-bac9-fa83da3ecb7b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('334cb4b8-2945-56c3-99bc-f34ed0b8a2f8'::uuid, 'c704b89c-6279-5bf5-bac9-fa83da3ecb7b'::uuid, 'a169404e-faf7-5071-b788-07d72b750c2c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cf595371-623c-587c-96f4-e7ea1dcf6831'::uuid, 'a169404e-faf7-5071-b788-07d72b750c2c'::uuid, 'c704b89c-6279-5bf5-bac9-fa83da3ecb7b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f401aac3-7314-5715-a5ed-835da98536db'::uuid,
  'cf595371-623c-587c-96f4-e7ea1dcf6831'::uuid,
  'a169404e-faf7-5071-b788-07d72b750c2c'::uuid,
  'c704b89c-6279-5bf5-bac9-fa83da3ecb7b'::uuid,
  'Hi Grace — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '98dd9659-c9ea-51a8-910a-c86d332be4f6'::uuid,
  'cf595371-623c-587c-96f4-e7ea1dcf6831'::uuid,
  'c704b89c-6279-5bf5-bac9-fa83da3ecb7b'::uuid,
  'a169404e-faf7-5071-b788-07d72b750c2c'::uuid,
  'Thanks Aaron! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6cf10bb1-50dd-525e-bdf9-af28825b02e4'::uuid, '29843cea-ba09-5116-9531-5fbb6789ca13'::uuid, 'fd3bbf1d-8c31-5117-93f3-38b2f7a04a68'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d7d54ddb-663f-52e7-b799-cdcce36d164b'::uuid, 'fd3bbf1d-8c31-5117-93f3-38b2f7a04a68'::uuid, '29843cea-ba09-5116-9531-5fbb6789ca13'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f1298df3-9f4e-5639-89cc-9801dbed596c'::uuid, '29843cea-ba09-5116-9531-5fbb6789ca13'::uuid, 'fd3bbf1d-8c31-5117-93f3-38b2f7a04a68'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c73f4574-a098-5b3d-bfce-d6702b1eecf9'::uuid, '64773501-5e47-55e4-98c0-c0dcfcc43753'::uuid, 'd8cc3e5e-ef63-590b-b6d0-b52e77f37dd2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4d4a0433-f3b5-5db8-9016-083d310d3295'::uuid, 'd8cc3e5e-ef63-590b-b6d0-b52e77f37dd2'::uuid, '64773501-5e47-55e4-98c0-c0dcfcc43753'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5f6eb3cb-8346-5e40-b836-0cb1b6cce363'::uuid, '64773501-5e47-55e4-98c0-c0dcfcc43753'::uuid, 'd8cc3e5e-ef63-590b-b6d0-b52e77f37dd2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '875acde3-3381-5d5e-92fb-aedc0eae3a85'::uuid,
  '5f6eb3cb-8346-5e40-b836-0cb1b6cce363'::uuid,
  '64773501-5e47-55e4-98c0-c0dcfcc43753'::uuid,
  'd8cc3e5e-ef63-590b-b6d0-b52e77f37dd2'::uuid,
  'Hi Isla — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ac13fc7a-8f9e-5d07-a7dd-97949698004a'::uuid,
  '5f6eb3cb-8346-5e40-b836-0cb1b6cce363'::uuid,
  'd8cc3e5e-ef63-590b-b6d0-b52e77f37dd2'::uuid,
  '64773501-5e47-55e4-98c0-c0dcfcc43753'::uuid,
  'Thanks Noah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6dcd87bf-9298-5da6-ae7e-5a56b5aabce4'::uuid, 'c0b778cd-a0e5-54f3-a503-3c8347f2c2b2'::uuid, '40b94d45-a7a1-54c4-ae03-055b85d29b1e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('441b7fb1-2d06-5161-a7c6-dd10c38b66d5'::uuid, '40b94d45-a7a1-54c4-ae03-055b85d29b1e'::uuid, 'c0b778cd-a0e5-54f3-a503-3c8347f2c2b2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e340ed48-9fa3-5604-856f-749423252ef8'::uuid, '40b94d45-a7a1-54c4-ae03-055b85d29b1e'::uuid, 'c0b778cd-a0e5-54f3-a503-3c8347f2c2b2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('70f76ed0-0c45-545b-8ac0-c1fbb38bac38'::uuid, '7e491ed8-6277-5e00-8be0-3f83e1f2a5f7'::uuid, 'b17b3a22-936c-5bc8-8fe6-67d411fbe356'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5e9713ee-f332-5acc-962e-981979d295d7'::uuid, 'b17b3a22-936c-5bc8-8fe6-67d411fbe356'::uuid, '7e491ed8-6277-5e00-8be0-3f83e1f2a5f7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('45667c9b-e982-5951-a23f-567c3d12129d'::uuid, '7e491ed8-6277-5e00-8be0-3f83e1f2a5f7'::uuid, 'b17b3a22-936c-5bc8-8fe6-67d411fbe356'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0ff8ae4f-8700-59a7-a051-e4a8e7aeca80'::uuid,
  '45667c9b-e982-5951-a23f-567c3d12129d'::uuid,
  '7e491ed8-6277-5e00-8be0-3f83e1f2a5f7'::uuid,
  'b17b3a22-936c-5bc8-8fe6-67d411fbe356'::uuid,
  'Hi Yara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd365a2db-155b-5348-9556-cf98556a6a39'::uuid,
  '45667c9b-e982-5951-a23f-567c3d12129d'::uuid,
  'b17b3a22-936c-5bc8-8fe6-67d411fbe356'::uuid,
  '7e491ed8-6277-5e00-8be0-3f83e1f2a5f7'::uuid,
  'Thanks Ethan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('81470c85-4abd-5e38-803e-bee2db985b78'::uuid, '7e491ed8-6277-5e00-8be0-3f83e1f2a5f7'::uuid, '596f1efc-5edd-5271-b22f-b2020762115f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1bf98a20-832f-535c-9bd0-01f87562947e'::uuid, '596f1efc-5edd-5271-b22f-b2020762115f'::uuid, '7e491ed8-6277-5e00-8be0-3f83e1f2a5f7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ff904f0c-5adc-576e-9ced-9905b04b2b09'::uuid, '596f1efc-5edd-5271-b22f-b2020762115f'::uuid, '7e491ed8-6277-5e00-8be0-3f83e1f2a5f7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e03af8c8-4176-5dc2-a75a-74af07016fe1'::uuid, '6a50f0f7-fd5b-58fc-a24a-b9f42305ed82'::uuid, 'bfbd8789-6c7e-5dc4-90d4-b6dfccb646b8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('08285da1-87f4-5bbb-8cf8-ebb095046090'::uuid, 'bfbd8789-6c7e-5dc4-90d4-b6dfccb646b8'::uuid, '6a50f0f7-fd5b-58fc-a24a-b9f42305ed82'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f94f6265-daf9-58ee-8f52-76bf06c6bbcb'::uuid, '6a50f0f7-fd5b-58fc-a24a-b9f42305ed82'::uuid, 'bfbd8789-6c7e-5dc4-90d4-b6dfccb646b8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1af4705a-d58e-580b-9941-d2a153766945'::uuid,
  'f94f6265-daf9-58ee-8f52-76bf06c6bbcb'::uuid,
  '6a50f0f7-fd5b-58fc-a24a-b9f42305ed82'::uuid,
  'bfbd8789-6c7e-5dc4-90d4-b6dfccb646b8'::uuid,
  'Hi Lucas — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f7f1ae9a-f0cd-5436-b1bd-aaf824edd634'::uuid,
  'f94f6265-daf9-58ee-8f52-76bf06c6bbcb'::uuid,
  'bfbd8789-6c7e-5dc4-90d4-b6dfccb646b8'::uuid,
  '6a50f0f7-fd5b-58fc-a24a-b9f42305ed82'::uuid,
  'Thanks Leila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('240fb422-9993-5bd0-938d-aecad764c757'::uuid, 'df78a96e-8530-5ff4-8128-44dbbeab3548'::uuid, '91758615-29a6-5bd4-b9f9-19886c89343e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d5918e40-19be-5480-833a-3c2eccc6a357'::uuid, '91758615-29a6-5bd4-b9f9-19886c89343e'::uuid, 'df78a96e-8530-5ff4-8128-44dbbeab3548'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('401612e6-c424-57a1-ae7d-3ace8cae92b6'::uuid, '91758615-29a6-5bd4-b9f9-19886c89343e'::uuid, 'df78a96e-8530-5ff4-8128-44dbbeab3548'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f5c37f11-3a53-5c31-9c70-c4c564cebd35'::uuid, '27c33522-5956-5737-a7aa-a471b0013983'::uuid, 'eceba982-2394-5904-b315-9a2f77d07474'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;