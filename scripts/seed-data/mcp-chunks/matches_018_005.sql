INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('152716a2-ce85-5734-ab28-d097ace7b2fb'::uuid, '8aca80a1-1bf4-595b-a19b-2a176926b1d1'::uuid, '728e8630-512a-51eb-9316-3e71371d2478'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1acad583-027b-57d6-bb83-3d3773035524'::uuid, '728e8630-512a-51eb-9316-3e71371d2478'::uuid, '8aca80a1-1bf4-595b-a19b-2a176926b1d1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '35e944ae-b83c-51e5-b74b-1c808233cbba'::uuid,
  '1acad583-027b-57d6-bb83-3d3773035524'::uuid,
  '728e8630-512a-51eb-9316-3e71371d2478'::uuid,
  '8aca80a1-1bf4-595b-a19b-2a176926b1d1'::uuid,
  'Hi Kai — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8cee891b-72df-5a60-8b6a-91e7e2e2e3af'::uuid,
  '1acad583-027b-57d6-bb83-3d3773035524'::uuid,
  '8aca80a1-1bf4-595b-a19b-2a176926b1d1'::uuid,
  '728e8630-512a-51eb-9316-3e71371d2478'::uuid,
  'Thanks Aisha! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('24fb864e-0d21-50bc-8d8e-48f78c1e89ed'::uuid, '19650605-ba6d-5094-8e63-01744f21874e'::uuid, '9dd1dae8-3c5f-5d9b-b989-60af32b5e396'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ce9780d4-8e5c-55be-9a73-c3309cb3ae20'::uuid, '9dd1dae8-3c5f-5d9b-b989-60af32b5e396'::uuid, '19650605-ba6d-5094-8e63-01744f21874e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('026b4426-33d4-5107-a832-a410c95df867'::uuid, '19650605-ba6d-5094-8e63-01744f21874e'::uuid, '9dd1dae8-3c5f-5d9b-b989-60af32b5e396'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a879f110-6f00-5f55-8306-0820c8b96a5d'::uuid, 'f10068dd-3d78-5f14-aae4-f628e51e8ae8'::uuid, 'd896625a-e04e-502e-af2b-a9790bdca6ee'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('13af47b1-df69-5d7d-862c-fdb734e575ec'::uuid, 'd896625a-e04e-502e-af2b-a9790bdca6ee'::uuid, 'f10068dd-3d78-5f14-aae4-f628e51e8ae8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a7235d46-b0f6-505d-a5ca-e5f103719292'::uuid, 'd896625a-e04e-502e-af2b-a9790bdca6ee'::uuid, 'f10068dd-3d78-5f14-aae4-f628e51e8ae8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '142d8a7d-c9b7-5d17-8cd3-152549fc5bb2'::uuid,
  'a7235d46-b0f6-505d-a5ca-e5f103719292'::uuid,
  'f10068dd-3d78-5f14-aae4-f628e51e8ae8'::uuid,
  'd896625a-e04e-502e-af2b-a9790bdca6ee'::uuid,
  'Hi Benjamin — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1e635bfb-a84a-5b06-afb9-f7cd012d8770'::uuid,
  'a7235d46-b0f6-505d-a5ca-e5f103719292'::uuid,
  'd896625a-e04e-502e-af2b-a9790bdca6ee'::uuid,
  'f10068dd-3d78-5f14-aae4-f628e51e8ae8'::uuid,
  'Thanks Nadia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5942c762-5f23-5a7c-8564-370d80378b5d'::uuid, '480656da-679b-5364-a64a-bc03c8916a04'::uuid, '42100420-3e43-57ff-96c6-5945409a49d1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4f9a50ea-bbfe-5049-aa0e-986da8c561c1'::uuid, '42100420-3e43-57ff-96c6-5945409a49d1'::uuid, '480656da-679b-5364-a64a-bc03c8916a04'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c6d93c0e-3aca-5f31-a204-fc72d490a07f'::uuid, '42100420-3e43-57ff-96c6-5945409a49d1'::uuid, '480656da-679b-5364-a64a-bc03c8916a04'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('21a1d401-f960-5184-a949-ad33848798bf'::uuid, 'f0665652-049d-5275-b595-522d436397d7'::uuid, '70fec3e3-decf-5444-a02f-93cd3a780b6a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('31e046a0-7ee8-5be1-8dab-cda6652e1b75'::uuid, '70fec3e3-decf-5444-a02f-93cd3a780b6a'::uuid, 'f0665652-049d-5275-b595-522d436397d7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('169225e0-7387-529c-ad1b-233b0ee87e6a'::uuid, '70fec3e3-decf-5444-a02f-93cd3a780b6a'::uuid, 'f0665652-049d-5275-b595-522d436397d7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cbaa7842-a714-5d94-ac4c-331020610062'::uuid,
  '169225e0-7387-529c-ad1b-233b0ee87e6a'::uuid,
  'f0665652-049d-5275-b595-522d436397d7'::uuid,
  '70fec3e3-decf-5444-a02f-93cd3a780b6a'::uuid,
  'Hi Sebastian — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '60a722d6-6534-5772-b7c6-9549e438462a'::uuid,
  '169225e0-7387-529c-ad1b-233b0ee87e6a'::uuid,
  '70fec3e3-decf-5444-a02f-93cd3a780b6a'::uuid,
  'f0665652-049d-5275-b595-522d436397d7'::uuid,
  'Thanks Mei! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('62ad8963-35df-5b7b-ac30-cb626d9a1349'::uuid, 'f0665652-049d-5275-b595-522d436397d7'::uuid, '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2ee93c7b-7a60-5380-b9c5-827b228bc888'::uuid, '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid, 'f0665652-049d-5275-b595-522d436397d7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0a79e435-ba41-5fc0-89ea-1f2c13c45d03'::uuid, '5b927d33-c8fe-56b5-b46d-d9b4afc0e5a1'::uuid, 'f0665652-049d-5275-b595-522d436397d7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4ad73793-fc5b-5a28-9e9b-53e6c048c2bc'::uuid, '2b5709bf-80c1-5736-9f7a-c5245a97240b'::uuid, 'ebda259a-3ff4-5c2d-86f4-3288207f73de'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('718c634a-4ebe-528a-a734-050b861b8d84'::uuid, 'ebda259a-3ff4-5c2d-86f4-3288207f73de'::uuid, '2b5709bf-80c1-5736-9f7a-c5245a97240b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5a106dc3-51ea-584f-92e7-55ed4cf2ded2'::uuid, '2b5709bf-80c1-5736-9f7a-c5245a97240b'::uuid, 'ebda259a-3ff4-5c2d-86f4-3288207f73de'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd208b09a-5918-589e-9aef-89b790d778d5'::uuid,
  '5a106dc3-51ea-584f-92e7-55ed4cf2ded2'::uuid,
  '2b5709bf-80c1-5736-9f7a-c5245a97240b'::uuid,
  'ebda259a-3ff4-5c2d-86f4-3288207f73de'::uuid,
  'Hi Amina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fdf0c97c-9ad0-5a0e-aa11-4fbec57d68a8'::uuid,
  '5a106dc3-51ea-584f-92e7-55ed4cf2ded2'::uuid,
  'ebda259a-3ff4-5c2d-86f4-3288207f73de'::uuid,
  '2b5709bf-80c1-5736-9f7a-c5245a97240b'::uuid,
  'Thanks Henry! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8007ab1d-cfc4-510d-9ff6-936d68c09b77'::uuid, '1a6df02d-5ec1-5718-b464-1c45419097ab'::uuid, 'c46e7cda-0508-5698-96a2-a7236d3d50ed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('abc7d439-7712-58a5-bb45-a131d5753d68'::uuid, 'c46e7cda-0508-5698-96a2-a7236d3d50ed'::uuid, '1a6df02d-5ec1-5718-b464-1c45419097ab'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8b3bfa94-68b4-5054-83d4-7079a7fe94e9'::uuid, '1a6df02d-5ec1-5718-b464-1c45419097ab'::uuid, 'c46e7cda-0508-5698-96a2-a7236d3d50ed'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a8032510-f515-5216-9de3-775f45e5fee5'::uuid, '754240ce-0e49-5193-997e-00dc6cf96e2a'::uuid, 'd61f9134-0a6b-57c5-a04b-1a83a5f6fcdd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9d30df82-52d9-5cc5-b1aa-49d629015c83'::uuid, 'd61f9134-0a6b-57c5-a04b-1a83a5f6fcdd'::uuid, '754240ce-0e49-5193-997e-00dc6cf96e2a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5d50ff49-9d04-5ab2-80e8-144ea088fcd7'::uuid, '754240ce-0e49-5193-997e-00dc6cf96e2a'::uuid, 'd61f9134-0a6b-57c5-a04b-1a83a5f6fcdd'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '809a9ce9-7a7e-58da-b8ea-1564f075351f'::uuid,
  '5d50ff49-9d04-5ab2-80e8-144ea088fcd7'::uuid,
  '754240ce-0e49-5193-997e-00dc6cf96e2a'::uuid,
  'd61f9134-0a6b-57c5-a04b-1a83a5f6fcdd'::uuid,
  'Hi Hannah — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a0c3f741-953c-5db2-a938-72bab30d94a6'::uuid,
  '5d50ff49-9d04-5ab2-80e8-144ea088fcd7'::uuid,
  'd61f9134-0a6b-57c5-a04b-1a83a5f6fcdd'::uuid,
  '754240ce-0e49-5193-997e-00dc6cf96e2a'::uuid,
  'Thanks Nathan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('98bef9fe-2374-5b04-a27f-3c7e369357b9'::uuid, 'd9c36d2c-196a-51f6-bb6b-1e1ca4ff9a3d'::uuid, 'a6d22533-4b09-5974-a116-4c83d9a214f8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('70860272-ca0d-52a1-9c5b-5cbe94dfee67'::uuid, 'a6d22533-4b09-5974-a116-4c83d9a214f8'::uuid, 'd9c36d2c-196a-51f6-bb6b-1e1ca4ff9a3d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7f1401d3-1266-5e69-b597-b14c56acb1f6'::uuid, 'a6d22533-4b09-5974-a116-4c83d9a214f8'::uuid, 'd9c36d2c-196a-51f6-bb6b-1e1ca4ff9a3d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('efaa485b-ac9d-5abb-a66c-7428268a69e8'::uuid, '90d41892-fb72-5023-9fe0-b787e8a2401c'::uuid, 'b71701ff-0ccc-5cb3-96ca-f0002bc3c753'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;