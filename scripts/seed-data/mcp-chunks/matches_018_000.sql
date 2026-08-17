INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('60cf3481-54bd-5484-87ce-86e298084f50'::uuid, 'c8f46057-70bf-5ff9-b0da-9eed0f520276'::uuid, 'df3e1c62-4247-510c-80e8-205376b04cf6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b1b63839-0216-581e-abaa-7df2afd05e14'::uuid, 'c8f46057-70bf-5ff9-b0da-9eed0f520276'::uuid, 'df3e1c62-4247-510c-80e8-205376b04cf6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0e3e4025-1a42-5af1-a155-e238452a7a2b'::uuid,
  'b1b63839-0216-581e-abaa-7df2afd05e14'::uuid,
  'df3e1c62-4247-510c-80e8-205376b04cf6'::uuid,
  'c8f46057-70bf-5ff9-b0da-9eed0f520276'::uuid,
  'Hi Yara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '1834fe53-f923-52e9-a2eb-0904281586df'::uuid,
  'b1b63839-0216-581e-abaa-7df2afd05e14'::uuid,
  'c8f46057-70bf-5ff9-b0da-9eed0f520276'::uuid,
  'df3e1c62-4247-510c-80e8-205376b04cf6'::uuid,
  'Thanks Ethan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('de7cb162-f50c-5acd-b760-b55201d99f79'::uuid, 'df3e1c62-4247-510c-80e8-205376b04cf6'::uuid, '27bed1a2-fc35-5a0d-bf20-bf3ac8f905ef'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a1dad7fd-f28f-59eb-986f-a37cc222a852'::uuid, '27bed1a2-fc35-5a0d-bf20-bf3ac8f905ef'::uuid, 'df3e1c62-4247-510c-80e8-205376b04cf6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a057e378-6449-5e69-98b0-6638f12e565b'::uuid, '27bed1a2-fc35-5a0d-bf20-bf3ac8f905ef'::uuid, 'df3e1c62-4247-510c-80e8-205376b04cf6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4db992b9-fb71-5d67-b28b-386756d8905e'::uuid, '3e632bb3-c208-5e8f-92a2-9dde3d847af2'::uuid, '16b2384b-ad24-51a7-ae2c-7800b9497576'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5556c18a-e652-5a59-88ea-a3fe78bea68f'::uuid, '16b2384b-ad24-51a7-ae2c-7800b9497576'::uuid, '3e632bb3-c208-5e8f-92a2-9dde3d847af2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8895e89f-4d9e-5e56-a116-4324eadd99bb'::uuid, '16b2384b-ad24-51a7-ae2c-7800b9497576'::uuid, '3e632bb3-c208-5e8f-92a2-9dde3d847af2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a27c1110-6573-58f7-89ef-fcaeee9dae70'::uuid,
  '8895e89f-4d9e-5e56-a116-4324eadd99bb'::uuid,
  '3e632bb3-c208-5e8f-92a2-9dde3d847af2'::uuid,
  '16b2384b-ad24-51a7-ae2c-7800b9497576'::uuid,
  'Hi Lucas — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7e052abe-74f8-5c4a-a85e-3420a21573d9'::uuid,
  '8895e89f-4d9e-5e56-a116-4324eadd99bb'::uuid,
  '16b2384b-ad24-51a7-ae2c-7800b9497576'::uuid,
  '3e632bb3-c208-5e8f-92a2-9dde3d847af2'::uuid,
  'Thanks Leila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ef8f34d9-7381-5d9d-8a74-b5bacc160e69'::uuid, '2a19e5bf-12b6-5a5c-b22b-83a66f6241e7'::uuid, '20d3a7aa-cc87-54a7-afae-68bf76bf1481'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('de3e4d38-6c1c-51fa-95a8-c9eed4d810be'::uuid, '20d3a7aa-cc87-54a7-afae-68bf76bf1481'::uuid, '2a19e5bf-12b6-5a5c-b22b-83a66f6241e7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6a4213ae-c487-5f49-86e6-ed96bd5f6a33'::uuid, '20d3a7aa-cc87-54a7-afae-68bf76bf1481'::uuid, '2a19e5bf-12b6-5a5c-b22b-83a66f6241e7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0b4fa42b-32bb-5322-a1d1-ddf787054391'::uuid, '756be686-ee02-559a-b9e7-8de1b4fe3b29'::uuid, '2d53ff6e-fd3e-592f-9980-b77dd45f7025'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('117f7f90-f7c8-5a1a-b795-fd02464c2eca'::uuid, '2d53ff6e-fd3e-592f-9980-b77dd45f7025'::uuid, '756be686-ee02-559a-b9e7-8de1b4fe3b29'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b154b24d-472a-5bbf-b01a-28895749fd8c'::uuid, '2d53ff6e-fd3e-592f-9980-b77dd45f7025'::uuid, '756be686-ee02-559a-b9e7-8de1b4fe3b29'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e2fce152-ad69-5036-b8b8-317cbf617cd4'::uuid,
  'b154b24d-472a-5bbf-b01a-28895749fd8c'::uuid,
  '756be686-ee02-559a-b9e7-8de1b4fe3b29'::uuid,
  '2d53ff6e-fd3e-592f-9980-b77dd45f7025'::uuid,
  'Hi David — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '43cb3bb5-c4a9-520d-a58f-1f3619d45d26'::uuid,
  'b154b24d-472a-5bbf-b01a-28895749fd8c'::uuid,
  '2d53ff6e-fd3e-592f-9980-b77dd45f7025'::uuid,
  '756be686-ee02-559a-b9e7-8de1b4fe3b29'::uuid,
  'Thanks Sana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('14e1d85f-bad6-5bcb-a27c-07050d4f7d7b'::uuid, '6920da0a-a803-5817-876c-c73449120e9d'::uuid, '728e8630-512a-51eb-9316-3e71371d2478'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4bf3bb8c-c54e-5b80-8ca3-250073ef4cb6'::uuid, '728e8630-512a-51eb-9316-3e71371d2478'::uuid, '6920da0a-a803-5817-876c-c73449120e9d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('58fa0d8f-b0d4-5b85-8190-21e20fe161c9'::uuid, '6920da0a-a803-5817-876c-c73449120e9d'::uuid, '728e8630-512a-51eb-9316-3e71371d2478'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f8bc8509-193b-5728-91af-6bffa29a7e6c'::uuid, 'cdf6b929-635e-5023-8098-73c102653a89'::uuid, '19650605-ba6d-5094-8e63-01744f21874e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('72b2ebaa-35b3-5aa8-b2be-53bb4342ae1e'::uuid, '19650605-ba6d-5094-8e63-01744f21874e'::uuid, 'cdf6b929-635e-5023-8098-73c102653a89'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a73ab153-1ac7-52ff-adc5-8630e2dcf552'::uuid, '19650605-ba6d-5094-8e63-01744f21874e'::uuid, 'cdf6b929-635e-5023-8098-73c102653a89'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3d11712f-bfe2-5eda-89d6-76b79d0450f7'::uuid,
  'a73ab153-1ac7-52ff-adc5-8630e2dcf552'::uuid,
  'cdf6b929-635e-5023-8098-73c102653a89'::uuid,
  '19650605-ba6d-5094-8e63-01744f21874e'::uuid,
  'Hi Diego — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0ffdb8f8-c520-5cac-baaa-bdc319b4868d'::uuid,
  'a73ab153-1ac7-52ff-adc5-8630e2dcf552'::uuid,
  '19650605-ba6d-5094-8e63-01744f21874e'::uuid,
  'cdf6b929-635e-5023-8098-73c102653a89'::uuid,
  'Thanks Hana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f06976b4-a677-5697-bb26-c549a5a27e25'::uuid, 'cdf6b929-635e-5023-8098-73c102653a89'::uuid, '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('17696259-76f2-5822-97c0-91a445af9eaa'::uuid, '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid, 'cdf6b929-635e-5023-8098-73c102653a89'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3e2fa4dc-2f70-58a1-8991-33b96e3faf4d'::uuid, '709fc30c-ecb1-5dd2-89c7-17f00264d537'::uuid, 'cdf6b929-635e-5023-8098-73c102653a89'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('254881c6-5d9d-57fe-a333-222f589ee8b4'::uuid, 'fd89cd4b-db01-5882-96e0-d179f823c010'::uuid, 'f10068dd-3d78-5f14-aae4-f628e51e8ae8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bd351f47-3acc-5050-a7fe-80ac2572a964'::uuid, 'f10068dd-3d78-5f14-aae4-f628e51e8ae8'::uuid, 'fd89cd4b-db01-5882-96e0-d179f823c010'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0c2a794c-8471-52f7-ad45-ae53978efee8'::uuid, 'f10068dd-3d78-5f14-aae4-f628e51e8ae8'::uuid, 'fd89cd4b-db01-5882-96e0-d179f823c010'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '235154a6-1292-5e49-a02e-b13a55c1bfb0'::uuid,
  '0c2a794c-8471-52f7-ad45-ae53978efee8'::uuid,
  'fd89cd4b-db01-5882-96e0-d179f823c010'::uuid,
  'f10068dd-3d78-5f14-aae4-f628e51e8ae8'::uuid,
  'Hi Nadia — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7417410b-9025-53d4-b53f-851cdd18670d'::uuid,
  '0c2a794c-8471-52f7-ad45-ae53978efee8'::uuid,
  'f10068dd-3d78-5f14-aae4-f628e51e8ae8'::uuid,
  'fd89cd4b-db01-5882-96e0-d179f823c010'::uuid,
  'Thanks Maya! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('09653d65-e602-5ca5-9e97-2aa5fb2af5f9'::uuid, 'e5d0f288-9f92-5299-b807-495269bcd8ca'::uuid, '480656da-679b-5364-a64a-bc03c8916a04'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2d6f7b0d-28b1-5f95-b2bd-478d9b408150'::uuid, '480656da-679b-5364-a64a-bc03c8916a04'::uuid, 'e5d0f288-9f92-5299-b807-495269bcd8ca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2fd7e50a-30da-5d44-980a-9095db607493'::uuid, '480656da-679b-5364-a64a-bc03c8916a04'::uuid, 'e5d0f288-9f92-5299-b807-495269bcd8ca'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('71856df1-7d33-5df2-898b-4d9c16c1786e'::uuid, '23b5ee7f-0bbd-521e-aaa0-3c98767ba963'::uuid, 'f0665652-049d-5275-b595-522d436397d7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;