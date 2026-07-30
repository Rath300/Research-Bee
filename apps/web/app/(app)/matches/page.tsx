'use client';

import { useState } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';
import { useAuthStore } from '@/lib/store';
import { PageContainer } from '@/components/layout/PageContainer';
import { Avatar } from '@/components/ui/Avatar';
import { Button } from '@/components/ui/Button';
import { FiLoader, FiAlertCircle, FiMessageSquare, FiInbox, FiHeart } from 'react-icons/fi';
import { api } from '@/lib/trpc';
import { EmptyState } from '@/components/ui/EmptyState';
import { useToast } from '@/components/ui/Toast';

type Tab = 'matched' | 'pending';

export default function MatchesPage() {
  const { user } = useAuthStore();
  const router = useRouter();
  const [tab, setTab] = useState<Tab>('matched');
  const utils = api.useUtils();
  const { success, error: toastError } = useToast();

  const matchesQuery = api.matching.listMatches.useQuery(undefined, { enabled: !!user });
  const pendingQuery = api.matching.listPendingIncoming.useQuery(undefined, { enabled: !!user });
  const swipeMutation = api.matching.swipe.useMutation({
    onSuccess: async (result) => {
      if (result.isMutual) success('Matched! You can message them from Chats.');
      await utils.matching.listMatches.invalidate();
      await utils.matching.listPendingIncoming.invalidate();
      await utils.matching.listConversations.invalidate();
    },
    onError: (err) => toastError(err.message || 'Could not update that request.'),
  });

  const openChat = async (matchId: string | null, partnerId: string) => {
    if (matchId) {
      router.push(`/chats?matchId=${matchId}`);
      return;
    }
    const result = await utils.client.matching.ensureDmThread.mutate({ partnerId });
    router.push(`/chats?matchId=${result.matchId}`);
  };

  if (!user) {
    return (
      <PageContainer title="Matches">
        <p className="text-text-muted">Please sign in.</p>
      </PageContainer>
    );
  }

  const isLoading = tab === 'matched' ? matchesQuery.isLoading : pendingQuery.isLoading;
  const error = tab === 'matched' ? matchesQuery.error : pendingQuery.error;

  return (
    <PageContainer title="Matches">
      <div className="max-w-3xl mx-auto">
        <div className="flex items-center justify-between mb-6">
          <div>
            <h1 className="font-display text-2xl font-semibold text-text-primary">Matches</h1>
            <p className="text-sm text-text-muted mt-1">People you&apos;ve connected with.</p>
          </div>
          <Link href="/match">
            <Button size="sm">Discover more</Button>
          </Link>
        </div>

        <div className="flex gap-2 mb-5 border-b border-border-medium pb-2">
          <button
            type="button"
            onClick={() => setTab('matched')}
            className={`px-3 py-1.5 text-sm rounded-md ${
              tab === 'matched' ? 'bg-accent-muted text-accent-primary font-medium' : 'text-text-muted'
            }`}
          >
            <span className="inline-flex items-center gap-1.5">
              <FiHeart /> Matched
            </span>
          </button>
          <button
            type="button"
            onClick={() => setTab('pending')}
            className={`px-3 py-1.5 text-sm rounded-md ${
              tab === 'pending' ? 'bg-accent-muted text-accent-primary font-medium' : 'text-text-muted'
            }`}
          >
            <span className="inline-flex items-center gap-1.5">
              <FiInbox /> Incoming
              {!!pendingQuery.data?.length && (
                <span className="text-xs">({pendingQuery.data.length})</span>
              )}
            </span>
          </button>
        </div>

        {isLoading ? (
          <div className="flex justify-center py-16">
            <FiLoader className="animate-spin text-accent-primary text-2xl" />
          </div>
        ) : error ? (
          <div className="rounded-md border border-red-200 bg-red-50 p-4 text-sm text-accent-error flex gap-2">
            <FiAlertCircle className="mt-0.5" />
            {error.message}
          </div>
        ) : tab === 'matched' ? (
          !matchesQuery.data?.length ? (
            <EmptyState
              icon={<FiHeart size={28} />}
              title="No matches yet"
              description="Find people and connect — when interest is mutual, they show up here and you can chat."
              actionLabel="Find people"
              actionHref="/match"
            />
          ) : (
            <ul className="space-y-3">
              {matchesQuery.data.map(({ profile, matchId, matchedAt }) => {
                const name =
                  [profile.first_name, profile.last_name].filter(Boolean).join(' ') ||
                  profile.full_name ||
                  'Researcher';
                return (
                  <li
                    key={profile.id}
                    className="flex items-center gap-3 p-4 rounded-md border border-border-medium bg-surface-primary"
                  >
                    <Avatar src={profile.avatar_url} alt={name} size="md" />
                    <div className="flex-1 min-w-0">
                      <p className="font-medium text-text-primary truncate">{name}</p>
                      <p className="text-xs text-text-muted truncate">
                        {profile.title || profile.institution || 'Matched'} ·{' '}
                        {new Date(matchedAt).toLocaleDateString()}
                      </p>
                    </div>
                    <Button
                      size="sm"
                      variant="outline"
                      onClick={() => void openChat(matchId, profile.id)}
                    >
                      <FiMessageSquare className="mr-1" /> Chat
                    </Button>
                  </li>
                );
              })}
            </ul>
          )
        ) : !pendingQuery.data?.length ? (
          <EmptyState
            icon={<FiInbox size={28} />}
            title="No incoming interests"
            description="When someone connects with you, they'll appear here so you can match back."
            actionLabel="Find people"
            actionHref="/match"
          />
        ) : (
          <ul className="space-y-3">
            {pendingQuery.data.map(({ profile, createdAt }) => {
              const name =
                [profile.first_name, profile.last_name].filter(Boolean).join(' ') ||
                profile.full_name ||
                'Researcher';
              return (
                <li
                  key={profile.id}
                  className="flex items-center gap-3 p-4 rounded-md border border-border-medium bg-surface-primary"
                >
                  <Avatar src={profile.avatar_url} alt={name} size="md" />
                  <div className="flex-1 min-w-0">
                    <p className="font-medium text-text-primary truncate">{name}</p>
                    <p className="text-xs text-text-muted">
                      Interested · {new Date(createdAt).toLocaleDateString()}
                    </p>
                  </div>
                  <div className="flex gap-2">
                    <Button
                      size="sm"
                      variant="outline"
                      disabled={swipeMutation.isLoading}
                      onClick={() =>
                        swipeMutation.mutate({ targetUserId: profile.id, direction: 'left' })
                      }
                    >
                      Pass
                    </Button>
                    <Button
                      size="sm"
                      disabled={swipeMutation.isLoading}
                      onClick={() =>
                        swipeMutation.mutate({ targetUserId: profile.id, direction: 'right' })
                      }
                    >
                      Match
                    </Button>
                  </div>
                </li>
              );
            })}
          </ul>
        )}
      </div>
    </PageContainer>
  );
}
