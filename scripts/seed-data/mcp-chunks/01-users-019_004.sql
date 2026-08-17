INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'b8aa1b83-3c0a-53f5-a401-eacdd52c5a59'::uuid,
  'authenticated',
  'authenticated',
  'nora.hassan.892@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((392) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Nora","last_name":"Hassan","full_name":"Nora Hassan"}'::jsonb,
  now() - ((392) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'b8aa1b83-3c0a-53f5-a401-eacdd52c5a59'::uuid,
  'b8aa1b83-3c0a-53f5-a401-eacdd52c5a59'::uuid,
  '{"sub":"b8aa1b83-3c0a-53f5-a401-eacdd52c5a59","email":"nora.hassan.892@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'b8aa1b83-3c0a-53f5-a401-eacdd52c5a59',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Nora',
  last_name = 'Hassan',
  full_name = 'Nora Hassan',
  email = 'nora.hassan.892@icloud.com',
  title = 'Associate Professor',
  institution = 'University of Washington',
  location = 'New Haven, CT',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at University of Washington working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['co-authors','mentorship']::text[],
  availability = 'part-time',
  availability_hours = 17,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'b8aa1b83-3c0a-53f5-a401-eacdd52c5a59'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'b2898457-57d2-5375-845d-3da865e52c68'::uuid,
  'authenticated',
  'authenticated',
  'isaac.evans.893@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((393) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Isaac","last_name":"Evans","full_name":"Isaac Evans"}'::jsonb,
  now() - ((393) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'b2898457-57d2-5375-845d-3da865e52c68'::uuid,
  'b2898457-57d2-5375-845d-3da865e52c68'::uuid,
  '{"sub":"b2898457-57d2-5375-845d-3da865e52c68","email":"isaac.evans.893@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'b2898457-57d2-5375-845d-3da865e52c68',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Isaac',
  last_name = 'Evans',
  full_name = 'Isaac Evans',
  email = 'isaac.evans.893@yahoo.com',
  title = 'Staff Scientist',
  institution = 'Columbia University',
  location = 'Princeton, NJ',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at Columbia University working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['experimental collaborators','grant collaborators']::text[],
  availability = 'full-time',
  availability_hours = 18,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'b2898457-57d2-5375-845d-3da865e52c68'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '90318e9c-7673-5d60-8f47-d5f4fd26dbd6'::uuid,
  'authenticated',
  'authenticated',
  'ines.ward.894@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((394) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Ines","last_name":"Ward","full_name":"Ines Ward"}'::jsonb,
  now() - ((394) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '90318e9c-7673-5d60-8f47-d5f4fd26dbd6'::uuid,
  '90318e9c-7673-5d60-8f47-d5f4fd26dbd6'::uuid,
  '{"sub":"90318e9c-7673-5d60-8f47-d5f4fd26dbd6","email":"ines.ward.894@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '90318e9c-7673-5d60-8f47-d5f4fd26dbd6',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Ines',
  last_name = 'Ward',
  full_name = 'Ines Ward',
  email = 'ines.ward.894@proton.me',
  title = 'Visiting Scholar',
  institution = 'Caltech',
  location = 'Pasadena, CA',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at Caltech working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['computational partners','industry partners']::text[],
  availability = 'weekends',
  availability_hours = 19,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '90318e9c-7673-5d60-8f47-d5f4fd26dbd6'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '90c6682a-8f8a-58a6-852c-1f4842a5def5'::uuid,
  'authenticated',
  'authenticated',
  'felix.wood.895@gmail.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((395) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Felix","last_name":"Wood","full_name":"Felix Wood"}'::jsonb,
  now() - ((395) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '90c6682a-8f8a-58a6-852c-1f4842a5def5'::uuid,
  '90c6682a-8f8a-58a6-852c-1f4842a5def5'::uuid,
  '{"sub":"90c6682a-8f8a-58a6-852c-1f4842a5def5","email":"felix.wood.895@gmail.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '90c6682a-8f8a-58a6-852c-1f4842a5def5',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Felix',
  last_name = 'Wood',
  full_name = 'Felix Wood',
  email = 'felix.wood.895@gmail.com',
  title = 'PhD Candidate',
  institution = 'Cornell University',
  location = 'Oxford, UK',
  field_of_study = 'Climate Science',
  bio = 'PhD Candidate at Cornell University working in Climate Science. Focused on urban heat and carbon. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Remote sensing and Python. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Remote sensing','Python','GIS','Modeling']::text[],
  interests = ARRAY['urban heat','carbon','extreme weather']::text[],
  looking_for = ARRAY['mentorship','cross-disciplinary teammates']::text[],
  availability = 'part-time',
  availability_hours = 20,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '90c6682a-8f8a-58a6-852c-1f4842a5def5'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '5cd17e21-fe4e-5ed4-b394-0f20f92ff70b'::uuid,
  'authenticated',
  'authenticated',
  'sara.patel.896@outlook.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((396) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Sara","last_name":"Patel","full_name":"Sara Patel"}'::jsonb,
  now() - ((396) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '5cd17e21-fe4e-5ed4-b394-0f20f92ff70b'::uuid,
  '5cd17e21-fe4e-5ed4-b394-0f20f92ff70b'::uuid,
  '{"sub":"5cd17e21-fe4e-5ed4-b394-0f20f92ff70b","email":"sara.patel.896@outlook.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '5cd17e21-fe4e-5ed4-b394-0f20f92ff70b',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Sara',
  last_name = 'Patel',
  full_name = 'Sara Patel',
  email = 'sara.patel.896@outlook.com',
  title = 'Research Scientist',
  institution = 'University of Texas at Austin',
  location = 'Singapore',
  field_of_study = 'Neuroscience',
  bio = 'Research Scientist at University of Texas at Austin working in Neuroscience. Focused on memory and decision-making. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in fMRI and Electrophysiology. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['fMRI','Electrophysiology','Python','MATLAB']::text[],
  interests = ARRAY['memory','decision-making','neurotech']::text[],
  looking_for = ARRAY['grant collaborators','data partners']::text[],
  availability = 'full-time',
  availability_hours = 21,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '5cd17e21-fe4e-5ed4-b394-0f20f92ff70b'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '3d8d5666-d328-525f-af6f-5d62770e273a'::uuid,
  'authenticated',
  'authenticated',
  'james.martinez.897@icloud.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((397) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"James","last_name":"Martinez","full_name":"James Martinez"}'::jsonb,
  now() - ((397) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '3d8d5666-d328-525f-af6f-5d62770e273a'::uuid,
  '3d8d5666-d328-525f-af6f-5d62770e273a'::uuid,
  '{"sub":"3d8d5666-d328-525f-af6f-5d62770e273a","email":"james.martinez.897@icloud.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '3d8d5666-d328-525f-af6f-5d62770e273a',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'James',
  last_name = 'Martinez',
  full_name = 'James Martinez',
  email = 'james.martinez.897@icloud.com',
  title = 'Associate Professor',
  institution = 'EPFL',
  location = 'Melbourne, AU',
  field_of_study = 'Machine Learning',
  bio = 'Associate Professor at EPFL working in Machine Learning. Focused on LLMs and robustness. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in PyTorch and NLP. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['PyTorch','NLP','Evaluation','MLOps']::text[],
  interests = ARRAY['LLMs','robustness','fairness']::text[],
  looking_for = ARRAY['industry partners','co-authors']::text[],
  availability = 'weekends',
  availability_hours = 22,
  project_preference = 'local',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '3d8d5666-d328-525f-af6f-5d62770e273a'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  'eab6b3ab-8b1a-55f2-98e3-08e308d55581'::uuid,
  'authenticated',
  'authenticated',
  'grace.ahmed.898@yahoo.com',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((398) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Grace","last_name":"Ahmed","full_name":"Grace Ahmed"}'::jsonb,
  now() - ((398) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  'eab6b3ab-8b1a-55f2-98e3-08e308d55581'::uuid,
  'eab6b3ab-8b1a-55f2-98e3-08e308d55581'::uuid,
  '{"sub":"eab6b3ab-8b1a-55f2-98e3-08e308d55581","email":"grace.ahmed.898@yahoo.com","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  'eab6b3ab-8b1a-55f2-98e3-08e308d55581',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Grace',
  last_name = 'Ahmed',
  full_name = 'Grace Ahmed',
  email = 'grace.ahmed.898@yahoo.com',
  title = 'Staff Scientist',
  institution = 'UC Berkeley',
  location = 'Cambridge, MA',
  field_of_study = 'Robotics',
  bio = 'Staff Scientist at UC Berkeley working in Robotics. Focused on manipulation and HRI. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in ROS and Control systems. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['ROS','Control systems','C++','Computer vision']::text[],
  interests = ARRAY['manipulation','HRI','autonomy']::text[],
  looking_for = ARRAY['cross-disciplinary teammates','experimental collaborators']::text[],
  availability = 'part-time',
  availability_hours = 23,
  project_preference = 'remote',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = 'eab6b3ab-8b1a-55f2-98e3-08e308d55581'::uuid;

INSERT INTO auth.users (
  instance_id, id, aud, role, email, encrypted_password, email_confirmed_at,
  raw_app_meta_data, raw_user_meta_data, created_at, updated_at,
  confirmation_token, recovery_token, email_change_token_new, email_change
) VALUES (
  '00000000-0000-0000-0000-000000000000',
  '909cb930-459e-5e27-b948-adfab9f63565'::uuid,
  'authenticated',
  'authenticated',
  'mateo.bailey.899@proton.me',
  extensions.crypt('ResearchCollab!2026', extensions.gen_salt('bf')),
  now() - ((399) || ' days')::interval,
  '{"provider":"email","providers":["email"],"rb_synth":true}'::jsonb,
  '{"first_name":"Mateo","last_name":"Bailey","full_name":"Mateo Bailey"}'::jsonb,
  now() - ((399) || ' days')::interval,
  now(),
  '', '', '', ''
) ON CONFLICT (id) DO NOTHING;


INSERT INTO auth.identities (
  id, user_id, identity_data, provider, provider_id, last_sign_in_at, created_at, updated_at
) VALUES (
  '909cb930-459e-5e27-b948-adfab9f63565'::uuid,
  '909cb930-459e-5e27-b948-adfab9f63565'::uuid,
  '{"sub":"909cb930-459e-5e27-b948-adfab9f63565","email":"mateo.bailey.899@proton.me","email_verified":true,"phone_verified":false}'::jsonb,
  'email',
  '909cb930-459e-5e27-b948-adfab9f63565',
  now(),
  now(),
  now()
) ON CONFLICT DO NOTHING;


UPDATE public.profiles SET
  first_name = 'Mateo',
  last_name = 'Bailey',
  full_name = 'Mateo Bailey',
  email = 'mateo.bailey.899@proton.me',
  title = 'Visiting Scholar',
  institution = 'University of Washington',
  location = 'Palo Alto, CA',
  field_of_study = 'Economics',
  bio = 'Visiting Scholar at University of Washington working in Economics. Focused on development and labor. Open to careful, long-term collaboration.',
  collaboration_pitch = 'Looking for collaborators who bring complementary strengths in Econometrics and Stata. Prefer clear scope and reproducible workflows.',
  skills = ARRAY['Econometrics','Stata','Causal ML']::text[],
  interests = ARRAY['development','labor','policy evaluation']::text[],
  looking_for = ARRAY['data partners','computational partners']::text[],
  availability = 'full-time',
  availability_hours = 24,
  project_preference = 'hybrid',
  visibility = 'public',
  has_completed_tour = true,
  updated_at = now()
WHERE id = '909cb930-459e-5e27-b948-adfab9f63565'::uuid;