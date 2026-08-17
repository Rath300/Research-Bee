INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3a3440b7-cb87-5636-bb47-a4956be969dd'::uuid, '634bbd78-6e13-5abe-8ffc-9d7e43a30d9f'::uuid, '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('65ea3aa3-7bc7-56dc-89bf-bb03ec2a7708'::uuid, 'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid, '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cb1b1647-8c6c-50d7-a094-ecb4b7a146cb'::uuid, '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid, '73be6dda-66ed-5e48-afec-7a94f58b9172'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('97e73942-d3af-5b7f-80c9-45854ca8ee93'::uuid, '73be6dda-66ed-5e48-afec-7a94f58b9172'::uuid, '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ce3d7e53-6435-555a-ab62-77a9e08b0818'::uuid, '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid, '73be6dda-66ed-5e48-afec-7a94f58b9172'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4e13693a-72b9-5870-a115-c8d944153317'::uuid,
  'ce3d7e53-6435-555a-ab62-77a9e08b0818'::uuid,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  '73be6dda-66ed-5e48-afec-7a94f58b9172'::uuid,
  'Hi Sebastian — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f428f080-0742-5a7f-a0e8-8beed48ed9ec'::uuid,
  'ce3d7e53-6435-555a-ab62-77a9e08b0818'::uuid,
  '73be6dda-66ed-5e48-afec-7a94f58b9172'::uuid,
  '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid,
  'Thanks Mei! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('94cfdd73-39a0-54e5-a633-c9807e055c9b'::uuid, '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid, 'bc3269b7-ccf7-597d-a309-30596d8dbb75'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cbaf7219-4dfd-530c-9a33-887d99ebcc72'::uuid, 'bc3269b7-ccf7-597d-a309-30596d8dbb75'::uuid, '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3b31a201-7f23-52f3-9a29-ba5b409f8371'::uuid, '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid, 'bc3269b7-ccf7-597d-a309-30596d8dbb75'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f44ec74f-bcbb-54b1-8826-e89e2bcc396d'::uuid, 'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid, '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1eceb757-3501-5177-9996-f6710fb56a63'::uuid, '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid, 'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('51ae96c7-ad48-54ec-aa07-321da6a7b838'::uuid, '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid, 'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '28a20383-72cb-52a0-8976-b4fd4c6879d0'::uuid,
  '51ae96c7-ad48-54ec-aa07-321da6a7b838'::uuid,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid,
  'Hi Amina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8fce0b4e-9f65-5e41-a486-6d9c3a40d21a'::uuid,
  '51ae96c7-ad48-54ec-aa07-321da6a7b838'::uuid,
  '0b28d533-776d-534d-8b5d-0d9392c44f7b'::uuid,
  'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid,
  'Thanks Henry! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b25d7074-24dc-5f20-aad8-5c121b393730'::uuid, '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid, '093ae4a7-64b9-54f9-9c88-8b9150c9d1af'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5684f78c-6e18-5678-a93f-8b7495451e23'::uuid, '093ae4a7-64b9-54f9-9c88-8b9150c9d1af'::uuid, '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fe2f6716-c70c-56b3-9e72-c4e339c893e6'::uuid, '093ae4a7-64b9-54f9-9c88-8b9150c9d1af'::uuid, '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('60a848c7-d0fc-516e-a887-85ea9e4efd4a'::uuid, '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid, 'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bed66eb9-d88e-569c-97fd-b76dda8c113e'::uuid, 'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid, '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8916f9c7-5e71-5cff-a424-23eff6a99938'::uuid, '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid, 'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3f64cbba-06e3-5655-b194-1320da139c1a'::uuid,
  '8916f9c7-5e71-5cff-a424-23eff6a99938'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid,
  'Hi Hannah — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7fd5aee3-cfd1-57f4-a841-fbf22ab79627'::uuid,
  '8916f9c7-5e71-5cff-a424-23eff6a99938'::uuid,
  'a61c8b01-7839-565d-aef3-2bd819ba0619'::uuid,
  '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid,
  'Thanks Nathan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cead3928-82d9-5d65-9ad0-9ca78aa82706'::uuid, '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid, '22f028f3-fbcf-5382-8812-8aab906ff016'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3e21692c-f1d2-5cd5-9b5c-3475bc0cc68d'::uuid, '22f028f3-fbcf-5382-8812-8aab906ff016'::uuid, '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('21cbb89b-5b61-51ff-9b43-7d19da1a8442'::uuid, '22f028f3-fbcf-5382-8812-8aab906ff016'::uuid, '8ee271da-ffce-5d60-8b27-9df4772513ff'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a946a961-569d-5523-a818-221ad839e016'::uuid, 'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid, '96571827-6ea6-5c4e-919e-3571e4d1410e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1578f0d5-3641-5830-8937-b48abb69d2ed'::uuid, '96571827-6ea6-5c4e-919e-3571e4d1410e'::uuid, 'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9804dd34-0a03-56e3-a65c-7bc305fb466f'::uuid, '96571827-6ea6-5c4e-919e-3571e4d1410e'::uuid, 'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7c00c5d4-9256-5d4f-81e6-d4b2ad386cb6'::uuid,
  '9804dd34-0a03-56e3-a65c-7bc305fb466f'::uuid,
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  '96571827-6ea6-5c4e-919e-3571e4d1410e'::uuid,
  'Hi Nora — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'bcd5c10b-ecdd-545b-ba90-8577cbccca38'::uuid,
  '9804dd34-0a03-56e3-a65c-7bc305fb466f'::uuid,
  '96571827-6ea6-5c4e-919e-3571e4d1410e'::uuid,
  'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid,
  'Thanks Omar! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ae130a20-d8fc-5ffe-aff9-e765ebfa7c6f'::uuid, 'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid, '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7cf776c3-d906-5727-a34c-11b26e0cd8ca'::uuid, '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid, 'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0d5279f3-64ad-57ce-97df-7b457a5c890e'::uuid, '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid, 'aeac8e3e-5ce4-57e9-ba61-066c96133778'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e89db48b-6f94-5399-9cb8-c4973efac903'::uuid, '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid, '229d0b26-e5de-59ae-a760-fe89ec623e59'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('84715cc7-bef8-5e39-8ad5-f21f7faee09a'::uuid, '229d0b26-e5de-59ae-a760-fe89ec623e59'::uuid, '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2c03fea1-051e-579a-a05a-b061cadd03a9'::uuid, '229d0b26-e5de-59ae-a760-fe89ec623e59'::uuid, '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0be3b814-9f2a-5e6f-a74e-52b2858b0d90'::uuid,
  '2c03fea1-051e-579a-a05a-b061cadd03a9'::uuid,
  '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid,
  '229d0b26-e5de-59ae-a760-fe89ec623e59'::uuid,
  'Hi Isaac — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cd5e9773-ec21-5473-9f94-89a56fe4852f'::uuid,
  '2c03fea1-051e-579a-a05a-b061cadd03a9'::uuid,
  '229d0b26-e5de-59ae-a760-fe89ec623e59'::uuid,
  '2ef1bc7f-dfbc-5406-a37f-f2449b226f52'::uuid,
  'Thanks Chloe! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1525015c-c6e6-5f96-a7f6-ec20314d94f8'::uuid, 'cddd6cc8-b0f6-5c87-ba64-26034bd10314'::uuid, 'ec425ec6-5f9a-57bd-a9ad-785e91c63bf0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;