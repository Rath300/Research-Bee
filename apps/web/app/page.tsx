import { getPlatformStats } from '@/lib/platform-stats';
import { LandingContent } from '@/components/marketing/LandingContent';

export const revalidate = 300;

export default async function LandingPage() {
  const stats = await getPlatformStats();
  return <LandingContent stats={stats} />;
}
