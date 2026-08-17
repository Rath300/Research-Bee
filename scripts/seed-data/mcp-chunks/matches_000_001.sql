INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'cc196a0c-8038-52e2-9591-cd7946fb9845'::uuid,
  '236af147-d012-5ccf-b90a-88b6057de917'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  'Hi Noah — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '900a8df9-c7ae-5ce2-a620-8809d7b65327'::uuid,
  '236af147-d012-5ccf-b90a-88b6057de917'::uuid,
  '7c94bca1-d022-5ce0-9f41-30058f518391'::uuid,
  'a26aee00-05f2-505c-a479-ae1852915911'::uuid,
  'Thanks Ava! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('34b615dc-552d-5533-b649-91e9c200c944'::uuid, 'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid, 'a26aee00-05f2-505c-a479-ae1852915911'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2e9efde2-b96b-5f68-8a1b-16cc4d516cb3'::uuid, '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid, 'cbc72d17-40df-503c-9380-64860d555aeb'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d0c8821d-3a7e-532f-b304-aa767524cbf4'::uuid, 'cbc72d17-40df-503c-9380-64860d555aeb'::uuid, '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a2b107ad-d56c-58d9-8a89-c5ef324202fd'::uuid, '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid, 'cbc72d17-40df-503c-9380-64860d555aeb'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('77a6c0b0-1e5f-5842-bd5b-50e0f82e59ff'::uuid, 'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid, '5ab392fb-1d11-51a6-8cb3-22713cd46cd1'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('b699785f-549b-5e52-928c-4e6d438b556e'::uuid, '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid, '89b2a66e-af73-5706-9535-645704dc5830'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('5350c403-3163-50e0-8fea-f76f025d73e8'::uuid, '89b2a66e-af73-5706-9535-645704dc5830'::uuid, '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d5d006e8-d5ab-532f-a072-785d188151d0'::uuid, '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid, '89b2a66e-af73-5706-9535-645704dc5830'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'c04f0bf6-1fa7-595b-a2e9-56182a5e6aaa'::uuid,
  'd5d006e8-d5ab-532f-a072-785d188151d0'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  'Hi Ethan — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e76ab9ce-05ff-5a66-aefa-a423c1d80fe1'::uuid,
  'd5d006e8-d5ab-532f-a072-785d188151d0'::uuid,
  '89b2a66e-af73-5706-9535-645704dc5830'::uuid,
  '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid,
  'Thanks Amina! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('340a20ca-551c-5260-a631-ad339cdd2a4c'::uuid, '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid, '1c990b4a-b9a6-5f9b-b95b-fcab06fcbafa'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('342711cf-628f-5be1-aa2b-793517cccaca'::uuid, '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid, 'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e3571543-faa8-5606-9c4b-f336544cc5f3'::uuid, 'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid, '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d222d267-903d-54ff-9698-a48021141c8e'::uuid, '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid, 'e28386aa-07eb-5856-a38f-b6297689b1f8'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('72cef5a6-cd09-56a6-a7ae-39149bc41920'::uuid, '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid, '16493c35-46fb-5b58-9637-c2f4434b85ec'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('f86092d6-dfe7-5daf-ba36-aea3b1767ecb'::uuid, '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid, 'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('dd313cac-b000-5ccf-bf47-24eaeb4e3261'::uuid, 'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid, '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('8e741c5f-92f1-5e1c-b73c-3e990cf8411b'::uuid, '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid, 'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '6b62f88b-36b2-533d-bda1-c5dd5380e8cd'::uuid,
  '8e741c5f-92f1-5e1c-b73c-3e990cf8411b'::uuid,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  'Hi Caleb — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '0d85a778-77f7-5bd8-ae7f-87691d80c713'::uuid,
  '8e741c5f-92f1-5e1c-b73c-3e990cf8411b'::uuid,
  'c97ae47d-81ea-5774-b2f6-a4dc94d6c23b'::uuid,
  '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid,
  'Thanks Hannah! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('97158014-55fc-5606-861c-16d7bc4fcb58'::uuid, '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid, 'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('9bcc3a41-516f-5ff9-83c6-aa5cfd6d84ef'::uuid, 'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid, '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ab73a3ce-52c4-5dcc-b073-2e6409562a34'::uuid, '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid, 'e976d75b-8eb0-50ae-9a33-9d83f24dbfe1'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('3d4aa61a-d170-5d9f-a2b6-19beeaf61b0c'::uuid, '336b397d-d50b-5d74-8741-c9b03b5c524d'::uuid, '9ac8eea0-1e2b-5779-a280-6cce9c48cb43'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('637d1bed-448e-56c0-a25e-5403ec4833a8'::uuid, '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid, 'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('863f6185-2f8a-5e37-b3ea-c6cf86191c14'::uuid, 'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid, '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('5b32ad73-01e6-5af9-94d5-d95e3e24baa2'::uuid, '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid, 'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '3dc07086-24b0-5877-8b97-054e96bb4c3f'::uuid,
  '5b32ad73-01e6-5af9-94d5-d95e3e24baa2'::uuid,
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  'Hi Sana — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'a951445c-4630-5f34-b99b-c689101a7173'::uuid,
  '5b32ad73-01e6-5af9-94d5-d95e3e24baa2'::uuid,
  'cdd62380-8ae5-5e3c-b0b3-9c1f36505805'::uuid,
  '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid,
  'Thanks Julian! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('04068876-7e69-529a-b12d-92069a09091d'::uuid, 'd2162c88-23f7-5ae8-bfb5-6fee7e00733a'::uuid, '351cf58c-7613-5c7f-bc08-0cdbbffa0c80'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1c8182cc-1b71-52da-9558-65bcaefe02ec'::uuid, 'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid, '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d28e630f-96e7-552b-8129-f027b4b04534'::uuid, '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid, 'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('df5a3f82-959c-563f-be4c-4a87adccef7c'::uuid, '759374f9-7519-51f6-b575-a2d47a6aa1ff'::uuid, 'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a746eba7-7b27-535d-bb1e-fe3f17a18dc8'::uuid, '21e98b9b-b9a6-517e-9abf-e6798c78438a'::uuid, 'a70cb529-abe7-5993-b507-4f86d81b0818'::uuid, 'pending', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('450ecb0e-30c4-5ee1-adf2-2d28534ce3dd'::uuid, 'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid, '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1da394f9-88a3-550f-8d9b-27ec252d1d0e'::uuid, '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid, 'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('6016b25d-81cd-5998-abd2-ce6c1e929e05'::uuid, '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid, 'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '7cacb5c9-ce91-5079-8c79-2640eae5937e'::uuid,
  '6016b25d-81cd-5998-abd2-ce6c1e929e05'::uuid,
  'b90f7659-f5b3-50dc-808c-9649704ff40c'::uuid,
  '7b5517ea-0ef8-5b36-a218-708b14454dca'::uuid,
  'Hi Hana — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;