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