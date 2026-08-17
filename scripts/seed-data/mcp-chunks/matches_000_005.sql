INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('07270c93-6aaa-51b5-a6d8-65e8a80e48cd'::uuid, 'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid, 'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('80ec320c-1125-5201-b804-4ffbb67c48f8'::uuid, 'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid, 'f5ea9642-1ad9-5e62-867d-d340b40a835e'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('94a9cce1-27c5-5406-b3fd-8efe6ed80c30'::uuid, '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid, 'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4f64f437-e094-5d2d-bc6b-0d813815b1a8'::uuid, 'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid, '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('30ba9a7e-0086-50da-80b7-6ad0dd7ef8f0'::uuid, '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid, 'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '718a4cad-4d01-5641-ae4a-a377fa5a5692'::uuid,
  '30ba9a7e-0086-50da-80b7-6ad0dd7ef8f0'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  'Hi Nora — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a7c2df78-0f4f-5ed8-8754-e162e82cc221'::uuid,
  '30ba9a7e-0086-50da-80b7-6ad0dd7ef8f0'::uuid,
  'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid,
  '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid,
  'Thanks Omar! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4973ca63-210a-5ad5-93ee-78038f9fdcdd'::uuid, '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid, 'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('07941b64-8b0b-55d8-a2c1-ac8f3d6677cc'::uuid, 'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid, '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c241e2c5-11ee-5dae-9014-75f3cc1800db'::uuid, '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid, 'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('27a17ce4-aed9-5025-b18c-ab12c00febba'::uuid, '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid, '1a4e7bd5-105e-58dd-a7bb-c054c41106a8'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('85908320-c57d-55cc-b9de-a518de59efe0'::uuid, 'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid, '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dff9ce99-3531-5f40-b495-721757884ab6'::uuid, '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid, 'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('39a4fb28-cd1d-5559-8420-8cf873907ed5'::uuid, '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid, 'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9d35e4bd-ea10-57f8-b26f-8f4a41b18fd9'::uuid,
  '39a4fb28-cd1d-5559-8420-8cf873907ed5'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  'Hi Isaac — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c44cd872-4ee5-5015-a593-777f98d4def1'::uuid,
  '39a4fb28-cd1d-5559-8420-8cf873907ed5'::uuid,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid,
  'Thanks Chloe! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bc92c171-8d46-5135-9b1d-7a08d129ef51'::uuid, '47b81f54-6417-5024-893d-0269a6070530'::uuid, 'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5c058b82-429e-5699-be9f-47a88ad5b9b3'::uuid, '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid, '920410e2-89ac-581b-95cc-1c86177f436b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b5c2e231-3858-5294-aad3-5145170bcde9'::uuid, '920410e2-89ac-581b-95cc-1c86177f436b'::uuid, '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3e998b2a-f91a-5c46-8b3b-9ffc3c6ef9b7'::uuid, '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid, '920410e2-89ac-581b-95cc-1c86177f436b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('192cafaa-b1a8-5bdb-8f6d-6a3f62f723a8'::uuid, 'e6888c10-ffc4-55cd-a2ca-637db638e9f6'::uuid, '27c6972c-d454-52b7-87c7-d8f9487c4c47'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1739bc52-b398-5a10-afd4-cc457cd5d8a1'::uuid, 'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid, 'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('89f61795-ad16-5963-8938-55fb922ea000'::uuid, 'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid, 'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8504073b-c5ab-51cf-9895-055a60622982'::uuid, 'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid, 'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e7231452-d553-5fce-8d0a-48ecc0f8bd53'::uuid,
  '8504073b-c5ab-51cf-9895-055a60622982'::uuid,
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  'Hi Felix — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '885918e3-3969-56b9-ba1c-b03ecd214961'::uuid,
  '8504073b-c5ab-51cf-9895-055a60622982'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid,
  'Thanks Violet! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('495014ba-4da6-59ed-aa49-60eeb795963f'::uuid, '83b95081-a3eb-5f38-a45e-8595a7e8bf2d'::uuid, 'b6ec1651-815e-5428-bde8-7c2774bd9d17'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d79167e2-41ba-5d2f-8644-f631f634aa3e'::uuid, '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid, '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('30e23369-467f-5bca-82c1-1a0215f92837'::uuid, '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid, '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('1cbf77ac-9431-56d0-8adc-177cf00561f3'::uuid, '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid, '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('992a15b1-7828-506d-9d3c-b37ecafc9ee5'::uuid, '33258244-df5a-5c2f-933d-31972bac2f03'::uuid, '4f9252df-fe9d-5b34-ab99-742576b906c9'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6794c131-0ce1-5348-b966-5dec603b3b27'::uuid, 'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid, '47b81f54-6417-5024-893d-0269a6070530'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ecbd0124-bff3-5d17-afa3-cc704aea7034'::uuid, '47b81f54-6417-5024-893d-0269a6070530'::uuid, 'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('de4d69fb-a671-55db-bfd4-96a7eb7d3816'::uuid, '47b81f54-6417-5024-893d-0269a6070530'::uuid, 'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '94bc6ed1-ee38-52c3-9aed-b1cfab7f270a'::uuid,
  'de4d69fb-a671-55db-bfd4-96a7eb7d3816'::uuid,
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  'Hi James — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3173404f-37f0-5504-a85c-78297d7053f9'::uuid,
  'de4d69fb-a671-55db-bfd4-96a7eb7d3816'::uuid,
  '47b81f54-6417-5024-893d-0269a6070530'::uuid,
  'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid,
  'Thanks Tara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e61116a3-905c-5184-959f-039282f9dd0e'::uuid, 'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid, 'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4032d28b-655a-5018-bfb1-cc1b23ad5cf8'::uuid, 'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid, 'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3de2bbe0-52c6-573a-a2f5-c041e0d36b37'::uuid, 'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid, 'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2db0250c-4805-5e81-8a85-e0728b58e7c5'::uuid, 'cf28dd5f-d2a7-5d1a-9d64-5f2c87bd9973'::uuid, 'a16c575b-a751-5a96-a89f-1c0abb930432'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;