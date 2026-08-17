INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('05ba7a5d-d5b5-5537-92f1-ab04a4fad1ec'::uuid, '5ba4c4ab-e078-5738-bef9-54cc1fd5ae3c'::uuid, '43986880-ffc8-55bc-a66c-5b43a562d73d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1bc780de-0dd5-51f8-ad00-d8fa45ad9660'::uuid, '43986880-ffc8-55bc-a66c-5b43a562d73d'::uuid, '5ba4c4ab-e078-5738-bef9-54cc1fd5ae3c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd572abd1-54dd-567b-8e56-0d8260904498'::uuid,
  '1bc780de-0dd5-51f8-ad00-d8fa45ad9660'::uuid,
  '43986880-ffc8-55bc-a66c-5b43a562d73d'::uuid,
  '5ba4c4ab-e078-5738-bef9-54cc1fd5ae3c'::uuid,
  'Hi Samir — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '53f3140d-b71a-5c61-8f17-ca2b1fe963ec'::uuid,
  '1bc780de-0dd5-51f8-ad00-d8fa45ad9660'::uuid,
  '5ba4c4ab-e078-5738-bef9-54cc1fd5ae3c'::uuid,
  '43986880-ffc8-55bc-a66c-5b43a562d73d'::uuid,
  'Thanks Grace! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0d1ebaa5-2bfb-51b1-90b4-401a7c95b4fc'::uuid, '093a1f26-d390-58c7-aec1-16c205cfbd8d'::uuid, 'da781818-221e-5433-8ed5-0d93efc9d299'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('75145c15-a26b-5719-88e7-878134b71acb'::uuid, 'da781818-221e-5433-8ed5-0d93efc9d299'::uuid, '093a1f26-d390-58c7-aec1-16c205cfbd8d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('78b37118-84b4-5396-b200-86366396b79c'::uuid, '093a1f26-d390-58c7-aec1-16c205cfbd8d'::uuid, 'da781818-221e-5433-8ed5-0d93efc9d299'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('98f35c66-65a1-54da-bfd3-caa9dbf6d25c'::uuid, '02cfbdcd-95d0-5052-9e37-40b137ae773f'::uuid, '5579e1e1-b542-5c1e-9e40-a1159ce70a2f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('641664d2-ee32-53f0-b79d-87ffde037975'::uuid, '5579e1e1-b542-5c1e-9e40-a1159ce70a2f'::uuid, '02cfbdcd-95d0-5052-9e37-40b137ae773f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f560f3a4-f254-524f-9537-fff4c3de599c'::uuid, '02cfbdcd-95d0-5052-9e37-40b137ae773f'::uuid, '5579e1e1-b542-5c1e-9e40-a1159ce70a2f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '266e84d0-6264-5c0d-9681-41f01fe4e763'::uuid,
  'f560f3a4-f254-524f-9537-fff4c3de599c'::uuid,
  '02cfbdcd-95d0-5052-9e37-40b137ae773f'::uuid,
  '5579e1e1-b542-5c1e-9e40-a1159ce70a2f'::uuid,
  'Hi Daniel — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '094689f3-022f-547b-84d6-1f87bbacad96'::uuid,
  'f560f3a4-f254-524f-9537-fff4c3de599c'::uuid,
  '5579e1e1-b542-5c1e-9e40-a1159ce70a2f'::uuid,
  '02cfbdcd-95d0-5052-9e37-40b137ae773f'::uuid,
  'Thanks Isla! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bf3d1ccc-1d45-5222-ab4c-efeeb20b6f94'::uuid, '02cfbdcd-95d0-5052-9e37-40b137ae773f'::uuid, '1225191a-019f-56d5-8355-03d7ea853341'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('02ce45f0-c9ab-5441-9e41-4d2dad7320ee'::uuid, '1225191a-019f-56d5-8355-03d7ea853341'::uuid, '02cfbdcd-95d0-5052-9e37-40b137ae773f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('32270403-64de-503c-826b-a2c719884423'::uuid, '02cfbdcd-95d0-5052-9e37-40b137ae773f'::uuid, '1225191a-019f-56d5-8355-03d7ea853341'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f1d8d7f7-c550-5c4a-ad18-31bf85bbf521'::uuid, '5908f7b4-87da-5e6f-98d9-3a27fad2f7ad'::uuid, '05e52214-ccd1-51a2-b96f-6714b58b4584'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d4d6678f-f9b1-54c8-9803-13b04911bddd'::uuid, '05e52214-ccd1-51a2-b96f-6714b58b4584'::uuid, '5908f7b4-87da-5e6f-98d9-3a27fad2f7ad'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2d53b7e9-fc99-5611-92c9-0378afe1ed07'::uuid, '05e52214-ccd1-51a2-b96f-6714b58b4584'::uuid, '5908f7b4-87da-5e6f-98d9-3a27fad2f7ad'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ccea3598-9949-5bad-ac77-d1a8c6fccafe'::uuid,
  '2d53b7e9-fc99-5611-92c9-0378afe1ed07'::uuid,
  '5908f7b4-87da-5e6f-98d9-3a27fad2f7ad'::uuid,
  '05e52214-ccd1-51a2-b96f-6714b58b4584'::uuid,
  'Hi Nina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4b66b9a5-7a84-587d-ae2f-34f308dab7b9'::uuid,
  '2d53b7e9-fc99-5611-92c9-0378afe1ed07'::uuid,
  '05e52214-ccd1-51a2-b96f-6714b58b4584'::uuid,
  '5908f7b4-87da-5e6f-98d9-3a27fad2f7ad'::uuid,
  'Thanks Theo! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0d64b3b7-3bef-51cf-8f70-0055d65ae792'::uuid, '68b3764d-cec2-57d1-bc8b-48f263aaed8c'::uuid, '726d6063-9596-56fb-ad88-e5a3ee2d8c3a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dc26d73e-f878-56d7-8be1-67f9d594ef3f'::uuid, '726d6063-9596-56fb-ad88-e5a3ee2d8c3a'::uuid, '68b3764d-cec2-57d1-bc8b-48f263aaed8c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f925cc34-4edf-589c-8322-1ff18a243815'::uuid, '68b3764d-cec2-57d1-bc8b-48f263aaed8c'::uuid, '726d6063-9596-56fb-ad88-e5a3ee2d8c3a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c9a3e25c-2120-5e8b-889e-e526df12d036'::uuid, '6717c5bd-123f-57c3-8997-0b9b0977d545'::uuid, 'f439b08a-0f7c-50c6-afcb-db2b75ff253a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('513f6454-4c69-5829-b384-50039d0711aa'::uuid, 'f439b08a-0f7c-50c6-afcb-db2b75ff253a'::uuid, '6717c5bd-123f-57c3-8997-0b9b0977d545'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8681725c-1155-5156-b9d1-1795f3260445'::uuid, '6717c5bd-123f-57c3-8997-0b9b0977d545'::uuid, 'f439b08a-0f7c-50c6-afcb-db2b75ff253a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '614bd1c9-d9e2-52eb-825c-6051c2382af0'::uuid,
  '8681725c-1155-5156-b9d1-1795f3260445'::uuid,
  '6717c5bd-123f-57c3-8997-0b9b0977d545'::uuid,
  'f439b08a-0f7c-50c6-afcb-db2b75ff253a'::uuid,
  'Hi Sofia — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '51f9cb23-1e94-53c2-9a8a-bfe94ad84050'::uuid,
  '8681725c-1155-5156-b9d1-1795f3260445'::uuid,
  'f439b08a-0f7c-50c6-afcb-db2b75ff253a'::uuid,
  '6717c5bd-123f-57c3-8997-0b9b0977d545'::uuid,
  'Thanks Lucas! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('413d33d1-d643-58cf-aa58-5d2a4afdb751'::uuid, 'd81b3e8e-0894-50b8-a768-1c93c175f5ff'::uuid, '5ce1784c-be4e-50c9-8037-1b18c9ed1873'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f4eb6f8a-d2cb-5db9-b45d-b61415523935'::uuid, '5ce1784c-be4e-50c9-8037-1b18c9ed1873'::uuid, 'd81b3e8e-0894-50b8-a768-1c93c175f5ff'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0960d9d1-093e-58b9-82a7-21d7eb575d92'::uuid, '5ce1784c-be4e-50c9-8037-1b18c9ed1873'::uuid, 'd81b3e8e-0894-50b8-a768-1c93c175f5ff'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('daca8e7f-65ca-5a9b-bd64-079654bddabf'::uuid, '67d547f3-901b-54ad-bb0d-bce73112f05c'::uuid, '9faafd0b-f2db-5a81-91bf-81528de61c8e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f7b6357f-6bf5-552a-bb65-bdac52d0dcb7'::uuid, '9faafd0b-f2db-5a81-91bf-81528de61c8e'::uuid, '67d547f3-901b-54ad-bb0d-bce73112f05c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f3c76b9a-e195-5e4b-9aec-1ec8e6098cbc'::uuid, '67d547f3-901b-54ad-bb0d-bce73112f05c'::uuid, '9faafd0b-f2db-5a81-91bf-81528de61c8e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '301e9c0e-04f1-5f7e-a86d-891d8a9bc35b'::uuid,
  'f3c76b9a-e195-5e4b-9aec-1ec8e6098cbc'::uuid,
  '67d547f3-901b-54ad-bb0d-bce73112f05c'::uuid,
  '9faafd0b-f2db-5a81-91bf-81528de61c8e'::uuid,
  'Hi Zara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3a7d2a4f-5583-5361-93bc-ad87e6cebc1e'::uuid,
  'f3c76b9a-e195-5e4b-9aec-1ec8e6098cbc'::uuid,
  '9faafd0b-f2db-5a81-91bf-81528de61c8e'::uuid,
  '67d547f3-901b-54ad-bb0d-bce73112f05c'::uuid,
  'Thanks David! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a7410df9-6397-5095-94f3-abb3c62afe3f'::uuid, '67d547f3-901b-54ad-bb0d-bce73112f05c'::uuid, 'd0295c77-a7ff-5caa-a86e-c288ce62df44'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2ebf0aa3-956a-5e8f-b463-8b1746a8737b'::uuid, 'd0295c77-a7ff-5caa-a86e-c288ce62df44'::uuid, '67d547f3-901b-54ad-bb0d-bce73112f05c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ce9a9699-29a1-5e7f-9c4f-73e22ed81063'::uuid, '67d547f3-901b-54ad-bb0d-bce73112f05c'::uuid, 'd0295c77-a7ff-5caa-a86e-c288ce62df44'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e1e36916-0f33-5f53-a0a9-546eba6a4102'::uuid, '428fd599-4b5e-50f7-937a-efec64706021'::uuid, '52001e7f-c550-5ede-b967-df1f7ffbee52'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('677a3d97-dba2-53d6-a732-d325c74c2c62'::uuid, '52001e7f-c550-5ede-b967-df1f7ffbee52'::uuid, '428fd599-4b5e-50f7-937a-efec64706021'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4e91fc21-76be-57ed-9dff-668c689bd4aa'::uuid, '428fd599-4b5e-50f7-937a-efec64706021'::uuid, '52001e7f-c550-5ede-b967-df1f7ffbee52'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2bfaf72a-7612-5d75-ada4-cf22896883d0'::uuid,
  '4e91fc21-76be-57ed-9dff-668c689bd4aa'::uuid,
  '428fd599-4b5e-50f7-937a-efec64706021'::uuid,
  '52001e7f-c550-5ede-b967-df1f7ffbee52'::uuid,
  'Hi Kai — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9f2a78fb-2315-5bdf-96d2-4f92a422d86b'::uuid,
  '4e91fc21-76be-57ed-9dff-668c689bd4aa'::uuid,
  '52001e7f-c550-5ede-b967-df1f7ffbee52'::uuid,
  '428fd599-4b5e-50f7-937a-efec64706021'::uuid,
  'Thanks Aisha! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5cbd9739-db19-50f2-a7fe-fed4c4f42d56'::uuid, '70a561b0-2ce9-5dd8-9d43-5ba67b9cd912'::uuid, '71f19248-9b47-5e00-bc96-ea56d2f0fa29'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6ba67107-5f3a-5794-977a-c9c6c898a254'::uuid, '71f19248-9b47-5e00-bc96-ea56d2f0fa29'::uuid, '70a561b0-2ce9-5dd8-9d43-5ba67b9cd912'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cb25c75e-1157-569c-a1f4-af84a5376dc8'::uuid, '70a561b0-2ce9-5dd8-9d43-5ba67b9cd912'::uuid, '71f19248-9b47-5e00-bc96-ea56d2f0fa29'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('488408f9-306d-5ca9-98dd-8a861080f592'::uuid, '11da8f2c-7470-5582-a044-f03903e3992c'::uuid, '0f2d40d5-1ce2-5b45-8b3f-13e509818a14'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('18d3328f-4325-5133-a9b9-f8e8748edb44'::uuid, '0f2d40d5-1ce2-5b45-8b3f-13e509818a14'::uuid, '11da8f2c-7470-5582-a044-f03903e3992c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('377df575-9755-5df3-a2ca-84d7b8e1b400'::uuid, '0f2d40d5-1ce2-5b45-8b3f-13e509818a14'::uuid, '11da8f2c-7470-5582-a044-f03903e3992c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd68eb1eb-2f25-5354-aba3-76d2f819da74'::uuid,
  '377df575-9755-5df3-a2ca-84d7b8e1b400'::uuid,
  '11da8f2c-7470-5582-a044-f03903e3992c'::uuid,
  '0f2d40d5-1ce2-5b45-8b3f-13e509818a14'::uuid,
  'Hi Benjamin — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '53d11bfc-c153-51c3-9195-b0281c223263'::uuid,
  '377df575-9755-5df3-a2ca-84d7b8e1b400'::uuid,
  '0f2d40d5-1ce2-5b45-8b3f-13e509818a14'::uuid,
  '11da8f2c-7470-5582-a044-f03903e3992c'::uuid,
  'Thanks Nadia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6bb2c0ce-268b-567c-bd84-5ebfeaacdad4'::uuid, '011fcd13-5185-5206-809d-115892a24501'::uuid, 'd5f7807d-fe74-50a6-8c6d-8c9ed5d72b81'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('901a20ab-044a-5b88-9178-601d486d868f'::uuid, 'd5f7807d-fe74-50a6-8c6d-8c9ed5d72b81'::uuid, '011fcd13-5185-5206-809d-115892a24501'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('38599b86-4864-5a21-a320-c5ffe6820880'::uuid, '011fcd13-5185-5206-809d-115892a24501'::uuid, 'd5f7807d-fe74-50a6-8c6d-8c9ed5d72b81'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('534890e7-028b-5c24-9151-5dce55d75486'::uuid, 'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid, '6d797a78-3704-5608-8637-77e373f046fc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('828ebf8b-103e-5f93-b6e9-20f5dde87223'::uuid, '6d797a78-3704-5608-8637-77e373f046fc'::uuid, 'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('79001505-aad8-5a4c-9024-d694313e930e'::uuid, '6d797a78-3704-5608-8637-77e373f046fc'::uuid, 'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7ffa07e8-f62b-5a01-865b-6860400168da'::uuid,
  '79001505-aad8-5a4c-9024-d694313e930e'::uuid,
  'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid,
  '6d797a78-3704-5608-8637-77e373f046fc'::uuid,
  'Hi Sebastian — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0e7e95bd-9df9-58d4-b600-4dfbcd268cbd'::uuid,
  '79001505-aad8-5a4c-9024-d694313e930e'::uuid,
  '6d797a78-3704-5608-8637-77e373f046fc'::uuid,
  'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid,
  'Thanks Mei! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('efe82f3b-0b46-5dd6-8689-e55b85ea9717'::uuid, 'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid, '9712a128-34c1-5b93-8a4f-32494c0e4504'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('79689fd7-e973-5fbf-81e3-a27017f7c014'::uuid, '9712a128-34c1-5b93-8a4f-32494c0e4504'::uuid, 'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ede57f8e-fc87-5050-91f0-608ca95453a0'::uuid, '9712a128-34c1-5b93-8a4f-32494c0e4504'::uuid, 'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a2a24f7f-6bc9-5073-bfc9-b007c08fe2fb'::uuid, '170229dc-697e-5b38-8001-6e6980b262ff'::uuid, '934efc20-ee88-5e38-86a8-96c2099ea27a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5c607546-b46e-54aa-95a1-8d81ba0b50b0'::uuid, '934efc20-ee88-5e38-86a8-96c2099ea27a'::uuid, '170229dc-697e-5b38-8001-6e6980b262ff'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('047ae01c-f20e-5dd7-8ff7-6d72b860fd2e'::uuid, '170229dc-697e-5b38-8001-6e6980b262ff'::uuid, '934efc20-ee88-5e38-86a8-96c2099ea27a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fa9fc3d6-c34e-51f7-bd88-0e65d7823fbd'::uuid,
  '047ae01c-f20e-5dd7-8ff7-6d72b860fd2e'::uuid,
  '170229dc-697e-5b38-8001-6e6980b262ff'::uuid,
  '934efc20-ee88-5e38-86a8-96c2099ea27a'::uuid,
  'Hi Amina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1bc5933c-d3e7-5460-8413-1ab29cafc4d2'::uuid,
  '047ae01c-f20e-5dd7-8ff7-6d72b860fd2e'::uuid,
  '934efc20-ee88-5e38-86a8-96c2099ea27a'::uuid,
  '170229dc-697e-5b38-8001-6e6980b262ff'::uuid,
  'Thanks Henry! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d9dba064-ace5-51d3-9a06-1c0083172c61'::uuid, '3ecd233d-b88a-58b2-8d79-3eeb7b0ba031'::uuid, 'a92d4ffb-9625-5c8a-ab6f-18a27c05992d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b49360e7-3b3a-5873-8465-1b64a5c94640'::uuid, 'a92d4ffb-9625-5c8a-ab6f-18a27c05992d'::uuid, '3ecd233d-b88a-58b2-8d79-3eeb7b0ba031'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('375158da-65ff-5f7e-b927-d897e2757068'::uuid, '3ecd233d-b88a-58b2-8d79-3eeb7b0ba031'::uuid, 'a92d4ffb-9625-5c8a-ab6f-18a27c05992d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('67a08d37-5f6b-5e78-ac2a-bac8f8ed8e03'::uuid, '5a3de029-a188-532a-b55d-61583f327471'::uuid, 'a7190e32-69ef-589e-a11f-7eb8e266e947'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a55c8c43-2f33-5b01-8559-d38e2a107d82'::uuid, 'a7190e32-69ef-589e-a11f-7eb8e266e947'::uuid, '5a3de029-a188-532a-b55d-61583f327471'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('567f61c7-ceb8-50d2-bd53-8c5ac03b936f'::uuid, '5a3de029-a188-532a-b55d-61583f327471'::uuid, 'a7190e32-69ef-589e-a11f-7eb8e266e947'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '31b399ac-ca2f-5eb5-9bab-70093ff7ccbc'::uuid,
  '567f61c7-ceb8-50d2-bd53-8c5ac03b936f'::uuid,
  '5a3de029-a188-532a-b55d-61583f327471'::uuid,
  'a7190e32-69ef-589e-a11f-7eb8e266e947'::uuid,
  'Hi Hannah — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '93022b85-eb30-59ef-bb81-d70faa9b660c'::uuid,
  '567f61c7-ceb8-50d2-bd53-8c5ac03b936f'::uuid,
  'a7190e32-69ef-589e-a11f-7eb8e266e947'::uuid,
  '5a3de029-a188-532a-b55d-61583f327471'::uuid,
  'Thanks Nathan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7403b4f0-21f2-5e92-a01f-437d316b9fc0'::uuid, '628a4781-3a09-5aca-bc6a-7ae2fc619371'::uuid, 'ef33091a-beec-514c-aef8-2bb5236c7ea0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bab60279-7ed8-54e6-8432-b02bce22e0f2'::uuid, 'ef33091a-beec-514c-aef8-2bb5236c7ea0'::uuid, '628a4781-3a09-5aca-bc6a-7ae2fc619371'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f7f5395d-338d-5b4c-8578-02e4bdfdd21b'::uuid, '628a4781-3a09-5aca-bc6a-7ae2fc619371'::uuid, 'ef33091a-beec-514c-aef8-2bb5236c7ea0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('15ad5619-3696-5acc-aa13-479449220e7e'::uuid, '3bb92ec7-0d33-5484-9733-efd6ec6d093a'::uuid, '545134f1-47eb-57dc-89af-f53e59335d17'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1349c613-ee11-58ba-86b3-60faa75bbb37'::uuid, '545134f1-47eb-57dc-89af-f53e59335d17'::uuid, '3bb92ec7-0d33-5484-9733-efd6ec6d093a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ea09b613-a5a7-5603-b1c0-ce6df8872871'::uuid, '3bb92ec7-0d33-5484-9733-efd6ec6d093a'::uuid, '545134f1-47eb-57dc-89af-f53e59335d17'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6810e640-b17b-5b5e-a827-70c631cd0ce5'::uuid,
  'ea09b613-a5a7-5603-b1c0-ce6df8872871'::uuid,
  '3bb92ec7-0d33-5484-9733-efd6ec6d093a'::uuid,
  '545134f1-47eb-57dc-89af-f53e59335d17'::uuid,
  'Hi Nora — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c997cf3d-1977-542d-a8b2-976b94ea691d'::uuid,
  'ea09b613-a5a7-5603-b1c0-ce6df8872871'::uuid,
  '545134f1-47eb-57dc-89af-f53e59335d17'::uuid,
  '3bb92ec7-0d33-5484-9733-efd6ec6d093a'::uuid,
  'Thanks Omar! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5ceb359e-9482-5055-ba41-9b5210aeeabc'::uuid, '3bb92ec7-0d33-5484-9733-efd6ec6d093a'::uuid, '9fa6c3ed-6590-56b4-8dbb-73ca44e426eb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('99823eb6-3553-584c-b319-146899221e75'::uuid, '9fa6c3ed-6590-56b4-8dbb-73ca44e426eb'::uuid, '3bb92ec7-0d33-5484-9733-efd6ec6d093a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4a26afcc-057b-5f83-b017-e3e910f2ee26'::uuid, '3bb92ec7-0d33-5484-9733-efd6ec6d093a'::uuid, '9fa6c3ed-6590-56b4-8dbb-73ca44e426eb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('21980b09-26d8-5eee-ade8-ad5823678aa0'::uuid, '98402e99-c154-543e-8925-739b5e6ef7e6'::uuid, '701bc471-d89e-56aa-b221-e5ebec104cb3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1a1b9408-80e4-5c01-9d86-da215b037ba8'::uuid, '701bc471-d89e-56aa-b221-e5ebec104cb3'::uuid, '98402e99-c154-543e-8925-739b5e6ef7e6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0a313e5a-9dd6-5c8b-9ed0-7412ff88efb7'::uuid, '701bc471-d89e-56aa-b221-e5ebec104cb3'::uuid, '98402e99-c154-543e-8925-739b5e6ef7e6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '65e93f8c-6850-5fc6-a4c6-62dcf0f3ebf9'::uuid,
  '0a313e5a-9dd6-5c8b-9ed0-7412ff88efb7'::uuid,
  '98402e99-c154-543e-8925-739b5e6ef7e6'::uuid,
  '701bc471-d89e-56aa-b221-e5ebec104cb3'::uuid,
  'Hi Isaac — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9bbb95d3-2a99-571c-86b5-d519211b2b8b'::uuid,
  '0a313e5a-9dd6-5c8b-9ed0-7412ff88efb7'::uuid,
  '701bc471-d89e-56aa-b221-e5ebec104cb3'::uuid,
  '98402e99-c154-543e-8925-739b5e6ef7e6'::uuid,
  'Thanks Chloe! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c97d0a32-caf6-5ddf-8ebf-e5b2334b0e7a'::uuid, '43b216a6-2290-5cf2-af92-35c3054dc2e2'::uuid, 'dab59244-4f3e-5e87-a1c5-d2738f719a6a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('092b2657-810a-5935-a4ca-559aa0377dd8'::uuid, 'dab59244-4f3e-5e87-a1c5-d2738f719a6a'::uuid, '43b216a6-2290-5cf2-af92-35c3054dc2e2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ad9419a4-2065-517f-86db-5b97caa79d01'::uuid, '43b216a6-2290-5cf2-af92-35c3054dc2e2'::uuid, 'dab59244-4f3e-5e87-a1c5-d2738f719a6a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('62a3d00d-7bfa-5ae9-821b-873045a2e4d3'::uuid, 'c93a94da-3c5b-5826-8ce6-38ae54fa34c9'::uuid, '6c36e227-63b2-5bf3-9b20-63b24319c093'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6a6a5881-758e-5bec-b849-3c943d85e3d9'::uuid, '6c36e227-63b2-5bf3-9b20-63b24319c093'::uuid, 'c93a94da-3c5b-5826-8ce6-38ae54fa34c9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('69f5d43f-7fee-59ef-841a-8a0cb804ad09'::uuid, '6c36e227-63b2-5bf3-9b20-63b24319c093'::uuid, 'c93a94da-3c5b-5826-8ce6-38ae54fa34c9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9c263b7d-cd72-5b8c-a0ac-a8fe230159af'::uuid,
  '69f5d43f-7fee-59ef-841a-8a0cb804ad09'::uuid,
  'c93a94da-3c5b-5826-8ce6-38ae54fa34c9'::uuid,
  '6c36e227-63b2-5bf3-9b20-63b24319c093'::uuid,
  'Hi Felix — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'edf1533b-60a2-5efe-bf57-fdd32080e549'::uuid,
  '69f5d43f-7fee-59ef-841a-8a0cb804ad09'::uuid,
  '6c36e227-63b2-5bf3-9b20-63b24319c093'::uuid,
  'c93a94da-3c5b-5826-8ce6-38ae54fa34c9'::uuid,
  'Thanks Violet! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3775dd44-57b4-54f4-9676-c5b3fd908040'::uuid, 'ff878e2b-1aec-594f-ad30-e0ed7c4c90ef'::uuid, 'aa23ebcd-e9cb-55d1-8431-fc4a5204925f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('70c3845f-2a7e-5f6b-8dfd-e15b72c97558'::uuid, 'aa23ebcd-e9cb-55d1-8431-fc4a5204925f'::uuid, 'ff878e2b-1aec-594f-ad30-e0ed7c4c90ef'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d4f77ef6-8d8f-5067-8d20-8bcce8bde515'::uuid, 'aa23ebcd-e9cb-55d1-8431-fc4a5204925f'::uuid, 'ff878e2b-1aec-594f-ad30-e0ed7c4c90ef'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b0bce18a-ebde-503d-9788-f23cbe74cfef'::uuid, 'd24510ff-2229-5382-93e5-5fcb3fc7f432'::uuid, 'e054a422-05f1-59ce-8a48-b1440c9b8b07'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('407835ab-e04d-5121-8ad5-1209c22ed2a7'::uuid, 'e054a422-05f1-59ce-8a48-b1440c9b8b07'::uuid, 'd24510ff-2229-5382-93e5-5fcb3fc7f432'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('19f32a41-cfac-59ce-b901-513222911397'::uuid, 'd24510ff-2229-5382-93e5-5fcb3fc7f432'::uuid, 'e054a422-05f1-59ce-8a48-b1440c9b8b07'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'dc866221-b1f4-575c-b424-d0242d81c5bd'::uuid,
  '19f32a41-cfac-59ce-b901-513222911397'::uuid,
  'd24510ff-2229-5382-93e5-5fcb3fc7f432'::uuid,
  'e054a422-05f1-59ce-8a48-b1440c9b8b07'::uuid,
  'Hi James — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'afe4d3aa-7506-5ed5-bb59-375c1d78bd7b'::uuid,
  '19f32a41-cfac-59ce-b901-513222911397'::uuid,
  'e054a422-05f1-59ce-8a48-b1440c9b8b07'::uuid,
  'd24510ff-2229-5382-93e5-5fcb3fc7f432'::uuid,
  'Thanks Tara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d82f5b23-9c11-58fc-a38a-b7d0847c6236'::uuid, 'd24510ff-2229-5382-93e5-5fcb3fc7f432'::uuid, '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d4aa8d51-f86b-5f94-ba8c-2a1e60ee4ef0'::uuid, '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid, 'd24510ff-2229-5382-93e5-5fcb3fc7f432'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7d4266de-fe04-529e-97f9-34c20f895dce'::uuid, '113ab10d-56f2-55ca-b239-072814a90f3f'::uuid, 'd24510ff-2229-5382-93e5-5fcb3fc7f432'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6be81b01-df29-5832-90b6-3117dd918586'::uuid, '41ef8051-746a-5445-b74c-fa8dcf725cac'::uuid, '74683992-9a31-552a-8e82-cd7205332508'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0a1ae3df-02b3-5723-94ac-f3f508252e9e'::uuid, '74683992-9a31-552a-8e82-cd7205332508'::uuid, '41ef8051-746a-5445-b74c-fa8dcf725cac'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f5689fb9-2d09-53cc-b9cb-bce6741bd65f'::uuid, '41ef8051-746a-5445-b74c-fa8dcf725cac'::uuid, '74683992-9a31-552a-8e82-cd7205332508'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '83ace155-a1ec-5a2a-8c79-ec76fc6054e4'::uuid,
  'f5689fb9-2d09-53cc-b9cb-bce6741bd65f'::uuid,
  '41ef8051-746a-5445-b74c-fa8dcf725cac'::uuid,
  '74683992-9a31-552a-8e82-cd7205332508'::uuid,
  'Hi Grace — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8fbbcf18-cd47-578f-ba7c-0055a4f43f05'::uuid,
  'f5689fb9-2d09-53cc-b9cb-bce6741bd65f'::uuid,
  '74683992-9a31-552a-8e82-cd7205332508'::uuid,
  '41ef8051-746a-5445-b74c-fa8dcf725cac'::uuid,
  'Thanks Aaron! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3f269c23-37b2-55cd-97c5-d99a7c3e4a8b'::uuid, 'd679fe8c-5b10-5615-a406-180c8b9dedf8'::uuid, 'b822e46a-24e0-5c86-819e-929acfc5a4df'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d7ace564-8c16-5279-9582-04a76e0b51ae'::uuid, 'b822e46a-24e0-5c86-819e-929acfc5a4df'::uuid, 'd679fe8c-5b10-5615-a406-180c8b9dedf8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b147dee0-ab82-593f-a830-586e8f573ef4'::uuid, 'b822e46a-24e0-5c86-819e-929acfc5a4df'::uuid, 'd679fe8c-5b10-5615-a406-180c8b9dedf8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('95643e02-3323-5e79-aa4f-c41ecd9d97f4'::uuid, 'dd003888-417e-5adb-be0b-88b099d71a72'::uuid, 'a82005d9-eb53-54f1-a998-6ab98ab9128d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1a0056c5-d622-5698-ba40-c0aef89d00f0'::uuid, 'a82005d9-eb53-54f1-a998-6ab98ab9128d'::uuid, 'dd003888-417e-5adb-be0b-88b099d71a72'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('54a5cb09-6216-5cb4-b994-18da69803306'::uuid, 'a82005d9-eb53-54f1-a998-6ab98ab9128d'::uuid, 'dd003888-417e-5adb-be0b-88b099d71a72'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b1b68139-342c-5cc9-ab5d-a2ec80df2700'::uuid,
  '54a5cb09-6216-5cb4-b994-18da69803306'::uuid,
  'dd003888-417e-5adb-be0b-88b099d71a72'::uuid,
  'a82005d9-eb53-54f1-a998-6ab98ab9128d'::uuid,
  'Hi Isla — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ff282c37-2504-5642-bccb-0f615727bdc5'::uuid,
  '54a5cb09-6216-5cb4-b994-18da69803306'::uuid,
  'a82005d9-eb53-54f1-a998-6ab98ab9128d'::uuid,
  'dd003888-417e-5adb-be0b-88b099d71a72'::uuid,
  'Thanks Noah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f2f51381-c100-5de1-a756-5a06f9dc791a'::uuid, '6358d0af-c374-5016-a887-36f53d4bd779'::uuid, '362e8e33-ad10-5e09-97c1-9e4fd176cfec'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0a8baf05-3df2-5e04-ae22-de56dfda4ea5'::uuid, '362e8e33-ad10-5e09-97c1-9e4fd176cfec'::uuid, '6358d0af-c374-5016-a887-36f53d4bd779'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('be617a3d-bce2-5747-a1b3-485d47d2ae5f'::uuid, '362e8e33-ad10-5e09-97c1-9e4fd176cfec'::uuid, '6358d0af-c374-5016-a887-36f53d4bd779'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('958d921a-81d2-5920-a98a-a1d4b4788ccd'::uuid, '603e0ceb-34f7-596c-8bb3-f211c4655fe5'::uuid, '930dbf77-a75a-5e7d-9a6a-555d7e26ff51'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2e8e172b-956d-5ffc-96cc-08641f8c74c9'::uuid, '930dbf77-a75a-5e7d-9a6a-555d7e26ff51'::uuid, '603e0ceb-34f7-596c-8bb3-f211c4655fe5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d983eb17-c241-543d-8c8e-99f7962e7e98'::uuid, '603e0ceb-34f7-596c-8bb3-f211c4655fe5'::uuid, '930dbf77-a75a-5e7d-9a6a-555d7e26ff51'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3ea3d203-ad2c-5308-93db-2722614cf2ce'::uuid,
  'd983eb17-c241-543d-8c8e-99f7962e7e98'::uuid,
  '603e0ceb-34f7-596c-8bb3-f211c4655fe5'::uuid,
  '930dbf77-a75a-5e7d-9a6a-555d7e26ff51'::uuid,
  'Hi Yara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '099f06ed-5149-5d80-a2a8-6fecd968f383'::uuid,
  'd983eb17-c241-543d-8c8e-99f7962e7e98'::uuid,
  '930dbf77-a75a-5e7d-9a6a-555d7e26ff51'::uuid,
  '603e0ceb-34f7-596c-8bb3-f211c4655fe5'::uuid,
  'Thanks Ethan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('07ef7fba-eea0-5fdf-85f6-74c55ea0d004'::uuid, '603e0ceb-34f7-596c-8bb3-f211c4655fe5'::uuid, '5c6a2b16-8772-56c9-9570-5254356f5c19'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2c616235-ba10-5be4-a6a9-8310b2bd45e9'::uuid, '5c6a2b16-8772-56c9-9570-5254356f5c19'::uuid, '603e0ceb-34f7-596c-8bb3-f211c4655fe5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cf3ff140-d2df-5f6c-a9eb-9352cbeca1cb'::uuid, '5c6a2b16-8772-56c9-9570-5254356f5c19'::uuid, '603e0ceb-34f7-596c-8bb3-f211c4655fe5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('334dd88c-ce3a-54f9-92e7-bdb420f62318'::uuid, 'edd0860b-f11b-58ab-8ecb-22f4be92630e'::uuid, '4dd81124-bec2-5847-bd6a-cdaade4f77c2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('64125497-111b-5ea2-aad9-71575068d379'::uuid, '4dd81124-bec2-5847-bd6a-cdaade4f77c2'::uuid, 'edd0860b-f11b-58ab-8ecb-22f4be92630e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8e52013f-4d9b-5239-975d-28eff4476d2c'::uuid, '4dd81124-bec2-5847-bd6a-cdaade4f77c2'::uuid, 'edd0860b-f11b-58ab-8ecb-22f4be92630e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9cad5cc9-9b25-5cb5-95f2-41db573e227f'::uuid,
  '8e52013f-4d9b-5239-975d-28eff4476d2c'::uuid,
  'edd0860b-f11b-58ab-8ecb-22f4be92630e'::uuid,
  '4dd81124-bec2-5847-bd6a-cdaade4f77c2'::uuid,
  'Hi Lucas — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2ea21d33-5a4b-563d-b484-36c5e9d049fb'::uuid,
  '8e52013f-4d9b-5239-975d-28eff4476d2c'::uuid,
  '4dd81124-bec2-5847-bd6a-cdaade4f77c2'::uuid,
  'edd0860b-f11b-58ab-8ecb-22f4be92630e'::uuid,
  'Thanks Leila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5ea22068-3449-5c2e-ae87-287a8b44eab3'::uuid, 'd6322ca4-5eb1-57e4-998e-3358209a363e'::uuid, '523b980a-c957-5e7a-8cd0-abb466412214'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('30d198a4-c44b-506f-ac05-e0b7990df791'::uuid, '523b980a-c957-5e7a-8cd0-abb466412214'::uuid, 'd6322ca4-5eb1-57e4-998e-3358209a363e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('18296dee-4d2c-5ebc-af4d-69bc09e94529'::uuid, '523b980a-c957-5e7a-8cd0-abb466412214'::uuid, 'd6322ca4-5eb1-57e4-998e-3358209a363e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e96e8699-4113-5bed-b48e-9e9f57a0d3b1'::uuid, 'ba1b768f-4f9b-5c27-8d62-0b88991fe853'::uuid, 'f85af5a2-2d56-597b-9cc6-74dd7c6ce2e8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('96dd53e6-cc26-5c4f-96cb-b6dff957cc85'::uuid, 'f85af5a2-2d56-597b-9cc6-74dd7c6ce2e8'::uuid, 'ba1b768f-4f9b-5c27-8d62-0b88991fe853'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('12fd47aa-9ac9-5bee-9830-7cdb23c129ca'::uuid, 'ba1b768f-4f9b-5c27-8d62-0b88991fe853'::uuid, 'f85af5a2-2d56-597b-9cc6-74dd7c6ce2e8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'eeb4a2ea-ac64-58af-a9f6-5fe0ed65ffc2'::uuid,
  '12fd47aa-9ac9-5bee-9830-7cdb23c129ca'::uuid,
  'ba1b768f-4f9b-5c27-8d62-0b88991fe853'::uuid,
  'f85af5a2-2d56-597b-9cc6-74dd7c6ce2e8'::uuid,
  'Hi David — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3637a26e-6a58-5c33-80b9-faf5659c6008'::uuid,
  '12fd47aa-9ac9-5bee-9830-7cdb23c129ca'::uuid,
  'f85af5a2-2d56-597b-9cc6-74dd7c6ce2e8'::uuid,
  'ba1b768f-4f9b-5c27-8d62-0b88991fe853'::uuid,
  'Thanks Sana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('878161ac-ee3e-5cd1-8391-af233ec4d78f'::uuid, '15325c50-350f-5b7b-935d-79f8d63d9a1a'::uuid, 'd8f35861-4574-5a95-81ee-2a68c58124ed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('380ebfa9-8764-5e63-963b-1e5aafdcff49'::uuid, 'd8f35861-4574-5a95-81ee-2a68c58124ed'::uuid, '15325c50-350f-5b7b-935d-79f8d63d9a1a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('655bb1ff-88e2-52a3-b3fc-800cf27e6590'::uuid, '15325c50-350f-5b7b-935d-79f8d63d9a1a'::uuid, 'd8f35861-4574-5a95-81ee-2a68c58124ed'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('54e5584e-f373-5a48-bd13-72e1f1c13973'::uuid, 'f91ae4ff-d197-5eed-ace3-4b28eca0c7cf'::uuid, '2ccca6e5-bb28-5a0e-abe4-066695c1a229'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('88fbd9a7-6154-5155-924f-a603edd827b0'::uuid, '2ccca6e5-bb28-5a0e-abe4-066695c1a229'::uuid, 'f91ae4ff-d197-5eed-ace3-4b28eca0c7cf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d2c0f410-a156-5c96-8205-83888cc8919f'::uuid, '2ccca6e5-bb28-5a0e-abe4-066695c1a229'::uuid, 'f91ae4ff-d197-5eed-ace3-4b28eca0c7cf'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '435bdf6c-df9f-553f-9f29-fc96bf6b80d7'::uuid,
  'd2c0f410-a156-5c96-8205-83888cc8919f'::uuid,
  'f91ae4ff-d197-5eed-ace3-4b28eca0c7cf'::uuid,
  '2ccca6e5-bb28-5a0e-abe4-066695c1a229'::uuid,
  'Hi Diego — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '555aac2b-a290-535f-8c68-142497d6fce0'::uuid,
  'd2c0f410-a156-5c96-8205-83888cc8919f'::uuid,
  '2ccca6e5-bb28-5a0e-abe4-066695c1a229'::uuid,
  'f91ae4ff-d197-5eed-ace3-4b28eca0c7cf'::uuid,
  'Thanks Hana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f698fbe4-42d7-5ffe-b152-62bdc1907851'::uuid, 'f91ae4ff-d197-5eed-ace3-4b28eca0c7cf'::uuid, 'f6b3ecf2-301c-5e02-a0ec-ad57b2dfbed4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('22ae15de-d976-5d19-b07a-69a913a04d34'::uuid, 'f6b3ecf2-301c-5e02-a0ec-ad57b2dfbed4'::uuid, 'f91ae4ff-d197-5eed-ace3-4b28eca0c7cf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('923a09af-1c7d-5f65-8657-24d6fef0ba6b'::uuid, 'f6b3ecf2-301c-5e02-a0ec-ad57b2dfbed4'::uuid, 'f91ae4ff-d197-5eed-ace3-4b28eca0c7cf'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('caf423e7-d4f8-5218-8091-8c2dffc76aab'::uuid, '0e2dce4b-fb79-5d9a-a1c1-45ef1aeb568e'::uuid, '14acafc8-5752-5e7f-a736-a20b700204e8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('67c4958e-7008-5628-b761-26be3be35ec6'::uuid, '14acafc8-5752-5e7f-a736-a20b700204e8'::uuid, '0e2dce4b-fb79-5d9a-a1c1-45ef1aeb568e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d189b660-8d35-5364-9bae-590d759974fc'::uuid, '0e2dce4b-fb79-5d9a-a1c1-45ef1aeb568e'::uuid, '14acafc8-5752-5e7f-a736-a20b700204e8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '343dbf3e-300d-5c9c-a09b-8194b3798ef0'::uuid,
  'd189b660-8d35-5364-9bae-590d759974fc'::uuid,
  '0e2dce4b-fb79-5d9a-a1c1-45ef1aeb568e'::uuid,
  '14acafc8-5752-5e7f-a736-a20b700204e8'::uuid,
  'Hi Nadia — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cb55060b-f4f0-58d6-88a6-34e972ac27a4'::uuid,
  'd189b660-8d35-5364-9bae-590d759974fc'::uuid,
  '14acafc8-5752-5e7f-a736-a20b700204e8'::uuid,
  '0e2dce4b-fb79-5d9a-a1c1-45ef1aeb568e'::uuid,
  'Thanks Maya! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ae3df02f-8433-56b5-9bb6-7297240e3614'::uuid, '9c47f15c-ad03-576b-8893-806c67f766a8'::uuid, '8dcc64e5-1781-5d54-acde-4fe2a4718700'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ea55e45c-9c4a-55ce-bd87-a34af3c0f822'::uuid, '8dcc64e5-1781-5d54-acde-4fe2a4718700'::uuid, '9c47f15c-ad03-576b-8893-806c67f766a8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a423becb-21f1-57d8-a4a2-00e00871600e'::uuid, '8dcc64e5-1781-5d54-acde-4fe2a4718700'::uuid, '9c47f15c-ad03-576b-8893-806c67f766a8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('58b213c2-7b13-59ce-a130-710276c46bfd'::uuid, '94792f80-7643-5ea5-8a93-3248a225121b'::uuid, '4708ce04-d984-5fa1-9289-e132f7bcc541'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('685d9edc-416e-5f66-aec0-f02687a56d8e'::uuid, '4708ce04-d984-5fa1-9289-e132f7bcc541'::uuid, '94792f80-7643-5ea5-8a93-3248a225121b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a2b8194c-211f-510d-96cc-f36ae66d9c8f'::uuid, '4708ce04-d984-5fa1-9289-e132f7bcc541'::uuid, '94792f80-7643-5ea5-8a93-3248a225121b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ffb915ea-47b7-587a-9fce-8f387832ffcc'::uuid,
  'a2b8194c-211f-510d-96cc-f36ae66d9c8f'::uuid,
  '94792f80-7643-5ea5-8a93-3248a225121b'::uuid,
  '4708ce04-d984-5fa1-9289-e132f7bcc541'::uuid,
  'Hi Mei — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c25ee166-df70-5c3f-8662-619993a8c066'::uuid,
  'a2b8194c-211f-510d-96cc-f36ae66d9c8f'::uuid,
  '4708ce04-d984-5fa1-9289-e132f7bcc541'::uuid,
  '94792f80-7643-5ea5-8a93-3248a225121b'::uuid,
  'Thanks Rohan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e7dd5260-53d8-552e-acad-1bcfbee4cdf1'::uuid, '800de340-7fca-5636-aa2d-5bc6b317e3c1'::uuid, 'e5ad392c-bed6-53b1-959c-110347ae87fe'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0326dcae-91bd-5423-9027-6a7e6ca8d234'::uuid, 'e5ad392c-bed6-53b1-959c-110347ae87fe'::uuid, '800de340-7fca-5636-aa2d-5bc6b317e3c1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('67fa95bb-da63-5ec2-9e16-79e6f23a2c54'::uuid, '800de340-7fca-5636-aa2d-5bc6b317e3c1'::uuid, 'e5ad392c-bed6-53b1-959c-110347ae87fe'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('09aa6290-1aab-5180-bdbd-95afa60bfb99'::uuid, '5ba4c4ab-e078-5738-bef9-54cc1fd5ae3c'::uuid, 'f9952d7b-1f72-5181-bf0f-fe11a108cc78'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d94b003c-9131-5c5e-8e9a-e8f228322c40'::uuid, 'f9952d7b-1f72-5181-bf0f-fe11a108cc78'::uuid, '5ba4c4ab-e078-5738-bef9-54cc1fd5ae3c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d55dfea9-8b1d-5c8f-8518-a48577297a6d'::uuid, '5ba4c4ab-e078-5738-bef9-54cc1fd5ae3c'::uuid, 'f9952d7b-1f72-5181-bf0f-fe11a108cc78'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2a4a1dee-c5df-5937-bf43-331bee023a24'::uuid,
  'd55dfea9-8b1d-5c8f-8518-a48577297a6d'::uuid,
  '5ba4c4ab-e078-5738-bef9-54cc1fd5ae3c'::uuid,
  'f9952d7b-1f72-5181-bf0f-fe11a108cc78'::uuid,
  'Hi Riya — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cd8754a4-8f9a-53f3-92df-21847500301b'::uuid,
  'd55dfea9-8b1d-5c8f-8518-a48577297a6d'::uuid,
  'f9952d7b-1f72-5181-bf0f-fe11a108cc78'::uuid,
  '5ba4c4ab-e078-5738-bef9-54cc1fd5ae3c'::uuid,
  'Thanks Samir! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('aaa33b32-241c-5e82-88b4-562ba2e85dbc'::uuid, '5ba4c4ab-e078-5738-bef9-54cc1fd5ae3c'::uuid, '8a3ccd43-eedc-52e3-970e-b05b035225e2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ae15f1a7-6a95-5b4e-8573-5d4fa2018ecc'::uuid, '8a3ccd43-eedc-52e3-970e-b05b035225e2'::uuid, '5ba4c4ab-e078-5738-bef9-54cc1fd5ae3c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fa1a95e4-b628-5b90-bdac-c7dcd6e6ebe1'::uuid, '5ba4c4ab-e078-5738-bef9-54cc1fd5ae3c'::uuid, '8a3ccd43-eedc-52e3-970e-b05b035225e2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c3458e06-a407-51ba-bfd3-fba9ca876673'::uuid, 'da781818-221e-5433-8ed5-0d93efc9d299'::uuid, 'deb0386d-b54d-5b0b-8e3d-137214ddaf59'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d8f18746-c3ba-5b57-9837-8d3abaebd3e8'::uuid, 'deb0386d-b54d-5b0b-8e3d-137214ddaf59'::uuid, 'da781818-221e-5433-8ed5-0d93efc9d299'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cc6e3231-b570-5f08-8135-a2ebfcf81ca4'::uuid, 'da781818-221e-5433-8ed5-0d93efc9d299'::uuid, 'deb0386d-b54d-5b0b-8e3d-137214ddaf59'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a3a66e9d-1feb-5d59-a696-3a96a8be7c41'::uuid,
  'cc6e3231-b570-5f08-8135-a2ebfcf81ca4'::uuid,
  'da781818-221e-5433-8ed5-0d93efc9d299'::uuid,
  'deb0386d-b54d-5b0b-8e3d-137214ddaf59'::uuid,
  'Hi Nathan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '41fb633f-7ecf-5db5-8e87-130f0058caa3'::uuid,
  'cc6e3231-b570-5f08-8135-a2ebfcf81ca4'::uuid,
  'deb0386d-b54d-5b0b-8e3d-137214ddaf59'::uuid,
  'da781818-221e-5433-8ed5-0d93efc9d299'::uuid,
  'Thanks Camila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5469485e-ed1d-562d-a248-7c8d59f7fa8b'::uuid, '5579e1e1-b542-5c1e-9e40-a1159ce70a2f'::uuid, '76be2658-a631-5b5f-a48b-2899d0277be7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('72da104d-80c6-5555-b6c6-d7e7f692c473'::uuid, '76be2658-a631-5b5f-a48b-2899d0277be7'::uuid, '5579e1e1-b542-5c1e-9e40-a1159ce70a2f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ac0c5d0f-d487-5c7d-be49-054109469809'::uuid, '5579e1e1-b542-5c1e-9e40-a1159ce70a2f'::uuid, '76be2658-a631-5b5f-a48b-2899d0277be7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ecc0a8a0-bfb2-5f24-98f0-55f269a4e5e5'::uuid, '05e52214-ccd1-51a2-b96f-6714b58b4584'::uuid, '781e7da5-24de-584d-b14b-8380dabd974e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dc974e76-00cd-5d7a-b8d5-b8359fb2e276'::uuid, '781e7da5-24de-584d-b14b-8380dabd974e'::uuid, '05e52214-ccd1-51a2-b96f-6714b58b4584'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1ec577c8-1e23-5537-ba71-5085a19b5e5d'::uuid, '05e52214-ccd1-51a2-b96f-6714b58b4584'::uuid, '781e7da5-24de-584d-b14b-8380dabd974e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e05c6587-3319-5434-a15e-2c6c9bc6acfa'::uuid,
  '1ec577c8-1e23-5537-ba71-5085a19b5e5d'::uuid,
  '05e52214-ccd1-51a2-b96f-6714b58b4584'::uuid,
  '781e7da5-24de-584d-b14b-8380dabd974e'::uuid,
  'Hi Omar — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '45c81bc3-a7bb-570f-ad4f-74a31a031705'::uuid,
  '1ec577c8-1e23-5537-ba71-5085a19b5e5d'::uuid,
  '781e7da5-24de-584d-b14b-8380dabd974e'::uuid,
  '05e52214-ccd1-51a2-b96f-6714b58b4584'::uuid,
  'Thanks Nina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0e71d346-9e87-53fc-88a4-29f34e690d6a'::uuid, '726d6063-9596-56fb-ad88-e5a3ee2d8c3a'::uuid, 'f402163c-b04a-5820-be41-3d01b7b7fc50'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dfb4d61d-fa48-5ecf-b36f-262938cfe3d4'::uuid, 'f402163c-b04a-5820-be41-3d01b7b7fc50'::uuid, '726d6063-9596-56fb-ad88-e5a3ee2d8c3a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e4ce59ac-2bb5-520a-9069-bb44d21185da'::uuid, '726d6063-9596-56fb-ad88-e5a3ee2d8c3a'::uuid, 'f402163c-b04a-5820-be41-3d01b7b7fc50'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ccda5fb9-a416-5577-83d8-d578659ff265'::uuid, 'f439b08a-0f7c-50c6-afcb-db2b75ff253a'::uuid, 'c36122a7-4e23-5387-9c04-70087a1dee13'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c3f59ee4-938a-5382-92cc-4f5cfcd5c592'::uuid, 'c36122a7-4e23-5387-9c04-70087a1dee13'::uuid, 'f439b08a-0f7c-50c6-afcb-db2b75ff253a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dc44d747-da04-502e-96df-f405e8d933a4'::uuid, 'c36122a7-4e23-5387-9c04-70087a1dee13'::uuid, 'f439b08a-0f7c-50c6-afcb-db2b75ff253a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '08f5b742-1e8d-544b-9f6c-d66311b361b7'::uuid,
  'dc44d747-da04-502e-96df-f405e8d933a4'::uuid,
  'f439b08a-0f7c-50c6-afcb-db2b75ff253a'::uuid,
  'c36122a7-4e23-5387-9c04-70087a1dee13'::uuid,
  'Hi Owen — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '523d5569-4105-5813-95e1-36f946f2e8d2'::uuid,
  'dc44d747-da04-502e-96df-f405e8d933a4'::uuid,
  'c36122a7-4e23-5387-9c04-70087a1dee13'::uuid,
  'f439b08a-0f7c-50c6-afcb-db2b75ff253a'::uuid,
  'Thanks Sofia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a947c6ab-1ff4-5cb7-8608-1f1904d3b3b6'::uuid, 'f439b08a-0f7c-50c6-afcb-db2b75ff253a'::uuid, '8c33b28f-c7cc-5e43-9231-990bf3dca6f9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ec38292a-4baf-5b11-a576-4576fbd5da73'::uuid, '8c33b28f-c7cc-5e43-9231-990bf3dca6f9'::uuid, 'f439b08a-0f7c-50c6-afcb-db2b75ff253a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('306954ca-9e1e-593d-9cc5-d6555fb50930'::uuid, '8c33b28f-c7cc-5e43-9231-990bf3dca6f9'::uuid, 'f439b08a-0f7c-50c6-afcb-db2b75ff253a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d201b1f5-bc08-5727-9482-9b8a3faa8ab6'::uuid, '5ce1784c-be4e-50c9-8037-1b18c9ed1873'::uuid, 'babd2038-73bf-59da-ae80-09745173f792'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('523b7d31-f24f-5791-a58d-99c1ffd97b45'::uuid, 'babd2038-73bf-59da-ae80-09745173f792'::uuid, '5ce1784c-be4e-50c9-8037-1b18c9ed1873'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c0b55f5b-8f32-5129-9653-feb87d8af024'::uuid, '5ce1784c-be4e-50c9-8037-1b18c9ed1873'::uuid, 'babd2038-73bf-59da-ae80-09745173f792'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '845deb08-739c-59f5-bf9b-91c702fd51b3'::uuid,
  'c0b55f5b-8f32-5129-9653-feb87d8af024'::uuid,
  '5ce1784c-be4e-50c9-8037-1b18c9ed1873'::uuid,
  'babd2038-73bf-59da-ae80-09745173f792'::uuid,
  'Hi Violet — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7799a289-011e-5004-b4f4-a43ac5f0e55b'::uuid,
  'c0b55f5b-8f32-5129-9653-feb87d8af024'::uuid,
  'babd2038-73bf-59da-ae80-09745173f792'::uuid,
  '5ce1784c-be4e-50c9-8037-1b18c9ed1873'::uuid,
  'Thanks Kenji! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4a7eeef8-3af4-54c2-b97d-06254833b11a'::uuid, '9faafd0b-f2db-5a81-91bf-81528de61c8e'::uuid, 'ac5f51b9-619a-5ecc-8be0-95f17fbf70fb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1e477095-5776-5081-958d-0e7f71f74c5e'::uuid, 'ac5f51b9-619a-5ecc-8be0-95f17fbf70fb'::uuid, '9faafd0b-f2db-5a81-91bf-81528de61c8e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b24210d2-4a39-5552-b4fc-167182b13c55'::uuid, '9faafd0b-f2db-5a81-91bf-81528de61c8e'::uuid, 'ac5f51b9-619a-5ecc-8be0-95f17fbf70fb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bbb8e9f0-6e8b-59e7-bf00-5e47a8f0a7b3'::uuid, '52001e7f-c550-5ede-b967-df1f7ffbee52'::uuid, 'da485178-a3ce-55c1-9c87-d63e6dc88145'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('89cd53b5-2a1d-5a9c-b840-f533e2328e26'::uuid, 'da485178-a3ce-55c1-9c87-d63e6dc88145'::uuid, '52001e7f-c550-5ede-b967-df1f7ffbee52'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8d6fbaea-34b2-53e2-8346-50e43a7c216a'::uuid, '52001e7f-c550-5ede-b967-df1f7ffbee52'::uuid, 'da485178-a3ce-55c1-9c87-d63e6dc88145'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3225422d-f718-5bf5-89c8-3be453c1193c'::uuid,
  '8d6fbaea-34b2-53e2-8346-50e43a7c216a'::uuid,
  '52001e7f-c550-5ede-b967-df1f7ffbee52'::uuid,
  'da485178-a3ce-55c1-9c87-d63e6dc88145'::uuid,
  'Hi Tara — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c8ca6468-f214-5293-b9c0-228f541799c2'::uuid,
  '8d6fbaea-34b2-53e2-8346-50e43a7c216a'::uuid,
  'da485178-a3ce-55c1-9c87-d63e6dc88145'::uuid,
  '52001e7f-c550-5ede-b967-df1f7ffbee52'::uuid,
  'Thanks Kai! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b958bbf7-f7d8-50c5-b5b2-79f4f4c314c4'::uuid, '71f19248-9b47-5e00-bc96-ea56d2f0fa29'::uuid, '591c3431-cc8c-5f3a-bdfe-57efd787bd73'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e8414d92-78fd-5cb2-92da-28eb0482b13b'::uuid, '591c3431-cc8c-5f3a-bdfe-57efd787bd73'::uuid, '71f19248-9b47-5e00-bc96-ea56d2f0fa29'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('26982c46-787c-5a9a-a1aa-fb4344090594'::uuid, '591c3431-cc8c-5f3a-bdfe-57efd787bd73'::uuid, '71f19248-9b47-5e00-bc96-ea56d2f0fa29'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e0421a1d-8e53-5ec5-8ea3-7bfeab3ac08e'::uuid, '0f2d40d5-1ce2-5b45-8b3f-13e509818a14'::uuid, '0cd97540-575a-57c2-a037-9c730567b2e7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8eb7c6a7-bceb-5ab9-808e-71c9573b8f8f'::uuid, '0cd97540-575a-57c2-a037-9c730567b2e7'::uuid, '0f2d40d5-1ce2-5b45-8b3f-13e509818a14'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('98d070fe-dd64-599a-bef7-e64aa73d77d0'::uuid, '0cd97540-575a-57c2-a037-9c730567b2e7'::uuid, '0f2d40d5-1ce2-5b45-8b3f-13e509818a14'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5b076b7c-d66e-56bc-aed6-44bf3ecd9a66'::uuid,
  '98d070fe-dd64-599a-bef7-e64aa73d77d0'::uuid,
  '0f2d40d5-1ce2-5b45-8b3f-13e509818a14'::uuid,
  '0cd97540-575a-57c2-a037-9c730567b2e7'::uuid,
  'Hi Imani — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '78c897c8-4b5a-5a10-84d3-f866147d7186'::uuid,
  '98d070fe-dd64-599a-bef7-e64aa73d77d0'::uuid,
  '0cd97540-575a-57c2-a037-9c730567b2e7'::uuid,
  '0f2d40d5-1ce2-5b45-8b3f-13e509818a14'::uuid,
  'Thanks Benjamin! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0d0bdf25-5cad-5b08-8abd-5c39c97d78ee'::uuid, '0f2d40d5-1ce2-5b45-8b3f-13e509818a14'::uuid, '10f9e18b-4dea-5949-a353-69f4282d6bf7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ae4777fd-70b6-514f-8f59-1d1b9ff2be6e'::uuid, '10f9e18b-4dea-5949-a353-69f4282d6bf7'::uuid, '0f2d40d5-1ce2-5b45-8b3f-13e509818a14'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('89c6dc13-10c2-5f49-8a20-11e0b83888e1'::uuid, '0f2d40d5-1ce2-5b45-8b3f-13e509818a14'::uuid, '10f9e18b-4dea-5949-a353-69f4282d6bf7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fb05c942-b4bc-5a94-a292-1febd2891952'::uuid, 'd5f7807d-fe74-50a6-8c6d-8c9ed5d72b81'::uuid, '902a3b16-e8f1-556c-820a-2c892961ff3b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('05382ba1-ca3f-5da6-a275-19cfeb3d4f46'::uuid, '902a3b16-e8f1-556c-820a-2c892961ff3b'::uuid, 'd5f7807d-fe74-50a6-8c6d-8c9ed5d72b81'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ca320ef4-95d0-581a-a965-0c2986e47b54'::uuid, '902a3b16-e8f1-556c-820a-2c892961ff3b'::uuid, 'd5f7807d-fe74-50a6-8c6d-8c9ed5d72b81'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a83cd54c-930d-5b58-b7c3-742dbbbd8f55'::uuid,
  'ca320ef4-95d0-581a-a965-0c2986e47b54'::uuid,
  'd5f7807d-fe74-50a6-8c6d-8c9ed5d72b81'::uuid,
  '902a3b16-e8f1-556c-820a-2c892961ff3b'::uuid,
  'Hi Noah — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '676a5d34-3703-557e-b137-c647a818a2b9'::uuid,
  'ca320ef4-95d0-581a-a965-0c2986e47b54'::uuid,
  '902a3b16-e8f1-556c-820a-2c892961ff3b'::uuid,
  'd5f7807d-fe74-50a6-8c6d-8c9ed5d72b81'::uuid,
  'Thanks Ava! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a324bb2e-bf74-5ec1-8fae-07c40e4a300b'::uuid, '6d797a78-3704-5608-8637-77e373f046fc'::uuid, 'e8959cb7-aa69-5b68-afde-e4bb16d5a608'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('64e6f06a-e82c-58bd-844e-e3e29d991e46'::uuid, 'e8959cb7-aa69-5b68-afde-e4bb16d5a608'::uuid, '6d797a78-3704-5608-8637-77e373f046fc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fbf651bc-7096-5929-bd2b-256c7660363d'::uuid, '6d797a78-3704-5608-8637-77e373f046fc'::uuid, 'e8959cb7-aa69-5b68-afde-e4bb16d5a608'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('43ef7e8e-f1c5-5a7c-9ed0-5b216e829c76'::uuid, '934efc20-ee88-5e38-86a8-96c2099ea27a'::uuid, 'a130656b-33b4-5818-9d16-667ae077b735'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e158e858-f4f1-53ab-9459-a7a4851fb023'::uuid, 'a130656b-33b4-5818-9d16-667ae077b735'::uuid, '934efc20-ee88-5e38-86a8-96c2099ea27a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f68443fa-3d2a-594c-b3d0-bc591984e5d4'::uuid, '934efc20-ee88-5e38-86a8-96c2099ea27a'::uuid, 'a130656b-33b4-5818-9d16-667ae077b735'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '05d0cac1-0927-5438-bbd4-69394848d57b'::uuid,
  'f68443fa-3d2a-594c-b3d0-bc591984e5d4'::uuid,
  '934efc20-ee88-5e38-86a8-96c2099ea27a'::uuid,
  'a130656b-33b4-5818-9d16-667ae077b735'::uuid,
  'Hi Ethan — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;
