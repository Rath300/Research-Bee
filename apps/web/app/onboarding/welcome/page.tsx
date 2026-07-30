'use client';

import { useEffect, useState } from 'react';
import { useRouter } from 'next/navigation';
import Link from 'next/link';
import { useAuthStore } from '@/lib/store';
import { Button } from '@/components/ui/Button';
import { Card, CardContent } from '@/components/ui/Card';
import {
  FiSearch,
  FiHeart,
  FiMessageSquare,
  FiBriefcase,
  FiArrowRight,
  FiLoader,
  FiCompass,
} from 'react-icons/fi';
import {
  hasCompletedProductOnboarding,
  isProfileComplete,
  markProductOnboardingComplete,
} from '@/lib/profile';

const STEPS = [
  {
    icon: <FiCompass className="text-accent-primary" size={22} />,
    title: 'Welcome to ResearchBee',
    body: 'A focused place to find research collaborators, match when interest is mutual, chat, and build projects together.',
  },
  {
    icon: <FiSearch className="text-accent-primary" size={22} />,
    title: 'Find people',
    body: 'Browse researchers by field, skills, and interests. Filter the deck, then connect with people who fit your work.',
  },
  {
    icon: <FiHeart className="text-accent-primary" size={22} />,
    title: 'Match',
    body: 'When interest is mutual, you unlock a match — and can message right away from Matches or Chats.',
  },
  {
    icon: <FiMessageSquare className="text-accent-primary" size={22} />,
    title: 'Chat',
    body: 'Introduce yourself, share papers or ideas, and decide if you want to collaborate.',
  },
  {
    icon: <FiBriefcase className="text-accent-primary" size={22} />,
    title: 'Build projects',
    body: 'Create a project workspace for tasks, notes, files, and team chat when you are ready to work together.',
  },
];

export default function WelcomeOnboardingPage() {
  const router = useRouter();
  const { user, profile, isLoading, hasAttemptedProfileFetch } = useAuthStore();
  const [step, setStep] = useState(0);
  const [ready, setReady] = useState(false);

  useEffect(() => {
    if (isLoading) return;
    if (!user) {
      router.replace('/login');
      return;
    }
    if (hasAttemptedProfileFetch && !isProfileComplete(profile)) {
      router.replace('/profile-setup');
      return;
    }
    if (hasCompletedProductOnboarding()) {
      router.replace('/dashboard');
      return;
    }
    setReady(true);
  }, [user, profile, isLoading, hasAttemptedProfileFetch, router]);

  const finish = () => {
    markProductOnboardingComplete();
    router.replace('/dashboard');
  };

  const next = () => {
    if (step >= STEPS.length - 1) finish();
    else setStep((s) => s + 1);
  };

  if (isLoading || !user || !ready) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-bg-primary">
        <FiLoader className="animate-spin text-accent-primary text-2xl" />
      </div>
    );
  }

  const current = STEPS[step];

  return (
    <div className="min-h-screen bg-bg-primary flex flex-col">
      <header className="px-6 py-4 flex items-center justify-between border-b border-border-medium">
        <Link href="/dashboard" className="font-display text-lg font-semibold text-text-primary no-underline">
          ResearchBee
        </Link>
        <button
          type="button"
          onClick={finish}
          className="text-sm text-text-muted hover:text-text-primary"
        >
          Skip for now
        </button>
      </header>

      <main className="flex-1 flex items-center justify-center p-4">
        <div className="w-full max-w-lg">
          <p className="text-xs font-ui text-text-muted mb-2">
            Step {step + 1} of {STEPS.length}
          </p>
          <div className="h-1.5 rounded-full bg-surface-secondary mb-8 overflow-hidden">
            <div
              className="h-full bg-accent-primary transition-all"
              style={{ width: `${((step + 1) / STEPS.length) * 100}%` }}
            />
          </div>

          <Card>
            <CardContent className="p-8 text-center">
              <div className="mx-auto mb-4 h-12 w-12 rounded-md bg-accent-soft flex items-center justify-center">
                {current.icon}
              </div>
              <h1 className="font-display text-2xl font-semibold text-text-primary">{current.title}</h1>
              <p className="text-sm text-text-secondary mt-3 leading-relaxed max-w-md mx-auto">
                {current.body}
              </p>

              <div className="mt-8 flex flex-col sm:flex-row gap-2 justify-center">
                {step > 0 && (
                  <Button variant="outline" onClick={() => setStep((s) => s - 1)}>
                    Back
                  </Button>
                )}
                <Button onClick={next} rightIcon={<FiArrowRight />}>
                  {step === STEPS.length - 1 ? 'Go to Home' : 'Continue'}
                </Button>
              </div>
            </CardContent>
          </Card>

          {step === STEPS.length - 1 && (
            <p className="text-center text-xs text-text-muted mt-4">
              Tip: start with <span className="font-medium text-text-secondary">Find people</span>, then
              open chats when you match.
            </p>
          )}
        </div>
      </main>
    </div>
  );
}
