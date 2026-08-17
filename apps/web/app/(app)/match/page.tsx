'use client';

import React, { useMemo, useRef, useState } from 'react';
import TinderCard from 'react-tinder-card';
import { motion, AnimatePresence } from 'framer-motion';
import { useAuthStore } from '@/lib/store';
import { PageContainer } from '@/components/layout/PageContainer';
import { Avatar } from '@/components/ui/Avatar';
import { Button } from '@/components/ui/Button';
import { Input } from '@/components/ui/Input';
import { EmptyState } from '@/components/ui/EmptyState';
import { FiLoader, FiAlertCircle, FiHeart, FiX, FiRefreshCw, FiSearch, FiMessageSquare } from 'react-icons/fi';
import Link from 'next/link';
import { api } from '@/lib/trpc';
import { trackMatch } from '@/lib/analytics';
import { useToast } from '@/components/ui/Toast';

export default function MatchPage() {
  const { user } = useAuthStore();
  const utils = api.useUtils();
  const { success, error: toastError } = useToast();

  const [query, setQuery] = useState('');
  const [fieldOfStudy, setFieldOfStudy] = useState('');
  const [skill, setSkill] = useState('');
  const [applied, setApplied] = useState({ query: '', fieldOfStudy: '', skill: '' });
  const [localGone, setLocalGone] = useState<Set<string>>(new Set());
  const [mutualMatchId, setMutualMatchId] = useState<string | null>(null);
  const swipingRef = useRef(false);

  const {
    data: candidates = [],
    isLoading,
    error,
    refetch,
    isFetching,
  } = api.matching.listCandidates.useQuery(
    {
      query: applied.query || undefined,
      fieldOfStudy: applied.fieldOfStudy || undefined,
      skill: applied.skill || undefined,
    },
    { enabled: !!user }
  );

  const swipeMutation = api.matching.swipe.useMutation({
    onSuccess: (result) => {
      if (result.isMutual && result.matchId) {
        setMutualMatchId(result.matchId);
        trackMatch('request');
        success('It\'s a match! You can message them now.');
      }
      void utils.matching.listCandidates.invalidate();
      void utils.matching.listMatches.invalidate();
      void utils.matching.listConversations.invalidate();
      void utils.matching.listPendingIncoming.invalidate();
    },
    onError: (err) => toastError(err.message || 'Could not save that action.'),
  });

  const isSwiping = swipingRef.current || swipeMutation.isLoading;

  const visible = useMemo(
    () => candidates.filter((c) => !localGone.has(c.id)),
    [candidates, localGone]
  );
  const current = visible[visible.length - 1];

  const applyFilters = (e?: React.FormEvent) => {
    e?.preventDefault();
    setLocalGone(new Set());
    setApplied({
      query: query.trim(),
      fieldOfStudy: fieldOfStudy.trim(),
      skill: skill.trim(),
    });
  };

  const recordSwipe = async (direction: 'left' | 'right', targetId: string) => {
    if (swipingRef.current || localGone.has(targetId)) return;
    swipingRef.current = true;
    setLocalGone((prev) => new Set(prev).add(targetId));
    try {
      await swipeMutation.mutateAsync({ targetUserId: targetId, direction });
    } catch {
      setLocalGone((prev) => {
        const next = new Set(prev);
        next.delete(targetId);
        return next;
      });
    } finally {
      swipingRef.current = false;
    }
  };

  if (!user) {
    return (
      <PageContainer title="Find people">
        <p className="text-text-muted">Please sign in.</p>
      </PageContainer>
    );
  }

  return (
    <PageContainer title="Find people">
      <div className="max-w-2xl mx-auto space-y-5">
        <div>
          <h1 className="font-display text-2xl font-semibold text-text-primary">Find people</h1>
          <p className="text-sm text-text-muted mt-1">
            Filter by field or skills, then connect. Right = interested, left = pass.
          </p>
        </div>

        <form
          onSubmit={applyFilters}
          className="grid sm:grid-cols-3 gap-2 p-3 rounded-md border border-border-medium bg-surface-primary"
        >
          <Input
            value={query}
            onChange={(e) => setQuery(e.target.value)}
            placeholder="Search name, bio…"
            aria-label="Search"
          />
          <Input
            value={fieldOfStudy}
            onChange={(e) => setFieldOfStudy(e.target.value)}
            placeholder="Field of study"
            aria-label="Field of study"
          />
          <div className="flex gap-2">
            <Input
              value={skill}
              onChange={(e) => setSkill(e.target.value)}
              placeholder="Skill"
              aria-label="Skill"
              className="flex-1"
            />
            <Button type="submit" size="sm" aria-label="Apply filters">
              <FiSearch />
            </Button>
          </div>
        </form>

        <AnimatePresence>
          {mutualMatchId && (
            <motion.div
              initial={{ opacity: 0, y: -6 }}
              animate={{ opacity: 1, y: 0 }}
              exit={{ opacity: 0 }}
              className="rounded-md border border-accent-primary/30 bg-accent-soft p-4 flex flex-wrap items-center justify-between gap-3"
            >
              <div>
                <p className="font-medium text-text-primary">You matched!</p>
                <p className="text-sm text-text-muted">They were interested too — start a conversation.</p>
              </div>
              <div className="flex gap-2">
                <Button size="sm" variant="outline" onClick={() => setMutualMatchId(null)}>
                  Keep browsing
                </Button>
                <Link href={`/chats?matchId=${mutualMatchId}`} className="no-underline">
                  <Button size="sm">
                    <FiMessageSquare className="mr-1" /> Message
                  </Button>
                </Link>
              </div>
            </motion.div>
          )}
        </AnimatePresence>

        <div className="flex justify-end">
          <Button
            variant="outline"
            size="sm"
            onClick={() => {
              setLocalGone(new Set());
              void refetch();
            }}
            disabled={isFetching}
          >
            <FiRefreshCw className={isFetching ? 'animate-spin mr-1' : 'mr-1'} /> Refresh
          </Button>
        </div>

        {isLoading ? (
          <div className="flex justify-center py-20">
            <FiLoader className="animate-spin text-accent-primary text-2xl" />
          </div>
        ) : error ? (
          <div className="rounded-md border border-red-200 bg-red-50 p-4 text-sm text-accent-error flex gap-2">
            <FiAlertCircle className="mt-0.5 shrink-0" />
            <div>
              <p>{error.message}</p>
              <Button className="mt-3" size="sm" onClick={() => refetch()}>
                Try again
              </Button>
            </div>
          </div>
        ) : visible.length === 0 ? (
          <EmptyState
            icon={<FiSearch size={28} />}
            title="No people match these filters"
            description="Try clearing filters, or check your Matches for people who already connected."
            actionLabel="View matches"
            actionHref="/matches"
          />
        ) : (
          <div className="relative h-[480px] max-w-lg mx-auto">
            {visible.map((profile, index) => (
              <TinderCard
                key={profile.id}
                className="absolute inset-0"
                onSwipe={(dir) => {
                  if (dir === 'left' || dir === 'right') void recordSwipe(dir, profile.id);
                }}
                preventSwipe={isSwiping || index !== visible.length - 1 ? ['left', 'right', 'up', 'down'] : ['up', 'down']}
              >
                <div
                  className={`h-full rounded-lg border border-border-medium bg-surface-primary p-6 shadow-sm flex flex-col ${
                    index === visible.length - 1 ? 'z-10' : 'z-0'
                  }`}
                >
                  <div className="flex items-center gap-3 mb-4">
                    <Avatar src={profile.avatar_url} alt={profile.first_name || 'Profile'} size="lg" />
                    <div>
                      <h2 className="font-heading text-xl font-semibold text-text-primary">
                        {[profile.first_name, profile.last_name].filter(Boolean).join(' ') ||
                          profile.full_name ||
                          'Researcher'}
                      </h2>
                      <p className="text-sm text-text-muted">
                        {[profile.title, profile.field_of_study, profile.location].filter(Boolean).join(' · ') ||
                          'Researcher'}
                      </p>
                    </div>
                  </div>
                  <p className="text-sm text-text-secondary leading-relaxed flex-1 overflow-y-auto">
                    {profile.bio || 'No bio yet.'}
                  </p>
                  {!!profile.skills?.length && (
                    <div className="mt-3 flex flex-wrap gap-1.5">
                      {profile.skills.slice(0, 6).map((tag) => (
                        <span
                          key={tag}
                          className="text-xs px-2 py-0.5 rounded-md bg-accent-muted text-accent-primary"
                        >
                          {tag}
                        </span>
                      ))}
                    </div>
                  )}
                </div>
              </TinderCard>
            ))}
          </div>
        )}

        {current && (
          <div className="flex justify-center gap-4">
            <Button
              variant="outline"
              size="lg"
              onClick={() => void recordSwipe('left', current.id)}
              disabled={isSwiping}
              aria-label="Pass"
            >
              <FiX className="text-lg" />
            </Button>
            <Button
              size="lg"
              onClick={() => void recordSwipe('right', current.id)}
              disabled={isSwiping}
              aria-label="Interested"
            >
              <FiHeart className="text-lg" />
            </Button>
          </div>
        )}
      </div>
    </PageContainer>
  );
}
