'use client';

import React, { useEffect, useMemo, useState } from 'react';
import Link from 'next/link';
import { useAuthStore } from '@/lib/store';
import { api } from '@/lib/trpc';
import { Button } from '@/components/ui/Button';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/Card';
import { ProfileCompletenessMeter } from '@/components/profile/ProfileCompletenessMeter';
import { StatCard } from '@/components/ui/StatCard';
import { DashboardSkeleton } from '@/components/ui/LoadingSkeleton';
import { Avatar } from '@/components/ui/Avatar';
import {
  FiSearch,
  FiHeart,
  FiMessageSquare,
  FiBriefcase,
  FiArrowRight,
  FiCheckCircle,
  FiX,
  FiUsers,
} from 'react-icons/fi';
import {
  getProfileCompleteness,
  hasCompletedProductOnboarding,
  isOnboardingBannerDismissed,
  dismissOnboardingBanner as dismissBannerStorage,
  isProfileComplete,
} from '@/lib/profile';

export default function HomePage() {
  const { user, profile } = useAuthStore();
  const completeness = getProfileCompleteness(profile);
  const [showOnboardingBanner, setShowOnboardingBanner] = useState(false);

  useEffect(() => {
    if (!user) return;
    if (!hasCompletedProductOnboarding() && !isOnboardingBannerDismissed()) {
      setShowOnboardingBanner(true);
    }
  }, [user]);

  const matchesQuery = api.matching.listMatches.useQuery(undefined, { enabled: !!user });
  const pendingQuery = api.matching.listPendingIncoming.useQuery(undefined, { enabled: !!user });
  const conversationsQuery = api.matching.listConversations.useQuery(undefined, { enabled: !!user });
  const projectsQuery = api.project.listMyProjects.useQuery(undefined, { enabled: !!user });

  const firstName = profile?.first_name?.trim() || 'there';

  const nextSteps = useMemo(() => {
    const steps: {
      id: string;
      title: string;
      description: string;
      href: string;
      cta: string;
      done?: boolean;
      priority: number;
    }[] = [];

    if (!isProfileComplete(profile) || completeness.percent < 70) {
      steps.push({
        id: 'profile',
        title: completeness.isGateComplete ? 'Strengthen your profile' : 'Finish your profile',
        description: completeness.isGateComplete
          ? `You're at ${completeness.percent}%. Add skills and interests to get better matches.`
          : 'Add your name and a short bio so others can find you.',
        href: '/settings',
        cta: 'Edit profile',
        priority: 1,
      });
    }

    const matchCount = matchesQuery.data?.length ?? 0;
    if (matchCount === 0) {
      steps.push({
        id: 'discover',
        title: 'Find collaborators',
        description: 'Browse researchers by field and interests, then connect.',
        href: '/match',
        cta: 'Find people',
        priority: 2,
      });
    } else {
      steps.push({
        id: 'discover',
        title: 'Keep discovering',
        description: 'You already have matches — find more people in your field.',
        href: '/match',
        cta: 'Find people',
        done: true,
        priority: 4,
      });
    }

    const pending = pendingQuery.data?.length ?? 0;
    if (pending > 0) {
      steps.push({
        id: 'incoming',
        title: `${pending} people interested in you`,
        description: 'Review incoming interests and match back to start chatting.',
        href: '/matches',
        cta: 'Review matches',
        priority: 1,
      });
    }

    const chats = conversationsQuery.data?.length ?? 0;
    if (matchCount > 0 && chats === 0) {
      steps.push({
        id: 'chat',
        title: 'Say hello to a match',
        description: 'Open a conversation and introduce your research interests.',
        href: '/chats',
        cta: 'Open chats',
        priority: 2,
      });
    }

    const projects = projectsQuery.data?.length ?? 0;
    if (projects === 0) {
      steps.push({
        id: 'project',
        title: 'Start or join a project',
        description: 'Create a project workspace or browse trending opportunities.',
        href: '/projects/new',
        cta: 'New project',
        priority: 3,
      });
    }

    steps.push({
      id: 'workspaces',
      title: 'Open a collaboration workspace',
      description: 'Invite teammates into a shared room for docs, tasks, files, and chat.',
      href: '/workspaces',
      cta: 'Workspaces',
      priority: 5,
    });

    return steps.sort((a, b) => a.priority - b.priority).slice(0, 4);
  }, [
    profile,
    completeness.percent,
    completeness.isGateComplete,
    matchesQuery.data,
    pendingQuery.data,
    conversationsQuery.data,
    projectsQuery.data,
  ]);

  const isLoading =
    matchesQuery.isLoading ||
    pendingQuery.isLoading ||
    conversationsQuery.isLoading ||
    projectsQuery.isLoading;

  const matchCount = matchesQuery.data?.length ?? 0;
  const pendingCount = pendingQuery.data?.length ?? 0;
  const chatCount = conversationsQuery.data?.length ?? 0;
  const projectCount = projectsQuery.data?.length ?? 0;

  const recentMatches = (matchesQuery.data ?? []).slice(0, 3);

  const dismissOnboardingBanner = () => {
    dismissBannerStorage();
    setShowOnboardingBanner(false);
  };

  if (isLoading) {
    return <DashboardSkeleton />;
  }

  return (
    <div className="max-w-4xl mx-auto space-y-8">
      {showOnboardingBanner && (
        <div className="rounded-md border border-accent-primary/30 bg-accent-soft px-4 py-3 flex items-start gap-3">
          <div className="flex-1 min-w-0">
            <p className="text-sm font-medium text-text-primary">Take a 60-second tour</p>
            <p className="text-xs text-text-secondary mt-0.5">
              Learn how Find → Match → Chat → Projects works on ResearchBee.
            </p>
            <div className="mt-2.5 flex flex-wrap gap-2">
              <Link href="/onboarding/welcome" className="no-underline">
                <Button size="sm">Start tour</Button>
              </Link>
              <Button size="sm" variant="outline" onClick={dismissOnboardingBanner}>
                Maybe later
              </Button>
            </div>
          </div>
          <button
            type="button"
            onClick={dismissOnboardingBanner}
            className="p-1 text-text-muted hover:text-text-primary"
            aria-label="Dismiss"
          >
            <FiX size={16} />
          </button>
        </div>
      )}

      <div>
        <h1 className="font-display text-2xl md:text-3xl font-semibold text-text-primary">
          Welcome back, {firstName}
        </h1>
        <p className="text-sm text-text-muted mt-1.5">
          Find collaborators, start conversations, and build projects together.
        </p>
      </div>

      <div className="grid grid-cols-2 lg:grid-cols-4 gap-3">
        <StatCard
          label="Matches"
          value={matchCount}
          hint={pendingCount > 0 ? `${pendingCount} pending` : 'Mutual connections'}
          icon={<FiHeart size={16} />}
        />
        <StatCard
          label="Projects"
          value={projectCount}
          hint="Active workspaces"
          icon={<FiBriefcase size={16} />}
        />
        <StatCard
          label="Chats"
          value={chatCount}
          hint="Open conversations"
          icon={<FiMessageSquare size={16} />}
        />
        <StatCard
          label="Profile"
          value={`${completeness.percent}%`}
          hint={completeness.isGateComplete ? 'Looking good' : 'Complete to match'}
          icon={<FiUsers size={16} />}
        />
      </div>

      <div className="grid md:grid-cols-3 gap-4">
        <div className="md:col-span-2 space-y-3">
          <h2 className="text-sm font-ui font-medium text-text-muted uppercase tracking-wide">
            Suggested next steps
          </h2>
          {nextSteps.map((step) => (
              <Card key={step.id} className="border-border-medium">
                <CardContent className="p-4 flex items-start gap-3">
                  <div className="mt-0.5 text-accent-primary">
                    {step.done ? <FiCheckCircle size={18} /> : <FiArrowRight size={18} />}
                  </div>
                  <div className="flex-1 min-w-0">
                    <p className="font-medium text-text-primary">{step.title}</p>
                    <p className="text-sm text-text-muted mt-0.5">{step.description}</p>
                  </div>
                  <Link href={step.href} className="no-underline shrink-0">
                    <Button size="sm" variant={step.done ? 'outline' : 'primary'}>
                      {step.cta}
                    </Button>
                  </Link>
                </CardContent>
              </Card>
            ))}
        </div>

        <div className="space-y-4">
          <ProfileCompletenessMeter profile={profile} />
          <Card>
            <CardHeader className="pb-2">
              <CardTitle className="text-base">Quick actions</CardTitle>
            </CardHeader>
            <CardContent className="grid gap-2">
              <Link href="/match" className="no-underline">
                <Button variant="outline" isFullWidth size="sm" className="justify-start">
                  <FiSearch className="mr-2" /> Find people
                </Button>
              </Link>
              <Link href="/matches" className="no-underline">
                <Button variant="outline" isFullWidth size="sm" className="justify-start">
                  <FiHeart className="mr-2" /> My matches
                </Button>
              </Link>
              <Link href="/chats" className="no-underline">
                <Button variant="outline" isFullWidth size="sm" className="justify-start">
                  <FiMessageSquare className="mr-2" /> Chats
                </Button>
              </Link>
              <Link href="/projects" className="no-underline">
                <Button variant="outline" isFullWidth size="sm" className="justify-start">
                  <FiBriefcase className="mr-2" /> Projects
                </Button>
              </Link>
            </CardContent>
          </Card>
        </div>
      </div>

      <div>
        <div className="flex items-center justify-between mb-3">
          <h2 className="text-sm font-ui font-medium text-text-muted uppercase tracking-wide">
            Recent matches
          </h2>
          <Link href="/matches" className="text-xs text-accent-primary font-medium">
            View all
          </Link>
        </div>
        {recentMatches.length === 0 ? (
          <Card>
            <CardContent className="py-8 text-center text-sm text-text-muted">
              No matches yet.{' '}
              <Link href="/match" className="text-accent-primary font-medium">
                Find people
              </Link>{' '}
              to get started.
            </CardContent>
          </Card>
        ) : (
          <ul className="space-y-2">
            {recentMatches.map(({ profile: p, matchId }) => {
              const name =
                [p.first_name, p.last_name].filter(Boolean).join(' ') || p.full_name || 'Researcher';
              return (
                <li key={p.id}>
                  <Link
                    href={matchId ? `/chats?matchId=${matchId}` : '/chats'}
                    className="flex items-center gap-3 p-3 rounded-md border border-border-medium bg-surface-primary hover:bg-surface-hover no-underline"
                  >
                    <Avatar src={p.avatar_url} alt={name} size="sm" />
                    <div className="min-w-0 flex-1">
                      <p className="text-sm font-medium text-text-primary truncate">{name}</p>
                      <p className="text-xs text-text-muted truncate">
                        {p.title || p.institution || 'Matched'}
                      </p>
                    </div>
                    <span className="text-xs text-accent-primary font-medium">Message</span>
                  </Link>
                </li>
              );
            })}
          </ul>
        )}
      </div>
    </div>
  );
}
