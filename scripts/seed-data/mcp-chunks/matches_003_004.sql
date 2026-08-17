INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('80d5a2d5-e495-5f8d-98d3-a4162bc163d9'::uuid, 'ec425ec6-5f9a-57bd-a9ad-785e91c63bf0'::uuid, 'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c333d3e8-4e6a-543c-bd91-597fb773e712'::uuid, 'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid, 'ec425ec6-5f9a-57bd-a9ad-785e91c63bf0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bbf0ef90-d306-532e-bd20-78eb7e7f7757'::uuid, 'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid, 'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b4594beb-f7cf-55d0-8a2f-d4ca5df0584a'::uuid, 'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid, 'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e647c156-cc85-57fd-a48d-795ae8c04656'::uuid, 'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid, 'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4f167368-b045-5dc3-92bd-1543f912522c'::uuid,
  'e647c156-cc85-57fd-a48d-795ae8c04656'::uuid,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid,
  'Hi Felix — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'dd6b07e9-f6ce-583b-ba24-f10781d9162e'::uuid,
  'e647c156-cc85-57fd-a48d-795ae8c04656'::uuid,
  'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid,
  'c451a0ea-490e-5aa2-b12b-707f77b59b04'::uuid,
  'Thanks Violet! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ccb1cd6c-057a-5dc1-ace3-dca61332cd9f'::uuid, 'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid, 'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('38fe5023-069d-5a1c-8706-f10017f58cff'::uuid, 'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid, 'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ece55b7e-fbd4-5187-bfbc-5d426f532e44'::uuid, 'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid, 'b165923d-c2b6-5c6b-9f53-5bd45fdc7a2c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a4c1a079-c7dc-59d2-8560-5ae59cf4b553'::uuid, '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid, '65673952-33ec-5b72-b075-0d350bcdb2da'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c1af085e-e24a-5e4b-aff7-6b1b59d223e2'::uuid, '65673952-33ec-5b72-b075-0d350bcdb2da'::uuid, '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('235399b4-3b4d-5c5e-ab3d-ac70fb97e2be'::uuid, '65673952-33ec-5b72-b075-0d350bcdb2da'::uuid, '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2c5dfee4-bc1b-566a-8e4c-4f5886bd2bae'::uuid,
  '235399b4-3b4d-5c5e-ab3d-ac70fb97e2be'::uuid,
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  '65673952-33ec-5b72-b075-0d350bcdb2da'::uuid,
  'Hi James — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f830b04b-d2d5-5d46-a5c5-25aea337b812'::uuid,
  '235399b4-3b4d-5c5e-ab3d-ac70fb97e2be'::uuid,
  '65673952-33ec-5b72-b075-0d350bcdb2da'::uuid,
  '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid,
  'Thanks Tara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('30e14941-b637-5703-afc9-84728774f812'::uuid, '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid, '7a25d666-766e-5e81-97a3-36cc7b3d90a2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e2fa7260-98cc-56af-a214-114837f711d2'::uuid, '7a25d666-766e-5e81-97a3-36cc7b3d90a2'::uuid, '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4fe52b70-2075-59c3-ae3f-8713cc2741d6'::uuid, '79883a6b-e9c7-5f22-a98f-8d636b320410'::uuid, '7a25d666-766e-5e81-97a3-36cc7b3d90a2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c102bca4-19be-5362-8830-f38a72e525fb'::uuid, 'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid, '8147a3cb-192b-5bfd-8336-c12eacf477cd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a646eae8-c7ff-5c5b-bd5b-18d27087a5e5'::uuid, '8147a3cb-192b-5bfd-8336-c12eacf477cd'::uuid, 'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('04ee50ce-2008-502f-99be-9c2fb35280fd'::uuid, '8147a3cb-192b-5bfd-8336-c12eacf477cd'::uuid, 'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '109569b6-e9d5-523e-aade-35e59dc59694'::uuid,
  '04ee50ce-2008-502f-99be-9c2fb35280fd'::uuid,
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  '8147a3cb-192b-5bfd-8336-c12eacf477cd'::uuid,
  'Hi Grace — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3ef9a05c-cf68-5220-b7b8-769cd42bfa76'::uuid,
  '04ee50ce-2008-502f-99be-9c2fb35280fd'::uuid,
  '8147a3cb-192b-5bfd-8336-c12eacf477cd'::uuid,
  'd4d6e180-4554-5046-b730-9f17ed97b918'::uuid,
  'Thanks Aaron! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c425885c-8aea-5ba9-8531-91f4e01494a2'::uuid, '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid, '1ff5e22d-0848-5550-a8c3-4df9c4050afb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7c94e9dc-27d1-5921-8184-39c706f1f5f6'::uuid, '1ff5e22d-0848-5550-a8c3-4df9c4050afb'::uuid, '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a41f956c-0690-5af7-a1a1-127e6f79f815'::uuid, '1ff5e22d-0848-5550-a8c3-4df9c4050afb'::uuid, '43e41d82-f25d-529d-8b80-2b46f9cbb827'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f1548a22-4aa8-5993-ba72-48c3f442cc3a'::uuid, '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid, 'ad5c0cbc-9e41-56d0-b0ae-200c31b5995a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('df83c4d6-f843-51bf-8059-72467e1c8e9b'::uuid, 'ad5c0cbc-9e41-56d0-b0ae-200c31b5995a'::uuid, '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c27df5a6-5cff-52e8-8881-aca3acf86863'::uuid, '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid, 'ad5c0cbc-9e41-56d0-b0ae-200c31b5995a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f0ae88f8-231b-521f-99af-04eee30fc092'::uuid,
  'c27df5a6-5cff-52e8-8881-aca3acf86863'::uuid,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  'ad5c0cbc-9e41-56d0-b0ae-200c31b5995a'::uuid,
  'Hi Isla — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '795d5dec-daca-5803-a2ab-0c41bf04e345'::uuid,
  'c27df5a6-5cff-52e8-8881-aca3acf86863'::uuid,
  'ad5c0cbc-9e41-56d0-b0ae-200c31b5995a'::uuid,
  '90417be3-0d6e-57da-a1d1-19707b745db1'::uuid,
  'Thanks Noah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b1bb5f59-b3f0-5305-9220-65119a5e1a62'::uuid, 'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid, 'd8a33d26-1570-57fc-b4be-dd5e32331b77'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0ac97a42-90be-516b-82ea-6bb053a68cc8'::uuid, 'd8a33d26-1570-57fc-b4be-dd5e32331b77'::uuid, 'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5326ac1c-c521-52c0-a293-0a2071d5edc6'::uuid, 'bf27d27b-b8a0-5585-b4d7-53f3c05d1d98'::uuid, 'd8a33d26-1570-57fc-b4be-dd5e32331b77'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d97940d2-e16c-5653-bab4-b05ad655fe5e'::uuid, '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid, 'b5c5f827-63ef-5230-bb5e-5e5d81dec47c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4293ea49-ce77-5b83-ada5-70837e7306a5'::uuid, 'b5c5f827-63ef-5230-bb5e-5e5d81dec47c'::uuid, '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9fc198ad-fdd9-5804-9737-a49618a05c1c'::uuid, '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid, 'b5c5f827-63ef-5230-bb5e-5e5d81dec47c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e8cd6d8a-3b53-57e4-b590-cc735ef53b76'::uuid,
  '9fc198ad-fdd9-5804-9737-a49618a05c1c'::uuid,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  'b5c5f827-63ef-5230-bb5e-5e5d81dec47c'::uuid,
  'Hi Yara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6d8f4251-bb00-5a30-9951-0a1869b48ccf'::uuid,
  '9fc198ad-fdd9-5804-9737-a49618a05c1c'::uuid,
  'b5c5f827-63ef-5230-bb5e-5e5d81dec47c'::uuid,
  '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid,
  'Thanks Ethan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ed040033-e423-54df-9396-0cd69b5b01bc'::uuid, '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid, '1b70bae1-1102-5059-84fb-4d69136b5032'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;