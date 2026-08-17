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