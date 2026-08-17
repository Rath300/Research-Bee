INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid,
  'authenticated',
  'authenticated',
  'ethan.rodriguez.805@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((305) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Ethan","last_name":"Rodriguez","full_name":"Ethan Rodriguez"}'::jsonb,
  now() - ((305) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid,
  '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid,
  '{"sub":"33907c66-610b-5f9e-b71e-d0fc2aba7f83","email":"ethan.rodriguez.805@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '33907c66-610b-5f9e-b71e-d0fc2aba7f83',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Ethan',
  last_name = 'Rodriguez',
  full_name = 'Ethan Rodriguez',
  email = 'ethan.rodriguez.805@gmail.com',
  title = 'PhD Candidate',
  institution = 'University of Texas at Austin',
  location = 'New York, NY',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at University of Texas at Austin working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['experimental collaborators','grant collaborators']::text[],
  availability = 'part-time',
  availability_hours = 10,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '33907c66-610b-5f9e-b71e-d0fc2aba7f83'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid,
  'authenticated',
  'authenticated',
  'leila.turner.806@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((306) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Leila","last_name":"Turner","full_name":"Leila Turner"}'::jsonb,
  now() - ((306) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid,
  'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid,
  '{"sub":"f5b00215-edc0-5f4c-be8a-df4a732442f5","email":"leila.turner.806@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'f5b00215-edc0-5f4c-be8a-df4a732442f5',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Leila',
  last_name = 'Turner',
  full_name = 'Leila Turner',
  email = 'leila.turner.806@outlook.com',
  title = 'Research Scientist',
  institution = 'EPFL',
  location = 'Chicago, IL',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at EPFL working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['computational partners','industry partners']::text[],
  availability = 'full-time',
  availability_hours = 11,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'f5b00215-edc0-5f4c-be8a-df4a732442f5'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '2f2b966f-68c3-5cc1-98f6-ce29bf74ba78'::uuid,
  'authenticated',
  'authenticated',
  'caleb.gray.807@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((307) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Caleb","last_name":"Gray","full_name":"Caleb Gray"}'::jsonb,
  now() - ((307) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '2f2b966f-68c3-5cc1-98f6-ce29bf74ba78'::uuid,
  '2f2b966f-68c3-5cc1-98f6-ce29bf74ba78'::uuid,
  '{"sub":"2f2b966f-68c3-5cc1-98f6-ce29bf74ba78","email":"caleb.gray.807@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '2f2b966f-68c3-5cc1-98f6-ce29bf74ba78',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Caleb',
  last_name = 'Gray',
  full_name = 'Caleb Gray',
  email = 'caleb.gray.807@icloud.com',
  title = 'Associate Professor',
  institution = 'UC Berkeley',
  location = 'Baltimore, MD',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at UC Berkeley working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['mentorship','cross-disciplinary teammates']::text[],
  availability = 'weekends',
  availability_hours = 12,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '2f2b966f-68c3-5cc1-98f6-ce29bf74ba78'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'da4f492a-56f6-5f1d-adfa-6267b2ab0e16'::uuid,
  'authenticated',
  'authenticated',
  'sana.henderson.808@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((308) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Sana","last_name":"Henderson","full_name":"Sana Henderson"}'::jsonb,
  now() - ((308) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'da4f492a-56f6-5f1d-adfa-6267b2ab0e16'::uuid,
  'da4f492a-56f6-5f1d-adfa-6267b2ab0e16'::uuid,
  '{"sub":"da4f492a-56f6-5f1d-adfa-6267b2ab0e16","email":"sana.henderson.808@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'da4f492a-56f6-5f1d-adfa-6267b2ab0e16',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Sana',
  last_name = 'Henderson',
  full_name = 'Sana Henderson',
  email = 'sana.henderson.808@yahoo.com',
  title = 'Staff Scientist',
  institution = 'University of Washington',
  location = 'New Haven, CT',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at University of Washington working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['grant collaborators','data partners']::text[],
  availability = 'part-time',
  availability_hours = 13,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'da4f492a-56f6-5f1d-adfa-6267b2ab0e16'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'f326a54c-18ae-557e-8143-fda4415ba59b'::uuid,
  'authenticated',
  'authenticated',
  'marcus.kim.809@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((309) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Marcus","last_name":"Kim","full_name":"Marcus Kim"}'::jsonb,
  now() - ((309) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'f326a54c-18ae-557e-8143-fda4415ba59b'::uuid,
  'f326a54c-18ae-557e-8143-fda4415ba59b'::uuid,
  '{"sub":"f326a54c-18ae-557e-8143-fda4415ba59b","email":"marcus.kim.809@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'f326a54c-18ae-557e-8143-fda4415ba59b',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Marcus',
  last_name = 'Kim',
  full_name = 'Marcus Kim',
  email = 'marcus.kim.809@proton.me',
  title = 'Visiting Scholar',
  institution = 'Columbia University',
  location = 'Princeton, NJ',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at Columbia University working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['industry partners','co-authors']::text[],
  availability = 'full-time',
  availability_hours = 14,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'f326a54c-18ae-557e-8143-fda4415ba59b'::uuid;


