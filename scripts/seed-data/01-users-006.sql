-- population users 240..279

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '377c353e-df57-5706-9534-8723efe02ecd'::uuid,
  'authenticated',
  'authenticated',
  'sofia.ali.340@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((240) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Sofia","last_name":"Ali","full_name":"Sofia Ali"}'::jsonb,
  now() - ((240) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '377c353e-df57-5706-9534-8723efe02ecd'::uuid,
  '377c353e-df57-5706-9534-8723efe02ecd'::uuid,
  '{"sub":"377c353e-df57-5706-9534-8723efe02ecd","email":"sofia.ali.340@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '377c353e-df57-5706-9534-8723efe02ecd',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Sofia',
  last_name = 'Ali',
  full_name = 'Sofia Ali',
  email = 'sofia.ali.340@gmail.com',
  title = 'PhD Candidate',
  institution = 'Columbia University',
  location = 'Atlanta, GA',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at Columbia University working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['co-authors','mentorship']::text[],
  availability = 'part-time',
  availability_hours = 5,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '377c353e-df57-5706-9534-8723efe02ecd'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '3f854435-9399-5c74-9096-979bd941e61d'::uuid,
  'authenticated',
  'authenticated',
  'kenji.miller.341@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((241) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Kenji","last_name":"Miller","full_name":"Kenji Miller"}'::jsonb,
  now() - ((241) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '3f854435-9399-5c74-9096-979bd941e61d'::uuid,
  '3f854435-9399-5c74-9096-979bd941e61d'::uuid,
  '{"sub":"3f854435-9399-5c74-9096-979bd941e61d","email":"kenji.miller.341@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '3f854435-9399-5c74-9096-979bd941e61d',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Kenji',
  last_name = 'Miller',
  full_name = 'Kenji Miller',
  email = 'kenji.miller.341@outlook.com',
  title = 'Research Scientist',
  institution = 'Caltech',
  location = 'Ann Arbor, MI',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at Caltech working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['experimental collaborators','grant collaborators']::text[],
  availability = 'full-time',
  availability_hours = 6,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '3f854435-9399-5c74-9096-979bd941e61d'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'feac598c-38ed-5b4e-8173-ae60d6e102db'::uuid,
  'authenticated',
  'authenticated',
  'zara.yamamoto.342@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((242) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Zara","last_name":"Yamamoto","full_name":"Zara Yamamoto"}'::jsonb,
  now() - ((242) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'feac598c-38ed-5b4e-8173-ae60d6e102db'::uuid,
  'feac598c-38ed-5b4e-8173-ae60d6e102db'::uuid,
  '{"sub":"feac598c-38ed-5b4e-8173-ae60d6e102db","email":"zara.yamamoto.342@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'feac598c-38ed-5b4e-8173-ae60d6e102db',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Zara',
  last_name = 'Yamamoto',
  full_name = 'Zara Yamamoto',
  email = 'zara.yamamoto.342@icloud.com',
  title = 'Associate Professor',
  institution = 'Cornell University',
  location = 'Los Angeles, CA',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at Cornell University working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['computational partners','industry partners']::text[],
  availability = 'weekends',
  availability_hours = 7,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'feac598c-38ed-5b4e-8173-ae60d6e102db'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'b6fd1d0a-577c-50d9-af00-76be7ac0fe27'::uuid,
  'authenticated',
  'authenticated',
  'kai.howard.343@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((243) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Kai","last_name":"Howard","full_name":"Kai Howard"}'::jsonb,
  now() - ((243) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'b6fd1d0a-577c-50d9-af00-76be7ac0fe27'::uuid,
  'b6fd1d0a-577c-50d9-af00-76be7ac0fe27'::uuid,
  '{"sub":"b6fd1d0a-577c-50d9-af00-76be7ac0fe27","email":"kai.howard.343@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'b6fd1d0a-577c-50d9-af00-76be7ac0fe27',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Kai',
  last_name = 'Howard',
  full_name = 'Kai Howard',
  email = 'kai.howard.343@yahoo.com',
  title = 'Staff Scientist',
  institution = 'University of Texas at Austin',
  location = 'New York, NY',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at University of Texas at Austin working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['mentorship','cross-disciplinary teammates']::text[],
  availability = 'part-time',
  availability_hours = 8,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'b6fd1d0a-577c-50d9-af00-76be7ac0fe27'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8'::uuid,
  'authenticated',
  'authenticated',
  'ananya.bennett.344@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((244) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Ananya","last_name":"Bennett","full_name":"Ananya Bennett"}'::jsonb,
  now() - ((244) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8'::uuid,
  '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8'::uuid,
  '{"sub":"9eaa8a9b-49c7-5190-a5a9-a46bb3259af8","email":"ananya.bennett.344@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Ananya',
  last_name = 'Bennett',
  full_name = 'Ananya Bennett',
  email = 'ananya.bennett.344@proton.me',
  title = 'Visiting Scholar',
  institution = 'EPFL',
  location = 'Chicago, IL',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at EPFL working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['grant collaborators','data partners']::text[],
  availability = 'full-time',
  availability_hours = 9,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '9eaa8a9b-49c7-5190-a5a9-a46bb3259af8'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid,
  'authenticated',
  'authenticated',
  'benjamin.chen.345@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((245) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Benjamin","last_name":"Chen","full_name":"Benjamin Chen"}'::jsonb,
  now() - ((245) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid,
  '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid,
  '{"sub":"297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840","email":"benjamin.chen.345@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Benjamin',
  last_name = 'Chen',
  full_name = 'Benjamin Chen',
  email = 'benjamin.chen.345@gmail.com',
  title = 'PhD Candidate',
  institution = 'UC Berkeley',
  location = 'Baltimore, MD',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at UC Berkeley working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['industry partners','co-authors']::text[],
  availability = 'weekends',
  availability_hours = 10,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '297c0e7d-c1be-50c5-bfc1-9e5e4bf2d840'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '24a43e03-7de6-50e6-a40d-aee1ccba879b'::uuid,
  'authenticated',
  'authenticated',
  'ava.lopez.346@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((246) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Ava","last_name":"Lopez","full_name":"Ava Lopez"}'::jsonb,
  now() - ((246) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '24a43e03-7de6-50e6-a40d-aee1ccba879b'::uuid,
  '24a43e03-7de6-50e6-a40d-aee1ccba879b'::uuid,
  '{"sub":"24a43e03-7de6-50e6-a40d-aee1ccba879b","email":"ava.lopez.346@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '24a43e03-7de6-50e6-a40d-aee1ccba879b',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Ava',
  last_name = 'Lopez',
  full_name = 'Ava Lopez',
  email = 'ava.lopez.346@outlook.com',
  title = 'Research Scientist',
  institution = 'University of Washington',
  location = 'New Haven, CT',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at University of Washington working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['cross-disciplinary teammates','experimental collaborators']::text[],
  availability = 'part-time',
  availability_hours = 11,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '24a43e03-7de6-50e6-a40d-aee1ccba879b'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'd753bc68-7b16-56ec-967a-6c9f5215fab8'::uuid,
  'authenticated',
  'authenticated',
  'sebastian.wright.347@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((247) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Sebastian","last_name":"Wright","full_name":"Sebastian Wright"}'::jsonb,
  now() - ((247) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'd753bc68-7b16-56ec-967a-6c9f5215fab8'::uuid,
  'd753bc68-7b16-56ec-967a-6c9f5215fab8'::uuid,
  '{"sub":"d753bc68-7b16-56ec-967a-6c9f5215fab8","email":"sebastian.wright.347@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'd753bc68-7b16-56ec-967a-6c9f5215fab8',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Sebastian',
  last_name = 'Wright',
  full_name = 'Sebastian Wright',
  email = 'sebastian.wright.347@icloud.com',
  title = 'Associate Professor',
  institution = 'Columbia University',
  location = 'Princeton, NJ',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at Columbia University working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['data partners','computational partners']::text[],
  availability = 'full-time',
  availability_hours = 12,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'd753bc68-7b16-56ec-967a-6c9f5215fab8'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '6a514a41-4c7e-5056-a14d-13305a0c1c48'::uuid,
  'authenticated',
  'authenticated',
  'amina.reed.348@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((248) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Amina","last_name":"Reed","full_name":"Amina Reed"}'::jsonb,
  now() - ((248) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '6a514a41-4c7e-5056-a14d-13305a0c1c48'::uuid,
  '6a514a41-4c7e-5056-a14d-13305a0c1c48'::uuid,
  '{"sub":"6a514a41-4c7e-5056-a14d-13305a0c1c48","email":"amina.reed.348@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '6a514a41-4c7e-5056-a14d-13305a0c1c48',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Amina',
  last_name = 'Reed',
  full_name = 'Amina Reed',
  email = 'amina.reed.348@yahoo.com',
  title = 'Staff Scientist',
  institution = 'Caltech',
  location = 'Pasadena, CA',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at Caltech working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['co-authors','mentorship']::text[],
  availability = 'weekends',
  availability_hours = 13,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '6a514a41-4c7e-5056-a14d-13305a0c1c48'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'd87f4c56-0da4-5e92-b739-b5649237064a'::uuid,
  'authenticated',
  'authenticated',
  'liam.james.349@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((249) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Liam","last_name":"James","full_name":"Liam James"}'::jsonb,
  now() - ((249) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'd87f4c56-0da4-5e92-b739-b5649237064a'::uuid,
  'd87f4c56-0da4-5e92-b739-b5649237064a'::uuid,
  '{"sub":"d87f4c56-0da4-5e92-b739-b5649237064a","email":"liam.james.349@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'd87f4c56-0da4-5e92-b739-b5649237064a',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Liam',
  last_name = 'James',
  full_name = 'Liam James',
  email = 'liam.james.349@proton.me',
  title = 'Visiting Scholar',
  institution = 'Cornell University',
  location = 'Oxford, UK',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at Cornell University working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['experimental collaborators','grant collaborators']::text[],
  availability = 'part-time',
  availability_hours = 14,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'd87f4c56-0da4-5e92-b739-b5649237064a'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid,
  'authenticated',
  'authenticated',
  'hannah.jenkins.350@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((250) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Hannah","last_name":"Jenkins","full_name":"Hannah Jenkins"}'::jsonb,
  now() - ((250) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid,
  '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid,
  '{"sub":"9ef5a16e-c786-5f54-965b-e2beaebc2ca1","email":"hannah.jenkins.350@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '9ef5a16e-c786-5f54-965b-e2beaebc2ca1',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Hannah',
  last_name = 'Jenkins',
  full_name = 'Hannah Jenkins',
  email = 'hannah.jenkins.350@gmail.com',
  title = 'PhD Candidate',
  institution = 'University of Texas at Austin',
  location = 'Singapore',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at University of Texas at Austin working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['computational partners','industry partners']::text[],
  availability = 'full-time',
  availability_hours = 15,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '9ef5a16e-c786-5f54-965b-e2beaebc2ca1'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'd377db0e-bf42-500a-9404-0b006df6e52f'::uuid,
  'authenticated',
  'authenticated',
  'julian.johnson.351@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((251) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Julian","last_name":"Johnson","full_name":"Julian Johnson"}'::jsonb,
  now() - ((251) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'd377db0e-bf42-500a-9404-0b006df6e52f'::uuid,
  'd377db0e-bf42-500a-9404-0b006df6e52f'::uuid,
  '{"sub":"d377db0e-bf42-500a-9404-0b006df6e52f","email":"julian.johnson.351@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'd377db0e-bf42-500a-9404-0b006df6e52f',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Julian',
  last_name = 'Johnson',
  full_name = 'Julian Johnson',
  email = 'julian.johnson.351@outlook.com',
  title = 'Research Scientist',
  institution = 'EPFL',
  location = 'Melbourne, AU',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at EPFL working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['mentorship','cross-disciplinary teammates']::text[],
  availability = 'weekends',
  availability_hours = 16,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'd377db0e-bf42-500a-9404-0b006df6e52f'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'c51f57c8-ceb6-5800-8535-3bfb0d73bd50'::uuid,
  'authenticated',
  'authenticated',
  'nora.hassan.352@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((252) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Nora","last_name":"Hassan","full_name":"Nora Hassan"}'::jsonb,
  now() - ((252) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'c51f57c8-ceb6-5800-8535-3bfb0d73bd50'::uuid,
  'c51f57c8-ceb6-5800-8535-3bfb0d73bd50'::uuid,
  '{"sub":"c51f57c8-ceb6-5800-8535-3bfb0d73bd50","email":"nora.hassan.352@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'c51f57c8-ceb6-5800-8535-3bfb0d73bd50',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Nora',
  last_name = 'Hassan',
  full_name = 'Nora Hassan',
  email = 'nora.hassan.352@icloud.com',
  title = 'Associate Professor',
  institution = 'UC Berkeley',
  location = 'Cambridge, MA',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at UC Berkeley working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['grant collaborators','data partners']::text[],
  availability = 'part-time',
  availability_hours = 17,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'c51f57c8-ceb6-5800-8535-3bfb0d73bd50'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '4ba2732c-9b95-539b-af2c-08cd05f15dba'::uuid,
  'authenticated',
  'authenticated',
  'isaac.evans.353@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((253) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Isaac","last_name":"Evans","full_name":"Isaac Evans"}'::jsonb,
  now() - ((253) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '4ba2732c-9b95-539b-af2c-08cd05f15dba'::uuid,
  '4ba2732c-9b95-539b-af2c-08cd05f15dba'::uuid,
  '{"sub":"4ba2732c-9b95-539b-af2c-08cd05f15dba","email":"isaac.evans.353@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '4ba2732c-9b95-539b-af2c-08cd05f15dba',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Isaac',
  last_name = 'Evans',
  full_name = 'Isaac Evans',
  email = 'isaac.evans.353@yahoo.com',
  title = 'Staff Scientist',
  institution = 'University of Washington',
  location = 'Palo Alto, CA',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at University of Washington working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['industry partners','co-authors']::text[],
  availability = 'full-time',
  availability_hours = 18,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '4ba2732c-9b95-539b-af2c-08cd05f15dba'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'a1026c86-856a-5225-b193-c935211475da'::uuid,
  'authenticated',
  'authenticated',
  'ines.ward.354@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((254) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Ines","last_name":"Ward","full_name":"Ines Ward"}'::jsonb,
  now() - ((254) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'a1026c86-856a-5225-b193-c935211475da'::uuid,
  'a1026c86-856a-5225-b193-c935211475da'::uuid,
  '{"sub":"a1026c86-856a-5225-b193-c935211475da","email":"ines.ward.354@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'a1026c86-856a-5225-b193-c935211475da',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Ines',
  last_name = 'Ward',
  full_name = 'Ines Ward',
  email = 'ines.ward.354@proton.me',
  title = 'Visiting Scholar',
  institution = 'Columbia University',
  location = 'Berkeley, CA',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at Columbia University working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['cross-disciplinary teammates','experimental collaborators']::text[],
  availability = 'weekends',
  availability_hours = 19,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'a1026c86-856a-5225-b193-c935211475da'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'adab7a98-c1d6-591f-8b46-750925810a73'::uuid,
  'authenticated',
  'authenticated',
  'felix.wood.355@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((255) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Felix","last_name":"Wood","full_name":"Felix Wood"}'::jsonb,
  now() - ((255) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'adab7a98-c1d6-591f-8b46-750925810a73'::uuid,
  'adab7a98-c1d6-591f-8b46-750925810a73'::uuid,
  '{"sub":"adab7a98-c1d6-591f-8b46-750925810a73","email":"felix.wood.355@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'adab7a98-c1d6-591f-8b46-750925810a73',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Felix',
  last_name = 'Wood',
  full_name = 'Felix Wood',
  email = 'felix.wood.355@gmail.com',
  title = 'PhD Candidate',
  institution = 'Caltech',
  location = 'Boston, MA',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at Caltech working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
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
WHERE id = 'adab7a98-c1d6-591f-8b46-750925810a73'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '71e76d95-9bb6-5da0-b840-adff1e3b3e09'::uuid,
  'authenticated',
  'authenticated',
  'sara.patel.356@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((256) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Sara","last_name":"Patel","full_name":"Sara Patel"}'::jsonb,
  now() - ((256) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '71e76d95-9bb6-5da0-b840-adff1e3b3e09'::uuid,
  '71e76d95-9bb6-5da0-b840-adff1e3b3e09'::uuid,
  '{"sub":"71e76d95-9bb6-5da0-b840-adff1e3b3e09","email":"sara.patel.356@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '71e76d95-9bb6-5da0-b840-adff1e3b3e09',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Sara',
  last_name = 'Patel',
  full_name = 'Sara Patel',
  email = 'sara.patel.356@outlook.com',
  title = 'Research Scientist',
  institution = 'Cornell University',
  location = 'Toronto, ON',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at Cornell University working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
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
WHERE id = '71e76d95-9bb6-5da0-b840-adff1e3b3e09'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '7fbc04cc-a2f1-5c77-b110-14896c533a68'::uuid,
  'authenticated',
  'authenticated',
  'james.martinez.357@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((257) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"James","last_name":"Martinez","full_name":"James Martinez"}'::jsonb,
  now() - ((257) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '7fbc04cc-a2f1-5c77-b110-14896c533a68'::uuid,
  '7fbc04cc-a2f1-5c77-b110-14896c533a68'::uuid,
  '{"sub":"7fbc04cc-a2f1-5c77-b110-14896c533a68","email":"james.martinez.357@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '7fbc04cc-a2f1-5c77-b110-14896c533a68',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'James',
  last_name = 'Martinez',
  full_name = 'James Martinez',
  email = 'james.martinez.357@icloud.com',
  title = 'Associate Professor',
  institution = 'University of Texas at Austin',
  location = 'Zurich, CH',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at University of Texas at Austin working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
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
WHERE id = '7fbc04cc-a2f1-5c77-b110-14896c533a68'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'cc3f4ff0-c75f-5419-a48a-b4fd93e58037'::uuid,
  'authenticated',
  'authenticated',
  'grace.ahmed.358@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((258) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Grace","last_name":"Ahmed","full_name":"Grace Ahmed"}'::jsonb,
  now() - ((258) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'cc3f4ff0-c75f-5419-a48a-b4fd93e58037'::uuid,
  'cc3f4ff0-c75f-5419-a48a-b4fd93e58037'::uuid,
  '{"sub":"cc3f4ff0-c75f-5419-a48a-b4fd93e58037","email":"grace.ahmed.358@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'cc3f4ff0-c75f-5419-a48a-b4fd93e58037',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Grace',
  last_name = 'Ahmed',
  full_name = 'Grace Ahmed',
  email = 'grace.ahmed.358@yahoo.com',
  title = 'Staff Scientist',
  institution = 'EPFL',
  location = 'London, UK',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at EPFL working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
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
WHERE id = 'cc3f4ff0-c75f-5419-a48a-b4fd93e58037'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'bf844e91-b34b-51f3-9b61-28aac491ce08'::uuid,
  'authenticated',
  'authenticated',
  'mateo.bailey.359@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((259) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Mateo","last_name":"Bailey","full_name":"Mateo Bailey"}'::jsonb,
  now() - ((259) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'bf844e91-b34b-51f3-9b61-28aac491ce08'::uuid,
  'bf844e91-b34b-51f3-9b61-28aac491ce08'::uuid,
  '{"sub":"bf844e91-b34b-51f3-9b61-28aac491ce08","email":"mateo.bailey.359@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'bf844e91-b34b-51f3-9b61-28aac491ce08',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Mateo',
  last_name = 'Bailey',
  full_name = 'Mateo Bailey',
  email = 'mateo.bailey.359@proton.me',
  title = 'Visiting Scholar',
  institution = 'UC Berkeley',
  location = 'Seattle, WA',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at UC Berkeley working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
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
WHERE id = 'bf844e91-b34b-51f3-9b61-28aac491ce08'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid,
  'authenticated',
  'authenticated',
  'isla.watson.360@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((260) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Isla","last_name":"Watson","full_name":"Isla Watson"}'::jsonb,
  now() - ((260) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid,
  '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid,
  '{"sub":"249d83dd-5943-5c17-b972-0f5a5f6f5edf","email":"isla.watson.360@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '249d83dd-5943-5c17-b972-0f5a5f6f5edf',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Isla',
  last_name = 'Watson',
  full_name = 'Isla Watson',
  email = 'isla.watson.360@gmail.com',
  title = 'PhD Candidate',
  institution = 'University of Washington',
  location = 'Pittsburgh, PA',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at University of Washington working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['grant collaborators','data partners']::text[],
  availability = 'weekends',
  availability_hours = 5,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '249d83dd-5943-5c17-b972-0f5a5f6f5edf'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'bc3269b7-ccf7-597d-a309-30596d8dbb75'::uuid,
  'authenticated',
  'authenticated',
  'theo.perry.361@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((261) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Theo","last_name":"Perry","full_name":"Theo Perry"}'::jsonb,
  now() - ((261) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'bc3269b7-ccf7-597d-a309-30596d8dbb75'::uuid,
  'bc3269b7-ccf7-597d-a309-30596d8dbb75'::uuid,
  '{"sub":"bc3269b7-ccf7-597d-a309-30596d8dbb75","email":"theo.perry.361@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'bc3269b7-ccf7-597d-a309-30596d8dbb75',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Theo',
  last_name = 'Perry',
  full_name = 'Theo Perry',
  email = 'theo.perry.361@outlook.com',
  title = 'Research Scientist',
  institution = 'Columbia University',
  location = 'Atlanta, GA',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at Columbia University working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['industry partners','co-authors']::text[],
  availability = 'part-time',
  availability_hours = 6,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'bc3269b7-ccf7-597d-a309-30596d8dbb75'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '59fc5e89-4210-5535-9f42-ed5204636320'::uuid,
  'authenticated',
  'authenticated',
  'yara.silva.362@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((262) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Yara","last_name":"Silva","full_name":"Yara Silva"}'::jsonb,
  now() - ((262) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '59fc5e89-4210-5535-9f42-ed5204636320'::uuid,
  '59fc5e89-4210-5535-9f42-ed5204636320'::uuid,
  '{"sub":"59fc5e89-4210-5535-9f42-ed5204636320","email":"yara.silva.362@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '59fc5e89-4210-5535-9f42-ed5204636320',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Yara',
  last_name = 'Silva',
  full_name = 'Yara Silva',
  email = 'yara.silva.362@icloud.com',
  title = 'Associate Professor',
  institution = 'Caltech',
  location = 'Ann Arbor, MI',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at Caltech working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['cross-disciplinary teammates','experimental collaborators']::text[],
  availability = 'full-time',
  availability_hours = 7,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '59fc5e89-4210-5535-9f42-ed5204636320'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'e3fbeb3d-2a6c-5b72-9ae7-02c84c034471'::uuid,
  'authenticated',
  'authenticated',
  'lucas.thompson.363@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((263) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Lucas","last_name":"Thompson","full_name":"Lucas Thompson"}'::jsonb,
  now() - ((263) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'e3fbeb3d-2a6c-5b72-9ae7-02c84c034471'::uuid,
  'e3fbeb3d-2a6c-5b72-9ae7-02c84c034471'::uuid,
  '{"sub":"e3fbeb3d-2a6c-5b72-9ae7-02c84c034471","email":"lucas.thompson.363@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'e3fbeb3d-2a6c-5b72-9ae7-02c84c034471',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Lucas',
  last_name = 'Thompson',
  full_name = 'Lucas Thompson',
  email = 'lucas.thompson.363@yahoo.com',
  title = 'Staff Scientist',
  institution = 'Cornell University',
  location = 'Los Angeles, CA',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at Cornell University working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['data partners','computational partners']::text[],
  availability = 'weekends',
  availability_hours = 8,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'e3fbeb3d-2a6c-5b72-9ae7-02c84c034471'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'f1ea10b0-8c31-5412-bd19-36fe94b2a01d'::uuid,
  'authenticated',
  'authenticated',
  'lina.murphy.364@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((264) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Lina","last_name":"Murphy","full_name":"Lina Murphy"}'::jsonb,
  now() - ((264) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'f1ea10b0-8c31-5412-bd19-36fe94b2a01d'::uuid,
  'f1ea10b0-8c31-5412-bd19-36fe94b2a01d'::uuid,
  '{"sub":"f1ea10b0-8c31-5412-bd19-36fe94b2a01d","email":"lina.murphy.364@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'f1ea10b0-8c31-5412-bd19-36fe94b2a01d',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Lina',
  last_name = 'Murphy',
  full_name = 'Lina Murphy',
  email = 'lina.murphy.364@proton.me',
  title = 'Visiting Scholar',
  institution = 'University of Texas at Austin',
  location = 'New York, NY',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at University of Texas at Austin working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
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
WHERE id = 'f1ea10b0-8c31-5412-bd19-36fe94b2a01d'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid,
  'authenticated',
  'authenticated',
  'david.torres.365@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((265) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"David","last_name":"Torres","full_name":"David Torres"}'::jsonb,
  now() - ((265) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid,
  '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid,
  '{"sub":"73ea09f8-5060-5f15-92fd-f2a39456a9c1","email":"david.torres.365@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '73ea09f8-5060-5f15-92fd-f2a39456a9c1',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'David',
  last_name = 'Torres',
  full_name = 'David Torres',
  email = 'david.torres.365@gmail.com',
  title = 'PhD Candidate',
  institution = 'EPFL',
  location = 'Chicago, IL',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at EPFL working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
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
WHERE id = '73ea09f8-5060-5f15-92fd-f2a39456a9c1'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid,
  'authenticated',
  'authenticated',
  'aisha.barnes.366@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((266) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Aisha","last_name":"Barnes","full_name":"Aisha Barnes"}'::jsonb,
  now() - ((266) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid,
  '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid,
  '{"sub":"503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13","email":"aisha.barnes.366@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Aisha',
  last_name = 'Barnes',
  full_name = 'Aisha Barnes',
  email = 'aisha.barnes.366@outlook.com',
  title = 'Research Scientist',
  institution = 'UC Berkeley',
  location = 'Baltimore, MD',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at UC Berkeley working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
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
WHERE id = '503142d3-dcbb-5ff7-bd3b-0edd4f8d0a13'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'e97a9de9-ada2-56c8-98fd-109c271f42ab'::uuid,
  'authenticated',
  'authenticated',
  'diego.nguyen.367@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((267) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Diego","last_name":"Nguyen","full_name":"Diego Nguyen"}'::jsonb,
  now() - ((267) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'e97a9de9-ada2-56c8-98fd-109c271f42ab'::uuid,
  'e97a9de9-ada2-56c8-98fd-109c271f42ab'::uuid,
  '{"sub":"e97a9de9-ada2-56c8-98fd-109c271f42ab","email":"diego.nguyen.367@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'e97a9de9-ada2-56c8-98fd-109c271f42ab',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Diego',
  last_name = 'Nguyen',
  full_name = 'Diego Nguyen',
  email = 'diego.nguyen.367@icloud.com',
  title = 'Associate Professor',
  institution = 'University of Washington',
  location = 'New Haven, CT',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at University of Washington working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
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
WHERE id = 'e97a9de9-ada2-56c8-98fd-109c271f42ab'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '4cd21aa9-ca4b-5f90-bc96-fca6ecffef2f'::uuid,
  'authenticated',
  'authenticated',
  'nadia.singh.368@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((268) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Nadia","last_name":"Singh","full_name":"Nadia Singh"}'::jsonb,
  now() - ((268) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '4cd21aa9-ca4b-5f90-bc96-fca6ecffef2f'::uuid,
  '4cd21aa9-ca4b-5f90-bc96-fca6ecffef2f'::uuid,
  '{"sub":"4cd21aa9-ca4b-5f90-bc96-fca6ecffef2f","email":"nadia.singh.368@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '4cd21aa9-ca4b-5f90-bc96-fca6ecffef2f',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Nadia',
  last_name = 'Singh',
  full_name = 'Nadia Singh',
  email = 'nadia.singh.368@yahoo.com',
  title = 'Staff Scientist',
  institution = 'Columbia University',
  location = 'Princeton, NJ',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at Columbia University working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
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
WHERE id = '4cd21aa9-ca4b-5f90-bc96-fca6ecffef2f'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'fd521a38-e933-583e-9739-3570f7da8371'::uuid,
  'authenticated',
  'authenticated',
  'adrian.davis.369@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((269) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Adrian","last_name":"Davis","full_name":"Adrian Davis"}'::jsonb,
  now() - ((269) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'fd521a38-e933-583e-9739-3570f7da8371'::uuid,
  'fd521a38-e933-583e-9739-3570f7da8371'::uuid,
  '{"sub":"fd521a38-e933-583e-9739-3570f7da8371","email":"adrian.davis.369@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'fd521a38-e933-583e-9739-3570f7da8371',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Adrian',
  last_name = 'Davis',
  full_name = 'Adrian Davis',
  email = 'adrian.davis.369@proton.me',
  title = 'Visiting Scholar',
  institution = 'Caltech',
  location = 'Pasadena, CA',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at Caltech working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
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
WHERE id = 'fd521a38-e933-583e-9739-3570f7da8371'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'e9c87503-b8cf-5632-8ac0-9da60fdc05a2'::uuid,
  'authenticated',
  'authenticated',
  'mei.cooper.370@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((270) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Mei","last_name":"Cooper","full_name":"Mei Cooper"}'::jsonb,
  now() - ((270) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'e9c87503-b8cf-5632-8ac0-9da60fdc05a2'::uuid,
  'e9c87503-b8cf-5632-8ac0-9da60fdc05a2'::uuid,
  '{"sub":"e9c87503-b8cf-5632-8ac0-9da60fdc05a2","email":"mei.cooper.370@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'e9c87503-b8cf-5632-8ac0-9da60fdc05a2',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Mei',
  last_name = 'Cooper',
  full_name = 'Mei Cooper',
  email = 'mei.cooper.370@gmail.com',
  title = 'PhD Candidate',
  institution = 'Cornell University',
  location = 'Oxford, UK',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at Cornell University working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
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
WHERE id = 'e9c87503-b8cf-5632-8ac0-9da60fdc05a2'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '7a25d666-766e-5e81-97a3-36cc7b3d90a2'::uuid,
  'authenticated',
  'authenticated',
  'henry.brooks.371@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((271) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Henry","last_name":"Brooks","full_name":"Henry Brooks"}'::jsonb,
  now() - ((271) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '7a25d666-766e-5e81-97a3-36cc7b3d90a2'::uuid,
  '7a25d666-766e-5e81-97a3-36cc7b3d90a2'::uuid,
  '{"sub":"7a25d666-766e-5e81-97a3-36cc7b3d90a2","email":"henry.brooks.371@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '7a25d666-766e-5e81-97a3-36cc7b3d90a2',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Henry',
  last_name = 'Brooks',
  full_name = 'Henry Brooks',
  email = 'henry.brooks.371@outlook.com',
  title = 'Research Scientist',
  institution = 'University of Texas at Austin',
  location = 'Singapore',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at University of Texas at Austin working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
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
WHERE id = '7a25d666-766e-5e81-97a3-36cc7b3d90a2'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'e5591a9d-4391-50d2-a26d-ed7a237f52c8'::uuid,
  'authenticated',
  'authenticated',
  'riya.powell.372@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((272) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Riya","last_name":"Powell","full_name":"Riya Powell"}'::jsonb,
  now() - ((272) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'e5591a9d-4391-50d2-a26d-ed7a237f52c8'::uuid,
  'e5591a9d-4391-50d2-a26d-ed7a237f52c8'::uuid,
  '{"sub":"e5591a9d-4391-50d2-a26d-ed7a237f52c8","email":"riya.powell.372@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'e5591a9d-4391-50d2-a26d-ed7a237f52c8',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Riya',
  last_name = 'Powell',
  full_name = 'Riya Powell',
  email = 'riya.powell.372@icloud.com',
  title = 'Associate Professor',
  institution = 'EPFL',
  location = 'Melbourne, AU',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at EPFL working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['co-authors','mentorship']::text[],
  availability = 'weekends',
  availability_hours = 17,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'e5591a9d-4391-50d2-a26d-ed7a237f52c8'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '5bb96b4a-a630-5144-be50-35472c9f803c'::uuid,
  'authenticated',
  'authenticated',
  'nathan.brown.373@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((273) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Nathan","last_name":"Brown","full_name":"Nathan Brown"}'::jsonb,
  now() - ((273) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '5bb96b4a-a630-5144-be50-35472c9f803c'::uuid,
  '5bb96b4a-a630-5144-be50-35472c9f803c'::uuid,
  '{"sub":"5bb96b4a-a630-5144-be50-35472c9f803c","email":"nathan.brown.373@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '5bb96b4a-a630-5144-be50-35472c9f803c',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Nathan',
  last_name = 'Brown',
  full_name = 'Nathan Brown',
  email = 'nathan.brown.373@yahoo.com',
  title = 'Staff Scientist',
  institution = 'UC Berkeley',
  location = 'Cambridge, MA',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at UC Berkeley working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['experimental collaborators','grant collaborators']::text[],
  availability = 'part-time',
  availability_hours = 18,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '5bb96b4a-a630-5144-be50-35472c9f803c'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '22d0d638-0bfb-521a-b51e-e1919770243e'::uuid,
  'authenticated',
  'authenticated',
  'priya.sato.374@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((274) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Priya","last_name":"Sato","full_name":"Priya Sato"}'::jsonb,
  now() - ((274) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '22d0d638-0bfb-521a-b51e-e1919770243e'::uuid,
  '22d0d638-0bfb-521a-b51e-e1919770243e'::uuid,
  '{"sub":"22d0d638-0bfb-521a-b51e-e1919770243e","email":"priya.sato.374@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '22d0d638-0bfb-521a-b51e-e1919770243e',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Priya',
  last_name = 'Sato',
  full_name = 'Priya Sato',
  email = 'priya.sato.374@proton.me',
  title = 'Visiting Scholar',
  institution = 'University of Washington',
  location = 'Palo Alto, CA',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at University of Washington working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['computational partners','industry partners']::text[],
  availability = 'full-time',
  availability_hours = 19,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '22d0d638-0bfb-521a-b51e-e1919770243e'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '64c874f1-4577-5d02-97b4-da601bf5972b'::uuid,
  'authenticated',
  'authenticated',
  'omar.ibrahim.375@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((275) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Omar","last_name":"Ibrahim","full_name":"Omar Ibrahim"}'::jsonb,
  now() - ((275) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '64c874f1-4577-5d02-97b4-da601bf5972b'::uuid,
  '64c874f1-4577-5d02-97b4-da601bf5972b'::uuid,
  '{"sub":"64c874f1-4577-5d02-97b4-da601bf5972b","email":"omar.ibrahim.375@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '64c874f1-4577-5d02-97b4-da601bf5972b',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Omar',
  last_name = 'Ibrahim',
  full_name = 'Omar Ibrahim',
  email = 'omar.ibrahim.375@gmail.com',
  title = 'PhD Candidate',
  institution = 'Columbia University',
  location = 'Berkeley, CA',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at Columbia University working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['mentorship','cross-disciplinary teammates']::text[],
  availability = 'weekends',
  availability_hours = 20,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '64c874f1-4577-5d02-97b4-da601bf5972b'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '1b70bae1-1102-5059-84fb-4d69136b5032'::uuid,
  'authenticated',
  'authenticated',
  'chloe.peterson.376@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((276) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Chloe","last_name":"Peterson","full_name":"Chloe Peterson"}'::jsonb,
  now() - ((276) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '1b70bae1-1102-5059-84fb-4d69136b5032'::uuid,
  '1b70bae1-1102-5059-84fb-4d69136b5032'::uuid,
  '{"sub":"1b70bae1-1102-5059-84fb-4d69136b5032","email":"chloe.peterson.376@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '1b70bae1-1102-5059-84fb-4d69136b5032',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Chloe',
  last_name = 'Peterson',
  full_name = 'Chloe Peterson',
  email = 'chloe.peterson.376@outlook.com',
  title = 'Research Scientist',
  institution = 'Caltech',
  location = 'Boston, MA',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at Caltech working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['grant collaborators','data partners']::text[],
  availability = 'part-time',
  availability_hours = 21,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '1b70bae1-1102-5059-84fb-4d69136b5032'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '560e33d5-d1d4-54da-84b6-56f71fbcb908'::uuid,
  'authenticated',
  'authenticated',
  'owen.ross.377@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((277) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Owen","last_name":"Ross","full_name":"Owen Ross"}'::jsonb,
  now() - ((277) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '560e33d5-d1d4-54da-84b6-56f71fbcb908'::uuid,
  '560e33d5-d1d4-54da-84b6-56f71fbcb908'::uuid,
  '{"sub":"560e33d5-d1d4-54da-84b6-56f71fbcb908","email":"owen.ross.377@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '560e33d5-d1d4-54da-84b6-56f71fbcb908',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Owen',
  last_name = 'Ross',
  full_name = 'Owen Ross',
  email = 'owen.ross.377@icloud.com',
  title = 'Associate Professor',
  institution = 'Cornell University',
  location = 'Toronto, ON',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at Cornell University working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['industry partners','co-authors']::text[],
  availability = 'full-time',
  availability_hours = 22,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '560e33d5-d1d4-54da-84b6-56f71fbcb908'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'e5b15532-8a50-5880-90f6-f3cfebbfb6ee'::uuid,
  'authenticated',
  'authenticated',
  'violet.garcia.378@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((278) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Violet","last_name":"Garcia","full_name":"Violet Garcia"}'::jsonb,
  now() - ((278) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'e5b15532-8a50-5880-90f6-f3cfebbfb6ee'::uuid,
  'e5b15532-8a50-5880-90f6-f3cfebbfb6ee'::uuid,
  '{"sub":"e5b15532-8a50-5880-90f6-f3cfebbfb6ee","email":"violet.garcia.378@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'e5b15532-8a50-5880-90f6-f3cfebbfb6ee',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Violet',
  last_name = 'Garcia',
  full_name = 'Violet Garcia',
  email = 'violet.garcia.378@yahoo.com',
  title = 'Staff Scientist',
  institution = 'University of Texas at Austin',
  location = 'Zurich, CH',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at University of Texas at Austin working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['cross-disciplinary teammates','experimental collaborators']::text[],
  availability = 'weekends',
  availability_hours = 23,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'e5b15532-8a50-5880-90f6-f3cfebbfb6ee'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '3c8de87e-de6b-50c7-b5c7-8a4cf5f05ce5'::uuid,
  'authenticated',
  'authenticated',
  'leo.wang.379@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((279) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Leo","last_name":"Wang","full_name":"Leo Wang"}'::jsonb,
  now() - ((279) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '3c8de87e-de6b-50c7-b5c7-8a4cf5f05ce5'::uuid,
  '3c8de87e-de6b-50c7-b5c7-8a4cf5f05ce5'::uuid,
  '{"sub":"3c8de87e-de6b-50c7-b5c7-8a4cf5f05ce5","email":"leo.wang.379@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '3c8de87e-de6b-50c7-b5c7-8a4cf5f05ce5',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Leo',
  last_name = 'Wang',
  full_name = 'Leo Wang',
  email = 'leo.wang.379@proton.me',
  title = 'Visiting Scholar',
  institution = 'EPFL',
  location = 'London, UK',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at EPFL working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['data partners','computational partners']::text[],
  availability = 'part-time',
  availability_hours = 24,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '3c8de87e-de6b-50c7-b5c7-8a4cf5f05ce5'::uuid;
