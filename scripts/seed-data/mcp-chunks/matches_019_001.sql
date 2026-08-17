INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2dc7a017-8373-5495-8aab-f988a53d6678'::uuid,
  '8d41f2f7-7535-5fb3-818c-467398324c63'::uuid,
  '5deccd0c-da20-597e-b695-dd11f98e387e'::uuid,
  '836980fc-e1b4-537e-960b-d0f74fae417d'::uuid,
  'Thanks Noah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f57fcc04-b087-5f94-a84c-718f5de4d5e6'::uuid, 'ffa55c2e-c6ed-51cc-ad2c-c234fd3474ca'::uuid, '0033dc27-0b51-5a94-8a47-524ed782f504'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('97100a68-2b16-5d45-b97e-4f1599386e15'::uuid, '0033dc27-0b51-5a94-8a47-524ed782f504'::uuid, 'ffa55c2e-c6ed-51cc-ad2c-c234fd3474ca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('260d678d-ea75-5f17-87e5-e6b860450af2'::uuid, '0033dc27-0b51-5a94-8a47-524ed782f504'::uuid, 'ffa55c2e-c6ed-51cc-ad2c-c234fd3474ca'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ab15ae5b-0e6e-52a5-b3a1-d2bd2c0f6dcf'::uuid, 'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid, '583bfe91-cab4-5267-967b-ebddedc1ff8b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ca239bbb-cc27-5736-9f7e-e05c8e0f2ce6'::uuid, '583bfe91-cab4-5267-967b-ebddedc1ff8b'::uuid, 'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c1980dac-2abd-530b-a55d-5ff0ca2e5d98'::uuid, '583bfe91-cab4-5267-967b-ebddedc1ff8b'::uuid, 'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9efd43c6-ccdc-5d23-8500-d127799b8386'::uuid,
  'c1980dac-2abd-530b-a55d-5ff0ca2e5d98'::uuid,
  'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid,
  '583bfe91-cab4-5267-967b-ebddedc1ff8b'::uuid,
  'Hi Yara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8e79327d-68bc-53a2-bd72-23fd10a2b1af'::uuid,
  'c1980dac-2abd-530b-a55d-5ff0ca2e5d98'::uuid,
  '583bfe91-cab4-5267-967b-ebddedc1ff8b'::uuid,
  'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid,
  'Thanks Ethan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('81174b9b-2623-5fa5-acc7-0e0dc2cb40e2'::uuid, 'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid, '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dad59a05-23a4-5b56-9b60-2ddfe16508a4'::uuid, '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid, 'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ffd5007d-f77b-5b5b-802c-c177d29deb30'::uuid, '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid, 'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('85cb32d1-0e6a-5472-8494-ea59ff5e1bd2'::uuid, '3d45d675-a875-5470-942c-38b3923c1d12'::uuid, 'a635b5eb-484e-505c-bfe4-65921d2c8a00'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4e3428d7-d549-5de3-9eab-58e3c6b7da72'::uuid, 'a635b5eb-484e-505c-bfe4-65921d2c8a00'::uuid, '3d45d675-a875-5470-942c-38b3923c1d12'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0dc9b1a8-1f01-5722-a495-7d66f9ee0993'::uuid, '3d45d675-a875-5470-942c-38b3923c1d12'::uuid, 'a635b5eb-484e-505c-bfe4-65921d2c8a00'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9abe8ce5-6cda-54ff-8250-56488cefd790'::uuid,
  '0dc9b1a8-1f01-5722-a495-7d66f9ee0993'::uuid,
  '3d45d675-a875-5470-942c-38b3923c1d12'::uuid,
  'a635b5eb-484e-505c-bfe4-65921d2c8a00'::uuid,
  'Hi Lucas — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '512cee15-c9aa-5c9a-b090-7e99c43f62e5'::uuid,
  '0dc9b1a8-1f01-5722-a495-7d66f9ee0993'::uuid,
  'a635b5eb-484e-505c-bfe4-65921d2c8a00'::uuid,
  '3d45d675-a875-5470-942c-38b3923c1d12'::uuid,
  'Thanks Leila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a71680be-401d-5244-98e6-b87769188a93'::uuid, '8446497b-9183-5777-853d-340063eca952'::uuid, 'fade7767-529a-55b3-b6ca-4e25b88b90fb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('653f7eb8-5f8d-5fe0-b136-1e2a4e7a7089'::uuid, 'fade7767-529a-55b3-b6ca-4e25b88b90fb'::uuid, '8446497b-9183-5777-853d-340063eca952'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9a56da8e-700a-5e62-b055-aec6dbe73f78'::uuid, '8446497b-9183-5777-853d-340063eca952'::uuid, 'fade7767-529a-55b3-b6ca-4e25b88b90fb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fec274e8-e48b-52a3-925e-88d5e093ee0e'::uuid, '6facfbeb-f04c-54d5-b408-9e8c94854c76'::uuid, '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('90d25a19-f8bd-5b56-a297-6bbfa81e0436'::uuid, '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid, '6facfbeb-f04c-54d5-b408-9e8c94854c76'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2a6f3213-176a-5ded-b785-fb419a5f2c8b'::uuid, '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid, '6facfbeb-f04c-54d5-b408-9e8c94854c76'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b21d3fa7-1893-5441-a856-f52870da60d3'::uuid,
  '2a6f3213-176a-5ded-b785-fb419a5f2c8b'::uuid,
  '6facfbeb-f04c-54d5-b408-9e8c94854c76'::uuid,
  '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid,
  'Hi David — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8ed4f8a6-0d60-578d-8ba1-587daee6e474'::uuid,
  '2a6f3213-176a-5ded-b785-fb419a5f2c8b'::uuid,
  '1b36b366-9daa-5f09-b57b-1e28c370cf16'::uuid,
  '6facfbeb-f04c-54d5-b408-9e8c94854c76'::uuid,
  'Thanks Sana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('99e025a6-e7e8-596e-af21-31c2f292ea6f'::uuid, 'b9db1144-db8a-57a8-8052-2191f1cc14b1'::uuid, 'ba58a0d4-31c0-534b-8a30-c476559e8c17'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('970141ee-b127-5c2b-b6e1-77a44e002cb3'::uuid, 'ba58a0d4-31c0-534b-8a30-c476559e8c17'::uuid, 'b9db1144-db8a-57a8-8052-2191f1cc14b1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f6c9953d-7368-5185-8bc3-17d723d2caa2'::uuid, 'b9db1144-db8a-57a8-8052-2191f1cc14b1'::uuid, 'ba58a0d4-31c0-534b-8a30-c476559e8c17'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3cdb7e5d-d0dc-5e01-b539-8ffd1832f497'::uuid, 'cf4638c0-452a-5dc7-8b92-3d8a0fec4fbc'::uuid, 'e503ae15-b0db-54bf-a0f4-0689197d70de'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0a01c00f-3248-5b48-a1b3-b48c20fb867e'::uuid, 'e503ae15-b0db-54bf-a0f4-0689197d70de'::uuid, 'cf4638c0-452a-5dc7-8b92-3d8a0fec4fbc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('774d2d62-9ad4-5667-8e37-fc8c318239bf'::uuid, 'cf4638c0-452a-5dc7-8b92-3d8a0fec4fbc'::uuid, 'e503ae15-b0db-54bf-a0f4-0689197d70de'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '04ac394a-ed70-5de1-9478-1b1ab44e9a3d'::uuid,
  '774d2d62-9ad4-5667-8e37-fc8c318239bf'::uuid,
  'cf4638c0-452a-5dc7-8b92-3d8a0fec4fbc'::uuid,
  'e503ae15-b0db-54bf-a0f4-0689197d70de'::uuid,
  'Hi Diego — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cdfe64e4-5d93-5579-bc52-0cc0958bb54a'::uuid,
  '774d2d62-9ad4-5667-8e37-fc8c318239bf'::uuid,
  'e503ae15-b0db-54bf-a0f4-0689197d70de'::uuid,
  'cf4638c0-452a-5dc7-8b92-3d8a0fec4fbc'::uuid,
  'Thanks Hana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fa501d24-454d-5cc0-a27d-f5db5806587f'::uuid, 'cf4638c0-452a-5dc7-8b92-3d8a0fec4fbc'::uuid, '3c5bf808-932d-5678-af65-94323984b8c4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8b706521-54f7-5cfd-ac2e-4a550a8152c5'::uuid, '3c5bf808-932d-5678-af65-94323984b8c4'::uuid, 'cf4638c0-452a-5dc7-8b92-3d8a0fec4fbc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8fddaed1-b26f-5092-a88e-49c9309e27b8'::uuid, '3c5bf808-932d-5678-af65-94323984b8c4'::uuid, 'cf4638c0-452a-5dc7-8b92-3d8a0fec4fbc'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a3e2f8ab-e021-52b5-b4fe-34661bf3ec80'::uuid, '4aa67be5-efe7-5b07-bb83-6bb1bccd92d4'::uuid, '843f469a-8134-5966-bfe0-48584f3270fc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e7c3ab91-48ac-56f0-a6bf-d37040a13b90'::uuid, '843f469a-8134-5966-bfe0-48584f3270fc'::uuid, '4aa67be5-efe7-5b07-bb83-6bb1bccd92d4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9e07f163-10d7-5ac3-a315-bd94e98366ca'::uuid, '4aa67be5-efe7-5b07-bb83-6bb1bccd92d4'::uuid, '843f469a-8134-5966-bfe0-48584f3270fc'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fb763c94-4ace-50b2-9d4e-d087cb9b72ba'::uuid,
  '9e07f163-10d7-5ac3-a315-bd94e98366ca'::uuid,
  '4aa67be5-efe7-5b07-bb83-6bb1bccd92d4'::uuid,
  '843f469a-8134-5966-bfe0-48584f3270fc'::uuid,
  'Hi Nadia — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;