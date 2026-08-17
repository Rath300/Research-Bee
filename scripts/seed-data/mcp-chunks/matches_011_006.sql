INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '935e13a0-0c7b-5d1a-b9e2-7de438887154'::uuid,
  'aa3f06b8-12bb-53b7-be45-574b5fa2de10'::uuid,
  '2fc27dd8-d485-5e52-8269-e84b66824499'::uuid,
  '72563df9-2262-5969-9688-d5cf69877f50'::uuid,
  'Hi James — your work on Machine Learning overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '5501a290-f5dd-5734-8880-7edafb911cba'::uuid,
  'aa3f06b8-12bb-53b7-be45-574b5fa2de10'::uuid,
  '72563df9-2262-5969-9688-d5cf69877f50'::uuid,
  '2fc27dd8-d485-5e52-8269-e84b66824499'::uuid,
  'Thanks Tara! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;