INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7955378e-a52c-5b81-8134-99b6baea3680'::uuid,
  '04bc5984-68ee-5372-ab15-605303a8003a'::uuid,
  '885eadf1-5032-5f2a-a6ff-cfeab6c5d89e'::uuid,
  'f85af5a2-2d56-597b-9cc6-74dd7c6ce2e8'::uuid,
  'Thanks David! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('837b4a08-cef3-541a-9d76-7ca04ecdc7cf'::uuid, 'f85af5a2-2d56-597b-9cc6-74dd7c6ce2e8'::uuid, '0383e3ef-8b66-5f66-8353-206517213c00'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('857b74e4-8f16-5d16-8189-dfa0dedc6e0a'::uuid, '0383e3ef-8b66-5f66-8353-206517213c00'::uuid, 'f85af5a2-2d56-597b-9cc6-74dd7c6ce2e8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('9febbcb4-9ac4-5db0-98ab-5303458bc31e'::uuid, '0383e3ef-8b66-5f66-8353-206517213c00'::uuid, 'f85af5a2-2d56-597b-9cc6-74dd7c6ce2e8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('31a25990-9471-5025-b3a3-d757de70bccb'::uuid, 'd8f35861-4574-5a95-81ee-2a68c58124ed'::uuid, 'ea7a5038-ea24-5c53-b37f-6e7af7843a5f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e0d89047-7e47-5a16-8358-5b96483e2aac'::uuid, 'ea7a5038-ea24-5c53-b37f-6e7af7843a5f'::uuid, 'd8f35861-4574-5a95-81ee-2a68c58124ed'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5c027b68-5271-5822-91a9-e347b78cfc14'::uuid, 'd8f35861-4574-5a95-81ee-2a68c58124ed'::uuid, 'ea7a5038-ea24-5c53-b37f-6e7af7843a5f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'd96e0fd0-6038-5f49-a64b-1142ff4e1ae5'::uuid,
  '5c027b68-5271-5822-91a9-e347b78cfc14'::uuid,
  'd8f35861-4574-5a95-81ee-2a68c58124ed'::uuid,
  'ea7a5038-ea24-5c53-b37f-6e7af7843a5f'::uuid,
  'Hi Kai — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'aa6d34f1-0bc6-5b4a-988a-95898b0b1d06'::uuid,
  '5c027b68-5271-5822-91a9-e347b78cfc14'::uuid,
  'ea7a5038-ea24-5c53-b37f-6e7af7843a5f'::uuid,
  'd8f35861-4574-5a95-81ee-2a68c58124ed'::uuid,
  'Thanks Aisha! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1994a61b-326e-59c8-b2e3-3d74c725412b'::uuid, '2ccca6e5-bb28-5a0e-abe4-066695c1a229'::uuid, '157a061e-6fb6-53f2-adab-f285a291df07'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b7604982-5773-51bb-9a24-91bf4bfccfd4'::uuid, '157a061e-6fb6-53f2-adab-f285a291df07'::uuid, '2ccca6e5-bb28-5a0e-abe4-066695c1a229'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6ef6f635-ec74-53b2-bc6a-93bab3b04086'::uuid, '157a061e-6fb6-53f2-adab-f285a291df07'::uuid, '2ccca6e5-bb28-5a0e-abe4-066695c1a229'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('78070289-1edf-5060-acd2-326617cb432f'::uuid, '14acafc8-5752-5e7f-a736-a20b700204e8'::uuid, 'c68305f8-4ba9-51c8-a34b-172abbf098c2'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('cb42dd98-7c74-53f3-beca-f45bb4826c90'::uuid, 'c68305f8-4ba9-51c8-a34b-172abbf098c2'::uuid, '14acafc8-5752-5e7f-a736-a20b700204e8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ebb98330-8cc5-526c-ab4b-a705c28f8572'::uuid, '14acafc8-5752-5e7f-a736-a20b700204e8'::uuid, 'c68305f8-4ba9-51c8-a34b-172abbf098c2'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8503bc61-e81e-5217-9605-f4afadf0837a'::uuid,
  'ebb98330-8cc5-526c-ab4b-a705c28f8572'::uuid,
  '14acafc8-5752-5e7f-a736-a20b700204e8'::uuid,
  'c68305f8-4ba9-51c8-a34b-172abbf098c2'::uuid,
  'Hi Benjamin — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b179c4ae-9055-55ae-9c87-b19a45ec408a'::uuid,
  'ebb98330-8cc5-526c-ab4b-a705c28f8572'::uuid,
  'c68305f8-4ba9-51c8-a34b-172abbf098c2'::uuid,
  '14acafc8-5752-5e7f-a736-a20b700204e8'::uuid,
  'Thanks Nadia! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6e66ddd3-8f8e-5cb7-b893-9f66100f70bd'::uuid, '8dcc64e5-1781-5d54-acde-4fe2a4718700'::uuid, '8fe0f3e1-b131-5d34-8746-44ea97dd000a'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6bd15ae6-dce2-5fb9-9842-1b5ca0ae521e'::uuid, '8fe0f3e1-b131-5d34-8746-44ea97dd000a'::uuid, '8dcc64e5-1781-5d54-acde-4fe2a4718700'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('411da486-567e-55d4-a0df-5dcaf1533a87'::uuid, '8dcc64e5-1781-5d54-acde-4fe2a4718700'::uuid, '8fe0f3e1-b131-5d34-8746-44ea97dd000a'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('06f171cf-4e95-548d-8ccd-b3583a4ca9fe'::uuid, '4708ce04-d984-5fa1-9289-e132f7bcc541'::uuid, '5ad5e69f-e707-5b76-8788-6652faf2a416'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0b5f1bed-60a9-5bdb-b400-3015cdfbe871'::uuid, '5ad5e69f-e707-5b76-8788-6652faf2a416'::uuid, '4708ce04-d984-5fa1-9289-e132f7bcc541'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0a0e4c93-b1a7-5ba8-a4a3-2189d0b70c7d'::uuid, '4708ce04-d984-5fa1-9289-e132f7bcc541'::uuid, '5ad5e69f-e707-5b76-8788-6652faf2a416'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '8b9ecdf8-e238-5f81-a1b4-5fc3cce4c0ca'::uuid,
  '0a0e4c93-b1a7-5ba8-a4a3-2189d0b70c7d'::uuid,
  '4708ce04-d984-5fa1-9289-e132f7bcc541'::uuid,
  '5ad5e69f-e707-5b76-8788-6652faf2a416'::uuid,
  'Hi Sebastian — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a77c0315-479f-599e-a22c-792e3b79d232'::uuid,
  '0a0e4c93-b1a7-5ba8-a4a3-2189d0b70c7d'::uuid,
  '5ad5e69f-e707-5b76-8788-6652faf2a416'::uuid,
  '4708ce04-d984-5fa1-9289-e132f7bcc541'::uuid,
  'Thanks Mei! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('97b5864e-ec24-57aa-990a-81c3284ecb97'::uuid, '4708ce04-d984-5fa1-9289-e132f7bcc541'::uuid, '0e62eacf-462f-5d52-9989-07f38d304832'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e61e4c48-7a70-510a-bd18-22cd769bebf1'::uuid, '0e62eacf-462f-5d52-9989-07f38d304832'::uuid, '4708ce04-d984-5fa1-9289-e132f7bcc541'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4843d84c-8687-5546-8845-83972a4ce0fa'::uuid, '0e62eacf-462f-5d52-9989-07f38d304832'::uuid, '4708ce04-d984-5fa1-9289-e132f7bcc541'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('fdd55fa9-5f81-5d4b-a0b0-08223e11b3cf'::uuid, 'e5ad392c-bed6-53b1-959c-110347ae87fe'::uuid, '65a74fe8-c38f-5780-8ad2-bf331721a3d9'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1a13748d-61de-5ef8-95a7-02d96ac34efe'::uuid, '65a74fe8-c38f-5780-8ad2-bf331721a3d9'::uuid, 'e5ad392c-bed6-53b1-959c-110347ae87fe'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('2dde3668-9362-5557-bd46-6c2e7368388b'::uuid, '65a74fe8-c38f-5780-8ad2-bf331721a3d9'::uuid, 'e5ad392c-bed6-53b1-959c-110347ae87fe'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '23edd94f-26d3-5fe6-b29a-98f00069d333'::uuid,
  '2dde3668-9362-5557-bd46-6c2e7368388b'::uuid,
  'e5ad392c-bed6-53b1-959c-110347ae87fe'::uuid,
  '65a74fe8-c38f-5780-8ad2-bf331721a3d9'::uuid,
  'Hi Amina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '799e47ee-4526-501a-a86a-a4d8d542210c'::uuid,
  '2dde3668-9362-5557-bd46-6c2e7368388b'::uuid,
  '65a74fe8-c38f-5780-8ad2-bf331721a3d9'::uuid,
  'e5ad392c-bed6-53b1-959c-110347ae87fe'::uuid,
  'Thanks Henry! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('89284daf-14d4-5344-9d9c-b2007ca32ef8'::uuid, 'f9952d7b-1f72-5181-bf0f-fe11a108cc78'::uuid, '24d08bca-e89e-5133-9580-3c3af259e917'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('42150027-efcc-5262-ae02-0df978ebfcbe'::uuid, '24d08bca-e89e-5133-9580-3c3af259e917'::uuid, 'f9952d7b-1f72-5181-bf0f-fe11a108cc78'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('07ab3bd7-2dba-5eec-905f-725c66db3877'::uuid, '24d08bca-e89e-5133-9580-3c3af259e917'::uuid, 'f9952d7b-1f72-5181-bf0f-fe11a108cc78'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('97a67e00-1b9f-5de7-bb14-6f0fd390e76e'::uuid, 'deb0386d-b54d-5b0b-8e3d-137214ddaf59'::uuid, '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1cd7c726-5de1-547c-b30a-2136acae0163'::uuid, '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid, 'deb0386d-b54d-5b0b-8e3d-137214ddaf59'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fb9b85f2-ca9d-579e-86a3-81ff053d93e3'::uuid, '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid, 'deb0386d-b54d-5b0b-8e3d-137214ddaf59'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '223a1515-5445-588f-88d0-e5ceeeb011d2'::uuid,
  'fb9b85f2-ca9d-579e-86a3-81ff053d93e3'::uuid,
  'deb0386d-b54d-5b0b-8e3d-137214ddaf59'::uuid,
  '63609079-817e-5d06-ba90-46b3b544e3f4'::uuid,
  'Hi Hannah — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;