INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '874f22d1-d122-5efa-91b2-609b82abcb7b'::uuid,
  'authenticated',
  'authenticated',
  'felix.wood.955@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((55) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Felix","last_name":"Wood","full_name":"Felix Wood"}'::jsonb,
  now() - ((55) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '874f22d1-d122-5efa-91b2-609b82abcb7b'::uuid,
  '874f22d1-d122-5efa-91b2-609b82abcb7b'::uuid,
  '{"sub":"874f22d1-d122-5efa-91b2-609b82abcb7b","email":"felix.wood.955@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '874f22d1-d122-5efa-91b2-609b82abcb7b',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Felix',
  last_name = 'Wood',
  full_name = 'Felix Wood',
  email = 'felix.wood.955@gmail.com',
  title = 'PhD Candidate',
  institution = 'University of Washington',
  location = 'New Haven, CT',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at University of Washington working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['data partners','computational partners']::text[],
  availability = 'part-time',
  availability_hours = 20,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '874f22d1-d122-5efa-91b2-609b82abcb7b'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '2f7357e8-f852-5e6d-a819-d0062717ec63'::uuid,
  'authenticated',
  'authenticated',
  'sara.patel.956@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((56) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Sara","last_name":"Patel","full_name":"Sara Patel"}'::jsonb,
  now() - ((56) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '2f7357e8-f852-5e6d-a819-d0062717ec63'::uuid,
  '2f7357e8-f852-5e6d-a819-d0062717ec63'::uuid,
  '{"sub":"2f7357e8-f852-5e6d-a819-d0062717ec63","email":"sara.patel.956@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '2f7357e8-f852-5e6d-a819-d0062717ec63',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Sara',
  last_name = 'Patel',
  full_name = 'Sara Patel',
  email = 'sara.patel.956@outlook.com',
  title = 'Research Scientist',
  institution = 'Columbia University',
  location = 'Princeton, NJ',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at Columbia University working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['co-authors','mentorship']::text[],
  availability = 'full-time',
  availability_hours = 21,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '2f7357e8-f852-5e6d-a819-d0062717ec63'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'c241b52a-7067-5347-84d1-7a7ccbb39966'::uuid,
  'authenticated',
  'authenticated',
  'james.martinez.957@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((57) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"James","last_name":"Martinez","full_name":"James Martinez"}'::jsonb,
  now() - ((57) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'c241b52a-7067-5347-84d1-7a7ccbb39966'::uuid,
  'c241b52a-7067-5347-84d1-7a7ccbb39966'::uuid,
  '{"sub":"c241b52a-7067-5347-84d1-7a7ccbb39966","email":"james.martinez.957@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'c241b52a-7067-5347-84d1-7a7ccbb39966',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'James',
  last_name = 'Martinez',
  full_name = 'James Martinez',
  email = 'james.martinez.957@icloud.com',
  title = 'Associate Professor',
  institution = 'Caltech',
  location = 'Pasadena, CA',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at Caltech working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['experimental collaborators','grant collaborators']::text[],
  availability = 'weekends',
  availability_hours = 22,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'c241b52a-7067-5347-84d1-7a7ccbb39966'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '5baa9a49-86d9-5b96-8662-a6e76f4aa203'::uuid,
  'authenticated',
  'authenticated',
  'grace.ahmed.958@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((58) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Grace","last_name":"Ahmed","full_name":"Grace Ahmed"}'::jsonb,
  now() - ((58) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '5baa9a49-86d9-5b96-8662-a6e76f4aa203'::uuid,
  '5baa9a49-86d9-5b96-8662-a6e76f4aa203'::uuid,
  '{"sub":"5baa9a49-86d9-5b96-8662-a6e76f4aa203","email":"grace.ahmed.958@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '5baa9a49-86d9-5b96-8662-a6e76f4aa203',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Grace',
  last_name = 'Ahmed',
  full_name = 'Grace Ahmed',
  email = 'grace.ahmed.958@yahoo.com',
  title = 'Staff Scientist',
  institution = 'Cornell University',
  location = 'Oxford, UK',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at Cornell University working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['computational partners','industry partners']::text[],
  availability = 'part-time',
  availability_hours = 23,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '5baa9a49-86d9-5b96-8662-a6e76f4aa203'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '0766e457-77cd-5217-9c3b-2b0dcd4b955f'::uuid,
  'authenticated',
  'authenticated',
  'mateo.bailey.959@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((59) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Mateo","last_name":"Bailey","full_name":"Mateo Bailey"}'::jsonb,
  now() - ((59) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '0766e457-77cd-5217-9c3b-2b0dcd4b955f'::uuid,
  '0766e457-77cd-5217-9c3b-2b0dcd4b955f'::uuid,
  '{"sub":"0766e457-77cd-5217-9c3b-2b0dcd4b955f","email":"mateo.bailey.959@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '0766e457-77cd-5217-9c3b-2b0dcd4b955f',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Mateo',
  last_name = 'Bailey',
  full_name = 'Mateo Bailey',
  email = 'mateo.bailey.959@proton.me',
  title = 'Visiting Scholar',
  institution = 'University of Texas at Austin',
  location = 'Singapore',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at University of Texas at Austin working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['mentorship','cross-disciplinary teammates']::text[],
  availability = 'full-time',
  availability_hours = 24,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '0766e457-77cd-5217-9c3b-2b0dcd4b955f'::uuid;


