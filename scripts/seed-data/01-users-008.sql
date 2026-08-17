-- population users 320..359

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'a4e70726-d19d-5c33-89d1-0754ffd062b1'::uuid,
  'authenticated',
  'authenticated',
  'isla.watson.420@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((320) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Isla","last_name":"Watson","full_name":"Isla Watson"}'::jsonb,
  now() - ((320) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'a4e70726-d19d-5c33-89d1-0754ffd062b1'::uuid,
  'a4e70726-d19d-5c33-89d1-0754ffd062b1'::uuid,
  '{"sub":"a4e70726-d19d-5c33-89d1-0754ffd062b1","email":"isla.watson.420@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'a4e70726-d19d-5c33-89d1-0754ffd062b1',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Isla',
  last_name = 'Watson',
  full_name = 'Isla Watson',
  email = 'isla.watson.420@gmail.com',
  title = 'PhD Candidate',
  institution = 'University of Texas at Austin',
  location = 'Zurich, CH',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at University of Texas at Austin working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['co-authors','mentorship']::text[],
  availability = 'weekends',
  availability_hours = 5,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'a4e70726-d19d-5c33-89d1-0754ffd062b1'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'a018203c-46b7-508f-95c6-b6c42580c16c'::uuid,
  'authenticated',
  'authenticated',
  'theo.perry.421@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((321) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Theo","last_name":"Perry","full_name":"Theo Perry"}'::jsonb,
  now() - ((321) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'a018203c-46b7-508f-95c6-b6c42580c16c'::uuid,
  'a018203c-46b7-508f-95c6-b6c42580c16c'::uuid,
  '{"sub":"a018203c-46b7-508f-95c6-b6c42580c16c","email":"theo.perry.421@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'a018203c-46b7-508f-95c6-b6c42580c16c',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Theo',
  last_name = 'Perry',
  full_name = 'Theo Perry',
  email = 'theo.perry.421@outlook.com',
  title = 'Research Scientist',
  institution = 'EPFL',
  location = 'London, UK',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at EPFL working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['experimental collaborators','grant collaborators']::text[],
  availability = 'part-time',
  availability_hours = 6,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'a018203c-46b7-508f-95c6-b6c42580c16c'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'fa10485d-6ae3-5acc-afcd-cb141834f70e'::uuid,
  'authenticated',
  'authenticated',
  'yara.silva.422@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((322) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Yara","last_name":"Silva","full_name":"Yara Silva"}'::jsonb,
  now() - ((322) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'fa10485d-6ae3-5acc-afcd-cb141834f70e'::uuid,
  'fa10485d-6ae3-5acc-afcd-cb141834f70e'::uuid,
  '{"sub":"fa10485d-6ae3-5acc-afcd-cb141834f70e","email":"yara.silva.422@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'fa10485d-6ae3-5acc-afcd-cb141834f70e',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Yara',
  last_name = 'Silva',
  full_name = 'Yara Silva',
  email = 'yara.silva.422@icloud.com',
  title = 'Associate Professor',
  institution = 'UC Berkeley',
  location = 'Seattle, WA',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at UC Berkeley working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['computational partners','industry partners']::text[],
  availability = 'full-time',
  availability_hours = 7,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'fa10485d-6ae3-5acc-afcd-cb141834f70e'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'af8dc57b-50ea-53e4-83a2-7fc4513a247e'::uuid,
  'authenticated',
  'authenticated',
  'lucas.thompson.423@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((323) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Lucas","last_name":"Thompson","full_name":"Lucas Thompson"}'::jsonb,
  now() - ((323) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'af8dc57b-50ea-53e4-83a2-7fc4513a247e'::uuid,
  'af8dc57b-50ea-53e4-83a2-7fc4513a247e'::uuid,
  '{"sub":"af8dc57b-50ea-53e4-83a2-7fc4513a247e","email":"lucas.thompson.423@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'af8dc57b-50ea-53e4-83a2-7fc4513a247e',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Lucas',
  last_name = 'Thompson',
  full_name = 'Lucas Thompson',
  email = 'lucas.thompson.423@yahoo.com',
  title = 'Staff Scientist',
  institution = 'University of Washington',
  location = 'Pittsburgh, PA',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at University of Washington working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['mentorship','cross-disciplinary teammates']::text[],
  availability = 'weekends',
  availability_hours = 8,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'af8dc57b-50ea-53e4-83a2-7fc4513a247e'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '71ce6f8f-e4ca-5b43-9477-04524c1dfb5a'::uuid,
  'authenticated',
  'authenticated',
  'lina.murphy.424@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((324) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Lina","last_name":"Murphy","full_name":"Lina Murphy"}'::jsonb,
  now() - ((324) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '71ce6f8f-e4ca-5b43-9477-04524c1dfb5a'::uuid,
  '71ce6f8f-e4ca-5b43-9477-04524c1dfb5a'::uuid,
  '{"sub":"71ce6f8f-e4ca-5b43-9477-04524c1dfb5a","email":"lina.murphy.424@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '71ce6f8f-e4ca-5b43-9477-04524c1dfb5a',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Lina',
  last_name = 'Murphy',
  full_name = 'Lina Murphy',
  email = 'lina.murphy.424@proton.me',
  title = 'Visiting Scholar',
  institution = 'Columbia University',
  location = 'Atlanta, GA',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at Columbia University working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['grant collaborators','data partners']::text[],
  availability = 'part-time',
  availability_hours = 9,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '71ce6f8f-e4ca-5b43-9477-04524c1dfb5a'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid,
  'authenticated',
  'authenticated',
  'david.torres.425@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((325) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"David","last_name":"Torres","full_name":"David Torres"}'::jsonb,
  now() - ((325) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid,
  'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid,
  '{"sub":"bc2650de-359b-5d32-a9a3-86dcfb8b6086","email":"david.torres.425@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'bc2650de-359b-5d32-a9a3-86dcfb8b6086',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'David',
  last_name = 'Torres',
  full_name = 'David Torres',
  email = 'david.torres.425@gmail.com',
  title = 'PhD Candidate',
  institution = 'Caltech',
  location = 'Ann Arbor, MI',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at Caltech working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['industry partners','co-authors']::text[],
  availability = 'full-time',
  availability_hours = 10,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'bc2650de-359b-5d32-a9a3-86dcfb8b6086'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'fb2d5ae5-7a9f-5875-9562-025ba2ec14d4'::uuid,
  'authenticated',
  'authenticated',
  'aisha.barnes.426@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((326) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Aisha","last_name":"Barnes","full_name":"Aisha Barnes"}'::jsonb,
  now() - ((326) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'fb2d5ae5-7a9f-5875-9562-025ba2ec14d4'::uuid,
  'fb2d5ae5-7a9f-5875-9562-025ba2ec14d4'::uuid,
  '{"sub":"fb2d5ae5-7a9f-5875-9562-025ba2ec14d4","email":"aisha.barnes.426@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'fb2d5ae5-7a9f-5875-9562-025ba2ec14d4',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Aisha',
  last_name = 'Barnes',
  full_name = 'Aisha Barnes',
  email = 'aisha.barnes.426@outlook.com',
  title = 'Research Scientist',
  institution = 'Cornell University',
  location = 'Los Angeles, CA',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at Cornell University working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['cross-disciplinary teammates','experimental collaborators']::text[],
  availability = 'weekends',
  availability_hours = 11,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'fb2d5ae5-7a9f-5875-9562-025ba2ec14d4'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '69277a59-ad8b-5c35-96d3-fd6fd63ad891'::uuid,
  'authenticated',
  'authenticated',
  'diego.nguyen.427@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((327) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Diego","last_name":"Nguyen","full_name":"Diego Nguyen"}'::jsonb,
  now() - ((327) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '69277a59-ad8b-5c35-96d3-fd6fd63ad891'::uuid,
  '69277a59-ad8b-5c35-96d3-fd6fd63ad891'::uuid,
  '{"sub":"69277a59-ad8b-5c35-96d3-fd6fd63ad891","email":"diego.nguyen.427@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '69277a59-ad8b-5c35-96d3-fd6fd63ad891',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Diego',
  last_name = 'Nguyen',
  full_name = 'Diego Nguyen',
  email = 'diego.nguyen.427@icloud.com',
  title = 'Associate Professor',
  institution = 'University of Texas at Austin',
  location = 'New York, NY',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at University of Texas at Austin working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['data partners','computational partners']::text[],
  availability = 'part-time',
  availability_hours = 12,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '69277a59-ad8b-5c35-96d3-fd6fd63ad891'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'fdc8933e-6690-5207-97f2-2a058742d9d3'::uuid,
  'authenticated',
  'authenticated',
  'nadia.singh.428@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((328) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Nadia","last_name":"Singh","full_name":"Nadia Singh"}'::jsonb,
  now() - ((328) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'fdc8933e-6690-5207-97f2-2a058742d9d3'::uuid,
  'fdc8933e-6690-5207-97f2-2a058742d9d3'::uuid,
  '{"sub":"fdc8933e-6690-5207-97f2-2a058742d9d3","email":"nadia.singh.428@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'fdc8933e-6690-5207-97f2-2a058742d9d3',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Nadia',
  last_name = 'Singh',
  full_name = 'Nadia Singh',
  email = 'nadia.singh.428@yahoo.com',
  title = 'Staff Scientist',
  institution = 'EPFL',
  location = 'Chicago, IL',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at EPFL working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['co-authors','mentorship']::text[],
  availability = 'full-time',
  availability_hours = 13,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'fdc8933e-6690-5207-97f2-2a058742d9d3'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '24503db7-b85d-5a77-b0b4-10e285806d5d'::uuid,
  'authenticated',
  'authenticated',
  'adrian.davis.429@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((329) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Adrian","last_name":"Davis","full_name":"Adrian Davis"}'::jsonb,
  now() - ((329) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '24503db7-b85d-5a77-b0b4-10e285806d5d'::uuid,
  '24503db7-b85d-5a77-b0b4-10e285806d5d'::uuid,
  '{"sub":"24503db7-b85d-5a77-b0b4-10e285806d5d","email":"adrian.davis.429@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '24503db7-b85d-5a77-b0b4-10e285806d5d',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Adrian',
  last_name = 'Davis',
  full_name = 'Adrian Davis',
  email = 'adrian.davis.429@proton.me',
  title = 'Visiting Scholar',
  institution = 'UC Berkeley',
  location = 'Baltimore, MD',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at UC Berkeley working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['experimental collaborators','grant collaborators']::text[],
  availability = 'weekends',
  availability_hours = 14,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '24503db7-b85d-5a77-b0b4-10e285806d5d'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '1169c7b0-7d07-5511-aae5-149d80f82401'::uuid,
  'authenticated',
  'authenticated',
  'mei.cooper.430@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((330) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Mei","last_name":"Cooper","full_name":"Mei Cooper"}'::jsonb,
  now() - ((330) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '1169c7b0-7d07-5511-aae5-149d80f82401'::uuid,
  '1169c7b0-7d07-5511-aae5-149d80f82401'::uuid,
  '{"sub":"1169c7b0-7d07-5511-aae5-149d80f82401","email":"mei.cooper.430@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '1169c7b0-7d07-5511-aae5-149d80f82401',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Mei',
  last_name = 'Cooper',
  full_name = 'Mei Cooper',
  email = 'mei.cooper.430@gmail.com',
  title = 'PhD Candidate',
  institution = 'University of Washington',
  location = 'New Haven, CT',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at University of Washington working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['computational partners','industry partners']::text[],
  availability = 'part-time',
  availability_hours = 15,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '1169c7b0-7d07-5511-aae5-149d80f82401'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '6de3b6b4-174d-5f72-985c-bcd16c8eb18e'::uuid,
  'authenticated',
  'authenticated',
  'henry.brooks.431@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((331) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Henry","last_name":"Brooks","full_name":"Henry Brooks"}'::jsonb,
  now() - ((331) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '6de3b6b4-174d-5f72-985c-bcd16c8eb18e'::uuid,
  '6de3b6b4-174d-5f72-985c-bcd16c8eb18e'::uuid,
  '{"sub":"6de3b6b4-174d-5f72-985c-bcd16c8eb18e","email":"henry.brooks.431@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '6de3b6b4-174d-5f72-985c-bcd16c8eb18e',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Henry',
  last_name = 'Brooks',
  full_name = 'Henry Brooks',
  email = 'henry.brooks.431@outlook.com',
  title = 'Research Scientist',
  institution = 'Columbia University',
  location = 'Princeton, NJ',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at Columbia University working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['mentorship','cross-disciplinary teammates']::text[],
  availability = 'full-time',
  availability_hours = 16,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '6de3b6b4-174d-5f72-985c-bcd16c8eb18e'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '67f6dfe8-0447-57a4-92f8-94fc53ee9c7c'::uuid,
  'authenticated',
  'authenticated',
  'riya.powell.432@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((332) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Riya","last_name":"Powell","full_name":"Riya Powell"}'::jsonb,
  now() - ((332) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '67f6dfe8-0447-57a4-92f8-94fc53ee9c7c'::uuid,
  '67f6dfe8-0447-57a4-92f8-94fc53ee9c7c'::uuid,
  '{"sub":"67f6dfe8-0447-57a4-92f8-94fc53ee9c7c","email":"riya.powell.432@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '67f6dfe8-0447-57a4-92f8-94fc53ee9c7c',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Riya',
  last_name = 'Powell',
  full_name = 'Riya Powell',
  email = 'riya.powell.432@icloud.com',
  title = 'Associate Professor',
  institution = 'Caltech',
  location = 'Pasadena, CA',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at Caltech working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['grant collaborators','data partners']::text[],
  availability = 'weekends',
  availability_hours = 17,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '67f6dfe8-0447-57a4-92f8-94fc53ee9c7c'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '04149813-8770-5834-9525-c8ba8a4f02af'::uuid,
  'authenticated',
  'authenticated',
  'nathan.brown.433@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((333) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Nathan","last_name":"Brown","full_name":"Nathan Brown"}'::jsonb,
  now() - ((333) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '04149813-8770-5834-9525-c8ba8a4f02af'::uuid,
  '04149813-8770-5834-9525-c8ba8a4f02af'::uuid,
  '{"sub":"04149813-8770-5834-9525-c8ba8a4f02af","email":"nathan.brown.433@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '04149813-8770-5834-9525-c8ba8a4f02af',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Nathan',
  last_name = 'Brown',
  full_name = 'Nathan Brown',
  email = 'nathan.brown.433@yahoo.com',
  title = 'Staff Scientist',
  institution = 'Cornell University',
  location = 'Oxford, UK',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at Cornell University working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['industry partners','co-authors']::text[],
  availability = 'part-time',
  availability_hours = 18,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '04149813-8770-5834-9525-c8ba8a4f02af'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'be55f1ea-eccd-59f9-8e54-46ada091ac8d'::uuid,
  'authenticated',
  'authenticated',
  'priya.sato.434@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((334) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Priya","last_name":"Sato","full_name":"Priya Sato"}'::jsonb,
  now() - ((334) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'be55f1ea-eccd-59f9-8e54-46ada091ac8d'::uuid,
  'be55f1ea-eccd-59f9-8e54-46ada091ac8d'::uuid,
  '{"sub":"be55f1ea-eccd-59f9-8e54-46ada091ac8d","email":"priya.sato.434@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'be55f1ea-eccd-59f9-8e54-46ada091ac8d',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Priya',
  last_name = 'Sato',
  full_name = 'Priya Sato',
  email = 'priya.sato.434@proton.me',
  title = 'Visiting Scholar',
  institution = 'University of Texas at Austin',
  location = 'Singapore',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at University of Texas at Austin working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['cross-disciplinary teammates','experimental collaborators']::text[],
  availability = 'full-time',
  availability_hours = 19,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'be55f1ea-eccd-59f9-8e54-46ada091ac8d'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid,
  'authenticated',
  'authenticated',
  'omar.ibrahim.435@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((335) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Omar","last_name":"Ibrahim","full_name":"Omar Ibrahim"}'::jsonb,
  now() - ((335) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid,
  'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid,
  '{"sub":"a062e666-a2a5-5c07-8d77-fce75a8de9ca","email":"omar.ibrahim.435@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'a062e666-a2a5-5c07-8d77-fce75a8de9ca',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Omar',
  last_name = 'Ibrahim',
  full_name = 'Omar Ibrahim',
  email = 'omar.ibrahim.435@gmail.com',
  title = 'PhD Candidate',
  institution = 'EPFL',
  location = 'Melbourne, AU',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at EPFL working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['data partners','computational partners']::text[],
  availability = 'weekends',
  availability_hours = 20,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'a062e666-a2a5-5c07-8d77-fce75a8de9ca'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid,
  'authenticated',
  'authenticated',
  'chloe.peterson.436@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((336) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Chloe","last_name":"Peterson","full_name":"Chloe Peterson"}'::jsonb,
  now() - ((336) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid,
  '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid,
  '{"sub":"765f5441-9f9d-5b2c-bdfe-29fecaac8032","email":"chloe.peterson.436@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '765f5441-9f9d-5b2c-bdfe-29fecaac8032',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Chloe',
  last_name = 'Peterson',
  full_name = 'Chloe Peterson',
  email = 'chloe.peterson.436@outlook.com',
  title = 'Research Scientist',
  institution = 'UC Berkeley',
  location = 'Cambridge, MA',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at UC Berkeley working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['co-authors','mentorship']::text[],
  availability = 'part-time',
  availability_hours = 21,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '765f5441-9f9d-5b2c-bdfe-29fecaac8032'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '609dd045-14e3-5c3d-85ff-20eee69ac0e1'::uuid,
  'authenticated',
  'authenticated',
  'owen.ross.437@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((337) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Owen","last_name":"Ross","full_name":"Owen Ross"}'::jsonb,
  now() - ((337) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '609dd045-14e3-5c3d-85ff-20eee69ac0e1'::uuid,
  '609dd045-14e3-5c3d-85ff-20eee69ac0e1'::uuid,
  '{"sub":"609dd045-14e3-5c3d-85ff-20eee69ac0e1","email":"owen.ross.437@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '609dd045-14e3-5c3d-85ff-20eee69ac0e1',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Owen',
  last_name = 'Ross',
  full_name = 'Owen Ross',
  email = 'owen.ross.437@icloud.com',
  title = 'Associate Professor',
  institution = 'University of Washington',
  location = 'Palo Alto, CA',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at University of Washington working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['experimental collaborators','grant collaborators']::text[],
  availability = 'full-time',
  availability_hours = 22,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '609dd045-14e3-5c3d-85ff-20eee69ac0e1'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'aa479ed7-f579-59a4-b70d-6c3d8577050a'::uuid,
  'authenticated',
  'authenticated',
  'violet.garcia.438@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((338) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Violet","last_name":"Garcia","full_name":"Violet Garcia"}'::jsonb,
  now() - ((338) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'aa479ed7-f579-59a4-b70d-6c3d8577050a'::uuid,
  'aa479ed7-f579-59a4-b70d-6c3d8577050a'::uuid,
  '{"sub":"aa479ed7-f579-59a4-b70d-6c3d8577050a","email":"violet.garcia.438@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'aa479ed7-f579-59a4-b70d-6c3d8577050a',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Violet',
  last_name = 'Garcia',
  full_name = 'Violet Garcia',
  email = 'violet.garcia.438@yahoo.com',
  title = 'Staff Scientist',
  institution = 'Columbia University',
  location = 'Berkeley, CA',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at Columbia University working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['computational partners','industry partners']::text[],
  availability = 'weekends',
  availability_hours = 23,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'aa479ed7-f579-59a4-b70d-6c3d8577050a'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '0a84f6cc-24db-56ca-b075-cb47c6b6a9fc'::uuid,
  'authenticated',
  'authenticated',
  'leo.wang.439@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((339) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Leo","last_name":"Wang","full_name":"Leo Wang"}'::jsonb,
  now() - ((339) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '0a84f6cc-24db-56ca-b075-cb47c6b6a9fc'::uuid,
  '0a84f6cc-24db-56ca-b075-cb47c6b6a9fc'::uuid,
  '{"sub":"0a84f6cc-24db-56ca-b075-cb47c6b6a9fc","email":"leo.wang.439@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '0a84f6cc-24db-56ca-b075-cb47c6b6a9fc',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Leo',
  last_name = 'Wang',
  full_name = 'Leo Wang',
  email = 'leo.wang.439@proton.me',
  title = 'Visiting Scholar',
  institution = 'Caltech',
  location = 'Boston, MA',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at Caltech working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['mentorship','cross-disciplinary teammates']::text[],
  availability = 'part-time',
  availability_hours = 24,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '0a84f6cc-24db-56ca-b075-cb47c6b6a9fc'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'e58b467c-3b92-5318-aac0-d48d03143307'::uuid,
  'authenticated',
  'authenticated',
  'tara.fernandez.440@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((340) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Tara","last_name":"Fernandez","full_name":"Tara Fernandez"}'::jsonb,
  now() - ((340) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'e58b467c-3b92-5318-aac0-d48d03143307'::uuid,
  'e58b467c-3b92-5318-aac0-d48d03143307'::uuid,
  '{"sub":"e58b467c-3b92-5318-aac0-d48d03143307","email":"tara.fernandez.440@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'e58b467c-3b92-5318-aac0-d48d03143307',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Tara',
  last_name = 'Fernandez',
  full_name = 'Tara Fernandez',
  email = 'tara.fernandez.440@gmail.com',
  title = 'PhD Candidate',
  institution = 'Cornell University',
  location = 'Toronto, ON',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at Cornell University working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['grant collaborators','data partners']::text[],
  availability = 'full-time',
  availability_hours = 5,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'e58b467c-3b92-5318-aac0-d48d03143307'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '6967920a-06a3-5d3b-9991-777798ca8208'::uuid,
  'authenticated',
  'authenticated',
  'aaron.richardson.441@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((341) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Aaron","last_name":"Richardson","full_name":"Aaron Richardson"}'::jsonb,
  now() - ((341) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '6967920a-06a3-5d3b-9991-777798ca8208'::uuid,
  '6967920a-06a3-5d3b-9991-777798ca8208'::uuid,
  '{"sub":"6967920a-06a3-5d3b-9991-777798ca8208","email":"aaron.richardson.441@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '6967920a-06a3-5d3b-9991-777798ca8208',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Aaron',
  last_name = 'Richardson',
  full_name = 'Aaron Richardson',
  email = 'aaron.richardson.441@outlook.com',
  title = 'Research Scientist',
  institution = 'University of Texas at Austin',
  location = 'Zurich, CH',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at University of Texas at Austin working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['industry partners','co-authors']::text[],
  availability = 'weekends',
  availability_hours = 6,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '6967920a-06a3-5d3b-9991-777798ca8208'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '2b24a057-2c43-5e19-9879-bc6d9f866992'::uuid,
  'authenticated',
  'authenticated',
  'imani.sanders.442@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((342) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Imani","last_name":"Sanders","full_name":"Imani Sanders"}'::jsonb,
  now() - ((342) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '2b24a057-2c43-5e19-9879-bc6d9f866992'::uuid,
  '2b24a057-2c43-5e19-9879-bc6d9f866992'::uuid,
  '{"sub":"2b24a057-2c43-5e19-9879-bc6d9f866992","email":"imani.sanders.442@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '2b24a057-2c43-5e19-9879-bc6d9f866992',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Imani',
  last_name = 'Sanders',
  full_name = 'Imani Sanders',
  email = 'imani.sanders.442@icloud.com',
  title = 'Associate Professor',
  institution = 'EPFL',
  location = 'London, UK',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at EPFL working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['cross-disciplinary teammates','experimental collaborators']::text[],
  availability = 'part-time',
  availability_hours = 7,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '2b24a057-2c43-5e19-9879-bc6d9f866992'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '7af7f811-5976-5178-bda2-880a5acb1093'::uuid,
  'authenticated',
  'authenticated',
  'noah.long.443@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((343) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Noah","last_name":"Long","full_name":"Noah Long"}'::jsonb,
  now() - ((343) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '7af7f811-5976-5178-bda2-880a5acb1093'::uuid,
  '7af7f811-5976-5178-bda2-880a5acb1093'::uuid,
  '{"sub":"7af7f811-5976-5178-bda2-880a5acb1093","email":"noah.long.443@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '7af7f811-5976-5178-bda2-880a5acb1093',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Noah',
  last_name = 'Long',
  full_name = 'Noah Long',
  email = 'noah.long.443@yahoo.com',
  title = 'Staff Scientist',
  institution = 'UC Berkeley',
  location = 'Seattle, WA',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at UC Berkeley working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['data partners','computational partners']::text[],
  availability = 'full-time',
  availability_hours = 8,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '7af7f811-5976-5178-bda2-880a5acb1093'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '02ed9420-1ec1-5ff8-a431-c0a1e337809f'::uuid,
  'authenticated',
  'authenticated',
  'amelia.khan.444@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((344) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Amelia","last_name":"Khan","full_name":"Amelia Khan"}'::jsonb,
  now() - ((344) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '02ed9420-1ec1-5ff8-a431-c0a1e337809f'::uuid,
  '02ed9420-1ec1-5ff8-a431-c0a1e337809f'::uuid,
  '{"sub":"02ed9420-1ec1-5ff8-a431-c0a1e337809f","email":"amelia.khan.444@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '02ed9420-1ec1-5ff8-a431-c0a1e337809f',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Amelia',
  last_name = 'Khan',
  full_name = 'Amelia Khan',
  email = 'amelia.khan.444@proton.me',
  title = 'Visiting Scholar',
  institution = 'University of Washington',
  location = 'Pittsburgh, PA',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at University of Washington working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['co-authors','mentorship']::text[],
  availability = 'weekends',
  availability_hours = 9,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '02ed9420-1ec1-5ff8-a431-c0a1e337809f'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid,
  'authenticated',
  'authenticated',
  'ethan.rodriguez.445@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((345) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Ethan","last_name":"Rodriguez","full_name":"Ethan Rodriguez"}'::jsonb,
  now() - ((345) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid,
  '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid,
  '{"sub":"9dec2fc1-97ee-59e7-8f55-a35dd27f5e68","email":"ethan.rodriguez.445@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Ethan',
  last_name = 'Rodriguez',
  full_name = 'Ethan Rodriguez',
  email = 'ethan.rodriguez.445@gmail.com',
  title = 'PhD Candidate',
  institution = 'Columbia University',
  location = 'Atlanta, GA',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at Columbia University working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
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
WHERE id = '9dec2fc1-97ee-59e7-8f55-a35dd27f5e68'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '28443b95-67f6-5761-846b-913b1661ecc8'::uuid,
  'authenticated',
  'authenticated',
  'leila.turner.446@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((346) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Leila","last_name":"Turner","full_name":"Leila Turner"}'::jsonb,
  now() - ((346) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '28443b95-67f6-5761-846b-913b1661ecc8'::uuid,
  '28443b95-67f6-5761-846b-913b1661ecc8'::uuid,
  '{"sub":"28443b95-67f6-5761-846b-913b1661ecc8","email":"leila.turner.446@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '28443b95-67f6-5761-846b-913b1661ecc8',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Leila',
  last_name = 'Turner',
  full_name = 'Leila Turner',
  email = 'leila.turner.446@outlook.com',
  title = 'Research Scientist',
  institution = 'Caltech',
  location = 'Ann Arbor, MI',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at Caltech working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
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
WHERE id = '28443b95-67f6-5761-846b-913b1661ecc8'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '0ffcb638-a6ff-52c5-9329-92243f0d18c9'::uuid,
  'authenticated',
  'authenticated',
  'caleb.gray.447@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((347) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Caleb","last_name":"Gray","full_name":"Caleb Gray"}'::jsonb,
  now() - ((347) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '0ffcb638-a6ff-52c5-9329-92243f0d18c9'::uuid,
  '0ffcb638-a6ff-52c5-9329-92243f0d18c9'::uuid,
  '{"sub":"0ffcb638-a6ff-52c5-9329-92243f0d18c9","email":"caleb.gray.447@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '0ffcb638-a6ff-52c5-9329-92243f0d18c9',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Caleb',
  last_name = 'Gray',
  full_name = 'Caleb Gray',
  email = 'caleb.gray.447@icloud.com',
  title = 'Associate Professor',
  institution = 'Cornell University',
  location = 'Los Angeles, CA',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at Cornell University working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
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
WHERE id = '0ffcb638-a6ff-52c5-9329-92243f0d18c9'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid,
  'authenticated',
  'authenticated',
  'sana.henderson.448@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((348) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Sana","last_name":"Henderson","full_name":"Sana Henderson"}'::jsonb,
  now() - ((348) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid,
  'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid,
  '{"sub":"a40ec9ee-1e70-5f29-94c2-fb47666370e3","email":"sana.henderson.448@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'a40ec9ee-1e70-5f29-94c2-fb47666370e3',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Sana',
  last_name = 'Henderson',
  full_name = 'Sana Henderson',
  email = 'sana.henderson.448@yahoo.com',
  title = 'Staff Scientist',
  institution = 'University of Texas at Austin',
  location = 'New York, NY',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at University of Texas at Austin working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
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
WHERE id = 'a40ec9ee-1e70-5f29-94c2-fb47666370e3'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'a1e53141-e2a4-5537-b833-38f04e7a7b38'::uuid,
  'authenticated',
  'authenticated',
  'marcus.kim.449@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((349) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Marcus","last_name":"Kim","full_name":"Marcus Kim"}'::jsonb,
  now() - ((349) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'a1e53141-e2a4-5537-b833-38f04e7a7b38'::uuid,
  'a1e53141-e2a4-5537-b833-38f04e7a7b38'::uuid,
  '{"sub":"a1e53141-e2a4-5537-b833-38f04e7a7b38","email":"marcus.kim.449@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'a1e53141-e2a4-5537-b833-38f04e7a7b38',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Marcus',
  last_name = 'Kim',
  full_name = 'Marcus Kim',
  email = 'marcus.kim.449@proton.me',
  title = 'Visiting Scholar',
  institution = 'EPFL',
  location = 'Chicago, IL',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at EPFL working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
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
WHERE id = 'a1e53141-e2a4-5537-b833-38f04e7a7b38'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid,
  'authenticated',
  'authenticated',
  'hana.costa.450@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((350) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Hana","last_name":"Costa","full_name":"Hana Costa"}'::jsonb,
  now() - ((350) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid,
  '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid,
  '{"sub":"8f2a66a0-3dc1-52a3-b06c-389a3c95d451","email":"hana.costa.450@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '8f2a66a0-3dc1-52a3-b06c-389a3c95d451',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Hana',
  last_name = 'Costa',
  full_name = 'Hana Costa',
  email = 'hana.costa.450@gmail.com',
  title = 'PhD Candidate',
  institution = 'UC Berkeley',
  location = 'Baltimore, MD',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at UC Berkeley working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['cross-disciplinary teammates','experimental collaborators']::text[],
  availability = 'weekends',
  availability_hours = 15,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '8f2a66a0-3dc1-52a3-b06c-389a3c95d451'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'b760f4f9-b6e9-5219-81b0-6780800a5fff'::uuid,
  'authenticated',
  'authenticated',
  'maya.clark.451@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((351) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Maya","last_name":"Clark","full_name":"Maya Clark"}'::jsonb,
  now() - ((351) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'b760f4f9-b6e9-5219-81b0-6780800a5fff'::uuid,
  'b760f4f9-b6e9-5219-81b0-6780800a5fff'::uuid,
  '{"sub":"b760f4f9-b6e9-5219-81b0-6780800a5fff","email":"maya.clark.451@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'b760f4f9-b6e9-5219-81b0-6780800a5fff',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Maya',
  last_name = 'Clark',
  full_name = 'Maya Clark',
  email = 'maya.clark.451@outlook.com',
  title = 'Research Scientist',
  institution = 'University of Washington',
  location = 'New Haven, CT',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at University of Washington working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['data partners','computational partners']::text[],
  availability = 'part-time',
  availability_hours = 16,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'b760f4f9-b6e9-5219-81b0-6780800a5fff'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '897b4b33-e19f-51ad-89c2-0e185b508078'::uuid,
  'authenticated',
  'authenticated',
  'elena.cox.452@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((352) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Elena","last_name":"Cox","full_name":"Elena Cox"}'::jsonb,
  now() - ((352) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '897b4b33-e19f-51ad-89c2-0e185b508078'::uuid,
  '897b4b33-e19f-51ad-89c2-0e185b508078'::uuid,
  '{"sub":"897b4b33-e19f-51ad-89c2-0e185b508078","email":"elena.cox.452@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '897b4b33-e19f-51ad-89c2-0e185b508078',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Elena',
  last_name = 'Cox',
  full_name = 'Elena Cox',
  email = 'elena.cox.452@icloud.com',
  title = 'Associate Professor',
  institution = 'Columbia University',
  location = 'Princeton, NJ',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at Columbia University working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['co-authors','mentorship']::text[],
  availability = 'full-time',
  availability_hours = 17,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '897b4b33-e19f-51ad-89c2-0e185b508078'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'cd65f8ad-1c2b-5b00-beac-354598567dd1'::uuid,
  'authenticated',
  'authenticated',
  'rohan.price.453@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((353) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Rohan","last_name":"Price","full_name":"Rohan Price"}'::jsonb,
  now() - ((353) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'cd65f8ad-1c2b-5b00-beac-354598567dd1'::uuid,
  'cd65f8ad-1c2b-5b00-beac-354598567dd1'::uuid,
  '{"sub":"cd65f8ad-1c2b-5b00-beac-354598567dd1","email":"rohan.price.453@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'cd65f8ad-1c2b-5b00-beac-354598567dd1',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Rohan',
  last_name = 'Price',
  full_name = 'Rohan Price',
  email = 'rohan.price.453@yahoo.com',
  title = 'Staff Scientist',
  institution = 'Caltech',
  location = 'Pasadena, CA',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at Caltech working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['experimental collaborators','grant collaborators']::text[],
  availability = 'weekends',
  availability_hours = 18,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'cd65f8ad-1c2b-5b00-beac-354598567dd1'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '47cf10ee-a8c2-514f-b576-5ffd0d0d0b0c'::uuid,
  'authenticated',
  'authenticated',
  'fatima.patterson.454@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((354) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Fatima","last_name":"Patterson","full_name":"Fatima Patterson"}'::jsonb,
  now() - ((354) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '47cf10ee-a8c2-514f-b576-5ffd0d0d0b0c'::uuid,
  '47cf10ee-a8c2-514f-b576-5ffd0d0d0b0c'::uuid,
  '{"sub":"47cf10ee-a8c2-514f-b576-5ffd0d0d0b0c","email":"fatima.patterson.454@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '47cf10ee-a8c2-514f-b576-5ffd0d0d0b0c',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Fatima',
  last_name = 'Patterson',
  full_name = 'Fatima Patterson',
  email = 'fatima.patterson.454@proton.me',
  title = 'Visiting Scholar',
  institution = 'Cornell University',
  location = 'Oxford, UK',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at Cornell University working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['computational partners','industry partners']::text[],
  availability = 'part-time',
  availability_hours = 19,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '47cf10ee-a8c2-514f-b576-5ffd0d0d0b0c'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '99f99166-d723-53d1-97e8-bc6671828d19'::uuid,
  'authenticated',
  'authenticated',
  'samir.park.455@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((355) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Samir","last_name":"Park","full_name":"Samir Park"}'::jsonb,
  now() - ((355) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '99f99166-d723-53d1-97e8-bc6671828d19'::uuid,
  '99f99166-d723-53d1-97e8-bc6671828d19'::uuid,
  '{"sub":"99f99166-d723-53d1-97e8-bc6671828d19","email":"samir.park.455@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '99f99166-d723-53d1-97e8-bc6671828d19',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Samir',
  last_name = 'Park',
  full_name = 'Samir Park',
  email = 'samir.park.455@gmail.com',
  title = 'PhD Candidate',
  institution = 'University of Texas at Austin',
  location = 'Singapore',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at University of Texas at Austin working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['mentorship','cross-disciplinary teammates']::text[],
  availability = 'full-time',
  availability_hours = 20,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '99f99166-d723-53d1-97e8-bc6671828d19'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb'::uuid,
  'authenticated',
  'authenticated',
  'camila.lee.456@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((356) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Camila","last_name":"Lee","full_name":"Camila Lee"}'::jsonb,
  now() - ((356) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb'::uuid,
  '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb'::uuid,
  '{"sub":"8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb","email":"camila.lee.456@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Camila',
  last_name = 'Lee',
  full_name = 'Camila Lee',
  email = 'camila.lee.456@outlook.com',
  title = 'Research Scientist',
  institution = 'EPFL',
  location = 'Melbourne, AU',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at EPFL working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['grant collaborators','data partners']::text[],
  availability = 'weekends',
  availability_hours = 21,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '8c9cc84b-e4d8-52f1-8cef-d7c2cb05c3cb'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '4ded9d2c-411a-5884-a2f1-9b3d21d137ed'::uuid,
  'authenticated',
  'authenticated',
  'daniel.brooks.457@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((357) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Daniel","last_name":"Brooks","full_name":"Daniel Brooks"}'::jsonb,
  now() - ((357) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '4ded9d2c-411a-5884-a2f1-9b3d21d137ed'::uuid,
  '4ded9d2c-411a-5884-a2f1-9b3d21d137ed'::uuid,
  '{"sub":"4ded9d2c-411a-5884-a2f1-9b3d21d137ed","email":"daniel.brooks.457@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '4ded9d2c-411a-5884-a2f1-9b3d21d137ed',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Daniel',
  last_name = 'Brooks',
  full_name = 'Daniel Brooks',
  email = 'daniel.brooks.457@icloud.com',
  title = 'Associate Professor',
  institution = 'UC Berkeley',
  location = 'Cambridge, MA',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at UC Berkeley working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['industry partners','co-authors']::text[],
  availability = 'part-time',
  availability_hours = 22,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '4ded9d2c-411a-5884-a2f1-9b3d21d137ed'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '1fbcf3d3-ee1a-5331-823b-d5a4758c0204'::uuid,
  'authenticated',
  'authenticated',
  'nina.ramirez.458@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((358) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Nina","last_name":"Ramirez","full_name":"Nina Ramirez"}'::jsonb,
  now() - ((358) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '1fbcf3d3-ee1a-5331-823b-d5a4758c0204'::uuid,
  '1fbcf3d3-ee1a-5331-823b-d5a4758c0204'::uuid,
  '{"sub":"1fbcf3d3-ee1a-5331-823b-d5a4758c0204","email":"nina.ramirez.458@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '1fbcf3d3-ee1a-5331-823b-d5a4758c0204',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Nina',
  last_name = 'Ramirez',
  full_name = 'Nina Ramirez',
  email = 'nina.ramirez.458@yahoo.com',
  title = 'Staff Scientist',
  institution = 'University of Washington',
  location = 'Palo Alto, CA',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at University of Washington working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['cross-disciplinary teammates','experimental collaborators']::text[],
  availability = 'full-time',
  availability_hours = 23,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '1fbcf3d3-ee1a-5331-823b-d5a4758c0204'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'f59d5527-b411-526d-b2aa-0069357fa215'::uuid,
  'authenticated',
  'authenticated',
  'oliver.coleman.459@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((359) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Oliver","last_name":"Coleman","full_name":"Oliver Coleman"}'::jsonb,
  now() - ((359) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'f59d5527-b411-526d-b2aa-0069357fa215'::uuid,
  'f59d5527-b411-526d-b2aa-0069357fa215'::uuid,
  '{"sub":"f59d5527-b411-526d-b2aa-0069357fa215","email":"oliver.coleman.459@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'f59d5527-b411-526d-b2aa-0069357fa215',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Oliver',
  last_name = 'Coleman',
  full_name = 'Oliver Coleman',
  email = 'oliver.coleman.459@proton.me',
  title = 'Visiting Scholar',
  institution = 'Columbia University',
  location = 'Berkeley, CA',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at Columbia University working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['data partners','computational partners']::text[],
  availability = 'weekends',
  availability_hours = 24,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'f59d5527-b411-526d-b2aa-0069357fa215'::uuid;
