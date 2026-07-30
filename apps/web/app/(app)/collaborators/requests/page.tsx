'use client';

import React from 'react';
import Link from 'next/link';
import { useAuthStore } from '@/lib/store';
import { PageContainer } from '@/components/layout/PageContainer';
import { Button } from '@/components/ui/Button';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/Card';
import { Avatar } from '@/components/ui/Avatar';
import { FiCheckCircle, FiXCircle, FiLoader, FiAlertCircle, FiHeart } from 'react-icons/fi';
import { api } from '@/lib/trpc';

export default function CollaboratorsRequestsPage() {
  const { user, isLoading: authLoading } = useAuthStore();
  const utils = api.useUtils();

  const { data: requests, isLoading, error } = api.collaboration.listRequests.useQuery(undefined, {
    enabled: !!user,
  });

  const respondMutation = api.collaboration.respondToRequest.useMutation({
    onSuccess: async () => {
      await utils.collaboration.listRequests.invalidate();
    },
  });

  if (authLoading || isLoading) {
    return (
      <PageContainer title="Collaboration Requests">
        <div className="flex justify-center py-16">
          <FiLoader className="animate-spin text-accent-primary text-2xl" />
        </div>
      </PageContainer>
    );
  }

  if (error) {
    return (
      <PageContainer title="Collaboration Requests">
        <div className="rounded-md border border-red-200 bg-red-50 p-4 text-sm text-accent-error flex gap-2">
          <FiAlertCircle className="mt-0.5" />
          {error.message}
        </div>
      </PageContainer>
    );
  }

  return (
    <PageContainer title="Collaboration Requests">
      <div className="max-w-2xl mx-auto space-y-4">
        <div className="flex items-center justify-between">
          <div>
            <h1 className="font-display text-2xl font-semibold text-text-primary">Requests</h1>
            <p className="text-sm text-text-muted mt-1">
              Profile match interests also live under{' '}
              <Link href="/matches" className="text-accent-primary">
                Matches → Incoming
              </Link>
              .
            </p>
          </div>
        </div>

        {!requests?.length ? (
          <Card>
            <CardContent className="py-12 text-center text-sm text-text-muted">
              <FiHeart className="mx-auto mb-2 text-xl" />
              No pending collaboration requests.
            </CardContent>
          </Card>
        ) : (
          requests.map((request) => {
            const name =
              [request.requester_profile?.first_name, request.requester_profile?.last_name]
                .filter(Boolean)
                .join(' ') || 'Researcher';
            return (
              <Card key={request.id}>
                <CardHeader className="flex flex-row items-center gap-3 space-y-0">
                  <Avatar src={request.requester_profile?.avatar_url} alt={name} size="md" />
                  <div className="flex-1">
                    <CardTitle className="text-base">{name}</CardTitle>
                    <p className="text-xs text-text-muted">
                      {new Date(request.created_at).toLocaleDateString()}
                    </p>
                  </div>
                </CardHeader>
                <CardContent className="flex justify-end gap-2">
                  <Button
                    variant="outline"
                    size="sm"
                    disabled={respondMutation.isLoading}
                    onClick={() =>
                      respondMutation.mutate({ requestId: request.id, newStatus: 'rejected' })
                    }
                  >
                    <FiXCircle className="mr-1" /> Decline
                  </Button>
                  <Button
                    size="sm"
                    disabled={respondMutation.isLoading}
                    onClick={() =>
                      respondMutation.mutate({ requestId: request.id, newStatus: 'matched' })
                    }
                  >
                    <FiCheckCircle className="mr-1" /> Accept
                  </Button>
                </CardContent>
              </Card>
            );
          })
        )}
      </div>
    </PageContainer>
  );
}
