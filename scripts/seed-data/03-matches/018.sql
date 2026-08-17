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

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('16da17fb-f93a-5794-b93f-64ac597f87c8'::uuid, 'f0665652-049d-5275-b595-522d436397d7'::uuid, '23b5ee7f-0bbd-521e-aaa0-3c98767ba963'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('01e67935-1496-57bd-88ae-89531ba00e74'::uuid, '23b5ee7f-0bbd-521e-aaa0-3c98767ba963'::uuid, 'f0665652-049d-5275-b595-522d436397d7'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '92831f32-4822-5a9c-bfaa-111181881099'::uuid,
  '01e67935-1496-57bd-88ae-89531ba00e74'::uuid,
  '23b5ee7f-0bbd-521e-aaa0-3c98767ba963'::uuid,
  'f0665652-049d-5275-b595-522d436397d7'::uuid,
  'Hi Mei — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd6bc8318-97e9-56d5-acc2-53efea09f4c9'::uuid,
  '01e67935-1496-57bd-88ae-89531ba00e74'::uuid,
  'f0665652-049d-5275-b595-522d436397d7'::uuid,
  '23b5ee7f-0bbd-521e-aaa0-3c98767ba963'::uuid,
  'Thanks Rohan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1eaf354d-f52a-5c4d-9223-e055e66a0b2b'::uuid, 'bf0af558-883d-514f-a05c-6d86200699c1'::uuid, '2b5709bf-80c1-5736-9f7a-c5245a97240b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('03b198e0-9de2-5174-a97d-db05ab41f4a2'::uuid, '2b5709bf-80c1-5736-9f7a-c5245a97240b'::uuid, 'bf0af558-883d-514f-a05c-6d86200699c1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cd0468b1-1833-5fb9-ab25-c30005f715ca'::uuid, '2b5709bf-80c1-5736-9f7a-c5245a97240b'::uuid, 'bf0af558-883d-514f-a05c-6d86200699c1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f9e5e89a-97df-5f13-82b5-cd4aa5ac2ad5'::uuid, 'c9a78c52-bd19-5259-91ef-08c71fda445d'::uuid, '1a6df02d-5ec1-5718-b464-1c45419097ab'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('82045336-0629-53b4-8667-eb563b406261'::uuid, '1a6df02d-5ec1-5718-b464-1c45419097ab'::uuid, 'c9a78c52-bd19-5259-91ef-08c71fda445d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3d48acfa-7587-5c36-a641-21865abfc6e0'::uuid, '1a6df02d-5ec1-5718-b464-1c45419097ab'::uuid, 'c9a78c52-bd19-5259-91ef-08c71fda445d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e2947846-0781-5615-b0a4-29709f313034'::uuid,
  '3d48acfa-7587-5c36-a641-21865abfc6e0'::uuid,
  'c9a78c52-bd19-5259-91ef-08c71fda445d'::uuid,
  '1a6df02d-5ec1-5718-b464-1c45419097ab'::uuid,
  'Hi Riya — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '76cfd409-2861-5be0-b6fc-d3957393d38b'::uuid,
  '3d48acfa-7587-5c36-a641-21865abfc6e0'::uuid,
  '1a6df02d-5ec1-5718-b464-1c45419097ab'::uuid,
  'c9a78c52-bd19-5259-91ef-08c71fda445d'::uuid,
  'Thanks Samir! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('208ad8bf-0b38-5c45-bb9f-657954dccbbd'::uuid, 'c9a78c52-bd19-5259-91ef-08c71fda445d'::uuid, 'a26aee00-05f2-505c-a479-ae1852915911'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3231294f-6c88-5369-9e85-06147e42f17c'::uuid, 'a26aee00-05f2-505c-a479-ae1852915911'::uuid, 'c9a78c52-bd19-5259-91ef-08c71fda445d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('741f0b6d-ce8c-54e3-9844-a20fbebe8cca'::uuid, 'a26aee00-05f2-505c-a479-ae1852915911'::uuid, 'c9a78c52-bd19-5259-91ef-08c71fda445d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2cddec5d-d041-5333-bc32-a338aceba529'::uuid, '246bcb7d-f6ac-555a-b9a5-8c11a5d0f5d2'::uuid, '754240ce-0e49-5193-997e-00dc6cf96e2a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('93ecf005-8864-5bd4-8c86-2e210aa10853'::uuid, '754240ce-0e49-5193-997e-00dc6cf96e2a'::uuid, '246bcb7d-f6ac-555a-b9a5-8c11a5d0f5d2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('042c542e-2079-5541-a858-265af0592869'::uuid, '246bcb7d-f6ac-555a-b9a5-8c11a5d0f5d2'::uuid, '754240ce-0e49-5193-997e-00dc6cf96e2a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '67530369-1b04-5dc4-a529-706b1555ced7'::uuid,
  '042c542e-2079-5541-a858-265af0592869'::uuid,
  '246bcb7d-f6ac-555a-b9a5-8c11a5d0f5d2'::uuid,
  '754240ce-0e49-5193-997e-00dc6cf96e2a'::uuid,
  'Hi Nathan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2b4a3400-3e8d-57a5-915f-490adfe8bb8b'::uuid,
  '042c542e-2079-5541-a858-265af0592869'::uuid,
  '754240ce-0e49-5193-997e-00dc6cf96e2a'::uuid,
  '246bcb7d-f6ac-555a-b9a5-8c11a5d0f5d2'::uuid,
  'Thanks Camila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ebc1b81b-b5a7-5bde-a8c0-51a4534ab329'::uuid, 'b8f3c581-831a-5e5a-a62b-11337746e107'::uuid, 'd9c36d2c-196a-51f6-bb6b-1e1ca4ff9a3d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f80349c1-7242-571a-ad0d-a443232f32ee'::uuid, 'd9c36d2c-196a-51f6-bb6b-1e1ca4ff9a3d'::uuid, 'b8f3c581-831a-5e5a-a62b-11337746e107'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ca9b0ad2-fcf3-51c2-97bf-44c266ebc2fc'::uuid, 'b8f3c581-831a-5e5a-a62b-11337746e107'::uuid, 'd9c36d2c-196a-51f6-bb6b-1e1ca4ff9a3d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1a23883b-a4b3-54ce-a59b-eabf7242634d'::uuid, 'b27daf1d-8ab8-5889-9504-0c12a10afbfb'::uuid, '90d41892-fb72-5023-9fe0-b787e8a2401c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('93f0f96d-fec2-5c83-a715-e3394e566852'::uuid, '90d41892-fb72-5023-9fe0-b787e8a2401c'::uuid, 'b27daf1d-8ab8-5889-9504-0c12a10afbfb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2a0d0fbc-1fe5-53bc-a4d8-6184d7c5e898'::uuid, '90d41892-fb72-5023-9fe0-b787e8a2401c'::uuid, 'b27daf1d-8ab8-5889-9504-0c12a10afbfb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd6042706-b8f1-5635-ad93-9db19da4933d'::uuid,
  '2a0d0fbc-1fe5-53bc-a4d8-6184d7c5e898'::uuid,
  'b27daf1d-8ab8-5889-9504-0c12a10afbfb'::uuid,
  '90d41892-fb72-5023-9fe0-b787e8a2401c'::uuid,
  'Hi Omar — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '528112d2-15fa-5ef7-87f2-35ed8a300d19'::uuid,
  '2a0d0fbc-1fe5-53bc-a4d8-6184d7c5e898'::uuid,
  '90d41892-fb72-5023-9fe0-b787e8a2401c'::uuid,
  'b27daf1d-8ab8-5889-9504-0c12a10afbfb'::uuid,
  'Thanks Nina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('89463fe3-cbb5-534f-b218-9f53a707033a'::uuid, '4c0bc010-334e-5366-bbb5-89f5fbd0f1c1'::uuid, 'b6d76b9c-c861-5e04-9a0b-242cf40b872e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('38fed78c-b708-5ab8-a580-a7f18657120c'::uuid, 'b6d76b9c-c861-5e04-9a0b-242cf40b872e'::uuid, '4c0bc010-334e-5366-bbb5-89f5fbd0f1c1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cde56357-b361-5180-af7a-f62792d9849a'::uuid, '4c0bc010-334e-5366-bbb5-89f5fbd0f1c1'::uuid, 'b6d76b9c-c861-5e04-9a0b-242cf40b872e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0bc65172-b3fd-5d76-944f-6b38816094f8'::uuid, '17f60a9d-3628-5de0-a717-35480b0cc51d'::uuid, '24579fee-fc8d-5280-812e-2f0052792b46'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5e19223e-29d8-5cb4-8aaf-c2503ef559f0'::uuid, '24579fee-fc8d-5280-812e-2f0052792b46'::uuid, '17f60a9d-3628-5de0-a717-35480b0cc51d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0a336430-d786-5fa7-b316-c0f414186350'::uuid, '17f60a9d-3628-5de0-a717-35480b0cc51d'::uuid, '24579fee-fc8d-5280-812e-2f0052792b46'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6bba86ae-4892-5db3-aead-3360df5e8d73'::uuid,
  '0a336430-d786-5fa7-b316-c0f414186350'::uuid,
  '17f60a9d-3628-5de0-a717-35480b0cc51d'::uuid,
  '24579fee-fc8d-5280-812e-2f0052792b46'::uuid,
  'Hi Owen — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c404b23b-7cee-5a06-ad34-84852b115ce1'::uuid,
  '0a336430-d786-5fa7-b316-c0f414186350'::uuid,
  '24579fee-fc8d-5280-812e-2f0052792b46'::uuid,
  '17f60a9d-3628-5de0-a717-35480b0cc51d'::uuid,
  'Thanks Sofia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0b9796eb-41cc-57f8-b59c-b7fbe345c107'::uuid, '17f60a9d-3628-5de0-a717-35480b0cc51d'::uuid, '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('45bab1f2-5cf2-5ebb-be68-44f7f90cef0b'::uuid, '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid, '17f60a9d-3628-5de0-a717-35480b0cc51d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0319fd4c-a4fa-5b7f-96c9-d99d41b22b42'::uuid, '17f60a9d-3628-5de0-a717-35480b0cc51d'::uuid, '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6c71ffde-c8d2-5f0d-8c7e-a4af8a32c0a5'::uuid, '03d08a86-991b-58ec-aed4-2669d15698ab'::uuid, 'da7ea795-6302-569b-a337-84672894f4df'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6db1d3cd-ae29-58f5-9326-3b11b2945728'::uuid, 'da7ea795-6302-569b-a337-84672894f4df'::uuid, '03d08a86-991b-58ec-aed4-2669d15698ab'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('94d53561-8d3e-5163-a059-7bc29e73e1f3'::uuid, '03d08a86-991b-58ec-aed4-2669d15698ab'::uuid, 'da7ea795-6302-569b-a337-84672894f4df'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '425cfaf7-e45d-50d8-a90b-12e9fd123489'::uuid,
  '94d53561-8d3e-5163-a059-7bc29e73e1f3'::uuid,
  '03d08a86-991b-58ec-aed4-2669d15698ab'::uuid,
  'da7ea795-6302-569b-a337-84672894f4df'::uuid,
  'Hi Violet — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '281d58b2-06ea-5ed2-814a-ae5786e9f44d'::uuid,
  '94d53561-8d3e-5163-a059-7bc29e73e1f3'::uuid,
  'da7ea795-6302-569b-a337-84672894f4df'::uuid,
  '03d08a86-991b-58ec-aed4-2669d15698ab'::uuid,
  'Thanks Kenji! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e64eb5fe-45da-5160-acd8-9cbcce797a9c'::uuid, '99a26567-fc56-5088-8ed4-aaf0cd314f3e'::uuid, 'fa80e08b-c8b0-5154-aed5-9cae634d5c58'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('58c36e94-fbfc-5511-9def-2e0c016e4465'::uuid, 'fa80e08b-c8b0-5154-aed5-9cae634d5c58'::uuid, '99a26567-fc56-5088-8ed4-aaf0cd314f3e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5b7f3805-4102-55df-9c8e-1eb70794afee'::uuid, '99a26567-fc56-5088-8ed4-aaf0cd314f3e'::uuid, 'fa80e08b-c8b0-5154-aed5-9cae634d5c58'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('637073b4-627f-5c96-9b14-cec8993d9927'::uuid, '30b17759-7407-5607-a4e6-182ee0e7047f'::uuid, 'ce49fddb-87e7-5e2a-8fbd-b10ca7c101b4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('701a5b0b-82d4-5573-b3f3-dd563d986e27'::uuid, 'ce49fddb-87e7-5e2a-8fbd-b10ca7c101b4'::uuid, '30b17759-7407-5607-a4e6-182ee0e7047f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('80b0206f-fa7e-54ea-a771-9155a360855d'::uuid, '30b17759-7407-5607-a4e6-182ee0e7047f'::uuid, 'ce49fddb-87e7-5e2a-8fbd-b10ca7c101b4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'bbd45fee-2493-5785-b8f8-f7976121c355'::uuid,
  '80b0206f-fa7e-54ea-a771-9155a360855d'::uuid,
  '30b17759-7407-5607-a4e6-182ee0e7047f'::uuid,
  'ce49fddb-87e7-5e2a-8fbd-b10ca7c101b4'::uuid,
  'Hi Tara — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e7b9a494-9170-56e9-8e48-75405330e939'::uuid,
  '80b0206f-fa7e-54ea-a771-9155a360855d'::uuid,
  'ce49fddb-87e7-5e2a-8fbd-b10ca7c101b4'::uuid,
  '30b17759-7407-5607-a4e6-182ee0e7047f'::uuid,
  'Thanks Kai! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('104bff46-5c0a-517d-915b-ea804e15db70'::uuid, 'eb6564c3-b3de-5c08-8236-eee1ca3d0923'::uuid, '1502bff0-510c-5a05-84fb-941e5b0b0d0c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7097595c-86bf-5b39-9315-6f6bb61302e1'::uuid, '1502bff0-510c-5a05-84fb-941e5b0b0d0c'::uuid, 'eb6564c3-b3de-5c08-8236-eee1ca3d0923'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('04956120-d6f9-52f4-908c-601f4d5be214'::uuid, '1502bff0-510c-5a05-84fb-941e5b0b0d0c'::uuid, 'eb6564c3-b3de-5c08-8236-eee1ca3d0923'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0ce1a963-1c7c-5b72-bc4f-8a629e31553d'::uuid, 'c60358ac-d97a-56dd-9277-fc0ca739aeeb'::uuid, '4d52405a-0515-50a4-98bd-aa73b67454c6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a4044f3d-ca62-55e3-8949-f706dc7a5f99'::uuid, '4d52405a-0515-50a4-98bd-aa73b67454c6'::uuid, 'c60358ac-d97a-56dd-9277-fc0ca739aeeb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('316dec07-6ec0-5b25-a781-335ce415ea57'::uuid, '4d52405a-0515-50a4-98bd-aa73b67454c6'::uuid, 'c60358ac-d97a-56dd-9277-fc0ca739aeeb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b2ef0cd1-0fc1-5a56-8e2f-6093cc11cbbb'::uuid,
  '316dec07-6ec0-5b25-a781-335ce415ea57'::uuid,
  'c60358ac-d97a-56dd-9277-fc0ca739aeeb'::uuid,
  '4d52405a-0515-50a4-98bd-aa73b67454c6'::uuid,
  'Hi Imani — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '10a7e6ca-1b7b-5481-b8f0-9012f4e97314'::uuid,
  '316dec07-6ec0-5b25-a781-335ce415ea57'::uuid,
  '4d52405a-0515-50a4-98bd-aa73b67454c6'::uuid,
  'c60358ac-d97a-56dd-9277-fc0ca739aeeb'::uuid,
  'Thanks Benjamin! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('01859dc1-d5ee-52be-bc17-f7e6a27133ae'::uuid, 'c60358ac-d97a-56dd-9277-fc0ca739aeeb'::uuid, 'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4439fff5-eefc-5776-a5bd-58b45316547f'::uuid, 'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid, 'c60358ac-d97a-56dd-9277-fc0ca739aeeb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('dbc8b864-753a-5ae2-910b-c95e1c74cb6c'::uuid, 'c60358ac-d97a-56dd-9277-fc0ca739aeeb'::uuid, 'df793a8b-bfdb-5279-bdb9-0911c3e88ec3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e67e6b5b-1b8a-5c38-a5b3-8ea4a5ecbc71'::uuid, 'd3f36a02-cd5b-55ce-ad08-55cabb0f2e7b'::uuid, '836980fc-e1b4-537e-960b-d0f74fae417d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c4ca55b2-ba27-53c1-a17b-a22589790f9f'::uuid, '836980fc-e1b4-537e-960b-d0f74fae417d'::uuid, 'd3f36a02-cd5b-55ce-ad08-55cabb0f2e7b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3da6950e-e96e-5b19-800d-ed78c04ae8f3'::uuid, '836980fc-e1b4-537e-960b-d0f74fae417d'::uuid, 'd3f36a02-cd5b-55ce-ad08-55cabb0f2e7b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '07087737-8f85-54c7-9e8b-9914cce7b460'::uuid,
  '3da6950e-e96e-5b19-800d-ed78c04ae8f3'::uuid,
  'd3f36a02-cd5b-55ce-ad08-55cabb0f2e7b'::uuid,
  '836980fc-e1b4-537e-960b-d0f74fae417d'::uuid,
  'Hi Noah — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '804a09a4-41ad-5e0e-9390-c370aac1677a'::uuid,
  '3da6950e-e96e-5b19-800d-ed78c04ae8f3'::uuid,
  '836980fc-e1b4-537e-960b-d0f74fae417d'::uuid,
  'd3f36a02-cd5b-55ce-ad08-55cabb0f2e7b'::uuid,
  'Thanks Ava! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0bd890c0-da2f-5933-9c8f-93463a9f57f9'::uuid, '53500f58-1453-5133-8118-eb17c7a347e0'::uuid, 'ffa55c2e-c6ed-51cc-ad2c-c234fd3474ca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4428cde8-a779-5a29-aca3-bd0201beb2eb'::uuid, 'ffa55c2e-c6ed-51cc-ad2c-c234fd3474ca'::uuid, '53500f58-1453-5133-8118-eb17c7a347e0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('3b3cda56-00ed-5d97-958f-6037cf020739'::uuid, '53500f58-1453-5133-8118-eb17c7a347e0'::uuid, 'ffa55c2e-c6ed-51cc-ad2c-c234fd3474ca'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('247ce1f1-1d8b-50a2-bfb1-e0d16b6108a2'::uuid, 'b9bc161a-f1e9-50c1-93ea-4e1ffb4f3b45'::uuid, 'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b3c3ab05-1941-5d00-aeef-f5557a22a457'::uuid, 'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid, 'b9bc161a-f1e9-50c1-93ea-4e1ffb4f3b45'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5b3e8cee-854d-5ee0-90f3-3102be6b9125'::uuid, 'b9bc161a-f1e9-50c1-93ea-4e1ffb4f3b45'::uuid, 'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4bf22318-7a51-53d7-bc8a-6d6a6a482c03'::uuid,
  '5b3e8cee-854d-5ee0-90f3-3102be6b9125'::uuid,
  'b9bc161a-f1e9-50c1-93ea-4e1ffb4f3b45'::uuid,
  'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid,
  'Hi Ethan — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '91e5f515-0f32-528d-a0dd-1b7a2b21af89'::uuid,
  '5b3e8cee-854d-5ee0-90f3-3102be6b9125'::uuid,
  'c3ce5ee7-3f77-57cf-8be8-db1dba2ded19'::uuid,
  'b9bc161a-f1e9-50c1-93ea-4e1ffb4f3b45'::uuid,
  'Thanks Amina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e196b5df-dc95-5dc2-b7df-8127290d6453'::uuid, '615aae5c-381c-5bcd-83c3-76cecc3fb911'::uuid, '3d45d675-a875-5470-942c-38b3923c1d12'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('acd08c64-614d-5374-b116-8bcc2c9bb282'::uuid, '3d45d675-a875-5470-942c-38b3923c1d12'::uuid, '615aae5c-381c-5bcd-83c3-76cecc3fb911'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('840a2af1-5bdb-5731-9c4c-f720fc7a8e03'::uuid, '3d45d675-a875-5470-942c-38b3923c1d12'::uuid, '615aae5c-381c-5bcd-83c3-76cecc3fb911'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c563c50e-c0a2-56b1-a312-e7c8c104eb7e'::uuid, 'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid, '8446497b-9183-5777-853d-340063eca952'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a3b4633f-f389-555f-844d-869082f85fff'::uuid, '8446497b-9183-5777-853d-340063eca952'::uuid, 'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('09c178a2-b578-5fca-a4d5-afc7e5e48969'::uuid, '8446497b-9183-5777-853d-340063eca952'::uuid, 'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '92011da2-a611-54dd-a64e-6081ab49788f'::uuid,
  '09c178a2-b578-5fca-a4d5-afc7e5e48969'::uuid,
  'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid,
  '8446497b-9183-5777-853d-340063eca952'::uuid,
  'Hi Caleb — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '01de5929-c9a3-51b4-9ca3-8e6cfd10a6d7'::uuid,
  '09c178a2-b578-5fca-a4d5-afc7e5e48969'::uuid,
  '8446497b-9183-5777-853d-340063eca952'::uuid,
  'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid,
  'Thanks Hannah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e27197a4-e5c2-504a-9b76-ee8a58331cfb'::uuid, 'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid, '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('33b7ba3a-d036-50ca-b18c-20980983ac3b'::uuid, '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid, 'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('73f8e62f-24ce-596f-8040-7a9ef0ceb884'::uuid, '580ae99f-3b88-5508-b4a3-87234df7c252'::uuid, 'e5008ea4-2ce6-5f16-bc8d-7201e3ed6d46'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b6e92f06-39d2-5490-a059-d31f91f43fe9'::uuid, '6d947ae2-d338-5a25-a719-fc615fbecd70'::uuid, '6facfbeb-f04c-54d5-b408-9e8c94854c76'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d0846915-8c4f-55da-8f55-51e202d12577'::uuid, '6facfbeb-f04c-54d5-b408-9e8c94854c76'::uuid, '6d947ae2-d338-5a25-a719-fc615fbecd70'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('836c3c54-b2a5-5381-b738-7fb1a70284c9'::uuid, '6d947ae2-d338-5a25-a719-fc615fbecd70'::uuid, '6facfbeb-f04c-54d5-b408-9e8c94854c76'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd7441285-125c-5d9a-b7d3-77510a105225'::uuid,
  '836c3c54-b2a5-5381-b738-7fb1a70284c9'::uuid,
  '6d947ae2-d338-5a25-a719-fc615fbecd70'::uuid,
  '6facfbeb-f04c-54d5-b408-9e8c94854c76'::uuid,
  'Hi Sana — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6b46bf61-a9e2-579b-9b7a-33a61cc7f468'::uuid,
  '836c3c54-b2a5-5381-b738-7fb1a70284c9'::uuid,
  '6facfbeb-f04c-54d5-b408-9e8c94854c76'::uuid,
  '6d947ae2-d338-5a25-a719-fc615fbecd70'::uuid,
  'Thanks Julian! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fe558ef7-2730-5c29-9eb3-c96a7765a1c3'::uuid, '4c408ffd-f61b-5dd9-88bf-5a5065140dbf'::uuid, 'b9db1144-db8a-57a8-8052-2191f1cc14b1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('30fe7b3f-d45c-5ed8-ba82-ac208dddc97a'::uuid, 'b9db1144-db8a-57a8-8052-2191f1cc14b1'::uuid, '4c408ffd-f61b-5dd9-88bf-5a5065140dbf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fa505dcd-a927-5f68-b95c-54d76dab1bb4'::uuid, '4c408ffd-f61b-5dd9-88bf-5a5065140dbf'::uuid, 'b9db1144-db8a-57a8-8052-2191f1cc14b1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7e7c9339-63ad-56b1-92e9-609c4825a7bb'::uuid, '33aec7f2-5690-57b3-9664-6aebc7b43952'::uuid, 'cf4638c0-452a-5dc7-8b92-3d8a0fec4fbc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2350b015-f913-5f64-9c0a-018e70230436'::uuid, 'cf4638c0-452a-5dc7-8b92-3d8a0fec4fbc'::uuid, '33aec7f2-5690-57b3-9664-6aebc7b43952'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4f37ba26-42c3-50eb-8dc3-1647f7340629'::uuid, '33aec7f2-5690-57b3-9664-6aebc7b43952'::uuid, 'cf4638c0-452a-5dc7-8b92-3d8a0fec4fbc'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c3333255-bffa-5b69-b82c-320e460d1702'::uuid,
  '4f37ba26-42c3-50eb-8dc3-1647f7340629'::uuid,
  '33aec7f2-5690-57b3-9664-6aebc7b43952'::uuid,
  'cf4638c0-452a-5dc7-8b92-3d8a0fec4fbc'::uuid,
  'Hi Hana — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0fc169a6-0d93-5001-a662-b9e2117e3f22'::uuid,
  '4f37ba26-42c3-50eb-8dc3-1647f7340629'::uuid,
  'cf4638c0-452a-5dc7-8b92-3d8a0fec4fbc'::uuid,
  '33aec7f2-5690-57b3-9664-6aebc7b43952'::uuid,
  'Thanks Isaac! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('72a7aed2-9858-55ca-9eaa-95c890e870c5'::uuid, '3dd86691-9e6d-5f95-b08a-8f29f3faa19d'::uuid, '4aa67be5-efe7-5b07-bb83-6bb1bccd92d4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6053b3f7-7fb5-5e6a-8795-5c560ba9ec5e'::uuid, '4aa67be5-efe7-5b07-bb83-6bb1bccd92d4'::uuid, '3dd86691-9e6d-5f95-b08a-8f29f3faa19d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cea47b01-19bb-57f0-81a3-d38cfd2033b4'::uuid, '3dd86691-9e6d-5f95-b08a-8f29f3faa19d'::uuid, '4aa67be5-efe7-5b07-bb83-6bb1bccd92d4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2bcf90d0-e30c-591a-a969-f256149d0891'::uuid, '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid, '3be3c9dc-0d8f-57c9-9151-cd22c9e93832'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d3ecb2c2-33dc-5cef-b521-cdd2724e9522'::uuid, '3be3c9dc-0d8f-57c9-9151-cd22c9e93832'::uuid, '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e574bd2c-181e-5e69-b6b6-83c377861c09'::uuid, '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid, '3be3c9dc-0d8f-57c9-9151-cd22c9e93832'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3dfd705b-c9a8-5005-99a8-a460c494fd1c'::uuid,
  'e574bd2c-181e-5e69-b6b6-83c377861c09'::uuid,
  '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid,
  '3be3c9dc-0d8f-57c9-9151-cd22c9e93832'::uuid,
  'Hi Elena — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c3121ab0-9fda-57ff-9e0b-986355e16cfa'::uuid,
  'e574bd2c-181e-5e69-b6b6-83c377861c09'::uuid,
  '3be3c9dc-0d8f-57c9-9151-cd22c9e93832'::uuid,
  '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid,
  'Thanks Felix! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a7b799f2-6378-547d-9c81-47781282adf5'::uuid, '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid, '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('93e9c397-68ac-5235-84a7-d144ab6a132b'::uuid, '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid, '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7c1f503b-94fc-5a89-a5c6-a65908636cb1'::uuid, '2e06c098-e31b-5980-880d-4e4fd374ceaf'::uuid, '9fca4480-5d97-582c-b0f2-6e551a2fd883'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ac9d9d7b-b36a-560d-9108-fea75c6c8152'::uuid, 'a09224b4-4489-5f26-acc8-6d59bf83ca40'::uuid, '2ca79558-c191-5270-98b0-9bae849e53c8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('68b8a1d1-1643-5a52-96e5-50c5332a7965'::uuid, '2ca79558-c191-5270-98b0-9bae849e53c8'::uuid, 'a09224b4-4489-5f26-acc8-6d59bf83ca40'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('cd776cef-a6a1-5ce5-a7e0-5b1604dbce2b'::uuid, '2ca79558-c191-5270-98b0-9bae849e53c8'::uuid, 'a09224b4-4489-5f26-acc8-6d59bf83ca40'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ee531e1e-4a3b-5aed-9dab-5c618e405631'::uuid,
  'cd776cef-a6a1-5ce5-a7e0-5b1604dbce2b'::uuid,
  'a09224b4-4489-5f26-acc8-6d59bf83ca40'::uuid,
  '2ca79558-c191-5270-98b0-9bae849e53c8'::uuid,
  'Hi Rohan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4da0a756-44dd-5f88-8cb2-750c551dbfa4'::uuid,
  'cd776cef-a6a1-5ce5-a7e0-5b1604dbce2b'::uuid,
  '2ca79558-c191-5270-98b0-9bae849e53c8'::uuid,
  'a09224b4-4489-5f26-acc8-6d59bf83ca40'::uuid,
  'Thanks Sara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2f942e83-7a1e-5df5-9883-2c8d6f83d9db'::uuid, '1fd23b49-1f61-56f1-87d2-a4baac0eff85'::uuid, '93dc5596-9d0e-58a4-b02f-69457ebd4204'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('57f9929e-0053-5eb1-b7c0-66456d46b93b'::uuid, '93dc5596-9d0e-58a4-b02f-69457ebd4204'::uuid, '1fd23b49-1f61-56f1-87d2-a4baac0eff85'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f1a2f0c3-4da3-549c-8030-e69754ed2f32'::uuid, '1fd23b49-1f61-56f1-87d2-a4baac0eff85'::uuid, '93dc5596-9d0e-58a4-b02f-69457ebd4204'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('87469b6f-7ff3-58f4-b385-7e8c754a86e3'::uuid, '22f392fb-623b-5e10-9abd-4e1da0ed6aa7'::uuid, 'a2fe8640-49fd-523e-8579-25086c7dbece'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('91ce32df-21d2-5bd4-9c59-b13f649c2141'::uuid, 'a2fe8640-49fd-523e-8579-25086c7dbece'::uuid, '22f392fb-623b-5e10-9abd-4e1da0ed6aa7'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('421e6039-a332-5069-a03f-8e803a6d85b5'::uuid, '22f392fb-623b-5e10-9abd-4e1da0ed6aa7'::uuid, 'a2fe8640-49fd-523e-8579-25086c7dbece'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3ad42ff2-a94b-5a4f-9bcc-908c08632a4a'::uuid,
  '421e6039-a332-5069-a03f-8e803a6d85b5'::uuid,
  '22f392fb-623b-5e10-9abd-4e1da0ed6aa7'::uuid,
  'a2fe8640-49fd-523e-8579-25086c7dbece'::uuid,
  'Hi Samir — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0d3c1ed2-4169-5037-aa45-7abd1e4a8f4d'::uuid,
  '421e6039-a332-5069-a03f-8e803a6d85b5'::uuid,
  'a2fe8640-49fd-523e-8579-25086c7dbece'::uuid,
  '22f392fb-623b-5e10-9abd-4e1da0ed6aa7'::uuid,
  'Thanks Grace! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3f4e66b1-0a12-5b25-8425-c2480c0dc6c2'::uuid, '15eaa3ae-24eb-57ee-bc4c-1401230faa23'::uuid, 'b806090a-a7a9-5442-95f8-b0f3a4bcbe13'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('29636403-2954-5706-9a29-7db838818ac0'::uuid, 'b806090a-a7a9-5442-95f8-b0f3a4bcbe13'::uuid, '15eaa3ae-24eb-57ee-bc4c-1401230faa23'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f28d744d-0574-57af-9e33-585f316ef80e'::uuid, '15eaa3ae-24eb-57ee-bc4c-1401230faa23'::uuid, 'b806090a-a7a9-5442-95f8-b0f3a4bcbe13'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2b1e3808-6c97-5321-a78b-6826bfffd67b'::uuid, '3be530d6-9f24-5f93-978c-7010f5821a79'::uuid, '585cd420-b530-5bba-8219-1713b623a65f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('448136c4-c2dd-58ae-9056-f589b984e937'::uuid, '585cd420-b530-5bba-8219-1713b623a65f'::uuid, '3be530d6-9f24-5f93-978c-7010f5821a79'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2384c9cd-8dd1-5425-b630-c15b023aff46'::uuid, '3be530d6-9f24-5f93-978c-7010f5821a79'::uuid, '585cd420-b530-5bba-8219-1713b623a65f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '9dfb5365-7f70-5a1f-88f7-07d592610421'::uuid,
  '2384c9cd-8dd1-5425-b630-c15b023aff46'::uuid,
  '3be530d6-9f24-5f93-978c-7010f5821a79'::uuid,
  '585cd420-b530-5bba-8219-1713b623a65f'::uuid,
  'Hi Daniel — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '050ac6f3-d28e-5052-8ffa-13bd3c0385fa'::uuid,
  '2384c9cd-8dd1-5425-b630-c15b023aff46'::uuid,
  '585cd420-b530-5bba-8219-1713b623a65f'::uuid,
  '3be530d6-9f24-5f93-978c-7010f5821a79'::uuid,
  'Thanks Isla! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('c79d2f12-dfce-59c1-abdf-dcea4795a71c'::uuid, '3be530d6-9f24-5f93-978c-7010f5821a79'::uuid, '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('944238d2-4f70-5812-8ead-87c12cd351dc'::uuid, '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid, '3be530d6-9f24-5f93-978c-7010f5821a79'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f41c5bf8-ccca-5a59-aea3-9ec52643fa87'::uuid, '3be530d6-9f24-5f93-978c-7010f5821a79'::uuid, '99b95750-e984-51a8-a79e-61dd17b7bfc8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5ccb1c44-fc51-5e3b-8282-e22ccc9075dd'::uuid, '8b6b1fce-29fe-5268-ab56-fe53e689e098'::uuid, '89c35658-db6b-5653-9f13-5b06eb97b083'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5a596279-16ee-53d0-ac49-eb171b7a7bc9'::uuid, '89c35658-db6b-5653-9f13-5b06eb97b083'::uuid, '8b6b1fce-29fe-5268-ab56-fe53e689e098'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7c872d02-5086-5dd3-ade4-1ccfd7f075b5'::uuid, '89c35658-db6b-5653-9f13-5b06eb97b083'::uuid, '8b6b1fce-29fe-5268-ab56-fe53e689e098'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '24637805-7fd0-5ad4-be74-27cc4a878643'::uuid,
  '7c872d02-5086-5dd3-ade4-1ccfd7f075b5'::uuid,
  '8b6b1fce-29fe-5268-ab56-fe53e689e098'::uuid,
  '89c35658-db6b-5653-9f13-5b06eb97b083'::uuid,
  'Hi Nina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6f0fbe0f-717e-5b1d-8e2e-1f4c4a875ee0'::uuid,
  '7c872d02-5086-5dd3-ade4-1ccfd7f075b5'::uuid,
  '89c35658-db6b-5653-9f13-5b06eb97b083'::uuid,
  '8b6b1fce-29fe-5268-ab56-fe53e689e098'::uuid,
  'Thanks Theo! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ddeb6db8-f728-5407-8769-65ad9c79cbaf'::uuid, 'c8f46057-70bf-5ff9-b0da-9eed0f520276'::uuid, 'f58278d0-dea2-500a-8a2c-483101aa7a1f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d7b0eeb9-2bc7-54cb-978c-7339a7379320'::uuid, 'f58278d0-dea2-500a-8a2c-483101aa7a1f'::uuid, 'c8f46057-70bf-5ff9-b0da-9eed0f520276'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ea26081a-ffc1-5af5-8051-822e9a43d2f9'::uuid, 'c8f46057-70bf-5ff9-b0da-9eed0f520276'::uuid, 'f58278d0-dea2-500a-8a2c-483101aa7a1f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('00d90528-9562-5891-b671-895509aed2b0'::uuid, '16b2384b-ad24-51a7-ae2c-7800b9497576'::uuid, '9d87b909-0e3e-5c0d-88a5-915116a56e2f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b693dc0a-7d00-553f-9533-3ccb595c3917'::uuid, '9d87b909-0e3e-5c0d-88a5-915116a56e2f'::uuid, '16b2384b-ad24-51a7-ae2c-7800b9497576'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ec09c1e5-8101-525e-a1e8-6496b6679180'::uuid, '16b2384b-ad24-51a7-ae2c-7800b9497576'::uuid, '9d87b909-0e3e-5c0d-88a5-915116a56e2f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '308fab4f-29e8-5dbf-aa5e-0804ef09fa4f'::uuid,
  'ec09c1e5-8101-525e-a1e8-6496b6679180'::uuid,
  '16b2384b-ad24-51a7-ae2c-7800b9497576'::uuid,
  '9d87b909-0e3e-5c0d-88a5-915116a56e2f'::uuid,
  'Hi Sofia — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f38fb5a0-0852-5c05-84a0-d50fabbe0675'::uuid,
  'ec09c1e5-8101-525e-a1e8-6496b6679180'::uuid,
  '9d87b909-0e3e-5c0d-88a5-915116a56e2f'::uuid,
  '16b2384b-ad24-51a7-ae2c-7800b9497576'::uuid,
  'Thanks Lucas! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e738a2d2-57e9-5eea-baa7-d219e699e335'::uuid, '20d3a7aa-cc87-54a7-afae-68bf76bf1481'::uuid, 'a901d64a-c165-5007-b311-05725dddb634'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8a183057-c223-503d-b0c0-0df32b70dd09'::uuid, 'a901d64a-c165-5007-b311-05725dddb634'::uuid, '20d3a7aa-cc87-54a7-afae-68bf76bf1481'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f5cee623-629f-540c-8cf8-3288b2754ee0'::uuid, '20d3a7aa-cc87-54a7-afae-68bf76bf1481'::uuid, 'a901d64a-c165-5007-b311-05725dddb634'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('21625f2c-3d8d-595a-bb8d-b6f8beedb199'::uuid, '2d53ff6e-fd3e-592f-9980-b77dd45f7025'::uuid, '185d66cf-e3cb-5baf-ad04-ce637ae86a78'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d8dec72c-b32e-5bcf-ae58-1466ed92eb51'::uuid, '185d66cf-e3cb-5baf-ad04-ce637ae86a78'::uuid, '2d53ff6e-fd3e-592f-9980-b77dd45f7025'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ebddd7a6-396f-5da6-b0bc-ca278edbcbaf'::uuid, '185d66cf-e3cb-5baf-ad04-ce637ae86a78'::uuid, '2d53ff6e-fd3e-592f-9980-b77dd45f7025'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '406e0c96-2b40-5365-8875-9778a71e0eab'::uuid,
  'ebddd7a6-396f-5da6-b0bc-ca278edbcbaf'::uuid,
  '2d53ff6e-fd3e-592f-9980-b77dd45f7025'::uuid,
  '185d66cf-e3cb-5baf-ad04-ce637ae86a78'::uuid,
  'Hi Zara — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f300fdee-f393-56d9-8c1e-8110ab3d89bf'::uuid,
  'ebddd7a6-396f-5da6-b0bc-ca278edbcbaf'::uuid,
  '185d66cf-e3cb-5baf-ad04-ce637ae86a78'::uuid,
  '2d53ff6e-fd3e-592f-9980-b77dd45f7025'::uuid,
  'Thanks David! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d7613681-c856-5942-98c2-38ce491aff2d'::uuid, '2d53ff6e-fd3e-592f-9980-b77dd45f7025'::uuid, 'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('79c74916-ec88-580b-ab42-5b21da7cbc8c'::uuid, 'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid, '2d53ff6e-fd3e-592f-9980-b77dd45f7025'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4fc94abf-f46c-5031-aad6-90ab81219933'::uuid, '2d53ff6e-fd3e-592f-9980-b77dd45f7025'::uuid, 'b44be18a-5c2b-51eb-ad8d-a3209dd5bf61'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0752da8d-e27b-535c-ae92-d8af69275cd3'::uuid, '728e8630-512a-51eb-9316-3e71371d2478'::uuid, '8aca80a1-1bf4-595b-a19b-2a176926b1d1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

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

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3ad4e44b-79a9-5d33-bb77-25d2d1a25c1d'::uuid, 'b71701ff-0ccc-5cb3-96ca-f0002bc3c753'::uuid, '90d41892-fb72-5023-9fe0-b787e8a2401c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f053d221-1666-5ef3-8d8c-b8805d1af2b3'::uuid, '90d41892-fb72-5023-9fe0-b787e8a2401c'::uuid, 'b71701ff-0ccc-5cb3-96ca-f0002bc3c753'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7d891faa-628f-56c3-8f35-3072e8569317'::uuid,
  'f053d221-1666-5ef3-8d8c-b8805d1af2b3'::uuid,
  '90d41892-fb72-5023-9fe0-b787e8a2401c'::uuid,
  'b71701ff-0ccc-5cb3-96ca-f0002bc3c753'::uuid,
  'Hi Nora — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;
