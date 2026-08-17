INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e5ee344f-ac4d-5bce-9834-9f1eaf86e06e'::uuid, '5adbe397-780c-5a92-baa4-edd6c908ea3d'::uuid, 'db3c49e7-bfea-5580-92ae-3b7c4329da27'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('edce97c4-81d5-5368-9f4e-421acf623974'::uuid, 'db3c49e7-bfea-5580-92ae-3b7c4329da27'::uuid, '5adbe397-780c-5a92-baa4-edd6c908ea3d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5b37aa92-3a7a-5719-ab40-3d7f0800de24'::uuid, '5adbe397-780c-5a92-baa4-edd6c908ea3d'::uuid, 'db3c49e7-bfea-5580-92ae-3b7c4329da27'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('95a59785-64a5-52eb-9f8f-b546410b6c3b'::uuid, 'a0be9746-2732-59d8-9d1c-52829b061343'::uuid, '53f80aef-090c-5c26-b62a-6a01e277d754'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b94d7be8-eb52-57c5-8a93-3a741d4254dc'::uuid, '53f80aef-090c-5c26-b62a-6a01e277d754'::uuid, 'a0be9746-2732-59d8-9d1c-52829b061343'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('defc138d-88f8-5a21-b99e-5a62d0424161'::uuid, '53f80aef-090c-5c26-b62a-6a01e277d754'::uuid, 'a0be9746-2732-59d8-9d1c-52829b061343'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c088176a-4bdc-57a0-b5ce-7318e9a5e804'::uuid,
  'defc138d-88f8-5a21-b99e-5a62d0424161'::uuid,
  'a0be9746-2732-59d8-9d1c-52829b061343'::uuid,
  '53f80aef-090c-5c26-b62a-6a01e277d754'::uuid,
  'Hi Tara — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8b41d512-408d-5bb3-bd8f-9841ba5d1824'::uuid,
  'defc138d-88f8-5a21-b99e-5a62d0424161'::uuid,
  '53f80aef-090c-5c26-b62a-6a01e277d754'::uuid,
  'a0be9746-2732-59d8-9d1c-52829b061343'::uuid,
  'Thanks Kai! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('65a8b0c6-eaab-542b-a744-686d250eae54'::uuid, 'a2a0a60f-90e7-5a6d-bd00-9b45cdf0e153'::uuid, 'e8942547-2905-5750-a298-06aa7d0cac82'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bec7b9b1-b5ca-5e7e-9d87-14c986495ef8'::uuid, 'e8942547-2905-5750-a298-06aa7d0cac82'::uuid, 'a2a0a60f-90e7-5a6d-bd00-9b45cdf0e153'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('089d98ed-8897-5419-b317-bfaf2d5e6c1c'::uuid, 'a2a0a60f-90e7-5a6d-bd00-9b45cdf0e153'::uuid, 'e8942547-2905-5750-a298-06aa7d0cac82'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('efd26a9e-aa34-58ea-8de1-ed5a87e59a16'::uuid, 'da23348a-cb61-5775-bac1-f4088289d969'::uuid, 'd607c5db-de3d-5283-938a-378840208167'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d2289931-37fa-503e-a559-f1352995b9ce'::uuid, 'd607c5db-de3d-5283-938a-378840208167'::uuid, 'da23348a-cb61-5775-bac1-f4088289d969'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('49d10037-cba5-5c06-90f9-94597beb821b'::uuid, 'd607c5db-de3d-5283-938a-378840208167'::uuid, 'da23348a-cb61-5775-bac1-f4088289d969'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7d427bff-6376-53ff-89ff-aa77535526c9'::uuid,
  '49d10037-cba5-5c06-90f9-94597beb821b'::uuid,
  'da23348a-cb61-5775-bac1-f4088289d969'::uuid,
  'd607c5db-de3d-5283-938a-378840208167'::uuid,
  'Hi Imani — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '75dc4a66-0209-57fe-883b-7b570986d6d5'::uuid,
  '49d10037-cba5-5c06-90f9-94597beb821b'::uuid,
  'd607c5db-de3d-5283-938a-378840208167'::uuid,
  'da23348a-cb61-5775-bac1-f4088289d969'::uuid,
  'Thanks Benjamin! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bb08bf47-931f-51c2-8712-81f315a2945c'::uuid, 'da23348a-cb61-5775-bac1-f4088289d969'::uuid, 'b806090a-a7a9-5442-95f8-b0f3a4bcbe13'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0e712eb9-dc05-58cf-87e7-4012932b822d'::uuid, 'b806090a-a7a9-5442-95f8-b0f3a4bcbe13'::uuid, 'da23348a-cb61-5775-bac1-f4088289d969'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5f6c7763-e621-5e2c-b44b-ed8ddb02f347'::uuid, 'b806090a-a7a9-5442-95f8-b0f3a4bcbe13'::uuid, 'da23348a-cb61-5775-bac1-f4088289d969'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cde29536-4bf1-5fd9-a332-e228ce8bd559'::uuid, 'e9cf01e2-c731-5f25-a3b2-0abccfa7cfbe'::uuid, 'bfc0cd00-9ae0-5c3f-9654-979ab870cc76'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3940e5f8-8e76-5a18-8bdf-4584aaac9d25'::uuid, 'bfc0cd00-9ae0-5c3f-9654-979ab870cc76'::uuid, 'e9cf01e2-c731-5f25-a3b2-0abccfa7cfbe'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0ce9b9fb-ec8a-5363-8f37-6b3ada8734c4'::uuid, 'bfc0cd00-9ae0-5c3f-9654-979ab870cc76'::uuid, 'e9cf01e2-c731-5f25-a3b2-0abccfa7cfbe'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2637ede6-8013-5c30-8ef1-d2dc1d22aa85'::uuid,
  '0ce9b9fb-ec8a-5363-8f37-6b3ada8734c4'::uuid,
  'e9cf01e2-c731-5f25-a3b2-0abccfa7cfbe'::uuid,
  'bfc0cd00-9ae0-5c3f-9654-979ab870cc76'::uuid,
  'Hi Noah — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '819eecea-b06b-590e-a42e-b4df7dc2963a'::uuid,
  '0ce9b9fb-ec8a-5363-8f37-6b3ada8734c4'::uuid,
  'bfc0cd00-9ae0-5c3f-9654-979ab870cc76'::uuid,
  'e9cf01e2-c731-5f25-a3b2-0abccfa7cfbe'::uuid,
  'Thanks Ava! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d38628d1-db0e-5b09-b537-19a875679674'::uuid, '456b2ac9-0110-5359-b6a9-24f1909a0f8f'::uuid, '03d924c7-38c5-5e68-8929-cfb838a4b9a9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1bb8e056-e4ca-5753-851a-ad0e29f1cbfe'::uuid, '03d924c7-38c5-5e68-8929-cfb838a4b9a9'::uuid, '456b2ac9-0110-5359-b6a9-24f1909a0f8f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('41ae81ff-54d5-556e-9819-8252ab3bcab1'::uuid, '03d924c7-38c5-5e68-8929-cfb838a4b9a9'::uuid, '456b2ac9-0110-5359-b6a9-24f1909a0f8f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7096d500-acc4-5c69-b765-e5daf388d964'::uuid, '35a428fe-b59e-5243-9778-10ebb91a070a'::uuid, 'df3e1c62-4247-510c-80e8-205376b04cf6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5665c71b-ec38-56c8-973d-e8e937376c2d'::uuid, 'df3e1c62-4247-510c-80e8-205376b04cf6'::uuid, '35a428fe-b59e-5243-9778-10ebb91a070a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1cc36e09-73f6-504c-a9d0-6ab2cd9b09ac'::uuid, '35a428fe-b59e-5243-9778-10ebb91a070a'::uuid, 'df3e1c62-4247-510c-80e8-205376b04cf6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd366ca7a-cffb-5912-88f5-bfd4306907d2'::uuid,
  '1cc36e09-73f6-504c-a9d0-6ab2cd9b09ac'::uuid,
  '35a428fe-b59e-5243-9778-10ebb91a070a'::uuid,
  'df3e1c62-4247-510c-80e8-205376b04cf6'::uuid,
  'Hi Ethan — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c997f64a-779d-52bd-aab8-8feb88dd2998'::uuid,
  '1cc36e09-73f6-504c-a9d0-6ab2cd9b09ac'::uuid,
  'df3e1c62-4247-510c-80e8-205376b04cf6'::uuid,
  '35a428fe-b59e-5243-9778-10ebb91a070a'::uuid,
  'Thanks Amina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('63b6b71b-3785-58b7-96f4-b3bd969fda58'::uuid, '3a305db2-a0f9-5bd9-94ce-ca6892b43188'::uuid, '3e632bb3-c208-5e8f-92a2-9dde3d847af2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('507b59cd-09ed-5d28-b188-99854dcfe93d'::uuid, '3e632bb3-c208-5e8f-92a2-9dde3d847af2'::uuid, '3a305db2-a0f9-5bd9-94ce-ca6892b43188'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1e3cb50b-b78e-5403-8530-f7c4783ba5ac'::uuid, '3a305db2-a0f9-5bd9-94ce-ca6892b43188'::uuid, '3e632bb3-c208-5e8f-92a2-9dde3d847af2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a2929a5f-042f-5429-a044-f94ad1382f30'::uuid, '70103f92-ccdb-5034-9fc6-6c6543caddfc'::uuid, '2a19e5bf-12b6-5a5c-b22b-83a66f6241e7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ee00425a-850a-5d47-ae78-6821de357069'::uuid, '2a19e5bf-12b6-5a5c-b22b-83a66f6241e7'::uuid, '70103f92-ccdb-5034-9fc6-6c6543caddfc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f6698727-5a95-550e-8b00-bd805ade086e'::uuid, '2a19e5bf-12b6-5a5c-b22b-83a66f6241e7'::uuid, '70103f92-ccdb-5034-9fc6-6c6543caddfc'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9ed53ebe-cc2c-570d-bf38-4d5608dc39ee'::uuid,
  'f6698727-5a95-550e-8b00-bd805ade086e'::uuid,
  '70103f92-ccdb-5034-9fc6-6c6543caddfc'::uuid,
  '2a19e5bf-12b6-5a5c-b22b-83a66f6241e7'::uuid,
  'Hi Caleb — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a9e88d72-1c5b-556a-a104-ec1984c98b52'::uuid,
  'f6698727-5a95-550e-8b00-bd805ade086e'::uuid,
  '2a19e5bf-12b6-5a5c-b22b-83a66f6241e7'::uuid,
  '70103f92-ccdb-5034-9fc6-6c6543caddfc'::uuid,
  'Thanks Hannah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;