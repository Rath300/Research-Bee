INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('276d7162-7ce4-5c55-938b-1b6ce5b3d0c2'::uuid, 'eceba982-2394-5904-b315-9a2f77d07474'::uuid, '27c33522-5956-5737-a7aa-a471b0013983'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8468f4cd-7c08-50e7-bbf7-242deb487aaf'::uuid, '27c33522-5956-5737-a7aa-a471b0013983'::uuid, 'eceba982-2394-5904-b315-9a2f77d07474'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd0ef914a-6c84-5c8e-8470-0f6038c239cf'::uuid,
  '8468f4cd-7c08-50e7-bbf7-242deb487aaf'::uuid,
  '27c33522-5956-5737-a7aa-a471b0013983'::uuid,
  'eceba982-2394-5904-b315-9a2f77d07474'::uuid,
  'Hi David — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a8805c92-cbf3-5db3-b95d-4dcddc4191bf'::uuid,
  '8468f4cd-7c08-50e7-bbf7-242deb487aaf'::uuid,
  'eceba982-2394-5904-b315-9a2f77d07474'::uuid,
  '27c33522-5956-5737-a7aa-a471b0013983'::uuid,
  'Thanks Sana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a00a8646-736d-5a3e-bc07-5c16cad273d1'::uuid, 'dcedc18b-fdca-5864-85f7-f866ac04757a'::uuid, '0b8bc984-976f-5d9b-8a58-2fed9283e948'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6cb660bc-3ea2-578a-ae6c-3e127365a786'::uuid, '0b8bc984-976f-5d9b-8a58-2fed9283e948'::uuid, 'dcedc18b-fdca-5864-85f7-f866ac04757a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bb885c28-7afe-5cf8-a84c-c937fc9e4f35'::uuid, '0b8bc984-976f-5d9b-8a58-2fed9283e948'::uuid, 'dcedc18b-fdca-5864-85f7-f866ac04757a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e9260f2d-bd19-5d1e-9761-16f89437af5b'::uuid, 'f65503f6-19d8-5fb1-bca6-ef3630192ae7'::uuid, '08411eb2-5b9b-5df1-a3bb-2306f44169f4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d9b447e7-1346-523a-b342-47e9d1ff70f4'::uuid, '08411eb2-5b9b-5df1-a3bb-2306f44169f4'::uuid, 'f65503f6-19d8-5fb1-bca6-ef3630192ae7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2edac96f-b204-5949-88c8-e2e6d6112854'::uuid, '08411eb2-5b9b-5df1-a3bb-2306f44169f4'::uuid, 'f65503f6-19d8-5fb1-bca6-ef3630192ae7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '67135c86-d12b-5582-b19a-576970e3e14b'::uuid,
  '2edac96f-b204-5949-88c8-e2e6d6112854'::uuid,
  'f65503f6-19d8-5fb1-bca6-ef3630192ae7'::uuid,
  '08411eb2-5b9b-5df1-a3bb-2306f44169f4'::uuid,
  'Hi Diego — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '64a48e49-7c6b-5c62-aafa-94950a11c12c'::uuid,
  '2edac96f-b204-5949-88c8-e2e6d6112854'::uuid,
  '08411eb2-5b9b-5df1-a3bb-2306f44169f4'::uuid,
  'f65503f6-19d8-5fb1-bca6-ef3630192ae7'::uuid,
  'Thanks Hana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('db61282a-299d-50ee-9c49-ac0da5f6e558'::uuid, 'f65503f6-19d8-5fb1-bca6-ef3630192ae7'::uuid, 'a6390256-0979-5984-bd9a-7a836b35c744'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fd6d92c3-8718-5449-8ff3-44125132973b'::uuid, 'a6390256-0979-5984-bd9a-7a836b35c744'::uuid, 'f65503f6-19d8-5fb1-bca6-ef3630192ae7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2f802494-01ab-52b4-a3cd-64ee0fc438bf'::uuid, 'a6390256-0979-5984-bd9a-7a836b35c744'::uuid, 'f65503f6-19d8-5fb1-bca6-ef3630192ae7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('53edb955-ce6a-5107-b539-eefe39d7c55e'::uuid, '0a4e9b3e-a50f-5c16-aa75-1a088427b416'::uuid, 'fb815cd3-6e42-5d68-8db6-d59fea0cce2e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9b13f7a7-a114-59db-b901-77270be1cb5d'::uuid, 'fb815cd3-6e42-5d68-8db6-d59fea0cce2e'::uuid, '0a4e9b3e-a50f-5c16-aa75-1a088427b416'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6bf3d02a-638e-59b5-9112-114a0822d0fe'::uuid, '0a4e9b3e-a50f-5c16-aa75-1a088427b416'::uuid, 'fb815cd3-6e42-5d68-8db6-d59fea0cce2e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '59eaad6b-f845-5668-b685-5c6fcc571a24'::uuid,
  '6bf3d02a-638e-59b5-9112-114a0822d0fe'::uuid,
  '0a4e9b3e-a50f-5c16-aa75-1a088427b416'::uuid,
  'fb815cd3-6e42-5d68-8db6-d59fea0cce2e'::uuid,
  'Hi Nadia — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '64608120-b4db-5bd9-a3f7-6ffa0560b46f'::uuid,
  '6bf3d02a-638e-59b5-9112-114a0822d0fe'::uuid,
  'fb815cd3-6e42-5d68-8db6-d59fea0cce2e'::uuid,
  '0a4e9b3e-a50f-5c16-aa75-1a088427b416'::uuid,
  'Thanks Maya! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0c12ad8e-d758-5f67-9dde-27c12e0a5ff2'::uuid, 'f1af066e-3f30-5479-830e-3162690b429d'::uuid, 'd147a55f-f99d-5889-ae38-f27a9b6b3e63'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('489c6961-a238-5e10-bb24-d98074c19ebe'::uuid, 'd147a55f-f99d-5889-ae38-f27a9b6b3e63'::uuid, 'f1af066e-3f30-5479-830e-3162690b429d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9eebfafa-fc15-56e5-a3a9-ade2f6c9be5d'::uuid, 'd147a55f-f99d-5889-ae38-f27a9b6b3e63'::uuid, 'f1af066e-3f30-5479-830e-3162690b429d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0ef8182b-4ee5-5901-9ac4-f1f8487e5c8b'::uuid, '94620992-b146-536c-a930-0efce8d2c959'::uuid, '3aaac1ae-581d-53cb-ab82-ecf44ed2f8eb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1a7df930-396f-50d2-a89f-4827d5a3e69b'::uuid, '3aaac1ae-581d-53cb-ab82-ecf44ed2f8eb'::uuid, '94620992-b146-536c-a930-0efce8d2c959'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7876dff9-3e49-5784-8ec2-d9909575a2ef'::uuid, '3aaac1ae-581d-53cb-ab82-ecf44ed2f8eb'::uuid, '94620992-b146-536c-a930-0efce8d2c959'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '636a3c71-9a25-5cc8-8af4-6d54de51dc59'::uuid,
  '7876dff9-3e49-5784-8ec2-d9909575a2ef'::uuid,
  '94620992-b146-536c-a930-0efce8d2c959'::uuid,
  '3aaac1ae-581d-53cb-ab82-ecf44ed2f8eb'::uuid,
  'Hi Mei — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '778ed472-7f72-58dd-b7cb-5bbcff982e4d'::uuid,
  '7876dff9-3e49-5784-8ec2-d9909575a2ef'::uuid,
  '3aaac1ae-581d-53cb-ab82-ecf44ed2f8eb'::uuid,
  '94620992-b146-536c-a930-0efce8d2c959'::uuid,
  'Thanks Rohan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d606f0a3-9182-5cab-923c-2f2c6b880fca'::uuid, 'a446d3e3-844d-589c-9f96-50f5f4eaee5b'::uuid, 'ad066c06-b3f9-5ca4-9d49-3f295138bde6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e2c20690-bc3f-5b37-bb49-0ab619e3eef4'::uuid, 'ad066c06-b3f9-5ca4-9d49-3f295138bde6'::uuid, 'a446d3e3-844d-589c-9f96-50f5f4eaee5b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0c5038a6-43bf-573d-9a0b-5400d7afb9bb'::uuid, 'a446d3e3-844d-589c-9f96-50f5f4eaee5b'::uuid, 'ad066c06-b3f9-5ca4-9d49-3f295138bde6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('afc409ce-0719-5165-8614-6ccb781a2eaa'::uuid, '6c731d8e-122c-5719-bdfb-0bd85e1b1f2f'::uuid, '73d21f69-f082-53ec-a793-9805a6962209'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a92e2d74-9a58-5f21-bd1c-868774ec12b6'::uuid, '73d21f69-f082-53ec-a793-9805a6962209'::uuid, '6c731d8e-122c-5719-bdfb-0bd85e1b1f2f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('91924bb1-bf85-5ed7-a5e8-58b7504641c1'::uuid, '6c731d8e-122c-5719-bdfb-0bd85e1b1f2f'::uuid, '73d21f69-f082-53ec-a793-9805a6962209'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0223b58a-557f-5a18-b963-7d2ec3556bcf'::uuid,
  '91924bb1-bf85-5ed7-a5e8-58b7504641c1'::uuid,
  '6c731d8e-122c-5719-bdfb-0bd85e1b1f2f'::uuid,
  '73d21f69-f082-53ec-a793-9805a6962209'::uuid,
  'Hi Riya — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c5ea1c26-efcf-5615-a304-548578846333'::uuid,
  '91924bb1-bf85-5ed7-a5e8-58b7504641c1'::uuid,
  '73d21f69-f082-53ec-a793-9805a6962209'::uuid,
  '6c731d8e-122c-5719-bdfb-0bd85e1b1f2f'::uuid,
  'Thanks Samir! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6fe33868-18ec-52b0-99fd-7328d6f136a8'::uuid, '6c731d8e-122c-5719-bdfb-0bd85e1b1f2f'::uuid, 'fc5ffa00-9523-5cbc-b75c-9624baeb1992'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('91f18aac-36f1-5ffd-80a5-c2fca2eb4fe8'::uuid, 'fc5ffa00-9523-5cbc-b75c-9624baeb1992'::uuid, '6c731d8e-122c-5719-bdfb-0bd85e1b1f2f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3054c7a7-5608-5210-b2d9-262f43f272fc'::uuid, '6c731d8e-122c-5719-bdfb-0bd85e1b1f2f'::uuid, 'fc5ffa00-9523-5cbc-b75c-9624baeb1992'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dec2ea18-80ac-5f80-b332-c3c8d29b7261'::uuid, '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid, 'd950d3d2-16f6-5d3d-bed8-7ac8a0c5c29e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;