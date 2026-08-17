INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5adc6f09-0e41-5ce2-9192-b7583bc0e916'::uuid,
  '751c9df3-13cf-5513-8aec-b448118f41e7'::uuid,
  'e10d8f3c-3339-5b7c-aab1-cb38fa334cb4'::uuid,
  '22f028f3-fbcf-5382-8812-8aab906ff016'::uuid,
  'Thanks Julian! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b8965378-9e44-54ee-86aa-14e3d69209fa'::uuid, '96571827-6ea6-5c4e-919e-3571e4d1410e'::uuid, '2619904e-3b06-54b6-bb0f-ea16e3de5f6d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9350beb8-12e5-5f4f-ab88-4dfd09855efb'::uuid, '2619904e-3b06-54b6-bb0f-ea16e3de5f6d'::uuid, '96571827-6ea6-5c4e-919e-3571e4d1410e'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('08b2b511-f6c3-5641-8de5-bec091324196'::uuid, '2619904e-3b06-54b6-bb0f-ea16e3de5f6d'::uuid, '96571827-6ea6-5c4e-919e-3571e4d1410e'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('91d5481d-1e3b-5496-b3de-7b18a1aeede3'::uuid, '229d0b26-e5de-59ae-a760-fe89ec623e59'::uuid, '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0f73559b-814e-5fca-8ebf-ab93a9d6982c'::uuid, '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid, '229d0b26-e5de-59ae-a760-fe89ec623e59'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f5b6dcd6-ef76-54c8-a373-1aa8fae07fd8'::uuid, '229d0b26-e5de-59ae-a760-fe89ec623e59'::uuid, '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd1404e44-56bc-5a66-aaf1-0aa371466230'::uuid,
  'f5b6dcd6-ef76-54c8-a373-1aa8fae07fd8'::uuid,
  '229d0b26-e5de-59ae-a760-fe89ec623e59'::uuid,
  '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid,
  'Hi Hana — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ad102a89-75c3-5aec-a582-2cc19c22b788'::uuid,
  'f5b6dcd6-ef76-54c8-a373-1aa8fae07fd8'::uuid,
  '42a4b2e5-d119-5fde-93f9-b9d44e0d58d4'::uuid,
  '229d0b26-e5de-59ae-a760-fe89ec623e59'::uuid,
  'Thanks Isaac! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('03ac2d71-5a37-5fa1-ada9-0a79406b0cf9'::uuid, 'ec425ec6-5f9a-57bd-a9ad-785e91c63bf0'::uuid, '15329dac-2653-5bf8-ab92-979bca93b089'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0b39c081-6fae-5dbd-bd14-f6de9e0251d0'::uuid, '15329dac-2653-5bf8-ab92-979bca93b089'::uuid, 'ec425ec6-5f9a-57bd-a9ad-785e91c63bf0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5e3e3f7a-de54-5498-a178-8ef2e7332fde'::uuid, '15329dac-2653-5bf8-ab92-979bca93b089'::uuid, 'ec425ec6-5f9a-57bd-a9ad-785e91c63bf0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('26583fae-3379-5b58-bef4-7d19d7aea940'::uuid, 'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid, 'd380f30b-3eb8-5b9c-8d1b-1650afcd5e01'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('30d75d40-05d8-58de-90a3-3f2a280ad13d'::uuid, 'd380f30b-3eb8-5b9c-8d1b-1650afcd5e01'::uuid, 'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('e3e62b99-bfc4-550b-a0c3-ae78e0f1b34c'::uuid, 'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid, 'd380f30b-3eb8-5b9c-8d1b-1650afcd5e01'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7d6662e8-118d-5bd5-822a-5e9c65c93046'::uuid,
  'e3e62b99-bfc4-550b-a0c3-ae78e0f1b34c'::uuid,
  'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid,
  'd380f30b-3eb8-5b9c-8d1b-1650afcd5e01'::uuid,
  'Hi Elena — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2836fa03-c670-569e-8f8a-4a532f013b8a'::uuid,
  'e3e62b99-bfc4-550b-a0c3-ae78e0f1b34c'::uuid,
  'd380f30b-3eb8-5b9c-8d1b-1650afcd5e01'::uuid,
  'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid,
  'Thanks Felix! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('45f43065-1132-55a1-b964-76061b69b04d'::uuid, 'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid, '862f205c-c86e-5674-b9a7-a6d3756eca94'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9b86a82c-1658-5a19-9c4b-ddb2e95e1e11'::uuid, '862f205c-c86e-5674-b9a7-a6d3756eca94'::uuid, 'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('c0ac41f2-7c45-512a-b87e-75d32aa410e6'::uuid, '862f205c-c86e-5674-b9a7-a6d3756eca94'::uuid, 'a23a0bd5-aa1d-54ac-93fd-e8d326eaaba3'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2d735bd2-0803-5f75-b24f-594b069d0b95'::uuid, 'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid, '95411eec-9c46-594a-827b-0f5c8ec314e1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('180aa650-ebc3-55e2-8995-ff67557e84d5'::uuid, '95411eec-9c46-594a-827b-0f5c8ec314e1'::uuid, 'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('044ec7c8-3b82-5ca8-baae-bb2d182b1ecb'::uuid, '95411eec-9c46-594a-827b-0f5c8ec314e1'::uuid, 'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8adaa9a1-6996-55d3-85fd-bfdcbeaaab10'::uuid,
  '044ec7c8-3b82-5ca8-baae-bb2d182b1ecb'::uuid,
  'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid,
  '95411eec-9c46-594a-827b-0f5c8ec314e1'::uuid,
  'Hi Rohan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '343ca019-d622-5805-b00e-ac2e163d7dbd'::uuid,
  '044ec7c8-3b82-5ca8-baae-bb2d182b1ecb'::uuid,
  '95411eec-9c46-594a-827b-0f5c8ec314e1'::uuid,
  'a44f21b8-dc8e-595c-8f74-7ae1e900ff20'::uuid,
  'Thanks Sara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('95abbf8c-07ae-55ec-909d-89984ce18c06'::uuid, '65673952-33ec-5b72-b075-0d350bcdb2da'::uuid, '04960929-8e6d-526f-902a-3f56fae228ea'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0fdf404c-2c33-5430-8d41-f11a76af8b68'::uuid, '04960929-8e6d-526f-902a-3f56fae228ea'::uuid, '65673952-33ec-5b72-b075-0d350bcdb2da'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5229df52-a63f-58aa-974d-36e01984db12'::uuid, '04960929-8e6d-526f-902a-3f56fae228ea'::uuid, '65673952-33ec-5b72-b075-0d350bcdb2da'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('58c486df-ebea-5d8b-a484-f9bf241fc8e6'::uuid, '8147a3cb-192b-5bfd-8336-c12eacf477cd'::uuid, 'd43fc93e-7731-5f15-9829-c96382a66268'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('08fcdc4c-5aea-5275-9624-ccce6f9816f5'::uuid, 'd43fc93e-7731-5f15-9829-c96382a66268'::uuid, '8147a3cb-192b-5bfd-8336-c12eacf477cd'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('750330c7-370a-5463-9bc5-ae705feecc45'::uuid, '8147a3cb-192b-5bfd-8336-c12eacf477cd'::uuid, 'd43fc93e-7731-5f15-9829-c96382a66268'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '39abde37-52b9-594f-ba98-6390e63d2c83'::uuid,
  '750330c7-370a-5463-9bc5-ae705feecc45'::uuid,
  '8147a3cb-192b-5bfd-8336-c12eacf477cd'::uuid,
  'd43fc93e-7731-5f15-9829-c96382a66268'::uuid,
  'Hi Samir — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '95dddfad-c22c-5706-a675-ab44cca37217'::uuid,
  '750330c7-370a-5463-9bc5-ae705feecc45'::uuid,
  'd43fc93e-7731-5f15-9829-c96382a66268'::uuid,
  '8147a3cb-192b-5bfd-8336-c12eacf477cd'::uuid,
  'Thanks Grace! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('68fccf53-08f3-50ec-bb9b-7c1917a038c6'::uuid, '1ff5e22d-0848-5550-a8c3-4df9c4050afb'::uuid, '900b4bc0-9225-59ed-bdb7-b994730f07e8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fa1edf64-1ad6-5177-ac5d-3e02ebbaccc5'::uuid, '900b4bc0-9225-59ed-bdb7-b994730f07e8'::uuid, '1ff5e22d-0848-5550-a8c3-4df9c4050afb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('434c6a05-b3cb-59ff-b6b1-e8aecdfaa8dd'::uuid, '1ff5e22d-0848-5550-a8c3-4df9c4050afb'::uuid, '900b4bc0-9225-59ed-bdb7-b994730f07e8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('138c7a49-beb0-5220-9174-c9fcc2a56651'::uuid, 'ad5c0cbc-9e41-56d0-b0ae-200c31b5995a'::uuid, '83ca350d-88aa-5712-a84d-d53fb5dfe34a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1252427e-fb80-525c-a8e0-f046db086110'::uuid, '83ca350d-88aa-5712-a84d-d53fb5dfe34a'::uuid, 'ad5c0cbc-9e41-56d0-b0ae-200c31b5995a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('b7696836-8544-5c26-a39a-6bf4051261a9'::uuid, '83ca350d-88aa-5712-a84d-d53fb5dfe34a'::uuid, 'ad5c0cbc-9e41-56d0-b0ae-200c31b5995a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '46d3121a-1bfe-5435-bebe-011bea9ef5db'::uuid,
  'b7696836-8544-5c26-a39a-6bf4051261a9'::uuid,
  'ad5c0cbc-9e41-56d0-b0ae-200c31b5995a'::uuid,
  '83ca350d-88aa-5712-a84d-d53fb5dfe34a'::uuid,
  'Hi Daniel — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;