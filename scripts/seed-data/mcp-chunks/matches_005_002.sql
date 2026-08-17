INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('15b494c9-1a51-5043-91a9-48ee439b97bf'::uuid, '3c8de87e-de6b-50c7-b5c7-8a4cf5f05ce5'::uuid, 'feac598c-38ed-5b4e-8173-ae60d6e102db'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1dd24627-37e5-55c5-a491-7c781fe563ba'::uuid, 'b6fd1d0a-577c-50d9-af00-76be7ac0fe27'::uuid, 'c59ba863-a764-5b9f-91a1-ad1e0093cb27'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f5cf1dca-e805-5a02-ac8d-70941be3b5af'::uuid, 'c59ba863-a764-5b9f-91a1-ad1e0093cb27'::uuid, 'b6fd1d0a-577c-50d9-af00-76be7ac0fe27'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f4bf1908-b0d0-58e6-a018-fc58bde8efb8'::uuid, 'b6fd1d0a-577c-50d9-af00-76be7ac0fe27'::uuid, 'c59ba863-a764-5b9f-91a1-ad1e0093cb27'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c61e322f-9537-536d-ac20-bb08ba77fd5d'::uuid,
  'f4bf1908-b0d0-58e6-a018-fc58bde8efb8'::uuid,
  'b6fd1d0a-577c-50d9-af00-76be7ac0fe27'::uuid,
  'c59ba863-a764-5b9f-91a1-ad1e0093cb27'::uuid,
  'Hi Tara — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8a9499cb-4775-5046-a929-3eb87b28339d'::uuid,
  'f4bf1908-b0d0-58e6-a018-fc58bde8efb8'::uuid,
  'c59ba863-a764-5b9f-91a1-ad1e0093cb27'::uuid,
  'b6fd1d0a-577c-50d9-af00-76be7ac0fe27'::uuid,
  'Thanks Kai! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('71ad1324-9e87-572a-9487-c592ade61dcc'::uuid, '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8'::uuid, 'd16fc742-2b87-5693-8c11-a7f8b926a752'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c4ae02a0-9b58-51d2-a010-f88dbb0df3fa'::uuid, 'd16fc742-2b87-5693-8c11-a7f8b926a752'::uuid, '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('04c8c332-de9e-5b89-bc41-eebc3910f662'::uuid, '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8'::uuid, 'd16fc742-2b87-5693-8c11-a7f8b926a752'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('25575f43-94a0-5638-b6d7-944b8a7767c2'::uuid, '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid, 'bc6f828c-01a3-54cb-8689-2ba2d88d126d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d9b1eaea-26c4-5508-89db-ff56f278f106'::uuid, 'bc6f828c-01a3-54cb-8689-2ba2d88d126d'::uuid, '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f3d6196f-6f48-5850-9890-86c55e8bf046'::uuid, '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid, 'bc6f828c-01a3-54cb-8689-2ba2d88d126d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '78370f97-a2f9-52cc-9a39-e4f2ce7384bd'::uuid,
  'f3d6196f-6f48-5850-9890-86c55e8bf046'::uuid,
  '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid,
  'bc6f828c-01a3-54cb-8689-2ba2d88d126d'::uuid,
  'Hi Imani — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c4d29a12-cb9c-55e0-838b-f87a42e30c69'::uuid,
  'f3d6196f-6f48-5850-9890-86c55e8bf046'::uuid,
  'bc6f828c-01a3-54cb-8689-2ba2d88d126d'::uuid,
  '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid,
  'Thanks Benjamin! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5bfbe22e-9537-5847-82e3-1d96603e4538'::uuid, '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid, '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c76d0aea-7618-5920-b504-53cae3f51a9b'::uuid, '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb'::uuid, '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a41ed7f2-8d16-521b-b5e3-e7b4697b931c'::uuid, '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid, '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('40ccca3d-5fae-52b3-97da-a4cf464fbd88'::uuid, '24a43e03-7de6-50e6-a40d-aee1ccba879b'::uuid, '986e3fa3-697e-5603-b99c-4e2cd979c814'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b89940a6-fdc8-5bb6-9c26-1809210de317'::uuid, '986e3fa3-697e-5603-b99c-4e2cd979c814'::uuid, '24a43e03-7de6-50e6-a40d-aee1ccba879b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8e597994-8477-5a18-b4ef-da9a6a31d362'::uuid, '24a43e03-7de6-50e6-a40d-aee1ccba879b'::uuid, '986e3fa3-697e-5603-b99c-4e2cd979c814'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1642a07a-e810-5fac-94b8-7a8c7299c526'::uuid,
  '8e597994-8477-5a18-b4ef-da9a6a31d362'::uuid,
  '24a43e03-7de6-50e6-a40d-aee1ccba879b'::uuid,
  '986e3fa3-697e-5603-b99c-4e2cd979c814'::uuid,
  'Hi Noah — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'bdbc364b-586c-5fea-8885-0bb092ac8398'::uuid,
  '8e597994-8477-5a18-b4ef-da9a6a31d362'::uuid,
  '986e3fa3-697e-5603-b99c-4e2cd979c814'::uuid,
  '24a43e03-7de6-50e6-a40d-aee1ccba879b'::uuid,
  'Thanks Ava! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bb606879-4b80-528c-a846-40cc641dce26'::uuid, 'd753bc68-7b16-56ec-967a-6c9f5215fab8'::uuid, '05f978d0-0879-58f9-a6dc-805cdda510f6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3f57ccf1-98f5-5ac5-a757-25b2a5bdc90f'::uuid, '05f978d0-0879-58f9-a6dc-805cdda510f6'::uuid, 'd753bc68-7b16-56ec-967a-6c9f5215fab8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('23f813ce-28ac-5742-86f7-eb1c4d337c01'::uuid, '05f978d0-0879-58f9-a6dc-805cdda510f6'::uuid, 'd753bc68-7b16-56ec-967a-6c9f5215fab8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b5baf9d3-fe0a-526c-a616-d3fdaa8a6684'::uuid, '6a514a41-4c7e-5056-a14d-13305a0c1c48'::uuid, '3aa7aaa1-77b2-5cd4-b7a2-7f500e41212b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6ec6c639-f1b9-5e48-bbd7-73c8504f0cc1'::uuid, '3aa7aaa1-77b2-5cd4-b7a2-7f500e41212b'::uuid, '6a514a41-4c7e-5056-a14d-13305a0c1c48'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('500dc3a4-da19-5618-b92d-a406fbbbc2b2'::uuid, '3aa7aaa1-77b2-5cd4-b7a2-7f500e41212b'::uuid, '6a514a41-4c7e-5056-a14d-13305a0c1c48'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '08abf287-95aa-54f1-b470-20780fd42563'::uuid,
  '500dc3a4-da19-5618-b92d-a406fbbbc2b2'::uuid,
  '6a514a41-4c7e-5056-a14d-13305a0c1c48'::uuid,
  '3aa7aaa1-77b2-5cd4-b7a2-7f500e41212b'::uuid,
  'Hi Ethan — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c5a87ba4-d3a6-55c0-bad1-a2c2b76d3814'::uuid,
  '500dc3a4-da19-5618-b92d-a406fbbbc2b2'::uuid,
  '3aa7aaa1-77b2-5cd4-b7a2-7f500e41212b'::uuid,
  '6a514a41-4c7e-5056-a14d-13305a0c1c48'::uuid,
  'Thanks Amina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('45601ddc-7e7d-5a0c-a114-bcf70e5bb064'::uuid, 'd87f4c56-0da4-5e92-b739-b5649237064a'::uuid, 'be534e0e-c9dc-5c7c-a2ee-f7889a9429c3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3452159a-f062-57f3-8f8f-46ec12da4a21'::uuid, 'be534e0e-c9dc-5c7c-a2ee-f7889a9429c3'::uuid, 'd87f4c56-0da4-5e92-b739-b5649237064a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b6c19629-059c-5ee0-9c29-da678e2029a2'::uuid, 'be534e0e-c9dc-5c7c-a2ee-f7889a9429c3'::uuid, 'd87f4c56-0da4-5e92-b739-b5649237064a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5c6a3ee0-00c7-541a-b37d-0df28f51a6d9'::uuid, '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid, '45a992e8-a55a-5fd8-983f-0eb444fd41ce'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('53f17135-b08f-50ce-b994-b8da95fc195f'::uuid, '45a992e8-a55a-5fd8-983f-0eb444fd41ce'::uuid, '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b9e882e0-a2f6-533f-aca4-f318c4a3356d'::uuid, '45a992e8-a55a-5fd8-983f-0eb444fd41ce'::uuid, '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c8f1794f-e78c-5ca4-948c-b7b326645a37'::uuid,
  'b9e882e0-a2f6-533f-aca4-f318c4a3356d'::uuid,
  '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid,
  '45a992e8-a55a-5fd8-983f-0eb444fd41ce'::uuid,
  'Hi Caleb — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fa582778-0530-5e20-b568-2387f8caf9e8'::uuid,
  'b9e882e0-a2f6-533f-aca4-f318c4a3356d'::uuid,
  '45a992e8-a55a-5fd8-983f-0eb444fd41ce'::uuid,
  '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid,
  'Thanks Hannah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1e6943f7-1328-56d9-aba3-b2d09d54a651'::uuid, '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid, '42a644d9-ef02-551e-98fd-86c9547f5344'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7830e8f1-5c39-5b30-8cbc-1cbd141b1b33'::uuid, '42a644d9-ef02-551e-98fd-86c9547f5344'::uuid, '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;