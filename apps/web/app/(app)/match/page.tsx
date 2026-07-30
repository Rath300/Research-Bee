'use client';

import React, { useMemo, useState } from 'react';
import TinderCard from 'react-tinder-card';
import { motion, AnimatePresence } from 'framer-motion';
import { useAuthStore } from '@/lib/store';
import { PageContainer } from '@/components/layout/PageContainer';
import { Avatar } from '@/components/ui/Avatar';
import { Button } from '@/components/ui/Button';
import { FiLoader, FiAlertCircle, FiHeart, FiX, FiRefreshCw } from 'react-icons/fi';
import Link from 'next/link';
import { api } from '@/lib/trpc';
import { trackMatch } from '@/lib/analytics';

export default function MatchPage() {
  const { user } = useAuthStore();
  const utils = api.useUtils();
  const [lastDirection, setLastDirection] = useState<string | null>(null);
  const [mutualFlash, setMutualFlash] = useState(false);
  const [localGone, setLocalGone] = useState<Set<string>>(new Set());

  const {
    data: candidates = [],
    isLoading,
    error,
    refetch,
    isFetching,
  } = api.matching.listCandidates.useQuery(undefined, { enabled: !!user });

  const swipeMutation = api.matching.swipe.useMutation({
    onSuccess: async (result) => {
      if (result.isMutual) {
        setMutualFlash(true);
        trackMatch('mutual');
        setTimeout(() => setMutualFlash(false), 1800);
      }
      await utils.matching.listCandidates.invalidate();
      await utils.matching.listMatches.invalidate();
      await utils.matching.listConversations.invalidate();
    },
  });

  const visible = useMemo(
    () => candidates.filter((c) => !localGone.has(c.id)),
    [candidates, localGone]
  );

  const current = visible[visible.length - 1];

  const recordSwipe = async (direction: 'left' | 'right', targetId: string) => {
    setLocalGone((prev) => new Set(prev).add(targetId));
    setLastDirection(direction);
    try {
      await swipeMutation.mutateAsync({ targetUserId: targetId, direction });
    } catch (err) {
      console.error(err);
      setLocalGone((prev) => {
        const next = new Set(prev);
        next.delete(targetId);
        return next;
      });
    }
  };

  const onSwipe = (direction: string, targetId: string) => {
    if (direction === 'left' || direction === 'right') {
      void recordSwipe(direction, targetId);
    }
  };

  if (!user) {
    return (
      <PageContainer title="Discover">
        <p className="text-text-muted">Please sign in to discover collaborators.</p>
      </PageContainer>
    );
  }

  return (
    <PageContainer title="Discover">
      <div className="max-w-lg mx-auto">
        <div className="flex items-center justify-between mb-4">
          <div>
            <h1 className="font-display text-2xl font-semibold text-text-primary">Discover</h1>
            <p className="text-sm text-text-muted mt-1">Swipe right to connect, left to pass.</p>
          </div>
          <Button
            variant="outline"
            size="sm"
            onClick={() => {
              setLocalGone(new Set());
              void refetch();
            }}
            disabled={isFetching}
          >
            <FiRefreshCw className={isFetching ? 'animate-spin' : ''} />
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
          <div className="text-center py-16 border border-border-medium rounded-md bg-surface-primary">
            <p className="text-text-primary font-medium">No more profiles right now</p>
            <p className="text-sm text-text-muted mt-1">Check your matches or try again later.</p>
            <Link href="/matches" className="inline-block mt-4 text-accent-primary text-sm font-medium">
              View matches
            </Link>
          </div>
        ) : (
          <div className="relative h-[520px]">
            <AnimatePresence>
              {mutualFlash && (
                <motion.div
                  initial={{ opacity: 0, y: -8 }}
                  animate={{ opacity: 1, y: 0 }}
                  exit={{ opacity: 0 }}
                  className="absolute top-2 left-0 right-0 z-30 mx-auto w-fit rounded-md bg-accent-primary text-white px-3 py-1.5 text-sm"
                >
                  It&apos;s a match! Start chatting from Matches.
                </motion.div>
              )}
            </AnimatePresence>

            {visible.map((profile, index) => (
              <TinderCard
                key={profile.id}
                className="absolute inset-0"
                onSwipe={(dir) => onSwipe(dir, profile.id)}
                preventSwipe={['up', 'down']}
              >
                <div
                  className={`h-full rounded-lg border border-border-medium bg-surface-primary p-6 shadow-sm flex flex-col ${
                    index === visible.length - 1 ? 'z-10' : 'z-0'
                  }`}
                >
                  <div className="flex items-center gap-3 mb-4">
                    <Avatar
                      src={profile.avatar_url}
                      alt={profile.first_name || 'Profile'}
                      size="lg"
                    />
                    <div>
                      <h2 className="font-heading text-xl font-semibold text-text-primary">
                        {[profile.first_name, profile.last_name].filter(Boolean).join(' ') ||
                          profile.full_name ||
                          'Researcher'}
                      </h2>
                      <p className="text-sm text-text-muted">
                        {profile.title || profile.field_of_study || 'Researcher'}
                        {profile.institution ? ` · ${profile.institution}` : ''}
                      </p>
                    </div>
                  </div>
                  <p className="text-sm text-text-secondary leading-relaxed flex-1 overflow-y-auto">
                    {profile.bio || 'No bio yet.'}
                  </p>
                  {!!profile.interests?.length && (
                    <div className="mt-4 flex flex-wrap gap-1.5">
                      {profile.interests.slice(0, 6).map((tag) => (
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
          <div className="flex justify-center gap-4 mt-6">
            <Button
              variant="outline"
              size="lg"
              onClick={() => void recordSwipe('left', current.id)}
              disabled={swipeMutation.isLoading}
              aria-label="Pass"
            >
              <FiX className="text-lg" />
            </Button>
            <Button
              size="lg"
              onClick={() => void recordSwipe('right', current.id)}
              disabled={swipeMutation.isLoading}
              aria-label="Like"
            >
              <FiHeart className="text-lg" />
            </Button>
          </div>
        )}

        {lastDirection && (
          <p className="text-center text-xs text-text-muted mt-3">Last swipe: {lastDirection}</p>
        )}
      </div>
    </PageContainer>
  );
}
