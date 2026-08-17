INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2e9f5bb6-501a-5345-a7b3-fe83690c42ee'::uuid,
  '00a00f59-9439-5446-9d80-ba5013872f59'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  'Hi Tara — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cf86ba48-8e6d-59cd-98ab-4a1b131119b0'::uuid,
  '00a00f59-9439-5446-9d80-ba5013872f59'::uuid,
  'b46ba655-d46a-5881-bcdb-12ef339ea9ed'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  'Thanks Kai! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cc0240d8-ffd0-547e-b70c-946b3bf97c4e'::uuid, 'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid, 'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7f2d4c00-bebe-571d-ae5a-5dc5717bee25'::uuid, '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid, 'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6a0080a2-300b-55c7-8a8c-071d2dd51c9f'::uuid, 'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid, '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('132718e1-5198-5525-8d03-cf5c6d36e874'::uuid, '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid, 'a0287439-3f10-5c9b-ba3d-e61900b5b645'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('00b81d71-f178-5588-a87a-c4d7969bc729'::uuid, '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid, '9854d497-ac03-578d-95e5-3cdae50909a9'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('da7d9a80-73b1-546d-844c-026cff16ea5b'::uuid, '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid, '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6b8eaefa-f2b7-5362-9c0a-d9a14da126cd'::uuid, '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid, '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9072cf5f-a997-5013-973f-a44ec17247e3'::uuid, '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid, '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'da6fa630-f7f7-5266-b7a9-331d870f45c8'::uuid,
  '9072cf5f-a997-5013-973f-a44ec17247e3'::uuid,
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  'Hi Imani — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a86d60e7-05c2-5f47-88bc-42daf4bb8bdc'::uuid,
  '9072cf5f-a997-5013-973f-a44ec17247e3'::uuid,
  '0eeafb98-2d89-5efc-8741-38e06bfbe82a'::uuid,
  '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid,
  'Thanks Benjamin! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9c2c4c02-04b3-575a-8e24-666db5c87067'::uuid, '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid, 'f7d3bba5-3aee-58bf-94fe-011c7853e82d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('93118acf-0807-5aa6-ae2d-ecd151f61200'::uuid, 'f7d3bba5-3aee-58bf-94fe-011c7853e82d'::uuid, '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('682fca0d-dfc6-5c8c-9d6a-911029e6d07f'::uuid, '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid, 'f7d3bba5-3aee-58bf-94fe-011c7853e82d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('35497a6f-8d01-5dd7-a3f6-57b432e760ef'::uuid, '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid, '6bd68129-2ff5-5200-a817-861e1d790a75'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('efb22755-832c-5504-88eb-62d2bbfb9161'::uuid, '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid, '943b1eab-1775-54ca-a17c-f0920547e262'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9d986441-3817-56ab-ba1c-c4ff6f585fb5'::uuid, '943b1eab-1775-54ca-a17c-f0920547e262'::uuid, '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('374f9d5a-fba3-53ac-af9f-f8eca42c21d6'::uuid, '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid, '943b1eab-1775-54ca-a17c-f0920547e262'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '596f28c3-0f76-5cb0-a3e2-d671dbb18ff2'::uuid,
  '374f9d5a-fba3-53ac-af9f-f8eca42c21d6'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  'Hi Noah — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'fb598c2d-91cd-50d0-8c0d-23dbdeb45825'::uuid,
  '374f9d5a-fba3-53ac-af9f-f8eca42c21d6'::uuid,
  '943b1eab-1775-54ca-a17c-f0920547e262'::uuid,
  '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid,
  'Thanks Ava! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9695c376-390d-5cee-9ec7-e6ff8ca829a1'::uuid, '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid, '21147e8d-26d7-519f-8755-eaa13e0d317d'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('be203067-e26f-5cc5-aeac-88b61666e1bd'::uuid, 'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid, 'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('785bfe53-dcd0-56cf-a38b-67b406f2e759'::uuid, 'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid, 'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('29f55244-7881-53c6-b35f-e531c2838229'::uuid, 'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid, 'ea75494b-778d-5b9d-adec-10e899cbe58b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('23bbbe97-9061-5fcb-aa00-4029d3908cec'::uuid, '8cbf2f75-0135-5d9b-9c26-f61b4f77782f'::uuid, 'b5973822-f42d-58a6-a6e9-2bf9be95b40c'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e30b32f4-f3a0-52bf-af31-1422fc09a907'::uuid, 'cf10333a-2152-5178-8468-d28b33af4122'::uuid, '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f3521696-5f58-57c3-ba5e-d0811cac3320'::uuid, '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid, 'cf10333a-2152-5178-8468-d28b33af4122'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('34d7c0b2-b773-5f09-aa55-b3b4423b6861'::uuid, '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid, 'cf10333a-2152-5178-8468-d28b33af4122'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '31bb0705-e6fc-5845-bfe3-fda36caf473d'::uuid,
  '34d7c0b2-b773-5f09-aa55-b3b4423b6861'::uuid,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  'Hi Ethan — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '36d062bf-c72e-5071-8f0d-bf7352026e9d'::uuid,
  '34d7c0b2-b773-5f09-aa55-b3b4423b6861'::uuid,
  '2360b72e-5c53-5e7f-ace7-f7fac219aa51'::uuid,
  'cf10333a-2152-5178-8468-d28b33af4122'::uuid,
  'Thanks Amina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('66f9265a-e755-5ee3-98c3-9a10d2fb1085'::uuid, '22314fa6-d17d-5a1e-a28f-5cbbad329bbd'::uuid, 'cf10333a-2152-5178-8468-d28b33af4122'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5da15656-b1a8-53ab-aec6-2af59cf3d194'::uuid, 'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid, '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2a5df3a7-2fb7-5507-86bf-c398fa07ca3a'::uuid, '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid, 'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e7d7c33e-7282-5f8a-b7a6-3a2db43891be'::uuid, '208248a0-3e51-5290-a619-d99fe0b447c4'::uuid, 'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('892211dd-f3a5-52a5-93d9-b43995ea6bf3'::uuid, 'dfe0bb20-7e45-5dff-94cd-eb73fd866caf'::uuid, 'e9fba451-c2fd-5da4-a9b4-2a31b71b17b9'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ae0722e0-ab33-5216-99f0-fb746418fe8b'::uuid, 'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid, '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('4d7638c1-bb7a-5cf7-a3f1-b317eff6662c'::uuid, '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid, 'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a0af273f-c5f6-51c9-9b48-35bbd50e7637'::uuid, '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid, 'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '43f3b5e9-b437-5bf1-b5ad-27e272b7b30e'::uuid,
  'a0af273f-c5f6-51c9-9b48-35bbd50e7637'::uuid,
  'e10d2d9b-c233-566a-ac41-e6d4e471093c'::uuid,
  '0074bf92-b52b-5be5-a22e-1da8b5d4723e'::uuid,
  'Hi Caleb — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;