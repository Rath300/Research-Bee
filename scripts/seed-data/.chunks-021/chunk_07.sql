INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid,
  'authenticated',
  'authenticated',
  'omar.ibrahim.975@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((75) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Omar","last_name":"Ibrahim","full_name":"Omar Ibrahim"}'::jsonb,
  now() - ((75) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid,
  '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid,
  '{"sub":"4a9ca92a-1b61-5a05-928f-181ede7795c6","email":"omar.ibrahim.975@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '4a9ca92a-1b61-5a05-928f-181ede7795c6',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Omar',
  last_name = 'Ibrahim',
  full_name = 'Omar Ibrahim',
  email = 'omar.ibrahim.975@gmail.com',
  title = 'PhD Candidate',
  institution = 'UC Berkeley',
  location = 'Baltimore, MD',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at UC Berkeley working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
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
WHERE id = '4a9ca92a-1b61-5a05-928f-181ede7795c6'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '337045f6-3ef4-54fc-a3cb-5ebf6f7a70a4'::uuid,
  'authenticated',
  'authenticated',
  'chloe.peterson.976@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((76) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Chloe","last_name":"Peterson","full_name":"Chloe Peterson"}'::jsonb,
  now() - ((76) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '337045f6-3ef4-54fc-a3cb-5ebf6f7a70a4'::uuid,
  '337045f6-3ef4-54fc-a3cb-5ebf6f7a70a4'::uuid,
  '{"sub":"337045f6-3ef4-54fc-a3cb-5ebf6f7a70a4","email":"chloe.peterson.976@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '337045f6-3ef4-54fc-a3cb-5ebf6f7a70a4',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Chloe',
  last_name = 'Peterson',
  full_name = 'Chloe Peterson',
  email = 'chloe.peterson.976@outlook.com',
  title = 'Research Scientist',
  institution = 'University of Washington',
  location = 'New Haven, CT',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at University of Washington working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
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
WHERE id = '337045f6-3ef4-54fc-a3cb-5ebf6f7a70a4'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '1eaa537d-6771-5fa2-8cbe-f4faed6ab222'::uuid,
  'authenticated',
  'authenticated',
  'owen.ross.977@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((77) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Owen","last_name":"Ross","full_name":"Owen Ross"}'::jsonb,
  now() - ((77) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '1eaa537d-6771-5fa2-8cbe-f4faed6ab222'::uuid,
  '1eaa537d-6771-5fa2-8cbe-f4faed6ab222'::uuid,
  '{"sub":"1eaa537d-6771-5fa2-8cbe-f4faed6ab222","email":"owen.ross.977@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '1eaa537d-6771-5fa2-8cbe-f4faed6ab222',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Owen',
  last_name = 'Ross',
  full_name = 'Owen Ross',
  email = 'owen.ross.977@icloud.com',
  title = 'Associate Professor',
  institution = 'Columbia University',
  location = 'Princeton, NJ',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at Columbia University working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
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
WHERE id = '1eaa537d-6771-5fa2-8cbe-f4faed6ab222'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'e39e6b56-0b6e-5ec5-80ef-6b410471ac02'::uuid,
  'authenticated',
  'authenticated',
  'violet.garcia.978@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((78) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Violet","last_name":"Garcia","full_name":"Violet Garcia"}'::jsonb,
  now() - ((78) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'e39e6b56-0b6e-5ec5-80ef-6b410471ac02'::uuid,
  'e39e6b56-0b6e-5ec5-80ef-6b410471ac02'::uuid,
  '{"sub":"e39e6b56-0b6e-5ec5-80ef-6b410471ac02","email":"violet.garcia.978@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'e39e6b56-0b6e-5ec5-80ef-6b410471ac02',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Violet',
  last_name = 'Garcia',
  full_name = 'Violet Garcia',
  email = 'violet.garcia.978@yahoo.com',
  title = 'Staff Scientist',
  institution = 'Caltech',
  location = 'Pasadena, CA',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at Caltech working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
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
WHERE id = 'e39e6b56-0b6e-5ec5-80ef-6b410471ac02'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'db3c49e7-bfea-5580-92ae-3b7c4329da27'::uuid,
  'authenticated',
  'authenticated',
  'leo.wang.979@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((79) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Leo","last_name":"Wang","full_name":"Leo Wang"}'::jsonb,
  now() - ((79) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'db3c49e7-bfea-5580-92ae-3b7c4329da27'::uuid,
  'db3c49e7-bfea-5580-92ae-3b7c4329da27'::uuid,
  '{"sub":"db3c49e7-bfea-5580-92ae-3b7c4329da27","email":"leo.wang.979@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'db3c49e7-bfea-5580-92ae-3b7c4329da27',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Leo',
  last_name = 'Wang',
  full_name = 'Leo Wang',
  email = 'leo.wang.979@proton.me',
  title = 'Visiting Scholar',
  institution = 'Cornell University',
  location = 'Oxford, UK',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at Cornell University working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
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
WHERE id = 'db3c49e7-bfea-5580-92ae-3b7c4329da27'::uuid;
