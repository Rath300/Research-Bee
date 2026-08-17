-- population users 720..759

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '223e8288-5d44-542e-b220-e739635a31f1'::uuid,
  'authenticated',
  'authenticated',
  'sofia.ali.820@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((320) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Sofia","last_name":"Ali","full_name":"Sofia Ali"}'::jsonb,
  now() - ((320) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '223e8288-5d44-542e-b220-e739635a31f1'::uuid,
  '223e8288-5d44-542e-b220-e739635a31f1'::uuid,
  '{"sub":"223e8288-5d44-542e-b220-e739635a31f1","email":"sofia.ali.820@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '223e8288-5d44-542e-b220-e739635a31f1',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Sofia',
  last_name = 'Ali',
  full_name = 'Sofia Ali',
  email = 'sofia.ali.820@gmail.com',
  title = 'PhD Candidate',
  institution = 'EPFL',
  location = 'London, UK',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at EPFL working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
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
WHERE id = '223e8288-5d44-542e-b220-e739635a31f1'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'faa48f92-ec4c-50a8-b640-821e64485cdb'::uuid,
  'authenticated',
  'authenticated',
  'kenji.miller.821@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((321) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Kenji","last_name":"Miller","full_name":"Kenji Miller"}'::jsonb,
  now() - ((321) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'faa48f92-ec4c-50a8-b640-821e64485cdb'::uuid,
  'faa48f92-ec4c-50a8-b640-821e64485cdb'::uuid,
  '{"sub":"faa48f92-ec4c-50a8-b640-821e64485cdb","email":"kenji.miller.821@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'faa48f92-ec4c-50a8-b640-821e64485cdb',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Kenji',
  last_name = 'Miller',
  full_name = 'Kenji Miller',
  email = 'kenji.miller.821@outlook.com',
  title = 'Research Scientist',
  institution = 'UC Berkeley',
  location = 'Seattle, WA',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at UC Berkeley working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
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
WHERE id = 'faa48f92-ec4c-50a8-b640-821e64485cdb'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'b1528f83-05e9-5237-9070-2e49e81250b0'::uuid,
  'authenticated',
  'authenticated',
  'zara.yamamoto.822@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((322) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Zara","last_name":"Yamamoto","full_name":"Zara Yamamoto"}'::jsonb,
  now() - ((322) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'b1528f83-05e9-5237-9070-2e49e81250b0'::uuid,
  'b1528f83-05e9-5237-9070-2e49e81250b0'::uuid,
  '{"sub":"b1528f83-05e9-5237-9070-2e49e81250b0","email":"zara.yamamoto.822@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'b1528f83-05e9-5237-9070-2e49e81250b0',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Zara',
  last_name = 'Yamamoto',
  full_name = 'Zara Yamamoto',
  email = 'zara.yamamoto.822@icloud.com',
  title = 'Associate Professor',
  institution = 'University of Washington',
  location = 'Pittsburgh, PA',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at University of Washington working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
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
WHERE id = 'b1528f83-05e9-5237-9070-2e49e81250b0'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '33deff9e-63a9-5149-af03-74ac800cd82b'::uuid,
  'authenticated',
  'authenticated',
  'kai.howard.823@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((323) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Kai","last_name":"Howard","full_name":"Kai Howard"}'::jsonb,
  now() - ((323) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '33deff9e-63a9-5149-af03-74ac800cd82b'::uuid,
  '33deff9e-63a9-5149-af03-74ac800cd82b'::uuid,
  '{"sub":"33deff9e-63a9-5149-af03-74ac800cd82b","email":"kai.howard.823@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '33deff9e-63a9-5149-af03-74ac800cd82b',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Kai',
  last_name = 'Howard',
  full_name = 'Kai Howard',
  email = 'kai.howard.823@yahoo.com',
  title = 'Staff Scientist',
  institution = 'Columbia University',
  location = 'Atlanta, GA',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at Columbia University working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
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
WHERE id = '33deff9e-63a9-5149-af03-74ac800cd82b'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'a343cb5f-989d-5d2d-befe-e659982ec6d3'::uuid,
  'authenticated',
  'authenticated',
  'ananya.bennett.824@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((324) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Ananya","last_name":"Bennett","full_name":"Ananya Bennett"}'::jsonb,
  now() - ((324) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'a343cb5f-989d-5d2d-befe-e659982ec6d3'::uuid,
  'a343cb5f-989d-5d2d-befe-e659982ec6d3'::uuid,
  '{"sub":"a343cb5f-989d-5d2d-befe-e659982ec6d3","email":"ananya.bennett.824@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'a343cb5f-989d-5d2d-befe-e659982ec6d3',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Ananya',
  last_name = 'Bennett',
  full_name = 'Ananya Bennett',
  email = 'ananya.bennett.824@proton.me',
  title = 'Visiting Scholar',
  institution = 'Caltech',
  location = 'Ann Arbor, MI',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at Caltech working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
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
WHERE id = 'a343cb5f-989d-5d2d-befe-e659982ec6d3'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '66ed3399-31e4-53c0-b383-f6dc631a5b40'::uuid,
  'authenticated',
  'authenticated',
  'benjamin.chen.825@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((325) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Benjamin","last_name":"Chen","full_name":"Benjamin Chen"}'::jsonb,
  now() - ((325) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '66ed3399-31e4-53c0-b383-f6dc631a5b40'::uuid,
  '66ed3399-31e4-53c0-b383-f6dc631a5b40'::uuid,
  '{"sub":"66ed3399-31e4-53c0-b383-f6dc631a5b40","email":"benjamin.chen.825@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '66ed3399-31e4-53c0-b383-f6dc631a5b40',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Benjamin',
  last_name = 'Chen',
  full_name = 'Benjamin Chen',
  email = 'benjamin.chen.825@gmail.com',
  title = 'PhD Candidate',
  institution = 'Cornell University',
  location = 'Los Angeles, CA',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at Cornell University working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
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
WHERE id = '66ed3399-31e4-53c0-b383-f6dc631a5b40'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '599f91ad-8872-5548-98ef-05309b9d767d'::uuid,
  'authenticated',
  'authenticated',
  'ava.lopez.826@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((326) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Ava","last_name":"Lopez","full_name":"Ava Lopez"}'::jsonb,
  now() - ((326) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '599f91ad-8872-5548-98ef-05309b9d767d'::uuid,
  '599f91ad-8872-5548-98ef-05309b9d767d'::uuid,
  '{"sub":"599f91ad-8872-5548-98ef-05309b9d767d","email":"ava.lopez.826@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '599f91ad-8872-5548-98ef-05309b9d767d',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Ava',
  last_name = 'Lopez',
  full_name = 'Ava Lopez',
  email = 'ava.lopez.826@outlook.com',
  title = 'Research Scientist',
  institution = 'University of Texas at Austin',
  location = 'New York, NY',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at University of Texas at Austin working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
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
WHERE id = '599f91ad-8872-5548-98ef-05309b9d767d'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '2dfbf8df-671d-5edc-840c-fa857d70548e'::uuid,
  'authenticated',
  'authenticated',
  'sebastian.wright.827@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((327) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Sebastian","last_name":"Wright","full_name":"Sebastian Wright"}'::jsonb,
  now() - ((327) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '2dfbf8df-671d-5edc-840c-fa857d70548e'::uuid,
  '2dfbf8df-671d-5edc-840c-fa857d70548e'::uuid,
  '{"sub":"2dfbf8df-671d-5edc-840c-fa857d70548e","email":"sebastian.wright.827@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '2dfbf8df-671d-5edc-840c-fa857d70548e',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Sebastian',
  last_name = 'Wright',
  full_name = 'Sebastian Wright',
  email = 'sebastian.wright.827@icloud.com',
  title = 'Associate Professor',
  institution = 'EPFL',
  location = 'Chicago, IL',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at EPFL working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
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
WHERE id = '2dfbf8df-671d-5edc-840c-fa857d70548e'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'fcf09069-b03f-594a-a134-7c45d7478589'::uuid,
  'authenticated',
  'authenticated',
  'amina.reed.828@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((328) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Amina","last_name":"Reed","full_name":"Amina Reed"}'::jsonb,
  now() - ((328) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'fcf09069-b03f-594a-a134-7c45d7478589'::uuid,
  'fcf09069-b03f-594a-a134-7c45d7478589'::uuid,
  '{"sub":"fcf09069-b03f-594a-a134-7c45d7478589","email":"amina.reed.828@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'fcf09069-b03f-594a-a134-7c45d7478589',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Amina',
  last_name = 'Reed',
  full_name = 'Amina Reed',
  email = 'amina.reed.828@yahoo.com',
  title = 'Staff Scientist',
  institution = 'UC Berkeley',
  location = 'Baltimore, MD',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at UC Berkeley working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
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
WHERE id = 'fcf09069-b03f-594a-a134-7c45d7478589'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '03507a6f-20a9-5023-b188-401053301f7b'::uuid,
  'authenticated',
  'authenticated',
  'liam.james.829@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((329) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Liam","last_name":"James","full_name":"Liam James"}'::jsonb,
  now() - ((329) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '03507a6f-20a9-5023-b188-401053301f7b'::uuid,
  '03507a6f-20a9-5023-b188-401053301f7b'::uuid,
  '{"sub":"03507a6f-20a9-5023-b188-401053301f7b","email":"liam.james.829@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '03507a6f-20a9-5023-b188-401053301f7b',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Liam',
  last_name = 'James',
  full_name = 'Liam James',
  email = 'liam.james.829@proton.me',
  title = 'Visiting Scholar',
  institution = 'University of Washington',
  location = 'New Haven, CT',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at University of Washington working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
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
WHERE id = '03507a6f-20a9-5023-b188-401053301f7b'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '4affe376-3337-5316-8b8e-7c109b527c78'::uuid,
  'authenticated',
  'authenticated',
  'hannah.jenkins.830@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((330) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Hannah","last_name":"Jenkins","full_name":"Hannah Jenkins"}'::jsonb,
  now() - ((330) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '4affe376-3337-5316-8b8e-7c109b527c78'::uuid,
  '4affe376-3337-5316-8b8e-7c109b527c78'::uuid,
  '{"sub":"4affe376-3337-5316-8b8e-7c109b527c78","email":"hannah.jenkins.830@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '4affe376-3337-5316-8b8e-7c109b527c78',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Hannah',
  last_name = 'Jenkins',
  full_name = 'Hannah Jenkins',
  email = 'hannah.jenkins.830@gmail.com',
  title = 'PhD Candidate',
  institution = 'Columbia University',
  location = 'Princeton, NJ',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at Columbia University working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
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
WHERE id = '4affe376-3337-5316-8b8e-7c109b527c78'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '1ee18835-3c30-5bc7-a404-37cb54a05c4c'::uuid,
  'authenticated',
  'authenticated',
  'julian.johnson.831@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((331) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Julian","last_name":"Johnson","full_name":"Julian Johnson"}'::jsonb,
  now() - ((331) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '1ee18835-3c30-5bc7-a404-37cb54a05c4c'::uuid,
  '1ee18835-3c30-5bc7-a404-37cb54a05c4c'::uuid,
  '{"sub":"1ee18835-3c30-5bc7-a404-37cb54a05c4c","email":"julian.johnson.831@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '1ee18835-3c30-5bc7-a404-37cb54a05c4c',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Julian',
  last_name = 'Johnson',
  full_name = 'Julian Johnson',
  email = 'julian.johnson.831@outlook.com',
  title = 'Research Scientist',
  institution = 'Caltech',
  location = 'Pasadena, CA',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at Caltech working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
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
WHERE id = '1ee18835-3c30-5bc7-a404-37cb54a05c4c'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '07e78528-7a32-5945-9289-b917095c02bc'::uuid,
  'authenticated',
  'authenticated',
  'nora.hassan.832@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((332) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Nora","last_name":"Hassan","full_name":"Nora Hassan"}'::jsonb,
  now() - ((332) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '07e78528-7a32-5945-9289-b917095c02bc'::uuid,
  '07e78528-7a32-5945-9289-b917095c02bc'::uuid,
  '{"sub":"07e78528-7a32-5945-9289-b917095c02bc","email":"nora.hassan.832@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '07e78528-7a32-5945-9289-b917095c02bc',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Nora',
  last_name = 'Hassan',
  full_name = 'Nora Hassan',
  email = 'nora.hassan.832@icloud.com',
  title = 'Associate Professor',
  institution = 'Cornell University',
  location = 'Oxford, UK',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at Cornell University working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
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
WHERE id = '07e78528-7a32-5945-9289-b917095c02bc'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'f86df400-9392-5e5e-b646-34ad46c78283'::uuid,
  'authenticated',
  'authenticated',
  'isaac.evans.833@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((333) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Isaac","last_name":"Evans","full_name":"Isaac Evans"}'::jsonb,
  now() - ((333) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'f86df400-9392-5e5e-b646-34ad46c78283'::uuid,
  'f86df400-9392-5e5e-b646-34ad46c78283'::uuid,
  '{"sub":"f86df400-9392-5e5e-b646-34ad46c78283","email":"isaac.evans.833@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'f86df400-9392-5e5e-b646-34ad46c78283',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Isaac',
  last_name = 'Evans',
  full_name = 'Isaac Evans',
  email = 'isaac.evans.833@yahoo.com',
  title = 'Staff Scientist',
  institution = 'University of Texas at Austin',
  location = 'Singapore',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at University of Texas at Austin working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
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
WHERE id = 'f86df400-9392-5e5e-b646-34ad46c78283'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'f7b3b033-ebce-5a30-8f09-ab76dc00d493'::uuid,
  'authenticated',
  'authenticated',
  'ines.ward.834@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((334) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Ines","last_name":"Ward","full_name":"Ines Ward"}'::jsonb,
  now() - ((334) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'f7b3b033-ebce-5a30-8f09-ab76dc00d493'::uuid,
  'f7b3b033-ebce-5a30-8f09-ab76dc00d493'::uuid,
  '{"sub":"f7b3b033-ebce-5a30-8f09-ab76dc00d493","email":"ines.ward.834@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'f7b3b033-ebce-5a30-8f09-ab76dc00d493',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Ines',
  last_name = 'Ward',
  full_name = 'Ines Ward',
  email = 'ines.ward.834@proton.me',
  title = 'Visiting Scholar',
  institution = 'EPFL',
  location = 'Melbourne, AU',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at EPFL working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
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
WHERE id = 'f7b3b033-ebce-5a30-8f09-ab76dc00d493'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210'::uuid,
  'authenticated',
  'authenticated',
  'felix.wood.835@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((335) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Felix","last_name":"Wood","full_name":"Felix Wood"}'::jsonb,
  now() - ((335) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210'::uuid,
  'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210'::uuid,
  '{"sub":"d0de6fe9-23df-58bc-9fa3-45f2bcfa9210","email":"felix.wood.835@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Felix',
  last_name = 'Wood',
  full_name = 'Felix Wood',
  email = 'felix.wood.835@gmail.com',
  title = 'PhD Candidate',
  institution = 'UC Berkeley',
  location = 'Cambridge, MA',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at UC Berkeley working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
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
WHERE id = 'd0de6fe9-23df-58bc-9fa3-45f2bcfa9210'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '73333d77-69c7-5858-a0a3-c3ac5f504d8b'::uuid,
  'authenticated',
  'authenticated',
  'sara.patel.836@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((336) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Sara","last_name":"Patel","full_name":"Sara Patel"}'::jsonb,
  now() - ((336) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '73333d77-69c7-5858-a0a3-c3ac5f504d8b'::uuid,
  '73333d77-69c7-5858-a0a3-c3ac5f504d8b'::uuid,
  '{"sub":"73333d77-69c7-5858-a0a3-c3ac5f504d8b","email":"sara.patel.836@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '73333d77-69c7-5858-a0a3-c3ac5f504d8b',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Sara',
  last_name = 'Patel',
  full_name = 'Sara Patel',
  email = 'sara.patel.836@outlook.com',
  title = 'Research Scientist',
  institution = 'University of Washington',
  location = 'Palo Alto, CA',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at University of Washington working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
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
WHERE id = '73333d77-69c7-5858-a0a3-c3ac5f504d8b'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '7ccb1fe0-e8a9-5309-a20c-f4eec4fe5156'::uuid,
  'authenticated',
  'authenticated',
  'james.martinez.837@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((337) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"James","last_name":"Martinez","full_name":"James Martinez"}'::jsonb,
  now() - ((337) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '7ccb1fe0-e8a9-5309-a20c-f4eec4fe5156'::uuid,
  '7ccb1fe0-e8a9-5309-a20c-f4eec4fe5156'::uuid,
  '{"sub":"7ccb1fe0-e8a9-5309-a20c-f4eec4fe5156","email":"james.martinez.837@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '7ccb1fe0-e8a9-5309-a20c-f4eec4fe5156',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'James',
  last_name = 'Martinez',
  full_name = 'James Martinez',
  email = 'james.martinez.837@icloud.com',
  title = 'Associate Professor',
  institution = 'Columbia University',
  location = 'Berkeley, CA',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at Columbia University working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
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
WHERE id = '7ccb1fe0-e8a9-5309-a20c-f4eec4fe5156'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'e490df88-38c2-5929-9c18-233d575e2a3c'::uuid,
  'authenticated',
  'authenticated',
  'grace.ahmed.838@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((338) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Grace","last_name":"Ahmed","full_name":"Grace Ahmed"}'::jsonb,
  now() - ((338) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'e490df88-38c2-5929-9c18-233d575e2a3c'::uuid,
  'e490df88-38c2-5929-9c18-233d575e2a3c'::uuid,
  '{"sub":"e490df88-38c2-5929-9c18-233d575e2a3c","email":"grace.ahmed.838@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'e490df88-38c2-5929-9c18-233d575e2a3c',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Grace',
  last_name = 'Ahmed',
  full_name = 'Grace Ahmed',
  email = 'grace.ahmed.838@yahoo.com',
  title = 'Staff Scientist',
  institution = 'Caltech',
  location = 'Boston, MA',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at Caltech working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
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
WHERE id = 'e490df88-38c2-5929-9c18-233d575e2a3c'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '4d8cd75d-d374-569f-85a8-6440bd0fe5a2'::uuid,
  'authenticated',
  'authenticated',
  'mateo.bailey.839@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((339) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Mateo","last_name":"Bailey","full_name":"Mateo Bailey"}'::jsonb,
  now() - ((339) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '4d8cd75d-d374-569f-85a8-6440bd0fe5a2'::uuid,
  '4d8cd75d-d374-569f-85a8-6440bd0fe5a2'::uuid,
  '{"sub":"4d8cd75d-d374-569f-85a8-6440bd0fe5a2","email":"mateo.bailey.839@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '4d8cd75d-d374-569f-85a8-6440bd0fe5a2',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Mateo',
  last_name = 'Bailey',
  full_name = 'Mateo Bailey',
  email = 'mateo.bailey.839@proton.me',
  title = 'Visiting Scholar',
  institution = 'Cornell University',
  location = 'Toronto, ON',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at Cornell University working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
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
WHERE id = '4d8cd75d-d374-569f-85a8-6440bd0fe5a2'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '0c81417a-20bd-5878-bb5d-1d34f41f817b'::uuid,
  'authenticated',
  'authenticated',
  'isla.watson.840@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((340) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Isla","last_name":"Watson","full_name":"Isla Watson"}'::jsonb,
  now() - ((340) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '0c81417a-20bd-5878-bb5d-1d34f41f817b'::uuid,
  '0c81417a-20bd-5878-bb5d-1d34f41f817b'::uuid,
  '{"sub":"0c81417a-20bd-5878-bb5d-1d34f41f817b","email":"isla.watson.840@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '0c81417a-20bd-5878-bb5d-1d34f41f817b',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Isla',
  last_name = 'Watson',
  full_name = 'Isla Watson',
  email = 'isla.watson.840@gmail.com',
  title = 'PhD Candidate',
  institution = 'University of Texas at Austin',
  location = 'Zurich, CH',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at University of Texas at Austin working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
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
WHERE id = '0c81417a-20bd-5878-bb5d-1d34f41f817b'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b'::uuid,
  'authenticated',
  'authenticated',
  'theo.perry.841@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((341) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Theo","last_name":"Perry","full_name":"Theo Perry"}'::jsonb,
  now() - ((341) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b'::uuid,
  'b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b'::uuid,
  '{"sub":"b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b","email":"theo.perry.841@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Theo',
  last_name = 'Perry',
  full_name = 'Theo Perry',
  email = 'theo.perry.841@outlook.com',
  title = 'Research Scientist',
  institution = 'EPFL',
  location = 'London, UK',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at EPFL working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
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
WHERE id = 'b456b8eb-8f5d-5056-8ac3-a0cdcc893d6b'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '81cf8362-41ca-534d-8d37-48b6fd6c7739'::uuid,
  'authenticated',
  'authenticated',
  'yara.silva.842@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((342) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Yara","last_name":"Silva","full_name":"Yara Silva"}'::jsonb,
  now() - ((342) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '81cf8362-41ca-534d-8d37-48b6fd6c7739'::uuid,
  '81cf8362-41ca-534d-8d37-48b6fd6c7739'::uuid,
  '{"sub":"81cf8362-41ca-534d-8d37-48b6fd6c7739","email":"yara.silva.842@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '81cf8362-41ca-534d-8d37-48b6fd6c7739',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Yara',
  last_name = 'Silva',
  full_name = 'Yara Silva',
  email = 'yara.silva.842@icloud.com',
  title = 'Associate Professor',
  institution = 'UC Berkeley',
  location = 'Seattle, WA',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at UC Berkeley working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
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
WHERE id = '81cf8362-41ca-534d-8d37-48b6fd6c7739'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '7cc7401c-94bd-5f9c-ae2e-38ffaaeeb8e9'::uuid,
  'authenticated',
  'authenticated',
  'lucas.thompson.843@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((343) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Lucas","last_name":"Thompson","full_name":"Lucas Thompson"}'::jsonb,
  now() - ((343) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '7cc7401c-94bd-5f9c-ae2e-38ffaaeeb8e9'::uuid,
  '7cc7401c-94bd-5f9c-ae2e-38ffaaeeb8e9'::uuid,
  '{"sub":"7cc7401c-94bd-5f9c-ae2e-38ffaaeeb8e9","email":"lucas.thompson.843@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '7cc7401c-94bd-5f9c-ae2e-38ffaaeeb8e9',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Lucas',
  last_name = 'Thompson',
  full_name = 'Lucas Thompson',
  email = 'lucas.thompson.843@yahoo.com',
  title = 'Staff Scientist',
  institution = 'University of Washington',
  location = 'Pittsburgh, PA',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at University of Washington working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
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
WHERE id = '7cc7401c-94bd-5f9c-ae2e-38ffaaeeb8e9'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'd670e0d8-a814-5c12-8c3a-fe0efb45bd7a'::uuid,
  'authenticated',
  'authenticated',
  'lina.murphy.844@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((344) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Lina","last_name":"Murphy","full_name":"Lina Murphy"}'::jsonb,
  now() - ((344) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'd670e0d8-a814-5c12-8c3a-fe0efb45bd7a'::uuid,
  'd670e0d8-a814-5c12-8c3a-fe0efb45bd7a'::uuid,
  '{"sub":"d670e0d8-a814-5c12-8c3a-fe0efb45bd7a","email":"lina.murphy.844@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'd670e0d8-a814-5c12-8c3a-fe0efb45bd7a',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Lina',
  last_name = 'Murphy',
  full_name = 'Lina Murphy',
  email = 'lina.murphy.844@proton.me',
  title = 'Visiting Scholar',
  institution = 'Columbia University',
  location = 'Atlanta, GA',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at Columbia University working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
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
WHERE id = 'd670e0d8-a814-5c12-8c3a-fe0efb45bd7a'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid,
  'authenticated',
  'authenticated',
  'david.torres.845@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((345) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"David","last_name":"Torres","full_name":"David Torres"}'::jsonb,
  now() - ((345) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid,
  '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid,
  '{"sub":"50f1d04d-d5d0-5d3a-b6d8-0332ac373dab","email":"david.torres.845@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'David',
  last_name = 'Torres',
  full_name = 'David Torres',
  email = 'david.torres.845@gmail.com',
  title = 'PhD Candidate',
  institution = 'Caltech',
  location = 'Ann Arbor, MI',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at Caltech working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
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
WHERE id = '50f1d04d-d5d0-5d3a-b6d8-0332ac373dab'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '67542a7b-0a85-5077-bd31-13e04bc34e8f'::uuid,
  'authenticated',
  'authenticated',
  'aisha.barnes.846@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((346) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Aisha","last_name":"Barnes","full_name":"Aisha Barnes"}'::jsonb,
  now() - ((346) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '67542a7b-0a85-5077-bd31-13e04bc34e8f'::uuid,
  '67542a7b-0a85-5077-bd31-13e04bc34e8f'::uuid,
  '{"sub":"67542a7b-0a85-5077-bd31-13e04bc34e8f","email":"aisha.barnes.846@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '67542a7b-0a85-5077-bd31-13e04bc34e8f',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Aisha',
  last_name = 'Barnes',
  full_name = 'Aisha Barnes',
  email = 'aisha.barnes.846@outlook.com',
  title = 'Research Scientist',
  institution = 'Cornell University',
  location = 'Los Angeles, CA',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at Cornell University working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
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
WHERE id = '67542a7b-0a85-5077-bd31-13e04bc34e8f'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'f0b6a384-fa41-5f30-8508-7717e8c5d4fc'::uuid,
  'authenticated',
  'authenticated',
  'diego.nguyen.847@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((347) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Diego","last_name":"Nguyen","full_name":"Diego Nguyen"}'::jsonb,
  now() - ((347) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'f0b6a384-fa41-5f30-8508-7717e8c5d4fc'::uuid,
  'f0b6a384-fa41-5f30-8508-7717e8c5d4fc'::uuid,
  '{"sub":"f0b6a384-fa41-5f30-8508-7717e8c5d4fc","email":"diego.nguyen.847@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'f0b6a384-fa41-5f30-8508-7717e8c5d4fc',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Diego',
  last_name = 'Nguyen',
  full_name = 'Diego Nguyen',
  email = 'diego.nguyen.847@icloud.com',
  title = 'Associate Professor',
  institution = 'University of Texas at Austin',
  location = 'New York, NY',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at University of Texas at Austin working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
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
WHERE id = 'f0b6a384-fa41-5f30-8508-7717e8c5d4fc'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '58f91761-2dc2-582b-8d47-64a7f02a5619'::uuid,
  'authenticated',
  'authenticated',
  'nadia.singh.848@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((348) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Nadia","last_name":"Singh","full_name":"Nadia Singh"}'::jsonb,
  now() - ((348) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '58f91761-2dc2-582b-8d47-64a7f02a5619'::uuid,
  '58f91761-2dc2-582b-8d47-64a7f02a5619'::uuid,
  '{"sub":"58f91761-2dc2-582b-8d47-64a7f02a5619","email":"nadia.singh.848@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '58f91761-2dc2-582b-8d47-64a7f02a5619',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Nadia',
  last_name = 'Singh',
  full_name = 'Nadia Singh',
  email = 'nadia.singh.848@yahoo.com',
  title = 'Staff Scientist',
  institution = 'EPFL',
  location = 'Chicago, IL',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at EPFL working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
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
WHERE id = '58f91761-2dc2-582b-8d47-64a7f02a5619'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '3d066e72-74c1-5d8d-ba3f-96311bb9e942'::uuid,
  'authenticated',
  'authenticated',
  'adrian.davis.849@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((349) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Adrian","last_name":"Davis","full_name":"Adrian Davis"}'::jsonb,
  now() - ((349) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '3d066e72-74c1-5d8d-ba3f-96311bb9e942'::uuid,
  '3d066e72-74c1-5d8d-ba3f-96311bb9e942'::uuid,
  '{"sub":"3d066e72-74c1-5d8d-ba3f-96311bb9e942","email":"adrian.davis.849@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '3d066e72-74c1-5d8d-ba3f-96311bb9e942',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Adrian',
  last_name = 'Davis',
  full_name = 'Adrian Davis',
  email = 'adrian.davis.849@proton.me',
  title = 'Visiting Scholar',
  institution = 'UC Berkeley',
  location = 'Baltimore, MD',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at UC Berkeley working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
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
WHERE id = '3d066e72-74c1-5d8d-ba3f-96311bb9e942'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'cbdfa327-b276-57c7-8554-37966d1b054b'::uuid,
  'authenticated',
  'authenticated',
  'mei.cooper.850@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((350) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Mei","last_name":"Cooper","full_name":"Mei Cooper"}'::jsonb,
  now() - ((350) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'cbdfa327-b276-57c7-8554-37966d1b054b'::uuid,
  'cbdfa327-b276-57c7-8554-37966d1b054b'::uuid,
  '{"sub":"cbdfa327-b276-57c7-8554-37966d1b054b","email":"mei.cooper.850@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'cbdfa327-b276-57c7-8554-37966d1b054b',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Mei',
  last_name = 'Cooper',
  full_name = 'Mei Cooper',
  email = 'mei.cooper.850@gmail.com',
  title = 'PhD Candidate',
  institution = 'University of Washington',
  location = 'New Haven, CT',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at University of Washington working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
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
WHERE id = 'cbdfa327-b276-57c7-8554-37966d1b054b'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '08db061d-1b19-5130-bfeb-39ece1268dcb'::uuid,
  'authenticated',
  'authenticated',
  'henry.brooks.851@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((351) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Henry","last_name":"Brooks","full_name":"Henry Brooks"}'::jsonb,
  now() - ((351) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '08db061d-1b19-5130-bfeb-39ece1268dcb'::uuid,
  '08db061d-1b19-5130-bfeb-39ece1268dcb'::uuid,
  '{"sub":"08db061d-1b19-5130-bfeb-39ece1268dcb","email":"henry.brooks.851@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '08db061d-1b19-5130-bfeb-39ece1268dcb',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Henry',
  last_name = 'Brooks',
  full_name = 'Henry Brooks',
  email = 'henry.brooks.851@outlook.com',
  title = 'Research Scientist',
  institution = 'Columbia University',
  location = 'Princeton, NJ',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at Columbia University working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
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
WHERE id = '08db061d-1b19-5130-bfeb-39ece1268dcb'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'eaed69b5-c60d-5133-86c3-ed579a4125f2'::uuid,
  'authenticated',
  'authenticated',
  'riya.powell.852@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((352) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Riya","last_name":"Powell","full_name":"Riya Powell"}'::jsonb,
  now() - ((352) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'eaed69b5-c60d-5133-86c3-ed579a4125f2'::uuid,
  'eaed69b5-c60d-5133-86c3-ed579a4125f2'::uuid,
  '{"sub":"eaed69b5-c60d-5133-86c3-ed579a4125f2","email":"riya.powell.852@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'eaed69b5-c60d-5133-86c3-ed579a4125f2',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Riya',
  last_name = 'Powell',
  full_name = 'Riya Powell',
  email = 'riya.powell.852@icloud.com',
  title = 'Associate Professor',
  institution = 'Caltech',
  location = 'Pasadena, CA',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at Caltech working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
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
WHERE id = 'eaed69b5-c60d-5133-86c3-ed579a4125f2'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '65b33e40-2eb6-5baa-bc71-7a8885b5779f'::uuid,
  'authenticated',
  'authenticated',
  'nathan.brown.853@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((353) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Nathan","last_name":"Brown","full_name":"Nathan Brown"}'::jsonb,
  now() - ((353) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '65b33e40-2eb6-5baa-bc71-7a8885b5779f'::uuid,
  '65b33e40-2eb6-5baa-bc71-7a8885b5779f'::uuid,
  '{"sub":"65b33e40-2eb6-5baa-bc71-7a8885b5779f","email":"nathan.brown.853@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '65b33e40-2eb6-5baa-bc71-7a8885b5779f',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Nathan',
  last_name = 'Brown',
  full_name = 'Nathan Brown',
  email = 'nathan.brown.853@yahoo.com',
  title = 'Staff Scientist',
  institution = 'Cornell University',
  location = 'Oxford, UK',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at Cornell University working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
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
WHERE id = '65b33e40-2eb6-5baa-bc71-7a8885b5779f'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '862f430e-1fe4-5ce4-a791-d17a77f2153c'::uuid,
  'authenticated',
  'authenticated',
  'priya.sato.854@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((354) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Priya","last_name":"Sato","full_name":"Priya Sato"}'::jsonb,
  now() - ((354) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '862f430e-1fe4-5ce4-a791-d17a77f2153c'::uuid,
  '862f430e-1fe4-5ce4-a791-d17a77f2153c'::uuid,
  '{"sub":"862f430e-1fe4-5ce4-a791-d17a77f2153c","email":"priya.sato.854@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '862f430e-1fe4-5ce4-a791-d17a77f2153c',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Priya',
  last_name = 'Sato',
  full_name = 'Priya Sato',
  email = 'priya.sato.854@proton.me',
  title = 'Visiting Scholar',
  institution = 'University of Texas at Austin',
  location = 'Singapore',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at University of Texas at Austin working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
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
WHERE id = '862f430e-1fe4-5ce4-a791-d17a77f2153c'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid,
  'authenticated',
  'authenticated',
  'omar.ibrahim.855@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((355) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Omar","last_name":"Ibrahim","full_name":"Omar Ibrahim"}'::jsonb,
  now() - ((355) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid,
  'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid,
  '{"sub":"c5817599-9aad-5e8a-8f85-3401d3c16ccf","email":"omar.ibrahim.855@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'c5817599-9aad-5e8a-8f85-3401d3c16ccf',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Omar',
  last_name = 'Ibrahim',
  full_name = 'Omar Ibrahim',
  email = 'omar.ibrahim.855@gmail.com',
  title = 'PhD Candidate',
  institution = 'EPFL',
  location = 'Melbourne, AU',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at EPFL working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
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
WHERE id = 'c5817599-9aad-5e8a-8f85-3401d3c16ccf'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '596f1efc-5edd-5271-b22f-b2020762115f'::uuid,
  'authenticated',
  'authenticated',
  'chloe.peterson.856@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((356) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Chloe","last_name":"Peterson","full_name":"Chloe Peterson"}'::jsonb,
  now() - ((356) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '596f1efc-5edd-5271-b22f-b2020762115f'::uuid,
  '596f1efc-5edd-5271-b22f-b2020762115f'::uuid,
  '{"sub":"596f1efc-5edd-5271-b22f-b2020762115f","email":"chloe.peterson.856@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '596f1efc-5edd-5271-b22f-b2020762115f',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Chloe',
  last_name = 'Peterson',
  full_name = 'Chloe Peterson',
  email = 'chloe.peterson.856@outlook.com',
  title = 'Research Scientist',
  institution = 'UC Berkeley',
  location = 'Cambridge, MA',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at UC Berkeley working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
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
WHERE id = '596f1efc-5edd-5271-b22f-b2020762115f'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '3f7dcc86-e0ad-5d04-8fba-af19edc21152'::uuid,
  'authenticated',
  'authenticated',
  'owen.ross.857@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((357) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Owen","last_name":"Ross","full_name":"Owen Ross"}'::jsonb,
  now() - ((357) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '3f7dcc86-e0ad-5d04-8fba-af19edc21152'::uuid,
  '3f7dcc86-e0ad-5d04-8fba-af19edc21152'::uuid,
  '{"sub":"3f7dcc86-e0ad-5d04-8fba-af19edc21152","email":"owen.ross.857@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '3f7dcc86-e0ad-5d04-8fba-af19edc21152',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Owen',
  last_name = 'Ross',
  full_name = 'Owen Ross',
  email = 'owen.ross.857@icloud.com',
  title = 'Associate Professor',
  institution = 'University of Washington',
  location = 'Palo Alto, CA',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at University of Washington working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
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
WHERE id = '3f7dcc86-e0ad-5d04-8fba-af19edc21152'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'b06a5bb8-5c51-5c83-b14f-366ec1bcc6c2'::uuid,
  'authenticated',
  'authenticated',
  'violet.garcia.858@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((358) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Violet","last_name":"Garcia","full_name":"Violet Garcia"}'::jsonb,
  now() - ((358) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'b06a5bb8-5c51-5c83-b14f-366ec1bcc6c2'::uuid,
  'b06a5bb8-5c51-5c83-b14f-366ec1bcc6c2'::uuid,
  '{"sub":"b06a5bb8-5c51-5c83-b14f-366ec1bcc6c2","email":"violet.garcia.858@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'b06a5bb8-5c51-5c83-b14f-366ec1bcc6c2',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Violet',
  last_name = 'Garcia',
  full_name = 'Violet Garcia',
  email = 'violet.garcia.858@yahoo.com',
  title = 'Staff Scientist',
  institution = 'Columbia University',
  location = 'Berkeley, CA',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at Columbia University working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
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
WHERE id = 'b06a5bb8-5c51-5c83-b14f-366ec1bcc6c2'::uuid;


INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '844bc8c1-568a-5c29-a8ee-695abfcc8b62'::uuid,
  'authenticated',
  'authenticated',
  'leo.wang.859@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((359) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Leo","last_name":"Wang","full_name":"Leo Wang"}'::jsonb,
  now() - ((359) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '844bc8c1-568a-5c29-a8ee-695abfcc8b62'::uuid,
  '844bc8c1-568a-5c29-a8ee-695abfcc8b62'::uuid,
  '{"sub":"844bc8c1-568a-5c29-a8ee-695abfcc8b62","email":"leo.wang.859@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '844bc8c1-568a-5c29-a8ee-695abfcc8b62',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Leo',
  last_name = 'Wang',
  full_name = 'Leo Wang',
  email = 'leo.wang.859@proton.me',
  title = 'Visiting Scholar',
  institution = 'Caltech',
  location = 'Boston, MA',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at Caltech working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
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
WHERE id = '844bc8c1-568a-5c29-a8ee-695abfcc8b62'::uuid;
