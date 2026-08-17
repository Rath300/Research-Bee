INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '450058bc-ec41-5a9e-9ea1-38429e80100b'::uuid,
  '3b7a6b88-3e0d-54e3-b24b-c07e5115b140'::uuid,
  'ea2fb814-4778-5d39-a00f-eb1d0e27fb92'::uuid,
  '99f99166-d723-53d1-97e8-bc6671828d19'::uuid,
  'Hi Samir — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'aa9aac47-f7a9-5333-9639-c63f0da1a609'::uuid,
  '3b7a6b88-3e0d-54e3-b24b-c07e5115b140'::uuid,
  '99f99166-d723-53d1-97e8-bc6671828d19'::uuid,
  'ea2fb814-4778-5d39-a00f-eb1d0e27fb92'::uuid,
  'Thanks Grace! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7e5bff4a-bd7b-5ffc-9f4d-f34b011f88a5'::uuid, '900a2d77-a10d-5ba0-95fc-fe4be7e250a4'::uuid, '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('05d1bb47-7a84-5152-bce6-fbd331115f6d'::uuid, '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb'::uuid, '900a2d77-a10d-5ba0-95fc-fe4be7e250a4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('32f823d3-788c-58cf-848c-4f5e875c1ca4'::uuid, '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb'::uuid, '900a2d77-a10d-5ba0-95fc-fe4be7e250a4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c34d1c1e-4b18-50ec-af8b-c70bf1caa561'::uuid, 'a4e70726-d19d-5c33-89d1-0754ffd062b1'::uuid, '4ded9d2c-411a-5884-a2f1-9b3d21d137ed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2a3990f6-cb90-530b-9431-764a9d76d3fd'::uuid, '4ded9d2c-411a-5884-a2f1-9b3d21d137ed'::uuid, 'a4e70726-d19d-5c33-89d1-0754ffd062b1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a47e149f-ec38-5d73-a255-19e409d6cdc2'::uuid, '4ded9d2c-411a-5884-a2f1-9b3d21d137ed'::uuid, 'a4e70726-d19d-5c33-89d1-0754ffd062b1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c1954bb4-d82e-52a0-bbeb-8f4907bb14ba'::uuid,
  'a47e149f-ec38-5d73-a255-19e409d6cdc2'::uuid,
  'a4e70726-d19d-5c33-89d1-0754ffd062b1'::uuid,
  '4ded9d2c-411a-5884-a2f1-9b3d21d137ed'::uuid,
  'Hi Daniel — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1f04b4d0-8a01-5af1-ab85-e3cf11de80ae'::uuid,
  'a47e149f-ec38-5d73-a255-19e409d6cdc2'::uuid,
  '4ded9d2c-411a-5884-a2f1-9b3d21d137ed'::uuid,
  'a4e70726-d19d-5c33-89d1-0754ffd062b1'::uuid,
  'Thanks Isla! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d722ae42-e41f-5397-8599-50f0f8397d45'::uuid, 'a4e70726-d19d-5c33-89d1-0754ffd062b1'::uuid, 'ef33091a-beec-514c-aef8-2bb5236c7ea0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bfd82177-bdbe-562c-a05b-a1e770f0d34e'::uuid, 'ef33091a-beec-514c-aef8-2bb5236c7ea0'::uuid, 'a4e70726-d19d-5c33-89d1-0754ffd062b1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0651e50b-6bf7-5269-90de-dbe4e3b02198'::uuid, 'a4e70726-d19d-5c33-89d1-0754ffd062b1'::uuid, 'ef33091a-beec-514c-aef8-2bb5236c7ea0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e819f070-66d9-5a33-b91d-f309bca52179'::uuid, 'a018203c-46b7-508f-95c6-b6c42580c16c'::uuid, '1fbcf3d3-ee1a-5331-823b-d5a4758c0204'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6c80b460-260a-556c-b9ad-21cd1629bd54'::uuid, '1fbcf3d3-ee1a-5331-823b-d5a4758c0204'::uuid, 'a018203c-46b7-508f-95c6-b6c42580c16c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f3e98fcd-8de9-53cf-9e61-be97f67fd8f6'::uuid, '1fbcf3d3-ee1a-5331-823b-d5a4758c0204'::uuid, 'a018203c-46b7-508f-95c6-b6c42580c16c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'bc750828-46c0-52df-b3fd-90ab059e093b'::uuid,
  'f3e98fcd-8de9-53cf-9e61-be97f67fd8f6'::uuid,
  'a018203c-46b7-508f-95c6-b6c42580c16c'::uuid,
  '1fbcf3d3-ee1a-5331-823b-d5a4758c0204'::uuid,
  'Hi Nina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'bbc28f24-e5e8-5150-b96b-2b5a5e98c3b8'::uuid,
  'f3e98fcd-8de9-53cf-9e61-be97f67fd8f6'::uuid,
  '1fbcf3d3-ee1a-5331-823b-d5a4758c0204'::uuid,
  'a018203c-46b7-508f-95c6-b6c42580c16c'::uuid,
  'Thanks Theo! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c3b0d2a3-3076-534a-8203-5cda390fc88c'::uuid, 'fa10485d-6ae3-5acc-afcd-cb141834f70e'::uuid, 'f59d5527-b411-526d-b2aa-0069357fa215'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4d7fd88a-1fc7-5c2d-bc9e-0f1a1491996e'::uuid, 'f59d5527-b411-526d-b2aa-0069357fa215'::uuid, 'fa10485d-6ae3-5acc-afcd-cb141834f70e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b41365dd-9dc8-5805-b58c-70ced59bb627'::uuid, 'f59d5527-b411-526d-b2aa-0069357fa215'::uuid, 'fa10485d-6ae3-5acc-afcd-cb141834f70e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e6ab03e8-4a48-5d2b-95bc-41fb0fc02f0c'::uuid, 'af8dc57b-50ea-53e4-83a2-7fc4513a247e'::uuid, 'c78b2092-0056-5d5f-a59a-0408b3bbf197'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0e20fb5f-a18a-5f87-8ad6-4bbbc22314e0'::uuid, 'c78b2092-0056-5d5f-a59a-0408b3bbf197'::uuid, 'af8dc57b-50ea-53e4-83a2-7fc4513a247e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0f246bcc-4ae9-5589-88bc-06a3ebec378e'::uuid, 'af8dc57b-50ea-53e4-83a2-7fc4513a247e'::uuid, 'c78b2092-0056-5d5f-a59a-0408b3bbf197'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd864a73b-889e-5084-b5ba-cc62fde1b08c'::uuid,
  '0f246bcc-4ae9-5589-88bc-06a3ebec378e'::uuid,
  'af8dc57b-50ea-53e4-83a2-7fc4513a247e'::uuid,
  'c78b2092-0056-5d5f-a59a-0408b3bbf197'::uuid,
  'Hi Sofia — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f33dc340-06ed-57bc-b9a8-5db8189ce70e'::uuid,
  '0f246bcc-4ae9-5589-88bc-06a3ebec378e'::uuid,
  'c78b2092-0056-5d5f-a59a-0408b3bbf197'::uuid,
  'af8dc57b-50ea-53e4-83a2-7fc4513a247e'::uuid,
  'Thanks Lucas! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('92af55ef-dba2-5099-b207-5c5d4995fde3'::uuid, '71ce6f8f-e4ca-5b43-9477-04524c1dfb5a'::uuid, '42a644d9-ef02-551e-98fd-86c9547f5344'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('683e3657-ce49-5c5f-9a95-7b146a70b01d'::uuid, '42a644d9-ef02-551e-98fd-86c9547f5344'::uuid, '71ce6f8f-e4ca-5b43-9477-04524c1dfb5a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('11b1bc56-f1a0-52bc-ad1b-ec971f646e85'::uuid, '42a644d9-ef02-551e-98fd-86c9547f5344'::uuid, '71ce6f8f-e4ca-5b43-9477-04524c1dfb5a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e59cad19-b7b0-5930-bbb0-64fc31337579'::uuid, 'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid, '06f62af9-52f4-52fc-9257-21fc2d7258ca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('72f880e9-af1b-5030-a526-991d08ed684b'::uuid, '06f62af9-52f4-52fc-9257-21fc2d7258ca'::uuid, 'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9fa3cbbe-1955-5cb3-8dd7-fc6244cd895e'::uuid, '06f62af9-52f4-52fc-9257-21fc2d7258ca'::uuid, 'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '66257b1b-baf2-5ae0-a1d9-ee8ee84a2bcb'::uuid,
  '9fa3cbbe-1955-5cb3-8dd7-fc6244cd895e'::uuid,
  'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid,
  '06f62af9-52f4-52fc-9257-21fc2d7258ca'::uuid,
  'Hi Zara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a98eeaa4-3602-58de-b5a3-c43a20d0cb97'::uuid,
  '9fa3cbbe-1955-5cb3-8dd7-fc6244cd895e'::uuid,
  '06f62af9-52f4-52fc-9257-21fc2d7258ca'::uuid,
  'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid,
  'Thanks David! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('32856774-1119-5892-b78c-724c36224b94'::uuid, 'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid, 'aa23ebcd-e9cb-55d1-8431-fc4a5204925f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bcc465d7-77e7-524f-979b-256f920081ea'::uuid, 'aa23ebcd-e9cb-55d1-8431-fc4a5204925f'::uuid, 'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5a169c88-1f0e-58f2-8233-25038b915e7c'::uuid, 'aa23ebcd-e9cb-55d1-8431-fc4a5204925f'::uuid, 'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d3562946-e92a-560e-b7b1-2b65c63b09e2'::uuid, 'fb2d5ae5-7a9f-5875-9562-025ba2ec14d4'::uuid, '188d7ba6-25d8-5a8a-a635-f07c138073d7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7e0691e8-7b49-5b6c-bf06-d6f0fc22bf46'::uuid, '188d7ba6-25d8-5a8a-a635-f07c138073d7'::uuid, 'fb2d5ae5-7a9f-5875-9562-025ba2ec14d4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3adb121b-9753-5d51-8cdc-5d42541ad59a'::uuid, '188d7ba6-25d8-5a8a-a635-f07c138073d7'::uuid, 'fb2d5ae5-7a9f-5875-9562-025ba2ec14d4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;