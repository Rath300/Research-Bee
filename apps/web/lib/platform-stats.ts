import { createClient } from '@supabase/supabase-js';

export interface PlatformStats {
  researchers: number;
  projects: number;
  matches: number;
  workspaces: number;
}

const emptyStats: PlatformStats = {
  researchers: 0,
  projects: 0,
  matches: 0,
  workspaces: 0,
};

/** Public-facing user count starts here and ticks up daily. */
const USER_DISPLAY_BASELINE = 1524;
/** UTC midnight for the day the 1524 baseline went live. */
const USER_BASELINE_DATE_MS = Date.UTC(2026, 7, 17);
/** Live profile count on baseline day — real signups add on top of 1524. */
const USER_COUNT_REFERENCE = 930;

function getDisplayUserCount(actualCount: number, now = Date.now()): number {
  const daysSinceBaseline = Math.floor((now - USER_BASELINE_DATE_MS) / 86_400_000);
  const timeBasedCount = USER_DISPLAY_BASELINE + Math.max(0, daysSinceBaseline);
  const growthBasedCount =
    USER_DISPLAY_BASELINE + Math.max(0, actualCount - USER_COUNT_REFERENCE);

  return Math.max(timeBasedCount, growthBasedCount);
}

async function countRows(table: 'profiles' | 'projects' | 'matches' | 'workspaces'): Promise<number> {
  const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
  const supabaseKey =
    process.env.SUPABASE_SERVICE_ROLE_KEY ?? process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

  if (!supabaseUrl || !supabaseKey) {
    return 0;
  }

  const supabase = createClient(supabaseUrl, supabaseKey);
  const { count, error } = await supabase.from(table).select('*', { count: 'exact', head: true });

  if (error) {
    console.error(`Failed to count ${table}:`, error.message);
    return 0;
  }

  return count ?? 0;
}

export async function getPlatformStats(): Promise<PlatformStats> {
  try {
    const [researchers, projects, matches, workspaces] = await Promise.all([
      countRows('profiles'),
      countRows('projects'),
      countRows('matches'),
      countRows('workspaces'),
    ]);

    return {
      researchers: getDisplayUserCount(researchers),
      projects,
      matches,
      workspaces,
    };
  } catch (error) {
    console.error('Failed to load platform stats:', error);
    return emptyStats;
  }
}
