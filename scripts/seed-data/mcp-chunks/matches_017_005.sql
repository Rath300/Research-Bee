INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ecb77696-66b9-5c0b-ab5f-14e56a349e2d'::uuid, '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid, 'ba58a0d4-31c0-534b-8a30-c476559e8c17'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0b3c72d2-6af0-576e-ae6c-c301162d9b59'::uuid, 'ba58a0d4-31c0-534b-8a30-c476559e8c17'::uuid, '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a30d7f22-954c-5a28-a4d4-2c1418b56949'::uuid, '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid, 'ba58a0d4-31c0-534b-8a30-c476559e8c17'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3afdd225-4530-5e86-ae92-5b874fe021b3'::uuid, '337045f6-3ef4-54fc-a3cb-5ebf6f7a70a4'::uuid, '33aec7f2-5690-57b3-9664-6aebc7b43952'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('44678133-a8d5-5c48-886a-ed0c2c748f5d'::uuid, '33aec7f2-5690-57b3-9664-6aebc7b43952'::uuid, '337045f6-3ef4-54fc-a3cb-5ebf6f7a70a4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('459e373e-800f-5224-8ed9-015a023f97c1'::uuid, '337045f6-3ef4-54fc-a3cb-5ebf6f7a70a4'::uuid, '33aec7f2-5690-57b3-9664-6aebc7b43952'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9506fa14-8ce3-5853-9f68-c886463c61a6'::uuid,
  '459e373e-800f-5224-8ed9-015a023f97c1'::uuid,
  '337045f6-3ef4-54fc-a3cb-5ebf6f7a70a4'::uuid,
  '33aec7f2-5690-57b3-9664-6aebc7b43952'::uuid,
  'Hi Isaac — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fce9c62a-b25e-5520-8ba3-63085179a78b'::uuid,
  '459e373e-800f-5224-8ed9-015a023f97c1'::uuid,
  '33aec7f2-5690-57b3-9664-6aebc7b43952'::uuid,
  '337045f6-3ef4-54fc-a3cb-5ebf6f7a70a4'::uuid,
  'Thanks Chloe! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d3ff73b5-5352-5025-8361-40e414b7e163'::uuid, '1eaa537d-6771-5fa2-8cbe-f4faed6ab222'::uuid, '3dd86691-9e6d-5f95-b08a-8f29f3faa19d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8bfe0438-cce4-5d2b-aff5-edaebc8512a0'::uuid, '3dd86691-9e6d-5f95-b08a-8f29f3faa19d'::uuid, '1eaa537d-6771-5fa2-8cbe-f4faed6ab222'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('76b4be43-cbfd-5420-a5f5-20d3fd5115c3'::uuid, '1eaa537d-6771-5fa2-8cbe-f4faed6ab222'::uuid, '3dd86691-9e6d-5f95-b08a-8f29f3faa19d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c2212c1b-c527-53fe-bd35-52db75aed324'::uuid, 'e39e6b56-0b6e-5ec5-80ef-6b410471ac02'::uuid, '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7981a97a-0eb9-5ea6-8a7e-b40fd427aad0'::uuid, '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid, 'e39e6b56-0b6e-5ec5-80ef-6b410471ac02'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9a9a5f3f-7827-596a-8f67-19f7c9ed36fc'::uuid, '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid, 'e39e6b56-0b6e-5ec5-80ef-6b410471ac02'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7b746d3d-d651-584e-8b03-3288a7145baa'::uuid,
  '9a9a5f3f-7827-596a-8f67-19f7c9ed36fc'::uuid,
  'e39e6b56-0b6e-5ec5-80ef-6b410471ac02'::uuid,
  '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid,
  'Hi Felix — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'dc30dc8e-8a1b-5db2-877e-5adf074922ba'::uuid,
  '9a9a5f3f-7827-596a-8f67-19f7c9ed36fc'::uuid,
  '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid,
  'e39e6b56-0b6e-5ec5-80ef-6b410471ac02'::uuid,
  'Thanks Violet! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('46824596-92dd-51e3-9442-6be38105ef7c'::uuid, 'db3c49e7-bfea-5580-92ae-3b7c4329da27'::uuid, 'a09224b4-4489-5f26-acc8-6d59bf83ca40'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e0c9d16d-4404-52cf-a3b6-203ac2ff315e'::uuid, 'a09224b4-4489-5f26-acc8-6d59bf83ca40'::uuid, 'db3c49e7-bfea-5580-92ae-3b7c4329da27'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3de4f309-aa01-59a7-bd66-d5e707dfd3c1'::uuid, 'a09224b4-4489-5f26-acc8-6d59bf83ca40'::uuid, 'db3c49e7-bfea-5580-92ae-3b7c4329da27'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3919a448-2990-54f2-abb1-a8a7b9bbb844'::uuid, '53f80aef-090c-5c26-b62a-6a01e277d754'::uuid, '1fd23b49-1f61-56f1-87d2-a4baac0eff85'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('70d3a2ad-63ac-5dfe-a42b-878dcfd74db0'::uuid, '1fd23b49-1f61-56f1-87d2-a4baac0eff85'::uuid, '53f80aef-090c-5c26-b62a-6a01e277d754'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b88859d2-6151-5b19-b3a4-75f61b5dfef0'::uuid, '1fd23b49-1f61-56f1-87d2-a4baac0eff85'::uuid, '53f80aef-090c-5c26-b62a-6a01e277d754'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '068815f7-62be-5c69-9aa1-07f7037d6800'::uuid,
  'b88859d2-6151-5b19-b3a4-75f61b5dfef0'::uuid,
  '53f80aef-090c-5c26-b62a-6a01e277d754'::uuid,
  '1fd23b49-1f61-56f1-87d2-a4baac0eff85'::uuid,
  'Hi James — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0d942a68-1a7d-54bb-b1e0-a8ac3e9d8387'::uuid,
  'b88859d2-6151-5b19-b3a4-75f61b5dfef0'::uuid,
  '1fd23b49-1f61-56f1-87d2-a4baac0eff85'::uuid,
  '53f80aef-090c-5c26-b62a-6a01e277d754'::uuid,
  'Thanks Tara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dcd633bf-b69e-5e9d-bc08-5d36a215f3d4'::uuid, '53f80aef-090c-5c26-b62a-6a01e277d754'::uuid, '6c9d0537-63f0-513c-9725-e07e525bd742'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3671062b-719a-5f31-8504-9d11dfbd7ace'::uuid, '6c9d0537-63f0-513c-9725-e07e525bd742'::uuid, '53f80aef-090c-5c26-b62a-6a01e277d754'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('bb3fadeb-d171-5173-b71b-0be15e05f0af'::uuid, '53f80aef-090c-5c26-b62a-6a01e277d754'::uuid, '6c9d0537-63f0-513c-9725-e07e525bd742'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0e5d1b36-ea9b-59b2-88e1-4986dca96320'::uuid, 'e8942547-2905-5750-a298-06aa7d0cac82'::uuid, '22f392fb-623b-5e10-9abd-4e1da0ed6aa7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0c67363b-dfff-53f6-b27b-0a4e94962646'::uuid, '22f392fb-623b-5e10-9abd-4e1da0ed6aa7'::uuid, 'e8942547-2905-5750-a298-06aa7d0cac82'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3325ac7a-28cd-5646-a033-b1b393971c07'::uuid, '22f392fb-623b-5e10-9abd-4e1da0ed6aa7'::uuid, 'e8942547-2905-5750-a298-06aa7d0cac82'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fb0127d6-ce78-557a-b4f7-b06d157dc404'::uuid,
  '3325ac7a-28cd-5646-a033-b1b393971c07'::uuid,
  'e8942547-2905-5750-a298-06aa7d0cac82'::uuid,
  '22f392fb-623b-5e10-9abd-4e1da0ed6aa7'::uuid,
  'Hi Grace — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0e8d7be8-5644-5941-a0d5-3e02666b8cb3'::uuid,
  '3325ac7a-28cd-5646-a033-b1b393971c07'::uuid,
  '22f392fb-623b-5e10-9abd-4e1da0ed6aa7'::uuid,
  'e8942547-2905-5750-a298-06aa7d0cac82'::uuid,
  'Thanks Aaron! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c7821ed9-be5f-5fe9-85b8-77496ce5cb99'::uuid, 'd607c5db-de3d-5283-938a-378840208167'::uuid, '15eaa3ae-24eb-57ee-bc4c-1401230faa23'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cea6aae4-9c63-5f51-a915-cd3a2e1dbefa'::uuid, '15eaa3ae-24eb-57ee-bc4c-1401230faa23'::uuid, 'd607c5db-de3d-5283-938a-378840208167'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5350781c-16d0-5ab2-9456-6bf100a665d0'::uuid, '15eaa3ae-24eb-57ee-bc4c-1401230faa23'::uuid, 'd607c5db-de3d-5283-938a-378840208167'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c9fd2e62-9b4b-5205-ae0a-36b3e388fb0e'::uuid, 'bfc0cd00-9ae0-5c3f-9654-979ab870cc76'::uuid, '3be530d6-9f24-5f93-978c-7010f5821a79'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a5bf2b32-22ef-5178-9ead-31c162ef84da'::uuid, '3be530d6-9f24-5f93-978c-7010f5821a79'::uuid, 'bfc0cd00-9ae0-5c3f-9654-979ab870cc76'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ec34b05a-d203-5423-92fc-e3915a991df4'::uuid, '3be530d6-9f24-5f93-978c-7010f5821a79'::uuid, 'bfc0cd00-9ae0-5c3f-9654-979ab870cc76'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8227dadb-d7d4-580f-b286-f98b343388d2'::uuid,
  'ec34b05a-d203-5423-92fc-e3915a991df4'::uuid,
  'bfc0cd00-9ae0-5c3f-9654-979ab870cc76'::uuid,
  '3be530d6-9f24-5f93-978c-7010f5821a79'::uuid,
  'Hi Isla — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'da85b2d5-1aa2-5193-aa13-bc4bd78f3480'::uuid,
  'ec34b05a-d203-5423-92fc-e3915a991df4'::uuid,
  '3be530d6-9f24-5f93-978c-7010f5821a79'::uuid,
  'bfc0cd00-9ae0-5c3f-9654-979ab870cc76'::uuid,
  'Thanks Noah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;