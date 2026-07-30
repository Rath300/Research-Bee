'use client';

import { getProfileCompleteness, type ProfileCompletenessFields } from '@/lib/profile';
import Link from 'next/link';

interface ProfileCompletenessMeterProps {
  profile: ProfileCompletenessFields | null | undefined;
  showMissing?: boolean;
  compact?: boolean;
}

export function ProfileCompletenessMeter({
  profile,
  showMissing = true,
  compact = false,
}: ProfileCompletenessMeterProps) {
  const result = getProfileCompleteness(profile);

  return (
    <div className={compact ? '' : 'rounded-md border border-border-medium bg-surface-primary p-4'}>
      <div className="flex items-center justify-between gap-3 mb-2">
        <p className="text-sm font-medium text-text-primary">Profile strength</p>
        <p className="text-sm font-ui text-accent-primary tabular-nums">{result.percent}%</p>
      </div>
      <div className="h-2 rounded-full bg-surface-secondary overflow-hidden">
        <div
          className="h-full rounded-full bg-accent-primary transition-all duration-300"
          style={{ width: `${result.percent}%` }}
        />
      </div>
      {showMissing && result.missing.length > 0 && (
        <div className="mt-3">
          <p className="text-xs text-text-muted mb-1.5">
            Add {result.missing.slice(0, 3).join(', ')}
            {result.missing.length > 3 ? ` +${result.missing.length - 3} more` : ''} to improve matches.
          </p>
          {!compact && (
            <Link href="/settings" className="text-xs font-medium text-accent-primary hover:underline">
              Edit profile
            </Link>
          )}
        </div>
      )}
    </div>
  );
}
