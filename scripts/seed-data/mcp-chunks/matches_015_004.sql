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