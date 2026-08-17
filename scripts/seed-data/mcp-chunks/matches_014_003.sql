INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '593bb67c-89f0-56a7-b271-7a08ae0b4d64'::uuid,
  '6afa15d5-12aa-5c21-b707-e2ce17c9b836'::uuid,
  '7cc7401c-94bd-5f9c-ae2e-38ffaaeeb8e9'::uuid,
  'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid,
  'Thanks Leila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6cdeccda-7189-5016-b400-a8a605ccd109'::uuid, '2f2b966f-68c3-5cc1-98f6-ce29bf74ba78'::uuid, 'd670e0d8-a814-5c12-8c3a-fe0efb45bd7a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f18c2c2f-7892-5b82-be8b-bc6860848dfe'::uuid, 'd670e0d8-a814-5c12-8c3a-fe0efb45bd7a'::uuid, '2f2b966f-68c3-5cc1-98f6-ce29bf74ba78'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a883bba9-dee3-5a19-b721-3f42f353c4da'::uuid, '2f2b966f-68c3-5cc1-98f6-ce29bf74ba78'::uuid, 'd670e0d8-a814-5c12-8c3a-fe0efb45bd7a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c56e5e91-6e6e-51f0-a4eb-7a69891a04a3'::uuid, 'da4f492a-56f6-5f1d-adfa-6267b2ab0e16'::uuid, '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6a3359bf-d173-5983-a7f0-6a414fe91de0'::uuid, '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid, 'da4f492a-56f6-5f1d-adfa-6267b2ab0e16'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('353d1589-a7a6-5dbd-8b34-36a4b74b5538'::uuid, '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid, 'da4f492a-56f6-5f1d-adfa-6267b2ab0e16'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c19f357d-f9f8-57f3-9e2c-fc4046ebd983'::uuid,
  '353d1589-a7a6-5dbd-8b34-36a4b74b5538'::uuid,
  'da4f492a-56f6-5f1d-adfa-6267b2ab0e16'::uuid,
  '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid,
  'Hi David — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '759e0cd9-391a-5350-8a93-55cd29347384'::uuid,
  '353d1589-a7a6-5dbd-8b34-36a4b74b5538'::uuid,
  '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid,
  'da4f492a-56f6-5f1d-adfa-6267b2ab0e16'::uuid,
  'Thanks Sana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('898831ed-ece2-5d73-bd63-cf2c9d55534f'::uuid, 'f326a54c-18ae-557e-8143-fda4415ba59b'::uuid, '67542a7b-0a85-5077-bd31-13e04bc34e8f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4b43ee93-10f2-53c2-9ee5-f5ca6b8d64cb'::uuid, '67542a7b-0a85-5077-bd31-13e04bc34e8f'::uuid, 'f326a54c-18ae-557e-8143-fda4415ba59b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a6a77f50-3c53-566c-aa77-3cd6d743149e'::uuid, '67542a7b-0a85-5077-bd31-13e04bc34e8f'::uuid, 'f326a54c-18ae-557e-8143-fda4415ba59b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d8f6e36b-e752-5365-bfd2-c288cd2ed156'::uuid, 'ddc21843-adf2-5551-bc0c-71602efc9aaf'::uuid, 'f0b6a384-fa41-5f30-8508-7717e8c5d4fc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('58aa212d-4675-5823-97b6-aac59b57095b'::uuid, 'f0b6a384-fa41-5f30-8508-7717e8c5d4fc'::uuid, 'ddc21843-adf2-5551-bc0c-71602efc9aaf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('db80fa08-7b56-574e-9e45-0be75a53c527'::uuid, 'ddc21843-adf2-5551-bc0c-71602efc9aaf'::uuid, 'f0b6a384-fa41-5f30-8508-7717e8c5d4fc'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3a70d1da-79b4-5981-8aff-b9fd7589b2be'::uuid,
  'db80fa08-7b56-574e-9e45-0be75a53c527'::uuid,
  'ddc21843-adf2-5551-bc0c-71602efc9aaf'::uuid,
  'f0b6a384-fa41-5f30-8508-7717e8c5d4fc'::uuid,
  'Hi Diego — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1638255b-a93b-5901-b3da-e52a7373b87a'::uuid,
  'db80fa08-7b56-574e-9e45-0be75a53c527'::uuid,
  'f0b6a384-fa41-5f30-8508-7717e8c5d4fc'::uuid,
  'ddc21843-adf2-5551-bc0c-71602efc9aaf'::uuid,
  'Thanks Hana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e0ba235d-7437-586d-a8ff-4a4bad291c19'::uuid, 'ddc21843-adf2-5551-bc0c-71602efc9aaf'::uuid, '1f4552e1-d512-585b-9efa-c5fa6d387b36'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2566506d-2715-5030-a976-5b3b1fc5b70b'::uuid, '1f4552e1-d512-585b-9efa-c5fa6d387b36'::uuid, 'ddc21843-adf2-5551-bc0c-71602efc9aaf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cf76bcfc-4772-52cc-9439-f01a9743df6c'::uuid, '1f4552e1-d512-585b-9efa-c5fa6d387b36'::uuid, 'ddc21843-adf2-5551-bc0c-71602efc9aaf'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6fe3155e-a51a-5636-ae7a-d22ecaefa17b'::uuid, '7210c171-30a0-5733-9501-572eef5ad3f8'::uuid, '58f91761-2dc2-582b-8d47-64a7f02a5619'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c2899215-6dc5-5b18-abc3-b361dcf38b33'::uuid, '58f91761-2dc2-582b-8d47-64a7f02a5619'::uuid, '7210c171-30a0-5733-9501-572eef5ad3f8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('414a080c-0215-5c73-9951-26d39f0b5fe0'::uuid, '58f91761-2dc2-582b-8d47-64a7f02a5619'::uuid, '7210c171-30a0-5733-9501-572eef5ad3f8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5cbf9d89-98b2-5600-b355-b4e16f362614'::uuid,
  '414a080c-0215-5c73-9951-26d39f0b5fe0'::uuid,
  '7210c171-30a0-5733-9501-572eef5ad3f8'::uuid,
  '58f91761-2dc2-582b-8d47-64a7f02a5619'::uuid,
  'Hi Nadia — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd03f2f6e-180f-5176-8d90-076b3efea2f3'::uuid,
  '414a080c-0215-5c73-9951-26d39f0b5fe0'::uuid,
  '58f91761-2dc2-582b-8d47-64a7f02a5619'::uuid,
  '7210c171-30a0-5733-9501-572eef5ad3f8'::uuid,
  'Thanks Maya! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f457668e-c0c6-5160-bf59-8dd812c391fc'::uuid, '666efcc9-c467-5b54-b887-659ecb744286'::uuid, '3d066e72-74c1-5d8d-ba3f-96311bb9e942'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3241aa20-c7a6-56e7-afbd-7b59d5a780fb'::uuid, '3d066e72-74c1-5d8d-ba3f-96311bb9e942'::uuid, '666efcc9-c467-5b54-b887-659ecb744286'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('87424d61-f83c-5dca-b53b-e990fa93b7b7'::uuid, '3d066e72-74c1-5d8d-ba3f-96311bb9e942'::uuid, '666efcc9-c467-5b54-b887-659ecb744286'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('54cecd52-7d35-5d38-88f5-e78b74ca8671'::uuid, '279c319c-89db-5ae5-b134-f4418f82a365'::uuid, 'cbdfa327-b276-57c7-8554-37966d1b054b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1739a42d-207a-5588-8d26-fc4902ab4b04'::uuid, 'cbdfa327-b276-57c7-8554-37966d1b054b'::uuid, '279c319c-89db-5ae5-b134-f4418f82a365'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('57556bd0-cf51-5b31-956b-1d4201b33828'::uuid, '279c319c-89db-5ae5-b134-f4418f82a365'::uuid, 'cbdfa327-b276-57c7-8554-37966d1b054b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '811c5b71-f3a2-5f74-a960-084924619453'::uuid,
  '57556bd0-cf51-5b31-956b-1d4201b33828'::uuid,
  '279c319c-89db-5ae5-b134-f4418f82a365'::uuid,
  'cbdfa327-b276-57c7-8554-37966d1b054b'::uuid,
  'Hi Mei — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c21f6444-5935-5064-8136-390e9e1f1d04'::uuid,
  '57556bd0-cf51-5b31-956b-1d4201b33828'::uuid,
  'cbdfa327-b276-57c7-8554-37966d1b054b'::uuid,
  '279c319c-89db-5ae5-b134-f4418f82a365'::uuid,
  'Thanks Rohan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('32d37166-a742-5b11-a605-31eb2a67c211'::uuid, 'b1a15199-4e78-51ba-99e1-56bf9f18a970'::uuid, '08db061d-1b19-5130-bfeb-39ece1268dcb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('24c34e76-1b62-5019-ac40-9b4ccda1ba70'::uuid, '08db061d-1b19-5130-bfeb-39ece1268dcb'::uuid, 'b1a15199-4e78-51ba-99e1-56bf9f18a970'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('db202c6a-0820-54cd-a43a-71bdcfa2ecd5'::uuid, '08db061d-1b19-5130-bfeb-39ece1268dcb'::uuid, 'b1a15199-4e78-51ba-99e1-56bf9f18a970'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9e446923-df44-5f2f-8dc2-ea89fdec8d05'::uuid, '12fe7d93-77e1-5088-9dd1-44c1d5e1c202'::uuid, 'eaed69b5-c60d-5133-86c3-ed579a4125f2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('33e209ae-b589-5dc1-a8a1-ce5d37be53b9'::uuid, 'eaed69b5-c60d-5133-86c3-ed579a4125f2'::uuid, '12fe7d93-77e1-5088-9dd1-44c1d5e1c202'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4010d4dc-a9dc-5194-a715-640aaa53ff7c'::uuid, '12fe7d93-77e1-5088-9dd1-44c1d5e1c202'::uuid, 'eaed69b5-c60d-5133-86c3-ed579a4125f2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '349acf19-a305-568f-8aba-3069888a876a'::uuid,
  '4010d4dc-a9dc-5194-a715-640aaa53ff7c'::uuid,
  '12fe7d93-77e1-5088-9dd1-44c1d5e1c202'::uuid,
  'eaed69b5-c60d-5133-86c3-ed579a4125f2'::uuid,
  'Hi Riya — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;