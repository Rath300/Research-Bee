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