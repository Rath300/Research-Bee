'use client';

import { useState } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';
import { api } from '@/lib/trpc';
import { PageContainer } from '@/components/layout/PageContainer';
import { Button } from '@/components/ui/Button';
import { Card, CardContent } from '@/components/ui/Card';
import { Input } from '@/components/ui/Input';
import { Textarea } from '@/components/ui/Textarea';
import { EmptyState } from '@/components/ui/EmptyState';
import { useToast } from '@/components/ui/Toast';
import { FiLoader, FiPlus, FiLayout, FiCheck, FiX } from 'react-icons/fi';

export default function WorkspacesPage() {
  const router = useRouter();
  const { success, error: toastError } = useToast();
  const utils = api.useUtils();
  const [name, setName] = useState('');
  const [description, setDescription] = useState('');
  const [showCreate, setShowCreate] = useState(false);

  const listQuery = api.workspace.listUserWorkspaces.useQuery();
  const pendingQuery = api.workspace.listPendingInvitationsForUser.useQuery();

  const createMutation = api.workspace.createWorkspace.useMutation({
    onSuccess: async (ws) => {
      success('Workspace created');
      setName('');
      setDescription('');
      setShowCreate(false);
      await utils.workspace.listUserWorkspaces.invalidate();
      router.push(`/workspaces/${ws.id}`);
    },
    onError: (err) => toastError(err.message),
  });

  const acceptMutation = api.workspace.acceptWorkspaceInvitation.useMutation({
    onSuccess: async (_d, vars) => {
      success('Invitation accepted');
      await utils.workspace.listPendingInvitationsForUser.invalidate();
      await utils.workspace.listUserWorkspaces.invalidate();
      router.push(`/workspaces/${vars.workspaceId}`);
    },
    onError: (err) => toastError(err.message),
  });

  const declineMutation = api.workspace.declineWorkspaceInvitation.useMutation({
    onSuccess: async () => {
      success('Invitation declined');
      await utils.workspace.listPendingInvitationsForUser.invalidate();
    },
    onError: (err) => toastError(err.message),
  });

  const handleCreate = (e: React.FormEvent) => {
    e.preventDefault();
    if (!name.trim()) return;
    createMutation.mutate({ name: name.trim(), description: description.trim() || null });
  };

  return (
    <PageContainer title="Workspaces">
      <div className="max-w-3xl mx-auto space-y-8">
        <div className="flex items-start justify-between gap-4">
          <div>
            <h1 className="font-display text-2xl font-semibold text-text-primary">Workspaces</h1>
            <p className="text-sm text-text-muted mt-1">
              Shared rooms for documents, tasks, files, and team chat.
            </p>
          </div>
          <Button size="sm" onClick={() => setShowCreate((v) => !v)}>
            <FiPlus className="mr-1.5" /> New
          </Button>
        </div>

        {showCreate && (
          <Card>
            <CardContent className="p-4">
              <form onSubmit={handleCreate} className="space-y-3">
                <div>
                  <label className="text-sm font-medium text-text-primary">Name</label>
                  <Input
                    value={name}
                    onChange={(e) => setName(e.target.value)}
                    placeholder="e.g. Quantum optics collab"
                    required
                    className="mt-1"
                  />
                </div>
                <div>
                  <label className="text-sm font-medium text-text-primary">Description</label>
                  <Textarea
                    value={description}
                    onChange={(e) => setDescription(e.target.value)}
                    placeholder="What is this workspace for?"
                    className="mt-1 min-h-[80px]"
                  />
                </div>
                <div className="flex gap-2">
                  <Button type="submit" isLoading={createMutation.isLoading} disabled={!name.trim()}>
                    Create workspace
                  </Button>
                  <Button type="button" variant="outline" onClick={() => setShowCreate(false)}>
                    Cancel
                  </Button>
                </div>
              </form>
            </CardContent>
          </Card>
        )}

        {!!pendingQuery.data?.length && (
          <section className="space-y-3">
            <h2 className="text-sm font-ui font-medium text-text-muted uppercase tracking-wide">
              Pending invitations
            </h2>
            {pendingQuery.data.map((invite: any) => (
              <Card key={invite.workspace_id}>
                <CardContent className="p-4 flex items-center gap-3">
                  <div className="flex-1 min-w-0">
                    <p className="font-medium text-text-primary truncate">
                      {invite.workspace?.name || 'Workspace'}
                    </p>
                    <p className="text-xs text-text-muted mt-0.5">
                      Role: {invite.role}
                      {invite.workspace?.description ? ` · ${invite.workspace.description}` : ''}
                    </p>
                  </div>
                  <Button
                    size="sm"
                    onClick={() => acceptMutation.mutate({ workspaceId: invite.workspace_id })}
                    isLoading={acceptMutation.isLoading}
                  >
                    <FiCheck className="mr-1" /> Accept
                  </Button>
                  <Button
                    size="sm"
                    variant="outline"
                    onClick={() => declineMutation.mutate({ workspaceId: invite.workspace_id })}
                    isLoading={declineMutation.isLoading}
                  >
                    <FiX />
                  </Button>
                </CardContent>
              </Card>
            ))}
          </section>
        )}

        <section className="space-y-3">
          <h2 className="text-sm font-ui font-medium text-text-muted uppercase tracking-wide">
            Your workspaces
          </h2>
          {listQuery.isLoading ? (
            <div className="flex justify-center py-12">
              <FiLoader className="animate-spin text-accent-primary text-xl" />
            </div>
          ) : listQuery.error ? (
            <p className="text-sm text-accent-error">{listQuery.error.message}</p>
          ) : !listQuery.data?.length ? (
            <EmptyState
              icon={<FiLayout size={28} />}
              title="No workspaces yet"
              description="Create a workspace to collaborate on documents, tasks, and files with your team."
              actionLabel="Create workspace"
              onAction={() => setShowCreate(true)}
            />
          ) : (
            <ul className="space-y-2">
              {listQuery.data.map((row) => (
                <li key={row.workspace.id}>
                  <Link
                    href={`/workspaces/${row.workspace.id}`}
                    className="flex items-center gap-3 p-4 rounded-md border border-border-medium bg-surface-primary hover:bg-surface-hover no-underline"
                  >
                    <div className="h-9 w-9 rounded-md bg-accent-soft flex items-center justify-center text-accent-primary">
                      <FiLayout />
                    </div>
                    <div className="min-w-0 flex-1">
                      <p className="font-medium text-text-primary truncate">{row.workspace.name}</p>
                      <p className="text-xs text-text-muted truncate">
                        {row.role}
                        {row.workspace.description ? ` · ${row.workspace.description}` : ''}
                      </p>
                    </div>
                  </Link>
                </li>
              ))}
            </ul>
          )}
        </section>
      </div>
    </PageContainer>
  );
}
