INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('88c8e96a-43bd-5e08-a5a0-99dbe0fbf388'::uuid, '1b70bae1-1102-5059-84fb-4d69136b5032'::uuid, '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('37257138-a008-5c77-9f87-4abc170cadfe'::uuid, '1b70bae1-1102-5059-84fb-4d69136b5032'::uuid, '7d423b06-d535-5871-ace9-41c2e74afcf3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('65f5a3c6-23af-554e-b25a-dd0d035ac53c'::uuid, '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid, '4e11607f-ef7e-5682-8c99-50cc32c882c8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a6367394-11e7-52f7-ae6e-539b9a00f8ac'::uuid, '4e11607f-ef7e-5682-8c99-50cc32c882c8'::uuid, '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6606aea3-cafc-5730-adb4-c170c596ac5d'::uuid, '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid, '4e11607f-ef7e-5682-8c99-50cc32c882c8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '20703bb4-58dd-5b7f-8fd6-208c35f7ce93'::uuid,
  '6606aea3-cafc-5730-adb4-c170c596ac5d'::uuid,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  '4e11607f-ef7e-5682-8c99-50cc32c882c8'::uuid,
  'Hi Lucas — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5e1cf5d7-7dc5-5028-bc9e-3739bf103d9a'::uuid,
  '6606aea3-cafc-5730-adb4-c170c596ac5d'::uuid,
  '4e11607f-ef7e-5682-8c99-50cc32c882c8'::uuid,
  '0bbe96ba-9491-5ed6-b11e-242435627659'::uuid,
  'Thanks Leila! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3f43d965-0196-5ac7-a747-76ecb40741f7'::uuid, 'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid, '1ab26a18-9f1d-5d13-b635-8e7bfec05e0e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('91865f4f-de18-5c3f-965b-d43b486662a0'::uuid, '1ab26a18-9f1d-5d13-b635-8e7bfec05e0e'::uuid, 'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('7c205097-49ef-54c1-b7d8-28d24b81571a'::uuid, '1ab26a18-9f1d-5d13-b635-8e7bfec05e0e'::uuid, 'd15aeece-2666-53ef-84fa-796fcea941ac'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b9b49f74-a46d-5a42-8dc5-5db8b469ba76'::uuid, 'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid, '80bfdd09-8531-533c-aa94-5cdf0372995d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ab67ec7b-3276-5b4a-98f4-9758e5ebf9a3'::uuid, '80bfdd09-8531-533c-aa94-5cdf0372995d'::uuid, 'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f3aee2d2-214a-5e62-9753-5e0a8d367de1'::uuid, '80bfdd09-8531-533c-aa94-5cdf0372995d'::uuid, 'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f556ae32-b5a4-5885-b9ef-62277b6d91a6'::uuid,
  'f3aee2d2-214a-5e62-9753-5e0a8d367de1'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  '80bfdd09-8531-533c-aa94-5cdf0372995d'::uuid,
  'Hi David — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'f29588d8-a565-5a6e-8762-599d295cf875'::uuid,
  'f3aee2d2-214a-5e62-9753-5e0a8d367de1'::uuid,
  '80bfdd09-8531-533c-aa94-5cdf0372995d'::uuid,
  'a9d11e5e-de4e-5d12-a4ef-68caad1fa6e6'::uuid,
  'Thanks Sana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5b601139-38aa-54f2-95b2-4a4aa32e6e7f'::uuid, 'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid, '32cf71fe-60c4-5273-8a0b-09ee4e6bfff9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('773fe1a4-9d3a-51cd-bf35-18a7bfc3ebeb'::uuid, '32cf71fe-60c4-5273-8a0b-09ee4e6bfff9'::uuid, 'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8375f747-0153-5941-99d0-21a3d94d654d'::uuid, '32cf71fe-60c4-5273-8a0b-09ee4e6bfff9'::uuid, 'd63b4a07-16a6-5aaf-a424-19eeb32de742'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('62ce505e-5ed6-5990-b64e-b0da12be85fd'::uuid, '6510f451-b055-5a67-b046-c091af0bfceb'::uuid, 'f2ef0fef-2844-5e39-a9d9-6622ac5587fb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ef70b9f8-95e4-59dc-889b-3d66406d4f3d'::uuid, 'f2ef0fef-2844-5e39-a9d9-6622ac5587fb'::uuid, '6510f451-b055-5a67-b046-c091af0bfceb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b4f2f9ed-164c-5fba-b49e-b7ac2939cc4d'::uuid, '6510f451-b055-5a67-b046-c091af0bfceb'::uuid, 'f2ef0fef-2844-5e39-a9d9-6622ac5587fb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '173c0d80-e2f9-52ee-b652-1bf5f0b7b7fa'::uuid,
  'b4f2f9ed-164c-5fba-b49e-b7ac2939cc4d'::uuid,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  'f2ef0fef-2844-5e39-a9d9-6622ac5587fb'::uuid,
  'Hi Diego — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '03f5a70f-3936-55f3-8833-573d50e76c8d'::uuid,
  'b4f2f9ed-164c-5fba-b49e-b7ac2939cc4d'::uuid,
  'f2ef0fef-2844-5e39-a9d9-6622ac5587fb'::uuid,
  '6510f451-b055-5a67-b046-c091af0bfceb'::uuid,
  'Thanks Hana! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a58ed9de-c61c-58fb-a590-39cfc2f01c8d'::uuid, '6510f451-b055-5a67-b046-c091af0bfceb'::uuid, 'd16fc742-2b87-5693-8c11-a7f8b926a752'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d8757e67-f7c0-5150-a8c7-898e47eaefd9'::uuid, 'd16fc742-2b87-5693-8c11-a7f8b926a752'::uuid, '6510f451-b055-5a67-b046-c091af0bfceb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('17c92896-c0ff-5944-b7d3-dda89a848fc7'::uuid, '6510f451-b055-5a67-b046-c091af0bfceb'::uuid, 'd16fc742-2b87-5693-8c11-a7f8b926a752'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('63b3980c-aab4-5221-8186-a49cddaf21d7'::uuid, '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid, '370327fd-3558-57cf-8945-bc80d916c857'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('22242a32-69e7-5d7e-8a76-5830d65b8762'::uuid, '370327fd-3558-57cf-8945-bc80d916c857'::uuid, '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('202c4594-97fb-5e00-80fa-53d7ba2fd4f4'::uuid, '370327fd-3558-57cf-8945-bc80d916c857'::uuid, '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '4547183f-099a-594f-919e-b57defe34415'::uuid,
  '202c4594-97fb-5e00-80fa-53d7ba2fd4f4'::uuid,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  '370327fd-3558-57cf-8945-bc80d916c857'::uuid,
  'Hi Nadia — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'eb093fe6-4a8e-57db-9b3a-73e8b2313619'::uuid,
  '202c4594-97fb-5e00-80fa-53d7ba2fd4f4'::uuid,
  '370327fd-3558-57cf-8945-bc80d916c857'::uuid,
  '82460b63-ab6d-5495-b1e4-7276302ad4b6'::uuid,
  'Thanks Maya! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2b9b462b-290c-563e-bcfd-ef0b5b41412e'::uuid, '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid, 'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('78e4f2d6-8a3e-5607-9c3d-d505afa09955'::uuid, 'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid, '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6ae236cf-0d11-502f-9834-77c243bd648c'::uuid, '7f42567e-4516-5320-b4de-fa1b0fcdb83b'::uuid, 'ede28df5-d66a-5de1-b3d0-5a6905607b18'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e4c683fc-62af-50ab-9206-8d499e363282'::uuid, 'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid, 'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('8be5553d-451a-51d7-a3db-a3bce804c1b1'::uuid, 'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid, 'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9fab9fe9-2ca4-56bf-8e09-14aeb361c180'::uuid, 'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid, 'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c76721dd-68c1-5ffb-bdf8-8e563ad71ff3'::uuid,
  '9fab9fe9-2ca4-56bf-8e09-14aeb361c180'::uuid,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid,
  'Hi Mei — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c9094bb6-d853-57c3-9843-6105e85a53fa'::uuid,
  '9fab9fe9-2ca4-56bf-8e09-14aeb361c180'::uuid,
  'a9c303e2-1035-5ce0-84f9-c6e3951e28e5'::uuid,
  'c776d122-b5ca-5db6-b52b-f86bdf39ecdc'::uuid,
  'Thanks Rohan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('02920525-44eb-57a3-bbfa-a4360f668f5a'::uuid, '56f8439d-f665-534b-a3ed-49809023f629'::uuid, 'f5dc3012-e809-5818-9e73-bf363bc87587'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;