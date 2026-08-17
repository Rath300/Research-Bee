INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ad3b8b80-665c-50fb-a42d-084e5e39b431'::uuid,
  '638a7978-1696-533f-a06f-f2c506a722e5'::uuid,
  '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid,
  '370327fd-3558-57cf-8945-bc80d916c857'::uuid,
  'Thanks Nadia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0530eac2-c620-5cb8-8239-83f9e2da1ab4'::uuid, 'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid, '24a43e03-7de6-50e6-a40d-aee1ccba879b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2697182b-039f-5c77-9071-575571ddb238'::uuid, '24a43e03-7de6-50e6-a40d-aee1ccba879b'::uuid, 'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('abc948fd-5eb2-51f7-ae55-b1393db55842'::uuid, '24a43e03-7de6-50e6-a40d-aee1ccba879b'::uuid, 'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('00464b08-1681-5b42-bab8-bd378b5002d1'::uuid, 'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid, 'd753bc68-7b16-56ec-967a-6c9f5215fab8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d616ea9b-232c-5fc4-b040-238af764894d'::uuid, 'd753bc68-7b16-56ec-967a-6c9f5215fab8'::uuid, 'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('316c0642-9a27-5893-99d3-c4ea8ac2fbd8'::uuid, 'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid, 'd753bc68-7b16-56ec-967a-6c9f5215fab8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5673dd07-efc2-57f0-abf8-aed5c13e47ab'::uuid,
  '316c0642-9a27-5893-99d3-c4ea8ac2fbd8'::uuid,
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid,
  'd753bc68-7b16-56ec-967a-6c9f5215fab8'::uuid,
  'Hi Sebastian — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9a6f2f1b-e180-56d5-a84f-e97a8f08dd31'::uuid,
  '316c0642-9a27-5893-99d3-c4ea8ac2fbd8'::uuid,
  'd753bc68-7b16-56ec-967a-6c9f5215fab8'::uuid,
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid,
  'Thanks Mei! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('50e8b00d-10e0-58d0-a84b-4215943a232a'::uuid, 'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid, 'a018203c-46b7-508f-95c6-b6c42580c16c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a290e4aa-c0ee-5c24-a7c6-1e368c01a90f'::uuid, 'a018203c-46b7-508f-95c6-b6c42580c16c'::uuid, 'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('52807dc2-cb45-5a17-b4fe-df781b1c2992'::uuid, 'a018203c-46b7-508f-95c6-b6c42580c16c'::uuid, 'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('13c82d53-c9f1-5a57-867b-53ec16ff4ff0'::uuid, 'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid, '6a514a41-4c7e-5056-a14d-13305a0c1c48'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('633053fa-9777-5183-8ac5-f9237c4ac603'::uuid, '6a514a41-4c7e-5056-a14d-13305a0c1c48'::uuid, 'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b539f280-6b12-561b-9efe-6d389c3785e1'::uuid, '6a514a41-4c7e-5056-a14d-13305a0c1c48'::uuid, 'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4c955e65-3b6c-50d4-89b7-a672bde3f536'::uuid,
  'b539f280-6b12-561b-9efe-6d389c3785e1'::uuid,
  'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid,
  '6a514a41-4c7e-5056-a14d-13305a0c1c48'::uuid,
  'Hi Amina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd23558aa-ee8c-59f8-9d53-7900c13f938c'::uuid,
  'b539f280-6b12-561b-9efe-6d389c3785e1'::uuid,
  '6a514a41-4c7e-5056-a14d-13305a0c1c48'::uuid,
  'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid,
  'Thanks Henry! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fc500602-0195-55e7-986a-727124df9552'::uuid, 'f72fcbef-f134-582a-b53f-f217bb5d6d55'::uuid, 'd87f4c56-0da4-5e92-b739-b5649237064a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('66b38109-58fb-505c-827b-43b94bff74e9'::uuid, 'd87f4c56-0da4-5e92-b739-b5649237064a'::uuid, 'f72fcbef-f134-582a-b53f-f217bb5d6d55'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('814ada96-0fe6-5461-968a-c05033e9be7e'::uuid, 'd87f4c56-0da4-5e92-b739-b5649237064a'::uuid, 'f72fcbef-f134-582a-b53f-f217bb5d6d55'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1c20bd39-5b15-5dab-8bac-1cb872a75a79'::uuid, 'b99d3e95-19c1-5d94-8f9d-fb6d9ccc63c0'::uuid, '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d0216bae-4ebf-5c4e-865f-c26572665ed0'::uuid, '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid, 'b99d3e95-19c1-5d94-8f9d-fb6d9ccc63c0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('15136289-c281-5f82-83bb-d1689388a71f'::uuid, '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid, 'b99d3e95-19c1-5d94-8f9d-fb6d9ccc63c0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '52c301d8-86bd-5da9-bef0-df1094f3ed9b'::uuid,
  '15136289-c281-5f82-83bb-d1689388a71f'::uuid,
  'b99d3e95-19c1-5d94-8f9d-fb6d9ccc63c0'::uuid,
  '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid,
  'Hi Hannah — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3f560c42-22b7-53b6-a92c-e2c0c9684d3f'::uuid,
  '15136289-c281-5f82-83bb-d1689388a71f'::uuid,
  '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid,
  'b99d3e95-19c1-5d94-8f9d-fb6d9ccc63c0'::uuid,
  'Thanks Nathan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d8ce4a36-d8e6-5011-b8db-e79d28584080'::uuid, '75f6df30-5d8f-5dd3-917e-2cb576513e61'::uuid, 'd377db0e-bf42-500a-9404-0b006df6e52f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('91bb3f07-0ca7-55fa-950f-cc4a9c95ab91'::uuid, 'd377db0e-bf42-500a-9404-0b006df6e52f'::uuid, '75f6df30-5d8f-5dd3-917e-2cb576513e61'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('38a812b7-5d88-5038-9441-250a7fb2c5e7'::uuid, '75f6df30-5d8f-5dd3-917e-2cb576513e61'::uuid, 'd377db0e-bf42-500a-9404-0b006df6e52f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2fb698d5-882d-55d4-b986-4ab4a380a074'::uuid, 'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid, 'c51f57c8-ceb6-5800-8535-3bfb0d73bd50'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0a21d63b-d3d8-5878-9742-5b2366515557'::uuid, 'c51f57c8-ceb6-5800-8535-3bfb0d73bd50'::uuid, 'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d71c82a1-e468-556b-bd36-a7a35321db5a'::uuid, 'c51f57c8-ceb6-5800-8535-3bfb0d73bd50'::uuid, 'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7549cfaa-cfe7-5518-a3c6-1e8056779a49'::uuid,
  'd71c82a1-e468-556b-bd36-a7a35321db5a'::uuid,
  'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid,
  'c51f57c8-ceb6-5800-8535-3bfb0d73bd50'::uuid,
  'Hi Nora — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3e22bcf0-e18b-538f-82a3-902270b1114a'::uuid,
  'd71c82a1-e468-556b-bd36-a7a35321db5a'::uuid,
  'c51f57c8-ceb6-5800-8535-3bfb0d73bd50'::uuid,
  'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid,
  'Thanks Omar! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('544861cf-0135-5720-8eb9-8008905f7ee0'::uuid, 'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid, 'fb2d5ae5-7a9f-5875-9562-025ba2ec14d4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0fed05ab-90c9-52bd-b6f0-7cad1870f483'::uuid, 'fb2d5ae5-7a9f-5875-9562-025ba2ec14d4'::uuid, 'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c4e38476-cdd1-56d6-9e39-e53f16c2839c'::uuid, 'e48f603e-a2a7-5b1b-b0d7-6dc49efcd7ac'::uuid, 'fb2d5ae5-7a9f-5875-9562-025ba2ec14d4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5cc74a68-15ba-5ca4-a475-a5cf4bee1fd6'::uuid, '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid, '4ba2732c-9b95-539b-af2c-08cd05f15dba'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ae245808-7f3c-5cfb-82bd-0c250fb85d17'::uuid, '4ba2732c-9b95-539b-af2c-08cd05f15dba'::uuid, '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('05da5ef0-8ad9-5d44-93fd-d080d7e57a30'::uuid, '4ba2732c-9b95-539b-af2c-08cd05f15dba'::uuid, '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '62e947f8-4487-5430-9eaf-fc34c7e8a753'::uuid,
  '05da5ef0-8ad9-5d44-93fd-d080d7e57a30'::uuid,
  '9fecfb5c-3676-5c97-88ba-f2d8c944b273'::uuid,
  '4ba2732c-9b95-539b-af2c-08cd05f15dba'::uuid,
  'Hi Isaac — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;