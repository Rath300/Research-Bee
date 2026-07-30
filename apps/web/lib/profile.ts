/**
 * Shared profile completeness gate used by middleware, layouts, and profile-setup.
 */

export interface ProfileCompletenessFields {
  first_name?: string | null;
  last_name?: string | null;
  bio?: string | null;
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

export function isSafeRedirectPath(path: string | null | undefined): path is string {
  if (!path) return false;
  if (!path.startsWith('/')) return false;
  if (path.startsWith('//')) return false;
  if (path.startsWith('/login') || path.startsWith('/signup') || path.startsWith('/auth/')) return false;
  return true;
}
