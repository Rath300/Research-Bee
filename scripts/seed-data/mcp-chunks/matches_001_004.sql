INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e5c65f5e-be8f-5799-a46a-e2b43dc73f63'::uuid,
  'a0af273f-c5f6-51c9-9b48-35bbd50e7637'::uuid,
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  'Thanks Hannah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7f2ff11d-c132-52d8-bcac-90656c80661b'::uuid, 'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid, 'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8789578f-1a38-5971-be3d-860128fe8ff3'::uuid, 'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid, 'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6279400b-4060-52e2-ac02-8420137c1fa7'::uuid, 'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid, 'ff32e809-4beb-542e-aadb-f8c08517b819'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0c073852-4d23-5093-ac68-0b03f2fe063e'::uuid, 'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid, 'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('606599fa-dd07-5105-b09f-d7aa97c46778'::uuid, 'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid, '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('adf6bd19-158b-5ae8-80e4-c72335ffc6de'::uuid, '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid, 'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('323cc612-c499-5185-bc78-7b7a7a484c9d'::uuid, '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid, 'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '824ff8e5-71c2-5879-b1e5-59d18c136394'::uuid,
  '323cc612-c499-5185-bc78-7b7a7a484c9d'::uuid,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  'Hi Sana — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '971d1070-c2bf-536d-800a-99d1705386d0'::uuid,
  '323cc612-c499-5185-bc78-7b7a7a484c9d'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid,
  'Thanks Julian! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e52126b0-eb41-53c6-a5bd-80a405317766'::uuid, '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid, 'f6e2d234-fde7-5fe0-852b-594ab5cd9440'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('357e4c51-f883-5ead-9413-86fe60d4d524'::uuid, 'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid, '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ccd2cfc4-1bae-5eff-bae8-bcbaa491a1af'::uuid, '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid, 'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4a1429a6-bd0d-540a-b891-bbcf8be496a8'::uuid, '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid, 'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c07e7adc-0e7f-5eab-90b3-b6c1c0bbc15c'::uuid, '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid, 'c29413cc-cde1-57f5-a2ed-445ab337a903'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('950863e3-06bf-50dc-a8b6-35f1cbf66f47'::uuid, '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid, 'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1c34f461-f81e-5274-a930-9b10c329d44f'::uuid, 'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid, '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bf16951f-7e34-55de-8587-85bc0226220b'::uuid, '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid, 'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5d575da8-8ddc-5934-8122-c13574ac988d'::uuid,
  'bf16951f-7e34-55de-8587-85bc0226220b'::uuid,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  'Hi Hana — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '94c6c046-3669-5843-ac1c-9634ed83b88b'::uuid,
  'bf16951f-7e34-55de-8587-85bc0226220b'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid,
  'Thanks Isaac! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8e6ea1c0-599a-525a-9c2c-5a2a68ed3acd'::uuid, '39eb90fe-7518-546f-bea0-b51e1a06f6d5'::uuid, '989fdb95-2d0d-5cb6-ac91-d6b20bdf5cec'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3c702d2a-f06c-5410-b618-33a5bb06fdde'::uuid, '920410e2-89ac-581b-95cc-1c86177f436b'::uuid, 'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('db87982b-e2ad-5f4e-ada4-a99ded43b367'::uuid, 'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid, '920410e2-89ac-581b-95cc-1c86177f436b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f0a6a8e1-66ff-5ecf-80f7-0a0984b585df'::uuid, '920410e2-89ac-581b-95cc-1c86177f436b'::uuid, 'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('507e57a7-663c-544d-bda4-a5a03615e1b2'::uuid, '43ab8de9-c0de-58d7-88ed-ee3d8239b92a'::uuid, '920410e2-89ac-581b-95cc-1c86177f436b'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f7bddd91-38ab-54bf-9314-1fd44bd549ba'::uuid, 'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid, '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a72f4ef3-b641-52ed-b3d2-e25d13f8d4c8'::uuid, '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid, 'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('427da69f-4bfd-5f66-a7b9-8d406a94f557'::uuid, '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid, 'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8d87d208-196c-5e7c-9a3f-88f09f758226'::uuid,
  '427da69f-4bfd-5f66-a7b9-8d406a94f557'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  'Hi Elena — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1653c8c6-200d-5bf4-848f-8aee909ff46b'::uuid,
  '427da69f-4bfd-5f66-a7b9-8d406a94f557'::uuid,
  '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid,
  'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid,
  'Thanks Felix! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4f1a8299-1d7c-5f44-aab8-63e106cb88f3'::uuid, 'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid, '634bbd78-6e13-5abe-8ffc-9d7e43a30d9f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b6105675-10a8-5721-b99f-161c0929e311'::uuid, '634bbd78-6e13-5abe-8ffc-9d7e43a30d9f'::uuid, 'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f985da09-dcf5-5deb-a29e-2060598c7c6c'::uuid, '634bbd78-6e13-5abe-8ffc-9d7e43a30d9f'::uuid, 'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('58ef1d2c-18b8-558f-a822-ac2678dee2f6'::uuid, '44db6280-e642-55b6-a277-62e332fa5fe6'::uuid, 'd3622f86-31ec-5a96-9fe9-e544f725abfb'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7844be92-f6e1-51e7-9c0a-05726fdda0c3'::uuid, '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid, '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('438c1403-a232-5662-9323-d524d5e1afb6'::uuid, '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid, '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4df437a0-3ac7-5ca5-af4d-87714395d13c'::uuid, '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid, '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd858a466-9024-5141-8726-879ee86fbb4b'::uuid,
  '4df437a0-3ac7-5ca5-af4d-87714395d13c'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  'Hi Rohan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6a3146c6-0b0d-52f7-be28-33e1d3338d94'::uuid,
  '4df437a0-3ac7-5ca5-af4d-87714395d13c'::uuid,
  '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid,
  '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid,
  'Thanks Sara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('129fd791-0a1a-54b2-abd0-23f4f2c6dd68'::uuid, '1144404b-4bfe-578a-9943-5b808cc2e1ec'::uuid, '65cd2b4f-2d43-5020-a880-8286d1c3416a'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;