INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'c907b363-8018-51fd-b157-c7efc9483a3a'::uuid,
  'authenticated',
  'authenticated',
  'felix.wood.175@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((175) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Felix","last_name":"Wood","full_name":"Felix Wood"}'::jsonb,
  now() - ((175) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'c907b363-8018-51fd-b157-c7efc9483a3a'::uuid,
  'c907b363-8018-51fd-b157-c7efc9483a3a'::uuid,
  '{"sub":"c907b363-8018-51fd-b157-c7efc9483a3a","email":"felix.wood.175@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'c907b363-8018-51fd-b157-c7efc9483a3a',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Felix',
  last_name = 'Wood',
  full_name = 'Felix Wood',
  email = 'felix.wood.175@gmail.com',
  title = 'PhD Candidate',
  institution = 'Columbia University',
  location = 'Atlanta, GA',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at Columbia University working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
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
WHERE id = 'c907b363-8018-51fd-b157-c7efc9483a3a'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '9c4efb8c-21ae-57f3-aa6d-9013dfe07bed'::uuid,
  'authenticated',
  'authenticated',
  'sara.patel.176@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((176) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Sara","last_name":"Patel","full_name":"Sara Patel"}'::jsonb,
  now() - ((176) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '9c4efb8c-21ae-57f3-aa6d-9013dfe07bed'::uuid,
  '9c4efb8c-21ae-57f3-aa6d-9013dfe07bed'::uuid,
  '{"sub":"9c4efb8c-21ae-57f3-aa6d-9013dfe07bed","email":"sara.patel.176@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '9c4efb8c-21ae-57f3-aa6d-9013dfe07bed',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Sara',
  last_name = 'Patel',
  full_name = 'Sara Patel',
  email = 'sara.patel.176@outlook.com',
  title = 'Research Scientist',
  institution = 'Caltech',
  location = 'Ann Arbor, MI',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at Caltech working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
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
WHERE id = '9c4efb8c-21ae-57f3-aa6d-9013dfe07bed'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '260a37d7-cab0-5455-a9ea-4fdfc304c263'::uuid,
  'authenticated',
  'authenticated',
  'james.martinez.177@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((177) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"James","last_name":"Martinez","full_name":"James Martinez"}'::jsonb,
  now() - ((177) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '260a37d7-cab0-5455-a9ea-4fdfc304c263'::uuid,
  '260a37d7-cab0-5455-a9ea-4fdfc304c263'::uuid,
  '{"sub":"260a37d7-cab0-5455-a9ea-4fdfc304c263","email":"james.martinez.177@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '260a37d7-cab0-5455-a9ea-4fdfc304c263',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'James',
  last_name = 'Martinez',
  full_name = 'James Martinez',
  email = 'james.martinez.177@icloud.com',
  title = 'Associate Professor',
  institution = 'Cornell University',
  location = 'Los Angeles, CA',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at Cornell University working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
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
WHERE id = '260a37d7-cab0-5455-a9ea-4fdfc304c263'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '4868a21a-f8c4-5dde-a114-6b20f5f20ac8'::uuid,
  'authenticated',
  'authenticated',
  'grace.ahmed.178@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((178) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Grace","last_name":"Ahmed","full_name":"Grace Ahmed"}'::jsonb,
  now() - ((178) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '4868a21a-f8c4-5dde-a114-6b20f5f20ac8'::uuid,
  '4868a21a-f8c4-5dde-a114-6b20f5f20ac8'::uuid,
  '{"sub":"4868a21a-f8c4-5dde-a114-6b20f5f20ac8","email":"grace.ahmed.178@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '4868a21a-f8c4-5dde-a114-6b20f5f20ac8',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Grace',
  last_name = 'Ahmed',
  full_name = 'Grace Ahmed',
  email = 'grace.ahmed.178@yahoo.com',
  title = 'Staff Scientist',
  institution = 'University of Texas at Austin',
  location = 'New York, NY',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at University of Texas at Austin working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
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
WHERE id = '4868a21a-f8c4-5dde-a114-6b20f5f20ac8'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '2793edac-d756-588c-b8dd-e83001afa7ec'::uuid,
  'authenticated',
  'authenticated',
  'mateo.bailey.179@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((179) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Mateo","last_name":"Bailey","full_name":"Mateo Bailey"}'::jsonb,
  now() - ((179) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '2793edac-d756-588c-b8dd-e83001afa7ec'::uuid,
  '2793edac-d756-588c-b8dd-e83001afa7ec'::uuid,
  '{"sub":"2793edac-d756-588c-b8dd-e83001afa7ec","email":"mateo.bailey.179@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '2793edac-d756-588c-b8dd-e83001afa7ec',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Mateo',
  last_name = 'Bailey',
  full_name = 'Mateo Bailey',
  email = 'mateo.bailey.179@proton.me',
  title = 'Visiting Scholar',
  institution = 'EPFL',
  location = 'Chicago, IL',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at EPFL working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
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
WHERE id = '2793edac-d756-588c-b8dd-e83001afa7ec'::uuid;


