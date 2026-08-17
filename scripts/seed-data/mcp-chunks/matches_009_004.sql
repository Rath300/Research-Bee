INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2fcf3e48-09fa-540d-9df9-a4f592fd1631'::uuid,
  '5c14ad0e-2c72-594a-b2d4-cb58345f2b24'::uuid,
  '5356c221-d65a-5f9c-921b-112439242ea1'::uuid,
  '591c3431-cc8c-5f3a-bdfe-57efd787bd73'::uuid,
  'Thanks Aaron! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('46e60af9-d1c6-5886-95e9-fafe1189e5dc'::uuid, '0cd97540-575a-57c2-a037-9c730567b2e7'::uuid, 'fa2365d8-493b-584a-8249-5fdb62f40ca7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dd661bb8-a356-5824-a5d0-3842ac3bf707'::uuid, 'fa2365d8-493b-584a-8249-5fdb62f40ca7'::uuid, '0cd97540-575a-57c2-a037-9c730567b2e7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('191bc58f-0e92-5918-bce2-edc11a44fb86'::uuid, '0cd97540-575a-57c2-a037-9c730567b2e7'::uuid, 'fa2365d8-493b-584a-8249-5fdb62f40ca7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ab3312b2-b8aa-517f-9681-dd460368dc23'::uuid, '902a3b16-e8f1-556c-820a-2c892961ff3b'::uuid, 'a3e5aa51-30a9-5d43-8d54-86b2d0be7b2a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4b1c9986-35ec-5f4f-89fb-2d6c61425d85'::uuid, 'a3e5aa51-30a9-5d43-8d54-86b2d0be7b2a'::uuid, '902a3b16-e8f1-556c-820a-2c892961ff3b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9f82d219-bfec-5a88-b15d-39f5235e42fd'::uuid, '902a3b16-e8f1-556c-820a-2c892961ff3b'::uuid, 'a3e5aa51-30a9-5d43-8d54-86b2d0be7b2a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1df1c244-0ec7-584b-89e5-7a98a9ac02cc'::uuid,
  '9f82d219-bfec-5a88-b15d-39f5235e42fd'::uuid,
  '902a3b16-e8f1-556c-820a-2c892961ff3b'::uuid,
  'a3e5aa51-30a9-5d43-8d54-86b2d0be7b2a'::uuid,
  'Hi Isla — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '46f4d130-b8ce-5fd7-8064-ce2bdbb4bfef'::uuid,
  '9f82d219-bfec-5a88-b15d-39f5235e42fd'::uuid,
  'a3e5aa51-30a9-5d43-8d54-86b2d0be7b2a'::uuid,
  '902a3b16-e8f1-556c-820a-2c892961ff3b'::uuid,
  'Thanks Noah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9f075b40-eff0-5a14-9708-7ca25a84fd49'::uuid, 'e8959cb7-aa69-5b68-afde-e4bb16d5a608'::uuid, '9712a128-34c1-5b93-8a4f-32494c0e4504'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f44cd324-ec6f-5bdf-8748-47073689d326'::uuid, '9712a128-34c1-5b93-8a4f-32494c0e4504'::uuid, 'e8959cb7-aa69-5b68-afde-e4bb16d5a608'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b712195b-6c9e-5419-b54c-bcfe764a5b18'::uuid, '9712a128-34c1-5b93-8a4f-32494c0e4504'::uuid, 'e8959cb7-aa69-5b68-afde-e4bb16d5a608'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4b0ba712-8c2b-5c29-bf5b-cb80f71945fb'::uuid, 'a130656b-33b4-5818-9d16-667ae077b735'::uuid, '3504c8cb-2805-54ab-9a65-613d52401f26'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('645520a3-025c-50d6-bfbc-2e8a6577f827'::uuid, '3504c8cb-2805-54ab-9a65-613d52401f26'::uuid, 'a130656b-33b4-5818-9d16-667ae077b735'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('861d54fc-f6d0-54c7-b67f-5de0d008fa1b'::uuid, '3504c8cb-2805-54ab-9a65-613d52401f26'::uuid, 'a130656b-33b4-5818-9d16-667ae077b735'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fd69d77f-b673-578e-a2b2-447713514389'::uuid,
  '861d54fc-f6d0-54c7-b67f-5de0d008fa1b'::uuid,
  'a130656b-33b4-5818-9d16-667ae077b735'::uuid,
  '3504c8cb-2805-54ab-9a65-613d52401f26'::uuid,
  'Hi Yara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f22b688d-7e5e-55b6-9d5e-a9c2ba35d0c8'::uuid,
  '861d54fc-f6d0-54c7-b67f-5de0d008fa1b'::uuid,
  '3504c8cb-2805-54ab-9a65-613d52401f26'::uuid,
  'a130656b-33b4-5818-9d16-667ae077b735'::uuid,
  'Thanks Ethan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5eb946be-86a4-5178-83b9-45ddd7cf49d3'::uuid, 'a130656b-33b4-5818-9d16-667ae077b735'::uuid, '8a6fafae-c614-5acb-814c-e6e16ced5d86'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('00a9882f-7a93-5649-bca8-1d362a35ce74'::uuid, '8a6fafae-c614-5acb-814c-e6e16ced5d86'::uuid, 'a130656b-33b4-5818-9d16-667ae077b735'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e3f6cb81-7424-5d40-a66a-053355e06032'::uuid, '8a6fafae-c614-5acb-814c-e6e16ced5d86'::uuid, 'a130656b-33b4-5818-9d16-667ae077b735'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7be166e4-baa5-5b9e-9aee-ea407f39fb8a'::uuid, '50cb7af5-ed51-5446-8054-edb6eae4e7e6'::uuid, '52776ca6-2ffa-5c16-991d-f1758cd740bb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7c13f18c-4c23-5d23-b758-92eedd235f08'::uuid, '52776ca6-2ffa-5c16-991d-f1758cd740bb'::uuid, '50cb7af5-ed51-5446-8054-edb6eae4e7e6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('129bf582-4919-5413-a2bd-8428c93226b1'::uuid, '50cb7af5-ed51-5446-8054-edb6eae4e7e6'::uuid, '52776ca6-2ffa-5c16-991d-f1758cd740bb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3b11ef03-db14-5ef1-a4e8-6681712eaa8d'::uuid,
  '129bf582-4919-5413-a2bd-8428c93226b1'::uuid,
  '50cb7af5-ed51-5446-8054-edb6eae4e7e6'::uuid,
  '52776ca6-2ffa-5c16-991d-f1758cd740bb'::uuid,
  'Hi Lucas — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '47d7126a-b6c6-55c6-9668-bb9c45454675'::uuid,
  '129bf582-4919-5413-a2bd-8428c93226b1'::uuid,
  '52776ca6-2ffa-5c16-991d-f1758cd740bb'::uuid,
  '50cb7af5-ed51-5446-8054-edb6eae4e7e6'::uuid,
  'Thanks Leila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e0ea7f69-b0d1-59ac-80e3-965da6094636'::uuid, '5fb1afbf-0859-5415-be8c-84cc088ebd51'::uuid, 'd4b14f46-3fa3-5e98-9836-f65ed0a3f18b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d0c4683c-baaf-5c20-bfb0-dae67924ed04'::uuid, 'd4b14f46-3fa3-5e98-9836-f65ed0a3f18b'::uuid, '5fb1afbf-0859-5415-be8c-84cc088ebd51'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b24d2d10-b1c3-59cd-be53-ff910fa41744'::uuid, '5fb1afbf-0859-5415-be8c-84cc088ebd51'::uuid, 'd4b14f46-3fa3-5e98-9836-f65ed0a3f18b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0f1b8878-9406-5f94-ac06-e57d13654242'::uuid, 'f5d6a6bc-d32b-54be-a18e-3ccafce0aa8d'::uuid, 'ea069e62-92cd-5f19-959e-a420eb23bb5f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fd5f0ce7-34b6-5768-baea-c9f2b28e426b'::uuid, 'ea069e62-92cd-5f19-959e-a420eb23bb5f'::uuid, 'f5d6a6bc-d32b-54be-a18e-3ccafce0aa8d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a31706f1-db91-5ddf-88ba-81783f74a4bf'::uuid, 'ea069e62-92cd-5f19-959e-a420eb23bb5f'::uuid, 'f5d6a6bc-d32b-54be-a18e-3ccafce0aa8d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7dc91467-184c-5675-841a-c31cd236c686'::uuid,
  'a31706f1-db91-5ddf-88ba-81783f74a4bf'::uuid,
  'f5d6a6bc-d32b-54be-a18e-3ccafce0aa8d'::uuid,
  'ea069e62-92cd-5f19-959e-a420eb23bb5f'::uuid,
  'Hi David — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1cd3c753-c03e-5da3-bc3f-505287de3a34'::uuid,
  'a31706f1-db91-5ddf-88ba-81783f74a4bf'::uuid,
  'ea069e62-92cd-5f19-959e-a420eb23bb5f'::uuid,
  'f5d6a6bc-d32b-54be-a18e-3ccafce0aa8d'::uuid,
  'Thanks Sana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8d67d16f-274c-54bf-befb-0cf207b74835'::uuid, '809c2fce-167e-593f-99c1-13a851571fb2'::uuid, '9fa6c3ed-6590-56b4-8dbb-73ca44e426eb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a6fc5801-1418-5b03-a98f-475cceffbcbd'::uuid, '9fa6c3ed-6590-56b4-8dbb-73ca44e426eb'::uuid, '809c2fce-167e-593f-99c1-13a851571fb2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dc835cfa-efb1-529e-8a58-69ea320c8440'::uuid, '809c2fce-167e-593f-99c1-13a851571fb2'::uuid, '9fa6c3ed-6590-56b4-8dbb-73ca44e426eb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7bd53634-d7b9-5374-b11a-06d8d4b53e4d'::uuid, '6c035525-3f92-5b12-a279-9a55e2859c0f'::uuid, 'e78a6ddc-5a54-530e-9647-71d739067c0c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('73aef113-f46b-5612-9045-8d1c1add3c5e'::uuid, 'e78a6ddc-5a54-530e-9647-71d739067c0c'::uuid, '6c035525-3f92-5b12-a279-9a55e2859c0f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('da90a559-9c57-5c03-bdb7-d5c6a2ea1164'::uuid, '6c035525-3f92-5b12-a279-9a55e2859c0f'::uuid, 'e78a6ddc-5a54-530e-9647-71d739067c0c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f08bd6c1-50fa-530b-b821-33e5a1e676d4'::uuid,
  'da90a559-9c57-5c03-bdb7-d5c6a2ea1164'::uuid,
  '6c035525-3f92-5b12-a279-9a55e2859c0f'::uuid,
  'e78a6ddc-5a54-530e-9647-71d739067c0c'::uuid,
  'Hi Diego — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;