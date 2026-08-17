INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  'authenticated',
  'authenticated',
  'camila.lee.156@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((56) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Camila","last_name":"Lee","full_name":"Camila Lee"}'::jsonb,
  now() - ((56) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid,
  '{"sub":"5eced242-2d6a-5a6f-90c5-15217bb38c63","email":"camila.lee.156@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '5eced242-2d6a-5a6f-90c5-15217bb38c63',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Camila',
  last_name = 'Lee',
  full_name = 'Camila Lee',
  email = 'camila.lee.156@outlook.com',
  title = 'Research Scientist',
  institution = 'UC Berkeley',
  location = 'Baltimore, MD',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at UC Berkeley working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['co-authors','mentorship']::text[],
  availability = 'weekends',
  availability_hours = 21,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '5eced242-2d6a-5a6f-90c5-15217bb38c63'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  'authenticated',
  'authenticated',
  'daniel.brooks.157@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((57) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Daniel","last_name":"Brooks","full_name":"Daniel Brooks"}'::jsonb,
  now() - ((57) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid,
  '{"sub":"d20f4348-b149-5d7a-9be9-ea35b968d949","email":"daniel.brooks.157@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'd20f4348-b149-5d7a-9be9-ea35b968d949',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Daniel',
  last_name = 'Brooks',
  full_name = 'Daniel Brooks',
  email = 'daniel.brooks.157@icloud.com',
  title = 'Associate Professor',
  institution = 'University of Washington',
  location = 'New Haven, CT',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at University of Washington working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['experimental collaborators','grant collaborators']::text[],
  availability = 'part-time',
  availability_hours = 22,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'd20f4348-b149-5d7a-9be9-ea35b968d949'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  'authenticated',
  'authenticated',
  'nina.ramirez.158@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((58) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Nina","last_name":"Ramirez","full_name":"Nina Ramirez"}'::jsonb,
  now() - ((58) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid,
  '{"sub":"741dbc0c-be9e-585d-a05c-2d604bdbf3c9","email":"nina.ramirez.158@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '741dbc0c-be9e-585d-a05c-2d604bdbf3c9',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Nina',
  last_name = 'Ramirez',
  full_name = 'Nina Ramirez',
  email = 'nina.ramirez.158@yahoo.com',
  title = 'Staff Scientist',
  institution = 'Columbia University',
  location = 'Princeton, NJ',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at Columbia University working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['computational partners','industry partners']::text[],
  availability = 'full-time',
  availability_hours = 23,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '741dbc0c-be9e-585d-a05c-2d604bdbf3c9'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid,
  'authenticated',
  'authenticated',
  'oliver.coleman.159@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((59) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Oliver","last_name":"Coleman","full_name":"Oliver Coleman"}'::jsonb,
  now() - ((59) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid,
  '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid,
  '{"sub":"2e103cd9-7011-5c18-b7dc-84a0f1fba2f4","email":"oliver.coleman.159@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Oliver',
  last_name = 'Coleman',
  full_name = 'Oliver Coleman',
  email = 'oliver.coleman.159@proton.me',
  title = 'Visiting Scholar',
  institution = 'Caltech',
  location = 'Pasadena, CA',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at Caltech working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['mentorship','cross-disciplinary teammates']::text[],
  availability = 'weekends',
  availability_hours = 24,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '2e103cd9-7011-5c18-b7dc-84a0f1fba2f4'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  'authenticated',
  'authenticated',
  'sofia.ali.160@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((60) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Sofia","last_name":"Ali","full_name":"Sofia Ali"}'::jsonb,
  now() - ((60) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid,
  '{"sub":"d5b9e176-5342-5bee-9f23-5db9daada176","email":"sofia.ali.160@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'd5b9e176-5342-5bee-9f23-5db9daada176',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Sofia',
  last_name = 'Ali',
  full_name = 'Sofia Ali',
  email = 'sofia.ali.160@gmail.com',
  title = 'PhD Candidate',
  institution = 'Cornell University',
  location = 'Oxford, UK',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at Cornell University working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
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
WHERE id = 'd5b9e176-5342-5bee-9f23-5db9daada176'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  'authenticated',
  'authenticated',
  'kenji.miller.161@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((61) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Kenji","last_name":"Miller","full_name":"Kenji Miller"}'::jsonb,
  now() - ((61) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  '3c5bf808-932d-5678-af65-94323984b8c4'::uuid,
  '{"sub":"3c5bf808-932d-5678-af65-94323984b8c4","email":"kenji.miller.161@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '3c5bf808-932d-5678-af65-94323984b8c4',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Kenji',
  last_name = 'Miller',
  full_name = 'Kenji Miller',
  email = 'kenji.miller.161@outlook.com',
  title = 'Research Scientist',
  institution = 'University of Texas at Austin',
  location = 'Singapore',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at University of Texas at Austin working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
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
WHERE id = '3c5bf808-932d-5678-af65-94323984b8c4'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  'authenticated',
  'authenticated',
  'zara.yamamoto.162@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((62) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Zara","last_name":"Yamamoto","full_name":"Zara Yamamoto"}'::jsonb,
  now() - ((62) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid,
  '{"sub":"1952c12b-20b6-5a8d-9327-a2a403e64b82","email":"zara.yamamoto.162@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '1952c12b-20b6-5a8d-9327-a2a403e64b82',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Zara',
  last_name = 'Yamamoto',
  full_name = 'Zara Yamamoto',
  email = 'zara.yamamoto.162@icloud.com',
  title = 'Associate Professor',
  institution = 'EPFL',
  location = 'Melbourne, AU',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at EPFL working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
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
WHERE id = '1952c12b-20b6-5a8d-9327-a2a403e64b82'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  'authenticated',
  'authenticated',
  'kai.howard.163@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((63) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Kai","last_name":"Howard","full_name":"Kai Howard"}'::jsonb,
  now() - ((63) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid,
  '{"sub":"bddaf6a2-6e9b-5912-baf2-aa7375c27586","email":"kai.howard.163@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'bddaf6a2-6e9b-5912-baf2-aa7375c27586',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Kai',
  last_name = 'Howard',
  full_name = 'Kai Howard',
  email = 'kai.howard.163@yahoo.com',
  title = 'Staff Scientist',
  institution = 'UC Berkeley',
  location = 'Cambridge, MA',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at UC Berkeley working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
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
WHERE id = 'bddaf6a2-6e9b-5912-baf2-aa7375c27586'::uuid;