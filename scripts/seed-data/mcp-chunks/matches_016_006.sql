INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '105fc530-4d25-5d67-b9df-a899a6479e46'::uuid,
  'f9422141-a8d5-5a73-afdf-30ee0e5a39f0'::uuid,
  '082a2d5f-3bf4-561b-af30-d0b06299b4ba'::uuid,
  'f0b67df3-69c6-55af-85f4-d8d0f4ea1143'::uuid,
  'Hi Mei — your work on Climate Science overlaps with a project I''m spinning up. Open to a quick intro chat?',
  true,
  now() - interval '2 days'
) ON CONFLICT DO NOTHING;

INSERT INTO public.messages (id, match_id, sender_id, receiver_id, content, is_read, created_at)
VALUES (
  '654b9460-7f8a-563e-8358-41a6e59e8ed7'::uuid,
  'f9422141-a8d5-5a73-afdf-30ee0e5a39f0'::uuid,
  'f0b67df3-69c6-55af-85f4-d8d0f4ea1143'::uuid,
  '082a2d5f-3bf4-561b-af30-d0b06299b4ba'::uuid,
  'Thanks Rohan! Happy to connect — I can share a short overview of what we''re collecting this quarter.',
  true,
  now() - interval '1 day'
) ON CONFLICT DO NOTHING;