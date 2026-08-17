INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f95f1391-2b6e-506c-92b3-c86e819958e0'::uuid,
  '27d55e23-d6d3-5b84-9536-c7b472faa83e'::uuid,
  '3304cdb0-f9e3-5358-9673-f15e11dc4e17'::uuid,
  'b750fae1-8324-5847-b5ff-68ba0292a057'::uuid,
  'Hi Amina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fe4a2ef1-fb76-5063-bd48-35cfa3bbe7e1'::uuid,
  '27d55e23-d6d3-5b84-9536-c7b472faa83e'::uuid,
  'b750fae1-8324-5847-b5ff-68ba0292a057'::uuid,
  '3304cdb0-f9e3-5358-9673-f15e11dc4e17'::uuid,
  'Thanks Henry! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d5fbebc9-d67f-5564-a41f-44b8b489dac4'::uuid, 'b08af7f3-44ca-5e8d-b812-59bb85c0e059'::uuid, '49fbee97-9df9-5705-9855-5aac175ded93'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c1e45f31-138e-5c98-a9f0-012bfca9887f'::uuid, '49fbee97-9df9-5705-9855-5aac175ded93'::uuid, 'b08af7f3-44ca-5e8d-b812-59bb85c0e059'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1a64c7d0-9f31-52ad-8016-bc15fe12deac'::uuid, '49fbee97-9df9-5705-9855-5aac175ded93'::uuid, 'b08af7f3-44ca-5e8d-b812-59bb85c0e059'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('48f8634e-ba3b-5939-84ab-ca2451af3928'::uuid, 'c41619c4-7940-50f8-99fc-622d57b85eb1'::uuid, 'b7a397ee-42b4-54dd-9008-e559a0b46399'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dd7d0ab2-7102-5d42-bef3-0cdb4da57b1a'::uuid, 'b7a397ee-42b4-54dd-9008-e559a0b46399'::uuid, 'c41619c4-7940-50f8-99fc-622d57b85eb1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cb30aaa1-690e-596f-a684-bbf62ece3860'::uuid, 'b7a397ee-42b4-54dd-9008-e559a0b46399'::uuid, 'c41619c4-7940-50f8-99fc-622d57b85eb1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '20740a1b-cc28-5b1d-a129-1899a7ba32bf'::uuid,
  'cb30aaa1-690e-596f-a684-bbf62ece3860'::uuid,
  'c41619c4-7940-50f8-99fc-622d57b85eb1'::uuid,
  'b7a397ee-42b4-54dd-9008-e559a0b46399'::uuid,
  'Hi Hannah — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'be2e021b-13ef-5542-8422-35e620982cab'::uuid,
  'cb30aaa1-690e-596f-a684-bbf62ece3860'::uuid,
  'b7a397ee-42b4-54dd-9008-e559a0b46399'::uuid,
  'c41619c4-7940-50f8-99fc-622d57b85eb1'::uuid,
  'Thanks Nathan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e2a38e66-43bf-5c6b-b719-bd124f901a92'::uuid, 'bedb8fd5-db92-5834-8620-0fbed814321d'::uuid, '339b0f28-40df-5d27-a433-e1ef2b74b167'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('92048819-575d-5cf0-90b0-2bdd575f0715'::uuid, '339b0f28-40df-5d27-a433-e1ef2b74b167'::uuid, 'bedb8fd5-db92-5834-8620-0fbed814321d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c9f82ccf-18d5-53ca-944f-fd4d937ebef2'::uuid, '339b0f28-40df-5d27-a433-e1ef2b74b167'::uuid, 'bedb8fd5-db92-5834-8620-0fbed814321d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('72678756-fb28-5cf9-b7cc-fae07200c483'::uuid, 'a8c0d033-8cc7-56d4-ad9a-aa29a1d84869'::uuid, 'd08b51e2-35ee-57f1-b9fe-38c281fde355'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b29c5825-768e-53d9-8254-8fc6f35956b1'::uuid, 'd08b51e2-35ee-57f1-b9fe-38c281fde355'::uuid, 'a8c0d033-8cc7-56d4-ad9a-aa29a1d84869'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dee5185b-335a-5cfa-b4ab-da662034166b'::uuid, 'a8c0d033-8cc7-56d4-ad9a-aa29a1d84869'::uuid, 'd08b51e2-35ee-57f1-b9fe-38c281fde355'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '76a6b2b0-f7fa-5442-a7ff-246668b2c523'::uuid,
  'dee5185b-335a-5cfa-b4ab-da662034166b'::uuid,
  'a8c0d033-8cc7-56d4-ad9a-aa29a1d84869'::uuid,
  'd08b51e2-35ee-57f1-b9fe-38c281fde355'::uuid,
  'Hi Nora — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2166c7ea-c376-5afc-97b8-386b9626f53b'::uuid,
  'dee5185b-335a-5cfa-b4ab-da662034166b'::uuid,
  'd08b51e2-35ee-57f1-b9fe-38c281fde355'::uuid,
  'a8c0d033-8cc7-56d4-ad9a-aa29a1d84869'::uuid,
  'Thanks Omar! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1b48592b-2e93-5f03-9cb7-4767c7abc5f8'::uuid, 'a8c0d033-8cc7-56d4-ad9a-aa29a1d84869'::uuid, '0b8bc984-976f-5d9b-8a58-2fed9283e948'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4509eb65-8088-5ba7-bac2-7988adcbfabc'::uuid, '0b8bc984-976f-5d9b-8a58-2fed9283e948'::uuid, 'a8c0d033-8cc7-56d4-ad9a-aa29a1d84869'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b1e825d9-6c2e-54dd-8fdc-4997d080024b'::uuid, '0b8bc984-976f-5d9b-8a58-2fed9283e948'::uuid, 'a8c0d033-8cc7-56d4-ad9a-aa29a1d84869'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3a1d533f-299c-560c-990c-b47080c54eda'::uuid, '8a6fafae-c614-5acb-814c-e6e16ced5d86'::uuid, 'eca1b6a1-58fe-5000-a35d-d89a61f2201c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8be5d204-13dc-514f-997a-2e198f33b26c'::uuid, 'eca1b6a1-58fe-5000-a35d-d89a61f2201c'::uuid, '8a6fafae-c614-5acb-814c-e6e16ced5d86'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3f72dbae-2642-55ac-af10-bc6102a224ae'::uuid, '8a6fafae-c614-5acb-814c-e6e16ced5d86'::uuid, 'eca1b6a1-58fe-5000-a35d-d89a61f2201c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e8739a60-a5f2-53a9-9745-6a6c57a1b7ed'::uuid,
  '3f72dbae-2642-55ac-af10-bc6102a224ae'::uuid,
  '8a6fafae-c614-5acb-814c-e6e16ced5d86'::uuid,
  'eca1b6a1-58fe-5000-a35d-d89a61f2201c'::uuid,
  'Hi Isaac — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '08996cac-6d63-5eb2-a883-c2aa6805f3da'::uuid,
  '3f72dbae-2642-55ac-af10-bc6102a224ae'::uuid,
  'eca1b6a1-58fe-5000-a35d-d89a61f2201c'::uuid,
  '8a6fafae-c614-5acb-814c-e6e16ced5d86'::uuid,
  'Thanks Chloe! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('670ac55e-d02e-5258-9cb2-105b12edf515'::uuid, '3f68d29d-2cdf-5260-9839-0ba7504ac3f1'::uuid, '8475fcd5-c72d-54f5-8ada-51f01ede0cb5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cfb11567-a0f8-5a5c-8f32-ca1216947397'::uuid, '8475fcd5-c72d-54f5-8ada-51f01ede0cb5'::uuid, '3f68d29d-2cdf-5260-9839-0ba7504ac3f1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('16445d29-af93-5313-b34e-b9b01bca9790'::uuid, '3f68d29d-2cdf-5260-9839-0ba7504ac3f1'::uuid, '8475fcd5-c72d-54f5-8ada-51f01ede0cb5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('df3d06f4-ea4a-51d7-9b5f-0972ec35d01f'::uuid, '37bf800c-4c16-538e-9bf2-8f3f5c8d7d38'::uuid, 'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9f3a10d2-01ba-5281-9f55-07db8ac25c65'::uuid, 'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid, '37bf800c-4c16-538e-9bf2-8f3f5c8d7d38'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('25fad607-f0a2-55eb-8e4c-e8e227bd364b'::uuid, '37bf800c-4c16-538e-9bf2-8f3f5c8d7d38'::uuid, 'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8e33e8bc-7c8b-5371-b37f-82e26e03ee02'::uuid,
  '25fad607-f0a2-55eb-8e4c-e8e227bd364b'::uuid,
  '37bf800c-4c16-538e-9bf2-8f3f5c8d7d38'::uuid,
  'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid,
  'Hi Felix — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '12f7b1b7-a54c-58bc-86d3-f69518ab7d31'::uuid,
  '25fad607-f0a2-55eb-8e4c-e8e227bd364b'::uuid,
  'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid,
  '37bf800c-4c16-538e-9bf2-8f3f5c8d7d38'::uuid,
  'Thanks Violet! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b9cce87c-fd62-5627-a68c-2260fdfbac9c'::uuid, 'f456b7ce-d7b5-55b2-985b-08089f991121'::uuid, '5aa58f77-3aa4-5344-97a0-552a5846e561'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('151dc57f-5627-55dc-b368-f8a5383fb5ae'::uuid, '5aa58f77-3aa4-5344-97a0-552a5846e561'::uuid, 'f456b7ce-d7b5-55b2-985b-08089f991121'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('64676764-7664-5fdf-9c20-cc4a39f82f93'::uuid, '5aa58f77-3aa4-5344-97a0-552a5846e561'::uuid, 'f456b7ce-d7b5-55b2-985b-08089f991121'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('faba79bd-2e92-5de2-8059-a3de9d0a4b13'::uuid, '2fc27dd8-d485-5e52-8269-e84b66824499'::uuid, '72563df9-2262-5969-9688-d5cf69877f50'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5556ddb8-872f-573d-941b-7ff669d92e3a'::uuid, '72563df9-2262-5969-9688-d5cf69877f50'::uuid, '2fc27dd8-d485-5e52-8269-e84b66824499'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('aa3f06b8-12bb-53b7-be45-574b5fa2de10'::uuid, '2fc27dd8-d485-5e52-8269-e84b66824499'::uuid, '72563df9-2262-5969-9688-d5cf69877f50'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;