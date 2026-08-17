INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('38bac1b1-5ef1-52c3-aee2-a4b4b9a46d37'::uuid, 'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid, '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2cc166b7-9932-5c14-a987-d432ce2023cc'::uuid, '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid, 'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2a6b3a3b-c506-5783-945e-223bebedca49'::uuid,
  '2cc166b7-9932-5c14-a987-d432ce2023cc'::uuid,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  'Hi Lucas — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b80292c0-5167-5bda-a842-f7dbb5be81a0'::uuid,
  '2cc166b7-9932-5c14-a987-d432ce2023cc'::uuid,
  'ebdecad2-1d7c-5241-b8b8-1a818d5053e8'::uuid,
  '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid,
  'Thanks Leila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('111a3f9c-c1d1-543a-a7ac-1248f03dadf0'::uuid, '286f6e32-59c8-55a8-98f8-07365047f533'::uuid, '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fc15f55a-e605-5e35-a7bc-11a5aa4610eb'::uuid, '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid, '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3e373985-0cae-505c-9d55-99185a3c437f'::uuid, '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid, '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f82860d5-d015-5326-9b40-bd8a1a8f596a'::uuid, '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid, '85f6d768-cfd3-5bbd-bd45-e91545470704'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('39bfc044-f328-507c-bfef-1b17ac8dbd85'::uuid, '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid, '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('637f3993-1c1c-53fd-a2d4-99efee5a8257'::uuid, '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid, 'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bc470596-030c-5d5f-b91e-5b9e4339526f'::uuid, 'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid, '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('174cbdca-c997-5791-a3aa-b03bc57153bf'::uuid, '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid, 'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '105633b0-5fac-553e-bfbe-686f82517044'::uuid,
  '174cbdca-c997-5791-a3aa-b03bc57153bf'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  'Hi David — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '406fe5cf-9b9d-5a26-a5ef-7c94dca6e2f2'::uuid,
  '174cbdca-c997-5791-a3aa-b03bc57153bf'::uuid,
  'd1642b7a-bec4-5599-a12f-ba794b970a1a'::uuid,
  '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid,
  'Thanks Sana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('60bffb41-a119-5ddc-b599-9d630517c311'::uuid, '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid, '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c29bab0d-153c-58ed-8732-c1029e28a621'::uuid, '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid, 'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('eebde6f0-8508-56c5-bf68-67b29d51585c'::uuid, 'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid, '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('73510c46-3901-5faa-9ea6-7acc3c992c43'::uuid, '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid, 'd697ec13-f35f-5dea-b674-ad073ba2bdbe'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d8493e11-34a6-5d1a-b806-037e5c0cf998'::uuid, '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid, '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('52d357dc-4bae-56cb-b277-f26961bdd880'::uuid, 'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid, '286f6e32-59c8-55a8-98f8-07365047f533'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d733c5cd-d03d-50ef-a482-b082a0ce9f52'::uuid, '286f6e32-59c8-55a8-98f8-07365047f533'::uuid, 'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3f4dc537-b60b-50c7-8c48-d06694bfbe74'::uuid, '286f6e32-59c8-55a8-98f8-07365047f533'::uuid, 'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '85403173-a366-530c-9acd-c5691d1932f6'::uuid,
  '3f4dc537-b60b-50c7-8c48-d06694bfbe74'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  'Hi Diego — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3ea09faa-d84d-5134-aee5-f54fec97d85a'::uuid,
  '3f4dc537-b60b-50c7-8c48-d06694bfbe74'::uuid,
  '286f6e32-59c8-55a8-98f8-07365047f533'::uuid,
  'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid,
  'Thanks Hana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('54cd7ab6-6442-5537-a509-f7965695c837'::uuid, 'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid, '2ca134b1-2119-5e9e-8c0e-f36ce476cf56'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('90af3cba-85c3-5655-9a22-0d9bc694d6b5'::uuid, '2ca134b1-2119-5e9e-8c0e-f36ce476cf56'::uuid, 'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('92312bf1-3174-5941-b9ee-cf07a2751c86'::uuid, '2ca134b1-2119-5e9e-8c0e-f36ce476cf56'::uuid, 'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('50ba50a5-aba5-57a9-9dc5-fd636ecee44e'::uuid, 'e41726ba-773d-50ad-abe7-f9242f380a28'::uuid, 'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a9f0d0ee-1ecc-52d0-b15d-df95b157911c'::uuid, 'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid, '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0346bed7-a39e-5f2c-8869-190dd5a563bf'::uuid, '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid, 'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4fc2279a-33f0-5f5d-b6da-492bf68830e7'::uuid, '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid, 'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c79b0b02-b7d2-506c-bb3d-bf0277ff08c6'::uuid,
  '4fc2279a-33f0-5f5d-b6da-492bf68830e7'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  'Hi Nadia — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd671a56e-f017-5b20-9d74-e9afe7c48ea5'::uuid,
  '4fc2279a-33f0-5f5d-b6da-492bf68830e7'::uuid,
  '5c878df6-6529-5f68-9216-05a31f1e8298'::uuid,
  'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid,
  'Thanks Maya! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6b67f5b2-ce73-5aa3-811f-c62ddd5d6b4e'::uuid, '957da403-be4b-59f1-a76e-e10c38cdeb88'::uuid, 'e80be953-6326-5a40-841c-c1f0e10bed03'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d3b7bb2d-586a-5826-9c6c-6447b4b43f0c'::uuid, '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid, '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fc8d44c9-d85d-5907-938e-b43e43d84061'::uuid, '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid, '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d6a17706-a48d-5ee0-b6e9-5289fea399b4'::uuid, '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid, '798513e5-d965-5b36-bf44-b9d5e4e8bc45'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('45f8f4de-1741-57c5-95a5-b304b22bf487'::uuid, '3c41b4f4-be38-5d6e-823d-22a6e6002f5e'::uuid, '3ec37d15-5fa4-564a-9d64-73c7e4cef562'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('00c69c83-720d-5d95-b16e-535784c46ae3'::uuid, '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid, '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5b8a4a85-0137-59cd-94b9-da81143aa833'::uuid, '6319ca6f-597f-527a-9054-f3c55e285ac6'::uuid, '167912b2-9bb9-5e29-98a5-be084c81c065'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;