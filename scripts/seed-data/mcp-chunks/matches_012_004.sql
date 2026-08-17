INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('162e1eee-7c66-58de-bf2e-f1a2ed28fc0b'::uuid, '8475fcd5-c72d-54f5-8ada-51f01ede0cb5'::uuid, '0a4e9b3e-a50f-5c16-aa75-1a088427b416'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('2f6525f7-438f-5342-89e4-b8af6d485ffa'::uuid, '0a4e9b3e-a50f-5c16-aa75-1a088427b416'::uuid, '8475fcd5-c72d-54f5-8ada-51f01ede0cb5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('55a65216-1887-5a92-b293-04100e8d2260'::uuid, '0a4e9b3e-a50f-5c16-aa75-1a088427b416'::uuid, '8475fcd5-c72d-54f5-8ada-51f01ede0cb5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('7fa56e1f-f0d0-523a-9416-d554baa767f9'::uuid, 'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid, 'f1af066e-3f30-5479-830e-3162690b429d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('ca8306bf-ca06-5020-85d5-2d7a74417b71'::uuid, 'f1af066e-3f30-5479-830e-3162690b429d'::uuid, 'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('fadcbb5c-0de6-5463-8e1b-55fca575ff90'::uuid, 'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid, 'f1af066e-3f30-5479-830e-3162690b429d'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'de484856-9e80-59e0-a747-61048ac37bef'::uuid,
  'fadcbb5c-0de6-5463-8e1b-55fca575ff90'::uuid,
  'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid,
  'f1af066e-3f30-5479-830e-3162690b429d'::uuid,
  'Hi Elena — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'edb29fd7-4c94-5124-b069-1ff57ab5cf2c'::uuid,
  'fadcbb5c-0de6-5463-8e1b-55fca575ff90'::uuid,
  'f1af066e-3f30-5479-830e-3162690b429d'::uuid,
  'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid,
  'Thanks Felix! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('618a48af-0800-5196-a8b8-1247f21d1757'::uuid, 'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid, '599f91ad-8872-5548-98ef-05309b9d767d'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('e092a04d-b422-51ce-a96c-7333cd8cbaff'::uuid, '599f91ad-8872-5548-98ef-05309b9d767d'::uuid, 'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('d66d479a-b41e-5f6e-865a-ccefe4aec316'::uuid, '599f91ad-8872-5548-98ef-05309b9d767d'::uuid, 'ecd687ca-63d1-5ac9-822e-9fcefa614d38'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0e399889-4222-5012-ab1b-464f569473f9'::uuid, '5aa58f77-3aa4-5344-97a0-552a5846e561'::uuid, '94620992-b146-536c-a930-0efce8d2c959'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('657a8076-ebb4-5973-b437-99138caf1238'::uuid, '94620992-b146-536c-a930-0efce8d2c959'::uuid, '5aa58f77-3aa4-5344-97a0-552a5846e561'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('4d6a6642-2560-5363-9b10-b53172789ca1'::uuid, '5aa58f77-3aa4-5344-97a0-552a5846e561'::uuid, '94620992-b146-536c-a930-0efce8d2c959'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '2c195d56-1f09-572e-b6cf-f33bfcf7f305'::uuid,
  '4d6a6642-2560-5363-9b10-b53172789ca1'::uuid,
  '5aa58f77-3aa4-5344-97a0-552a5846e561'::uuid,
  '94620992-b146-536c-a930-0efce8d2c959'::uuid,
  'Hi Rohan — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e068f3c8-7899-5934-9f39-b7750efbcf29'::uuid,
  '4d6a6642-2560-5363-9b10-b53172789ca1'::uuid,
  '94620992-b146-536c-a930-0efce8d2c959'::uuid,
  '5aa58f77-3aa4-5344-97a0-552a5846e561'::uuid,
  'Thanks Sara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('a0cad950-7ded-5a38-86e2-ea9244ba0dac'::uuid, '72563df9-2262-5969-9688-d5cf69877f50'::uuid, 'a446d3e3-844d-589c-9f96-50f5f4eaee5b'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('82b33304-12b7-5761-a1be-20c9c90c245a'::uuid, 'a446d3e3-844d-589c-9f96-50f5f4eaee5b'::uuid, '72563df9-2262-5969-9688-d5cf69877f50'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('0067bff9-7855-511a-9c98-7ca208a52bda'::uuid, '72563df9-2262-5969-9688-d5cf69877f50'::uuid, 'a446d3e3-844d-589c-9f96-50f5f4eaee5b'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('6bfb6a04-e960-55cd-bfaf-941f09e46e0f'::uuid, '6a4f619f-e444-588f-b820-a92527d80b68'::uuid, '6c731d8e-122c-5719-bdfb-0bd85e1b1f2f'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('45b48cfb-46ee-55d0-a38e-198430ed361d'::uuid, '6c731d8e-122c-5719-bdfb-0bd85e1b1f2f'::uuid, '6a4f619f-e444-588f-b820-a92527d80b68'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('a063ab73-d539-5826-bbef-eef862695f4d'::uuid, '6a4f619f-e444-588f-b820-a92527d80b68'::uuid, '6c731d8e-122c-5719-bdfb-0bd85e1b1f2f'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '373fbfc6-acfd-5bcd-a153-1f6f87c31e34'::uuid,
  'a063ab73-d539-5826-bbef-eef862695f4d'::uuid,
  '6a4f619f-e444-588f-b820-a92527d80b68'::uuid,
  '6c731d8e-122c-5719-bdfb-0bd85e1b1f2f'::uuid,
  'Hi Samir — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'e651d868-c1ed-5355-929c-8e5bf3380c96'::uuid,
  'a063ab73-d539-5826-bbef-eef862695f4d'::uuid,
  '6c731d8e-122c-5719-bdfb-0bd85e1b1f2f'::uuid,
  '6a4f619f-e444-588f-b820-a92527d80b68'::uuid,
  'Thanks Grace! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('d4ce7f94-8a4f-518c-bba0-f85397891b9e'::uuid, '9cb755c4-0ef9-56cb-9ee7-02d3013edbe0'::uuid, '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('bc68f502-d727-57ab-ae73-1e7bc2096199'::uuid, '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid, '9cb755c4-0ef9-56cb-9ee7-02d3013edbe0'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f47b5e54-4777-5a51-9156-6325cbc99855'::uuid, '1680dd33-7f9d-5dc4-8ff0-6bddea258801'::uuid, '9cb755c4-0ef9-56cb-9ee7-02d3013edbe0'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('99fa1c7e-bc71-59c2-92cc-044a2d33005d'::uuid, 'f68ac82d-7ea0-5e65-8440-ae7196cc42d5'::uuid, 'e2ce6ffe-8af1-5660-98ab-c1b6f7f75804'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('41f19bfe-e71f-5b67-b0d1-e6ddd0222216'::uuid, 'e2ce6ffe-8af1-5660-98ab-c1b6f7f75804'::uuid, 'f68ac82d-7ea0-5e65-8440-ae7196cc42d5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f7160b9e-60c9-5f71-891b-ca25d596d2df'::uuid, 'e2ce6ffe-8af1-5660-98ab-c1b6f7f75804'::uuid, 'f68ac82d-7ea0-5e65-8440-ae7196cc42d5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '53847265-eb66-50ba-8d2c-c8299cd8fb0f'::uuid,
  'f7160b9e-60c9-5f71-891b-ca25d596d2df'::uuid,
  'f68ac82d-7ea0-5e65-8440-ae7196cc42d5'::uuid,
  'e2ce6ffe-8af1-5660-98ab-c1b6f7f75804'::uuid,
  'Hi Daniel — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'b6c7906b-5074-52d0-a6dd-244f41f54245'::uuid,
  'f7160b9e-60c9-5f71-891b-ca25d596d2df'::uuid,
  'e2ce6ffe-8af1-5660-98ab-c1b6f7f75804'::uuid,
  'f68ac82d-7ea0-5e65-8440-ae7196cc42d5'::uuid,
  'Thanks Isla! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('1f963d0f-8a66-56c5-8e9f-7daceec592ee'::uuid, 'f68ac82d-7ea0-5e65-8440-ae7196cc42d5'::uuid, '1ee18835-3c30-5bc7-a404-37cb54a05c4c'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('855ba946-c044-55b7-8f0c-eb7926f0618b'::uuid, '1ee18835-3c30-5bc7-a404-37cb54a05c4c'::uuid, 'f68ac82d-7ea0-5e65-8440-ae7196cc42d5'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('f329f0a4-f647-5547-8754-e841f76c38ec'::uuid, '1ee18835-3c30-5bc7-a404-37cb54a05c4c'::uuid, 'f68ac82d-7ea0-5e65-8440-ae7196cc42d5'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('919f9478-bed6-5e02-a075-2574bca8c645'::uuid, '8900a442-2c2b-5b19-b573-436ddfe42ab1'::uuid, 'dbee6fcf-eb85-55b9-9cfa-e9d46eaa3383'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.profile_matches (id, matcher_user_id, matchee_user_id, status, created_at)
VALUES ('0e9e7978-6974-53e0-adf3-30e787078f9e'::uuid, 'dbee6fcf-eb85-55b9-9cfa-e9d46eaa3383'::uuid, '8900a442-2c2b-5b19-b573-436ddfe42ab1'::uuid, 'matched', now())
ON CONFLICT DO NOTHING;

INSERT INTO public.matches (id, user_id_1, user_id_2, status, created_at, updated_at)
VALUES ('ad11105a-a803-52b5-bca7-8856159a5f81'::uuid, '8900a442-2c2b-5b19-b573-436ddfe42ab1'::uuid, 'dbee6fcf-eb85-55b9-9cfa-e9d46eaa3383'::uuid, 'matched', now(), now())
ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  'ab8995fb-9e4b-5708-9776-7570378f5246'::uuid,
  'ad11105a-a803-52b5-bca7-8856159a5f81'::uuid,
  '8900a442-2c2b-5b19-b573-436ddfe42ab1'::uuid,
  'dbee6fcf-eb85-55b9-9cfa-e9d46eaa3383'::uuid,
  'Hi Nina — your work on Robotics overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '28726b0b-6798-5825-9ac3-fdaa47870347'::uuid,
  'ad11105a-a803-52b5-bca7-8856159a5f81'::uuid,
  'dbee6fcf-eb85-55b9-9cfa-e9d46eaa3383'::uuid,
  '8900a442-2c2b-5b19-b573-436ddfe42ab1'::uuid,
  'Thanks Theo! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;