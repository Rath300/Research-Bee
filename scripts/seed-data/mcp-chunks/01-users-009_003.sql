INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'd81b3e8e-0894-50b8-a768-1c93c175f5ff'::uuid,
  'authenticated',
  'authenticated',
  'lina.murphy.484@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((384) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Lina","last_name":"Murphy","full_name":"Lina Murphy"}'::jsonb,
  now() - ((384) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'd81b3e8e-0894-50b8-a768-1c93c175f5ff'::uuid,
  'd81b3e8e-0894-50b8-a768-1c93c175f5ff'::uuid,
  '{"sub":"d81b3e8e-0894-50b8-a768-1c93c175f5ff","email":"lina.murphy.484@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'd81b3e8e-0894-50b8-a768-1c93c175f5ff',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Lina',
  last_name = 'Murphy',
  full_name = 'Lina Murphy',
  email = 'lina.murphy.484@proton.me',
  title = 'Visiting Scholar',
  institution = 'EPFL',
  location = 'London, UK',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at EPFL working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['co-authors','mentorship']::text[],
  availability = 'part-time',
  availability_hours = 9,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'd81b3e8e-0894-50b8-a768-1c93c175f5ff'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '67d547f3-901b-54ad-bb0d-bce73112f05c'::uuid,
  'authenticated',
  'authenticated',
  'david.torres.485@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((385) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"David","last_name":"Torres","full_name":"David Torres"}'::jsonb,
  now() - ((385) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '67d547f3-901b-54ad-bb0d-bce73112f05c'::uuid,
  '67d547f3-901b-54ad-bb0d-bce73112f05c'::uuid,
  '{"sub":"67d547f3-901b-54ad-bb0d-bce73112f05c","email":"david.torres.485@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '67d547f3-901b-54ad-bb0d-bce73112f05c',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'David',
  last_name = 'Torres',
  full_name = 'David Torres',
  email = 'david.torres.485@gmail.com',
  title = 'PhD Candidate',
  institution = 'UC Berkeley',
  location = 'Seattle, WA',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at UC Berkeley working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['experimental collaborators','grant collaborators']::text[],
  availability = 'full-time',
  availability_hours = 10,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '67d547f3-901b-54ad-bb0d-bce73112f05c'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '428fd599-4b5e-50f7-937a-efec64706021'::uuid,
  'authenticated',
  'authenticated',
  'aisha.barnes.486@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((386) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Aisha","last_name":"Barnes","full_name":"Aisha Barnes"}'::jsonb,
  now() - ((386) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '428fd599-4b5e-50f7-937a-efec64706021'::uuid,
  '428fd599-4b5e-50f7-937a-efec64706021'::uuid,
  '{"sub":"428fd599-4b5e-50f7-937a-efec64706021","email":"aisha.barnes.486@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '428fd599-4b5e-50f7-937a-efec64706021',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Aisha',
  last_name = 'Barnes',
  full_name = 'Aisha Barnes',
  email = 'aisha.barnes.486@outlook.com',
  title = 'Research Scientist',
  institution = 'University of Washington',
  location = 'Pittsburgh, PA',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at University of Washington working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['computational partners','industry partners']::text[],
  availability = 'weekends',
  availability_hours = 11,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '428fd599-4b5e-50f7-937a-efec64706021'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '70a561b0-2ce9-5dd8-9d43-5ba67b9cd912'::uuid,
  'authenticated',
  'authenticated',
  'diego.nguyen.487@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((387) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Diego","last_name":"Nguyen","full_name":"Diego Nguyen"}'::jsonb,
  now() - ((387) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '70a561b0-2ce9-5dd8-9d43-5ba67b9cd912'::uuid,
  '70a561b0-2ce9-5dd8-9d43-5ba67b9cd912'::uuid,
  '{"sub":"70a561b0-2ce9-5dd8-9d43-5ba67b9cd912","email":"diego.nguyen.487@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '70a561b0-2ce9-5dd8-9d43-5ba67b9cd912',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Diego',
  last_name = 'Nguyen',
  full_name = 'Diego Nguyen',
  email = 'diego.nguyen.487@icloud.com',
  title = 'Associate Professor',
  institution = 'Columbia University',
  location = 'Atlanta, GA',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at Columbia University working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['mentorship','cross-disciplinary teammates']::text[],
  availability = 'part-time',
  availability_hours = 12,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '70a561b0-2ce9-5dd8-9d43-5ba67b9cd912'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '11da8f2c-7470-5582-a044-f03903e3992c'::uuid,
  'authenticated',
  'authenticated',
  'nadia.singh.488@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((388) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Nadia","last_name":"Singh","full_name":"Nadia Singh"}'::jsonb,
  now() - ((388) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '11da8f2c-7470-5582-a044-f03903e3992c'::uuid,
  '11da8f2c-7470-5582-a044-f03903e3992c'::uuid,
  '{"sub":"11da8f2c-7470-5582-a044-f03903e3992c","email":"nadia.singh.488@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '11da8f2c-7470-5582-a044-f03903e3992c',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Nadia',
  last_name = 'Singh',
  full_name = 'Nadia Singh',
  email = 'nadia.singh.488@yahoo.com',
  title = 'Staff Scientist',
  institution = 'Caltech',
  location = 'Ann Arbor, MI',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at Caltech working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['grant collaborators','data partners']::text[],
  availability = 'full-time',
  availability_hours = 13,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '11da8f2c-7470-5582-a044-f03903e3992c'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '011fcd13-5185-5206-809d-115892a24501'::uuid,
  'authenticated',
  'authenticated',
  'adrian.davis.489@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((389) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Adrian","last_name":"Davis","full_name":"Adrian Davis"}'::jsonb,
  now() - ((389) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '011fcd13-5185-5206-809d-115892a24501'::uuid,
  '011fcd13-5185-5206-809d-115892a24501'::uuid,
  '{"sub":"011fcd13-5185-5206-809d-115892a24501","email":"adrian.davis.489@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '011fcd13-5185-5206-809d-115892a24501',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Adrian',
  last_name = 'Davis',
  full_name = 'Adrian Davis',
  email = 'adrian.davis.489@proton.me',
  title = 'Visiting Scholar',
  institution = 'Cornell University',
  location = 'Los Angeles, CA',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at Cornell University working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['industry partners','co-authors']::text[],
  availability = 'weekends',
  availability_hours = 14,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '011fcd13-5185-5206-809d-115892a24501'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid,
  'authenticated',
  'authenticated',
  'mei.cooper.490@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((390) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Mei","last_name":"Cooper","full_name":"Mei Cooper"}'::jsonb,
  now() - ((390) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid,
  'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid,
  '{"sub":"c4ef2ef0-0552-5348-95d2-deab0126affb","email":"mei.cooper.490@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'c4ef2ef0-0552-5348-95d2-deab0126affb',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Mei',
  last_name = 'Cooper',
  full_name = 'Mei Cooper',
  email = 'mei.cooper.490@gmail.com',
  title = 'PhD Candidate',
  institution = 'University of Texas at Austin',
  location = 'New York, NY',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at University of Texas at Austin working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['cross-disciplinary teammates','experimental collaborators']::text[],
  availability = 'part-time',
  availability_hours = 15,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'c4ef2ef0-0552-5348-95d2-deab0126affb'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '170229dc-697e-5b38-8001-6e6980b262ff'::uuid,
  'authenticated',
  'authenticated',
  'henry.brooks.491@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((391) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Henry","last_name":"Brooks","full_name":"Henry Brooks"}'::jsonb,
  now() - ((391) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '170229dc-697e-5b38-8001-6e6980b262ff'::uuid,
  '170229dc-697e-5b38-8001-6e6980b262ff'::uuid,
  '{"sub":"170229dc-697e-5b38-8001-6e6980b262ff","email":"henry.brooks.491@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '170229dc-697e-5b38-8001-6e6980b262ff',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Henry',
  last_name = 'Brooks',
  full_name = 'Henry Brooks',
  email = 'henry.brooks.491@outlook.com',
  title = 'Research Scientist',
  institution = 'EPFL',
  location = 'Chicago, IL',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at EPFL working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['data partners','computational partners']::text[],
  availability = 'full-time',
  availability_hours = 16,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '170229dc-697e-5b38-8001-6e6980b262ff'::uuid;