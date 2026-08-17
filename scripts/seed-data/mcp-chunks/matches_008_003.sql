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