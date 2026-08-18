const HS_TITLES = [
  'High School Researcher',
  'Independent Study Student',
  'Science Fair Researcher',
  'AP Research Student',
  'STEM Club Member',
  'Junior Researcher',
];

const UNDERGRAD_TITLES = [
  'Undergraduate Researcher',
  'Research Assistant',
  'Honors Thesis Student',
  'Sophomore Researcher',
  'Junior (Undergraduate)',
  'Lab Intern',
];

const PHD_TITLES = ['PhD Candidate', 'Doctoral Researcher', 'Postdoctoral Researcher'];

const HS_FIELDS = [
  'Computer Science',
  'Biology',
  'Environmental Science',
  'Psychology',
  'Physics',
  'Chemistry',
  'Mathematics',
  'Engineering',
  'Neuroscience',
  'Public Health',
  'Data Science',
  'Medicine',
];

const HS_SKILLS = [
  ['Python', 'Spreadsheets', 'Literature review'],
  ['Lab notes', 'Data collection', 'Presentation'],
  ['Statistics', 'Writing', 'Research design'],
  ['Survey design', 'Canva', 'Public speaking'],
];

const HS_INTERESTS = [
  ['science fair', 'group projects'],
  ['AP research', 'peer tutoring'],
  ['environmental clubs', 'local surveys'],
  ['health outreach', 'community data'],
  ['robotics', 'coding projects'],
  ['psychology experiments', 'survey studies'],
];

const UNDERGRAD_SKILLS = [
  ['Python', 'R', 'Statistics'],
  ['MATLAB', 'Lab techniques', 'Writing'],
  ['SQL', 'Machine learning', 'Presentation'],
  ['Qualitative methods', 'LaTeX', 'Data viz'],
];

const UNDERGRAD_INTERESTS = [
  ['lab work', 'co-authoring'],
  ['thesis prep', 'grad school'],
  ['clinical research', 'methods'],
  ['open science', 'replication'],
];

const PHD_SKILLS = [
  ['Python', 'Statistics', 'Grant writing'],
  ['Experimental design', 'Peer review', 'Mentoring'],
  ['Advanced ML', 'Lab leadership', 'Publishing'],
];

const PHD_INTERESTS = [
  ['methods', 'long-term collaboration'],
  ['cross-lab partnerships', 'funding'],
  ['translation', 'policy impact'],
];

function educationTier(i) {
  const bucket = i % 100;
  if (bucket < 70) return 'hs';
  if (bucket < 95) return 'undergrad';
  return 'phd';
}

function pick(arr, i) {
  return arr[i % arr.length];
}

function titleForTier(tier, i) {
  if (tier === 'hs') return pick(HS_TITLES, i);
  if (tier === 'undergrad') return pick(UNDERGRAD_TITLES, i);
  return pick(PHD_TITLES, i);
}

function fieldForTier(tier, i, gradFields) {
  if (tier === 'phd') return pick(gradFields, i);
  return pick(HS_FIELDS, i);
}

function skillsForTier(tier, i) {
  if (tier === 'hs') return pick(HS_SKILLS, i);
  if (tier === 'undergrad') return pick(UNDERGRAD_SKILLS, i);
  return pick(PHD_SKILLS, i);
}

function interestsForTier(tier, i) {
  if (tier === 'hs') return pick(HS_INTERESTS, i);
  if (tier === 'undergrad') return pick(UNDERGRAD_INTERESTS, i);
  return pick(PHD_INTERESTS, i);
}

function bioForTier(tier, title, field, focus) {
  if (tier === 'hs') {
    return `${title} interested in ${field}. Exploring ${focus} through school projects and looking for collaborators around my level.`;
  }
  if (tier === 'undergrad') {
    return `${title} in ${field}. Focused on ${focus} and building research experience before grad school.`;
  }
  return `${title} in ${field}. Focused on ${focus}. Open to careful, long-term collaboration.`;
}

function pitchForTier(tier, skillA, skillB) {
  if (tier === 'hs') {
    return `Looking for partners for school research, science fair prep, or study groups — especially in ${skillA} and ${skillB}.`;
  }
  if (tier === 'undergrad') {
    return `Open to lab teammates and co-authors who want clear roles in ${skillA} and ${skillB}.`;
  }
  return `Looking for collaborators who bring complementary strengths in ${skillA} and ${skillB}. Prefer clear scope and reproducible workflows.`;
}

module.exports = {
  educationTier,
  titleForTier,
  fieldForTier,
  skillsForTier,
  interestsForTier,
  bioForTier,
  pitchForTier,
  HS_TITLES,
  UNDERGRAD_TITLES,
  PHD_TITLES,
};
