'use client';

import React, { Suspense, useEffect, useMemo, useState } from 'react';
import { useRouter, useSearchParams } from 'next/navigation';
import { useAuthStore } from '@/lib/store';
import { api } from '@/lib/trpc';
import { Avatar } from '@/components/ui/Avatar';
import { Button } from '@/components/ui/Button';
import { EmptyState } from '@/components/ui/EmptyState';
import { useToast } from '@/components/ui/Toast';
import { FiLoader, FiAlertCircle, FiMessageSquare, FiArrowLeft } from 'react-icons/fi';

function ChatsPageInner() {
  const { user, isLoading: authLoading } = useAuthStore();
  const router = useRouter();
  const searchParams = useSearchParams();
  const utils = api.useUtils();
  const { error: toastError } = useToast();

  const matchIdParam = searchParams?.get('matchId') ?? null;
  const userIdParam = searchParams?.get('userId') ?? null;

  const [selectedMatchId, setSelectedMatchId] = useState<string | null>(matchIdParam);
  const [draft, setDraft] = useState('');
  const [showSidebarOnMobile, setShowSidebarOnMobile] = useState(!matchIdParam);

  const conversationsQuery = api.matching.listConversations.useQuery(undefined, {
    enabled: !!user,
    refetchInterval: 15000,
  });

  const ensureThread = api.matching.ensureDmThread.useMutation({
    onError: (err) => toastError(err.message || 'Could not open that chat.'),
  });

  useEffect(() => {
    if (!authLoading && !user) router.replace('/login');
  }, [authLoading, user, router]);

  useEffect(() => {
    if (!user || !userIdParam || matchIdParam) return;
    let cancelled = false;
    (async () => {
      try {
        const { matchId } = await ensureThread.mutateAsync({ partnerId: userIdParam });
        if (!cancelled) {
          setSelectedMatchId(matchId);
          router.replace(`/chats?matchId=${matchId}`);
          setShowSidebarOnMobile(false);
        }
      } catch {
        // toast via mutation onError
      }
    })();
    return () => {
      cancelled = true;
    };
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [user, userIdParam, matchIdParam]);

  useEffect(() => {
    if (matchIdParam) {
      setSelectedMatchId(matchIdParam);
      setShowSidebarOnMobile(false);
    }
  }, [matchIdParam]);

  const messagesQuery = api.matching.listMessages.useQuery(
    { matchId: selectedMatchId! },
    {
      enabled: !!user && !!selectedMatchId,
      refetchInterval: 4000,
    }
  );

  const sendMutation = api.matching.sendMessage.useMutation({
    onSuccess: async () => {
      setDraft('');
      await utils.matching.listMessages.invalidate({ matchId: selectedMatchId! });
      await utils.matching.listConversations.invalidate();
    },
    onError: (err) => toastError(err.message || 'Message failed to send.'),
  });

  const selectedConversation = useMemo(
    () => conversationsQuery.data?.find((c) => c.matchId === selectedMatchId) ?? null,
    [conversationsQuery.data, selectedMatchId]
  );

  const selectConversation = (matchId: string) => {
    setSelectedMatchId(matchId);
    router.replace(`/chats?matchId=${matchId}`);
    setShowSidebarOnMobile(false);
  };

  const handleSend = (e: React.FormEvent) => {
    e.preventDefault();
    if (!selectedMatchId || !draft.trim() || sendMutation.isLoading) return;
    sendMutation.mutate({ matchId: selectedMatchId, content: draft.trim() });
  };

  if (authLoading || !user) {
    return (
      <div className="flex h-[70vh] items-center justify-center">
        <FiLoader className="animate-spin text-accent-primary text-2xl" />
      </div>
    );
  }

  const hasConversations = !!conversationsQuery.data?.length;

  if (!conversationsQuery.isLoading && !conversationsQuery.error && !hasConversations && !selectedMatchId) {
    return (
      <div className="max-w-lg mx-auto py-8">
        <EmptyState
          icon={<FiMessageSquare size={28} />}
          title="No conversations yet"
          description="Match with someone first — when interest is mutual, you can message them here."
          actionLabel="Find people"
          actionHref="/match"
        />
      </div>
    );
  }

  return (
    <div className="h-[calc(100vh-8rem)] border border-border-medium rounded-md bg-surface-primary overflow-hidden flex">
      <aside
        className={`${
          showSidebarOnMobile ? 'flex' : 'hidden'
        } md:flex w-full md:w-80 border-r border-border-medium flex-col`}
      >
        <div className="p-4 border-b border-border-medium">
          <h1 className="font-display text-lg font-semibold text-text-primary">Chats</h1>
        </div>
        <div className="flex-1 overflow-y-auto">
          {conversationsQuery.isLoading ? (
            <div className="flex justify-center py-10">
              <FiLoader className="animate-spin text-accent-primary" />
            </div>
          ) : conversationsQuery.error ? (
            <div className="p-4 text-sm text-accent-error flex gap-2">
              <FiAlertCircle /> {conversationsQuery.error.message}
            </div>
          ) : !conversationsQuery.data?.length ? (
            <div className="p-6 text-center text-sm text-text-muted">
              <FiMessageSquare className="mx-auto mb-2 text-xl" />
              No conversations yet.
            </div>
          ) : (
            <ul>
              {conversationsQuery.data.map((c) => (
                <li key={c.matchId}>
                  <button
                    type="button"
                    onClick={() => selectConversation(c.matchId)}
                    className={`w-full text-left px-4 py-3 flex gap-3 hover:bg-surface-hover border-b border-border-subtle ${
                      selectedMatchId === c.matchId ? 'bg-accent-muted/40' : ''
                    }`}
                  >
                    <Avatar src={c.partnerAvatarUrl} alt={c.partnerName} size="sm" />
                    <div className="min-w-0 flex-1">
                      <p className="text-sm font-medium text-text-primary truncate">{c.partnerName}</p>
                      <p className="text-xs text-text-muted truncate">
                        {c.lastMessage || 'Say hello'}
                      </p>
                    </div>
                  </button>
                </li>
              ))}
            </ul>
          )}
        </div>
      </aside>

      <section
        className={`${
          showSidebarOnMobile ? 'hidden' : 'flex'
        } md:flex flex-1 flex-col min-w-0`}
      >
        {!selectedMatchId ? (
          <div className="flex-1 flex items-center justify-center text-sm text-text-muted p-6">
            Select a conversation
          </div>
        ) : (
          <>
            <div className="px-4 py-3 border-b border-border-medium flex items-center gap-3">
              <button
                type="button"
                className="md:hidden p-1"
                onClick={() => {
                  setShowSidebarOnMobile(true);
                  setSelectedMatchId(null);
                  router.replace('/chats');
                }}
                aria-label="Back"
              >
                <FiArrowLeft />
              </button>
              <Avatar
                src={selectedConversation?.partnerAvatarUrl}
                alt={selectedConversation?.partnerName || 'Chat'}
                size="sm"
              />
              <p className="font-medium text-text-primary truncate">
                {selectedConversation?.partnerName || 'Conversation'}
              </p>
            </div>

            <div className="flex-1 overflow-y-auto p-4 space-y-3">
              {messagesQuery.isLoading ? (
                <div className="flex justify-center py-10">
                  <FiLoader className="animate-spin text-accent-primary" />
                </div>
              ) : messagesQuery.error ? (
                <div className="text-sm text-accent-error">{messagesQuery.error.message}</div>
              ) : !messagesQuery.data?.length ? (
                <p className="text-sm text-text-muted text-center py-8">No messages yet. Say hi.</p>
              ) : (
                messagesQuery.data.map((m) => {
                  const mine = m.sender_id === user.id;
                  return (
                    <div key={m.id} className={`flex ${mine ? 'justify-end' : 'justify-start'}`}>
                      <div
                        className={`max-w-[75%] rounded-md px-3 py-2 text-sm ${
                          mine
                            ? 'bg-accent-primary text-white'
                            : 'bg-surface-secondary text-text-primary border border-border-subtle'
                        }`}
                      >
                        {m.content}
                      </div>
                    </div>
                  );
                })
              )}
            </div>

            <form onSubmit={handleSend} className="p-3 border-t border-border-medium flex gap-2">
              <input
                value={draft}
                onChange={(e) => setDraft(e.target.value)}
                placeholder="Write a message…"
                className="flex-1 rounded-md border border-border-medium bg-bg-primary px-3 py-2 text-sm outline-none focus:border-accent-primary"
              />
              <Button
                type="submit"
                disabled={!draft.trim() || sendMutation.isLoading}
                isLoading={sendMutation.isLoading}
              >
                Send
              </Button>
            </form>
          </>
        )}
      </section>
    </div>
  );
}

export default function ChatsPage() {
  return (
    <Suspense
      fallback={
        <div className="flex h-[70vh] items-center justify-center">
          <FiLoader className="animate-spin text-accent-primary text-2xl" />
        </div>
      }
    >
      <ChatsPageInner />
    </Suspense>
  );
}
