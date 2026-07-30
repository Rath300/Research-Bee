/**
 * Shared profile completeness gate used by middleware, layouts, and profile-setup.
 */

export interface ProfileCompletenessFields {
  first_name?: string | null;
  last_name?: string | null;
  bio?: string | null;
  title?: string | null;
  institution?: string | null;
  field_of_study?: string | null;
  avatar_url?: string | null;
  interests?: string[] | null;
  skills?: string[] | null;
  looking_for?: string[] | null;
  collaboration_pitch?: string | null;
  location?: string | null;
}

const PLACEHOLDER_FIRST = 'Anonymous';
const PLACEHOLDER_LAST = 'User';

export function isProfileComplete(profile: ProfileCompletenessFields | null | undefined): boolean {
  if (!profile) return false;
  const first = profile.first_name?.trim() ?? '';
  const last = profile.last_name?.trim() ?? '';
  const bio = profile.bio?.trim() ?? '';
  if (!first || !last || !bio) return false;
  if (first === PLACEHOLDER_FIRST && last === PLACEHOLDER_LAST) return false;
  return true;
}

export interface ProfileCompletenessResult {
  score: number;
  percent: number;
  max: number;
  missing: string[];
  isGateComplete: boolean;
}

const COMPLETENESS_CHECKS: {
  key: string;
  label: string;
  test: (p: ProfileCompletenessFields) => boolean;
}[] = [
  { key: 'name', label: 'Full name', test: (p) => !!(p.first_name?.trim() && p.last_name?.trim()) },
  { key: 'bio', label: 'Bio', test: (p) => !!p.bio?.trim() },
  { key: 'title', label: 'Title / role', test: (p) => !!p.title?.trim() },
  { key: 'institution', label: 'Institution', test: (p) => !!p.institution?.trim() },
  { key: 'field', label: 'Field of study', test: (p) => !!p.field_of_study?.trim() },
  { key: 'avatar', label: 'Profile photo', test: (p) => !!p.avatar_url?.trim() },
  { key: 'interests', label: 'Research interests', test: (p) => (p.interests?.length ?? 0) > 0 },
  { key: 'skills', label: 'Skills', test: (p) => (p.skills?.length ?? 0) > 0 },
  { key: 'looking_for', label: 'What you\'re looking for', test: (p) => (p.looking_for?.length ?? 0) > 0 },
  { key: 'pitch', label: 'Collaboration pitch', test: (p) => !!p.collaboration_pitch?.trim() },
];

export function getProfileCompleteness(
  profile: ProfileCompletenessFields | null | undefined
): ProfileCompletenessResult {
  const max = COMPLETENESS_CHECKS.length;
  if (!profile) {
    return {
      score: 0,
      percent: 0,
      max,
      missing: COMPLETENESS_CHECKS.map((c) => c.label),
      isGateComplete: false,
    };
  }

  const missing: string[] = [];
  let score = 0;
  for (const check of COMPLETENESS_CHECKS) {
    if (check.test(profile)) score += 1;
    else missing.push(check.label);
  }

  return {
    score,
    percent: Math.round((score / max) * 100),
    max,
    missing,
    isGateComplete: isProfileComplete(profile),
  };
}

export function isSafeRedirectPath(path: string | null | undefined): path is string {
  if (!path) return false;
  if (!path.startsWith('/')) return false;
  if (path.startsWith('//')) return false;
  if (path.startsWith('/login') || path.startsWith('/signup') || path.startsWith('/auth/')) return false;
  return true;
}

export const ONBOARDING_STORAGE_KEY = 'researchbee_onboarding_v1';
export const ONBOARDING_BANNER_DISMISS_KEY = 'researchbee_onboarding_banner_dismissed';

export function hasCompletedProductOnboarding(): boolean {
  if (typeof window === 'undefined') return true;
  try {
    return localStorage.getItem(ONBOARDING_STORAGE_KEY) === 'done';
  } catch {
    return false;
  }
}

export function markProductOnboardingComplete() {
  if (typeof window === 'undefined') return;
  try {
    localStorage.setItem(ONBOARDING_STORAGE_KEY, 'done');
    sessionStorage.removeItem(ONBOARDING_BANNER_DISMISS_KEY);
  } catch {
    // ignore
  }
}

export function isOnboardingBannerDismissed(): boolean {
  if (typeof window === 'undefined') return true;
  try {
    return sessionStorage.getItem(ONBOARDING_BANNER_DISMISS_KEY) === '1';
  } catch {
    return false;
  }
}

export function dismissOnboardingBanner() {
  if (typeof window === 'undefined') return;
  try {
    sessionStorage.setItem(ONBOARDING_BANNER_DISMISS_KEY, '1');
  } catch {
    // ignore
  }
}
