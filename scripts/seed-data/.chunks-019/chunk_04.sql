INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid,
  'authenticated',
  'authenticated',
  'sofia.ali.880@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((380) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Sofia","last_name":"Ali","full_name":"Sofia Ali"}'::jsonb,
  now() - ((380) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid,
  'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid,
  '{"sub":"f8dca6c4-5135-5cbf-80f9-431d980d2860","email":"sofia.ali.880@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'f8dca6c4-5135-5cbf-80f9-431d980d2860',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Sofia',
  last_name = 'Ali',
  full_name = 'Sofia Ali',
  email = 'sofia.ali.880@gmail.com',
  title = 'PhD Candidate',
  institution = 'Caltech',
  location = 'Boston, MA',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at Caltech working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['grant collaborators','data partners']::text[],
  availability = 'part-time',
  availability_hours = 5,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'f8dca6c4-5135-5cbf-80f9-431d980d2860'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid,
  'authenticated',
  'authenticated',
  'kenji.miller.881@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((381) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Kenji","last_name":"Miller","full_name":"Kenji Miller"}'::jsonb,
  now() - ((381) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid,
  'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid,
  '{"sub":"b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909","email":"kenji.miller.881@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Kenji',
  last_name = 'Miller',
  full_name = 'Kenji Miller',
  email = 'kenji.miller.881@outlook.com',
  title = 'Research Scientist',
  institution = 'Cornell University',
  location = 'Toronto, ON',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at Cornell University working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['industry partners','co-authors']::text[],
  availability = 'full-time',
  availability_hours = 6,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'b70f2e7b-e4e0-548b-8ac7-ef4dd5b89909'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid,
  'authenticated',
  'authenticated',
  'zara.yamamoto.882@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((382) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Zara","last_name":"Yamamoto","full_name":"Zara Yamamoto"}'::jsonb,
  now() - ((382) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid,
  'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid,
  '{"sub":"a48a8fca-41f2-5981-aa66-87c58fba332d","email":"zara.yamamoto.882@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'a48a8fca-41f2-5981-aa66-87c58fba332d',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Zara',
  last_name = 'Yamamoto',
  full_name = 'Zara Yamamoto',
  email = 'zara.yamamoto.882@icloud.com',
  title = 'Associate Professor',
  institution = 'University of Texas at Austin',
  location = 'Zurich, CH',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at University of Texas at Austin working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['cross-disciplinary teammates','experimental collaborators']::text[],
  availability = 'weekends',
  availability_hours = 7,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'a48a8fca-41f2-5981-aa66-87c58fba332d'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid,
  'authenticated',
  'authenticated',
  'kai.howard.883@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((383) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Kai","last_name":"Howard","full_name":"Kai Howard"}'::jsonb,
  now() - ((383) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid,
  '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid,
  '{"sub":"3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b","email":"kai.howard.883@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Kai',
  last_name = 'Howard',
  full_name = 'Kai Howard',
  email = 'kai.howard.883@yahoo.com',
  title = 'Staff Scientist',
  institution = 'EPFL',
  location = 'London, UK',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at EPFL working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['data partners','computational partners']::text[],
  availability = 'part-time',
  availability_hours = 8,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '3dd0b8e4-b55b-5b25-a5b4-6230f29eba6b'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '1930b2bd-9292-5ae1-8aa8-87ba01cf39b3'::uuid,
  'authenticated',
  'authenticated',
  'ananya.bennett.884@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((384) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Ananya","last_name":"Bennett","full_name":"Ananya Bennett"}'::jsonb,
  now() - ((384) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '1930b2bd-9292-5ae1-8aa8-87ba01cf39b3'::uuid,
  '1930b2bd-9292-5ae1-8aa8-87ba01cf39b3'::uuid,
  '{"sub":"1930b2bd-9292-5ae1-8aa8-87ba01cf39b3","email":"ananya.bennett.884@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '1930b2bd-9292-5ae1-8aa8-87ba01cf39b3',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Ananya',
  last_name = 'Bennett',
  full_name = 'Ananya Bennett',
  email = 'ananya.bennett.884@proton.me',
  title = 'Visiting Scholar',
  institution = 'UC Berkeley',
  location = 'Seattle, WA',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at UC Berkeley working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['co-authors','mentorship']::text[],
  availability = 'full-time',
  availability_hours = 9,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '1930b2bd-9292-5ae1-8aa8-87ba01cf39b3'::uuid;


