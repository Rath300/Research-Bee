INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ea693104-dcc1-51e3-ad57-27a7acc917fc'::uuid, '3d5e4b71-5d33-5e87-b691-528b0554141d'::uuid, '5ad5e69f-e707-5b76-8788-6652faf2a416'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ab3175de-c8b7-5170-a09a-6019dca6e2bc'::uuid, '65a74fe8-c38f-5780-8ad2-bf331721a3d9'::uuid, '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('748ddd8c-4b68-540f-922a-e0cb594ae5b7'::uuid, '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid, '65a74fe8-c38f-5780-8ad2-bf331721a3d9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4046e5e4-65b5-5ce5-a924-f553e78e8bb2'::uuid, '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid, '65a74fe8-c38f-5780-8ad2-bf331721a3d9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '78f88ec1-2d48-5ace-af81-414a59878f0d'::uuid,
  '4046e5e4-65b5-5ce5-a924-f553e78e8bb2'::uuid,
  '65a74fe8-c38f-5780-8ad2-bf331721a3d9'::uuid,
  '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid,
  'Hi Ethan — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3f1444e3-6be6-5cea-b4e2-3036c04e9184'::uuid,
  '4046e5e4-65b5-5ce5-a924-f553e78e8bb2'::uuid,
  '5ed8eeb5-5879-55a8-b188-d1904d7982f4'::uuid,
  '65a74fe8-c38f-5780-8ad2-bf331721a3d9'::uuid,
  'Thanks Amina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('55b889e6-b596-5879-b31a-ae5844998de1'::uuid, '24d08bca-e89e-5133-9580-3c3af259e917'::uuid, '8a3ccd43-eedc-52e3-970e-b05b035225e2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('71184c4f-eab8-52be-bc52-49fe364fd708'::uuid, '8a3ccd43-eedc-52e3-970e-b05b035225e2'::uuid, '24d08bca-e89e-5133-9580-3c3af259e917'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5c384c6a-29ff-5711-b93e-1a30f1c4571e'::uuid, '24d08bca-e89e-5133-9580-3c3af259e917'::uuid, '8a3ccd43-eedc-52e3-970e-b05b035225e2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3356dd60-3f67-5b57-82b9-7a366c910a6e'::uuid, '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid, '6aafdcd6-d8d8-557d-9554-bbb27bdb748d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e1701e90-da55-5a96-92de-236929dd8098'::uuid, '6aafdcd6-d8d8-557d-9554-bbb27bdb748d'::uuid, '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f13631dc-882e-5358-a7bf-865c4d7ca17e'::uuid, '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid, '6aafdcd6-d8d8-557d-9554-bbb27bdb748d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3bda7d49-c7bf-52de-aa02-aa7c9049b6bd'::uuid,
  'f13631dc-882e-5358-a7bf-865c4d7ca17e'::uuid,
  '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid,
  '6aafdcd6-d8d8-557d-9554-bbb27bdb748d'::uuid,
  'Hi Caleb — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1883f92f-fdb0-5ec1-9c45-8358077a631c'::uuid,
  'f13631dc-882e-5358-a7bf-865c4d7ca17e'::uuid,
  '6aafdcd6-d8d8-557d-9554-bbb27bdb748d'::uuid,
  '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid,
  'Thanks Hannah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e5b57c80-e108-5c68-a5f3-b381c68e4a91'::uuid, '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid, '56361163-593b-5f6a-8eb2-5269671702e2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('21f0eac9-9f4a-573f-a712-50ce6be48b40'::uuid, '56361163-593b-5f6a-8eb2-5269671702e2'::uuid, '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d04bdd01-318c-5299-91a3-2ba21be0500e'::uuid, '56361163-593b-5f6a-8eb2-5269671702e2'::uuid, '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fb37d05a-43df-5376-86eb-b96a5a085b9b'::uuid, '1225191a-019f-56d5-8355-03d7ea853341'::uuid, '7d4f49fb-43d1-502f-9920-10e2cb21136a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('21084e82-a2db-5c5d-87dd-1402b9dbe37d'::uuid, '7d4f49fb-43d1-502f-9920-10e2cb21136a'::uuid, '1225191a-019f-56d5-8355-03d7ea853341'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0a1cfd03-fa15-5652-8928-a7c159628397'::uuid, '1225191a-019f-56d5-8355-03d7ea853341'::uuid, '7d4f49fb-43d1-502f-9920-10e2cb21136a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd8569da8-6360-50e1-a73a-b64109de836a'::uuid,
  '0a1cfd03-fa15-5652-8928-a7c159628397'::uuid,
  '1225191a-019f-56d5-8355-03d7ea853341'::uuid,
  '7d4f49fb-43d1-502f-9920-10e2cb21136a'::uuid,
  'Hi Sana — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e28c9d32-e448-5b9d-87cb-56e9a710cf50'::uuid,
  '0a1cfd03-fa15-5652-8928-a7c159628397'::uuid,
  '7d4f49fb-43d1-502f-9920-10e2cb21136a'::uuid,
  '1225191a-019f-56d5-8355-03d7ea853341'::uuid,
  'Thanks Julian! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('657ed7d0-9cd2-58ac-83c9-acc8c1858195'::uuid, '6fca6e88-1c4f-5c43-922a-3f20d6ddc049'::uuid, '05fcff78-0cbc-5304-80d1-89c5fb51a5ce'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a7735427-1cd0-56da-8e91-4d30882972d4'::uuid, '05fcff78-0cbc-5304-80d1-89c5fb51a5ce'::uuid, '6fca6e88-1c4f-5c43-922a-3f20d6ddc049'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1eda1112-f749-52e1-8cd6-3fee7aeea014'::uuid, '05fcff78-0cbc-5304-80d1-89c5fb51a5ce'::uuid, '6fca6e88-1c4f-5c43-922a-3f20d6ddc049'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5d356f1d-f199-5bb8-9fd3-947e8badfae7'::uuid, '51687c53-c74e-5a27-8949-dcde640e42d8'::uuid, '374e622b-e91f-54be-9ba0-cf4aa0906fa8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9b9a499a-8d2f-5d1a-bea9-636699f27ee7'::uuid, '374e622b-e91f-54be-9ba0-cf4aa0906fa8'::uuid, '51687c53-c74e-5a27-8949-dcde640e42d8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b57ce8e1-03bc-5d8c-8abd-6e14e076cedf'::uuid, '374e622b-e91f-54be-9ba0-cf4aa0906fa8'::uuid, '51687c53-c74e-5a27-8949-dcde640e42d8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fb55a4e2-ad75-5c9a-b61f-c217a6c394f3'::uuid,
  'b57ce8e1-03bc-5d8c-8abd-6e14e076cedf'::uuid,
  '51687c53-c74e-5a27-8949-dcde640e42d8'::uuid,
  '374e622b-e91f-54be-9ba0-cf4aa0906fa8'::uuid,
  'Hi Hana — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '02037dd0-6184-50fa-8f9a-fb3819faacd2'::uuid,
  'b57ce8e1-03bc-5d8c-8abd-6e14e076cedf'::uuid,
  '374e622b-e91f-54be-9ba0-cf4aa0906fa8'::uuid,
  '51687c53-c74e-5a27-8949-dcde640e42d8'::uuid,
  'Thanks Isaac! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('23ae37d1-176a-5a8a-8334-07be0d9ad493'::uuid, 'a47f9557-3126-5157-8316-17a32c536be0'::uuid, '8c33b28f-c7cc-5e43-9231-990bf3dca6f9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c3c2178a-5c32-5036-8941-4535e9ef22fe'::uuid, '8c33b28f-c7cc-5e43-9231-990bf3dca6f9'::uuid, 'a47f9557-3126-5157-8316-17a32c536be0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('125f48b1-dd8d-5cb7-8d1b-38f732a21183'::uuid, '8c33b28f-c7cc-5e43-9231-990bf3dca6f9'::uuid, 'a47f9557-3126-5157-8316-17a32c536be0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('317a736b-b1d7-5a86-977d-b27c6da02791'::uuid, 'b5b80d38-e67f-5db0-8d01-be0b9a1bd224'::uuid, 'aa0f4626-ae11-54e1-a711-4c9fb811ad54'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('38d5f21f-50ce-5394-a0af-923aa4967a38'::uuid, 'aa0f4626-ae11-54e1-a711-4c9fb811ad54'::uuid, 'b5b80d38-e67f-5db0-8d01-be0b9a1bd224'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('462d1cb7-4ec0-5a00-8f81-b8beaa43794d'::uuid, 'aa0f4626-ae11-54e1-a711-4c9fb811ad54'::uuid, 'b5b80d38-e67f-5db0-8d01-be0b9a1bd224'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '432923a7-d12b-5782-beb9-f247eb529645'::uuid,
  '462d1cb7-4ec0-5a00-8f81-b8beaa43794d'::uuid,
  'b5b80d38-e67f-5db0-8d01-be0b9a1bd224'::uuid,
  'aa0f4626-ae11-54e1-a711-4c9fb811ad54'::uuid,
  'Hi Elena — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c8fad550-93af-504d-9c1d-faf0c91139b8'::uuid,
  '462d1cb7-4ec0-5a00-8f81-b8beaa43794d'::uuid,
  'aa0f4626-ae11-54e1-a711-4c9fb811ad54'::uuid,
  'b5b80d38-e67f-5db0-8d01-be0b9a1bd224'::uuid,
  'Thanks Felix! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8a0c4fb8-04b2-5d14-a501-5b6872b4d21c'::uuid, 'b5b80d38-e67f-5db0-8d01-be0b9a1bd224'::uuid, '286edd8f-7e51-52d7-b45e-551a9821a1dc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('85536111-be3b-5f5c-a2c5-1218beaf8c76'::uuid, '286edd8f-7e51-52d7-b45e-551a9821a1dc'::uuid, 'b5b80d38-e67f-5db0-8d01-be0b9a1bd224'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;