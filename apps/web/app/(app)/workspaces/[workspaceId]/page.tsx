'use client';

import { useEffect, useMemo, useState } from 'react';
import Link from 'next/link';
import { useParams, useRouter } from 'next/navigation';
import { api } from '@/lib/trpc';
import { supabase } from '@/lib/supabaseClient';
import { PageContainer } from '@/components/layout/PageContainer';
import { Button } from '@/components/ui/Button';
import { Card, CardContent } from '@/components/ui/Card';
import { Input } from '@/components/ui/Input';
import { Textarea } from '@/components/ui/Textarea';
import { Avatar } from '@/components/ui/Avatar';
import { EmptyState } from '@/components/ui/EmptyState';
import { useToast } from '@/components/ui/Toast';
import { useAuthStore } from '@/lib/store';
import {
  FiLoader,
  FiUsers,
  FiFileText,
  FiCheckSquare,
  FiPaperclip,
  FiMessageSquare,
  FiPlus,
  FiTrash2,
  FiDownload,
  FiArrowLeft,
} from 'react-icons/fi';

type Tab = 'overview' | 'members' | 'documents' | 'tasks' | 'files' | 'chat';

function displayName(p: {
  first_name?: string | null;
  last_name?: string | null;
  full_name?: string | null;
} | null | undefined) {
  if (!p) return 'User';
  const n = [p.first_name, p.last_name].filter(Boolean).join(' ');
  return n || p.full_name || 'User';
}

export default function WorkspaceHubPage() {
  const params = useParams();
  const workspaceId = (params?.workspaceId as string) || '';
  const router = useRouter();
  const { user } = useAuthStore();
  const { success, error: toastError } = useToast();
  const utils = api.useUtils();
  const [tab, setTab] = useState<Tab>('overview');

  const workspaceQuery = api.workspace.getWorkspaceById.useQuery(
    { workspaceId },
    { enabled: !!workspaceId }
  );
  const membersQuery = api.workspace.listWorkspaceMembers.useQuery(
    { workspaceId },
    { enabled: !!workspaceId }
  );
  const docsQuery = api.workspace.listWorkspaceDocuments.useQuery(
    { workspaceId },
    { enabled: !!workspaceId && (tab === 'documents' || tab === 'overview') }
  );
  const tasksQuery = api.workspace.listWorkspaceTasks.useQuery(
    { workspaceId },
    { enabled: !!workspaceId && (tab === 'tasks' || tab === 'overview') }
  );
  const filesQuery = api.workspace.listWorkspaceFiles.useQuery(
    { workspaceId },
    { enabled: !!workspaceId && (tab === 'files' || tab === 'overview') }
  );
  const messagesQuery = api.workspace.listWorkspaceMessages.useQuery(
    { workspaceId },
    { enabled: !!workspaceId && tab === 'chat', refetchInterval: 4000 }
  );

  const myRole = useMemo(() => {
    const me = membersQuery.data?.find((m: any) => m.user_id === user?.id);
    return (me?.role as string) || null;
  }, [membersQuery.data, user?.id]);

  const canEdit = myRole === 'owner' || myRole === 'admin' || myRole === 'editor';

  const deleteWorkspace = api.workspace.deleteWorkspace.useMutation({
    onSuccess: () => {
      success('Workspace deleted');
      router.push('/workspaces');
    },
    onError: (e) => toastError(e.message),
  });

  const tabs: { id: Tab; label: string; icon: React.ReactNode }[] = [
    { id: 'overview', label: 'Overview', icon: <FiArrowLeft className="opacity-0 w-0" /> },
    { id: 'members', label: 'Members', icon: <FiUsers /> },
    { id: 'documents', label: 'Documents', icon: <FiFileText /> },
    { id: 'tasks', label: 'Tasks', icon: <FiCheckSquare /> },
    { id: 'files', label: 'Files', icon: <FiPaperclip /> },
    { id: 'chat', label: 'Chat', icon: <FiMessageSquare /> },
  ];

  if (workspaceQuery.isLoading) {
    return (
      <PageContainer title="Workspace">
        <div className="flex justify-center py-20">
          <FiLoader className="animate-spin text-accent-primary text-2xl" />
        </div>
      </PageContainer>
    );
  }

  if (workspaceQuery.error || !workspaceQuery.data) {
    return (
      <PageContainer title="Workspace">
        <EmptyState
          title="Workspace unavailable"
          description={workspaceQuery.error?.message || 'Not found or access denied.'}
          actionLabel="Back to workspaces"
          actionHref="/workspaces"
        />
      </PageContainer>
    );
  }

  const ws = workspaceQuery.data;

  return (
    <PageContainer title={ws.name}>
      <div className="max-w-4xl mx-auto space-y-6">
        <div className="flex items-start justify-between gap-4">
          <div>
            <Link href="/workspaces" className="text-xs text-accent-primary font-medium">
              ← Workspaces
            </Link>
            <h1 className="font-display text-2xl font-semibold text-text-primary mt-1">{ws.name}</h1>
            {ws.description && (
              <p className="text-sm text-text-muted mt-1">{ws.description}</p>
            )}
          </div>
          {myRole === 'owner' && (
            <Button
              size="sm"
              variant="outline"
              className="text-accent-error"
              onClick={() => {
                if (confirm('Delete this workspace permanently?')) {
                  deleteWorkspace.mutate({ workspaceId });
                }
              }}
            >
              <FiTrash2 className="mr-1" /> Delete
            </Button>
          )}
        </div>

        <div className="flex flex-wrap gap-1 border-b border-border-medium pb-2">
          {tabs.map((t) => (
            <button
              key={t.id}
              type="button"
              onClick={() => setTab(t.id)}
              className={`px-3 py-1.5 text-sm rounded-md inline-flex items-center gap-1.5 ${
                tab === t.id
                  ? 'bg-accent-muted text-accent-primary font-medium'
                  : 'text-text-muted hover:text-text-primary'
              }`}
            >
              {t.id !== 'overview' && t.icon}
              {t.label}
            </button>
          ))}
        </div>

        {tab === 'overview' && (
          <div className="grid sm:grid-cols-2 gap-3">
            {[
              { label: 'Members', count: membersQuery.data?.length ?? '—', tab: 'members' as Tab },
              { label: 'Documents', count: docsQuery.data?.length ?? '—', tab: 'documents' as Tab },
              { label: 'Tasks', count: tasksQuery.data?.length ?? '—', tab: 'tasks' as Tab },
              { label: 'Files', count: filesQuery.data?.length ?? '—', tab: 'files' as Tab },
            ].map((item) => (
              <button
                key={item.label}
                type="button"
                onClick={() => setTab(item.tab)}
                className="text-left p-4 rounded-md border border-border-medium bg-surface-primary hover:bg-surface-hover"
              >
                <p className="text-2xl font-semibold text-text-primary tabular-nums">{item.count}</p>
                <p className="text-sm text-text-muted mt-1">{item.label}</p>
              </button>
            ))}
            <Card className="sm:col-span-2">
              <CardContent className="p-4">
                <p className="text-sm text-text-secondary">
                  Your role: <span className="font-medium text-text-primary">{myRole || '…'}</span>
                </p>
                <p className="text-xs text-text-muted mt-2">
                  Use Documents for notes, Tasks for work, Files for uploads, and Chat to coordinate.
                </p>
              </CardContent>
            </Card>
          </div>
        )}

        {tab === 'members' && (
          <MembersTab
            workspaceId={workspaceId}
            canManage={myRole === 'owner' || myRole === 'admin'}
            members={membersQuery.data || []}
            isLoading={membersQuery.isLoading}
            currentUserId={user?.id}
          />
        )}

        {tab === 'documents' && (
          <DocumentsTab
            workspaceId={workspaceId}
            docs={docsQuery.data || []}
            isLoading={docsQuery.isLoading}
            canEdit={canEdit}
          />
        )}

        {tab === 'tasks' && (
          <TasksTab
            workspaceId={workspaceId}
            tasks={tasksQuery.data || []}
            isLoading={tasksQuery.isLoading}
            canEdit={canEdit}
          />
        )}

        {tab === 'files' && (
          <FilesTab
            workspaceId={workspaceId}
            files={filesQuery.data || []}
            isLoading={filesQuery.isLoading}
            canEdit={canEdit}
          />
        )}

        {tab === 'chat' && (
          <ChatTab
            workspaceId={workspaceId}
            messages={messagesQuery.data || []}
            isLoading={messagesQuery.isLoading}
            currentUserId={user?.id}
          />
        )}
      </div>
    </PageContainer>
  );
}

function MembersTab({
  workspaceId,
  canManage,
  members,
  isLoading,
  currentUserId,
}: {
  workspaceId: string;
  canManage: boolean;
  members: any[];
  isLoading: boolean;
  currentUserId?: string;
}) {
  const { success, error: toastError } = useToast();
  const utils = api.useUtils();
  const [query, setQuery] = useState('');
  const [debouncedQuery, setDebouncedQuery] = useState('');

  useEffect(() => {
    const t = window.setTimeout(() => setDebouncedQuery(query.trim()), 250);
    return () => window.clearTimeout(t);
  }, [query]);

  const memberIds = useMemo(
    () => new Set((members || []).map((m) => m.user_id as string)),
    [members]
  );

  const peopleQuery = api.workspace.searchProfilesForInvite.useQuery(
    { query: debouncedQuery, limit: 100 },
    { enabled: canManage }
  );

  const inviteMutation = api.workspace.inviteUserToWorkspace.useMutation({
    onSuccess: async () => {
      success('Invite sent');
      await utils.workspace.listWorkspaceMembers.invalidate({ workspaceId });
    },
    onError: (e) => toastError(e.message),
  });

  const removeMutation = api.workspace.removeUserFromWorkspace.useMutation({
    onSuccess: async () => {
      success('Member removed');
      await utils.workspace.listWorkspaceMembers.invalidate({ workspaceId });
    },
    onError: (e) => toastError(e.message),
  });

  const people = useMemo(
    () => (peopleQuery.data || []).filter((p) => !memberIds.has(p.id)),
    [peopleQuery.data, memberIds]
  );

  return (
    <div className="space-y-4">
      {canManage && (
        <Card>
          <CardContent className="p-4 space-y-3">
            <div className="flex items-center justify-between gap-3">
              <p className="text-sm font-medium text-text-primary">Invite collaborator</p>
              <p className="text-xs text-text-muted">
                {peopleQuery.isLoading ? 'Loading…' : `${people.length} available`}
              </p>
            </div>
            <Input
              value={query}
              onChange={(e) => setQuery(e.target.value)}
              placeholder="Filter by name (optional)…"
            />
            {peopleQuery.isLoading ? (
              <div className="flex justify-center py-6">
                <FiLoader className="animate-spin text-accent-primary" />
              </div>
            ) : peopleQuery.error ? (
              <p className="text-sm text-accent-error">{peopleQuery.error.message}</p>
            ) : !people.length ? (
              <p className="text-sm text-text-muted py-4 text-center">
                {debouncedQuery
                  ? 'No matching people found.'
                  : 'Everyone available is already in this workspace.'}
              </p>
            ) : (
              <ul className="max-h-80 overflow-y-auto divide-y divide-border-subtle border border-border-medium rounded-md">
                {people.map((p) => (
                  <li key={p.id} className="flex items-center gap-3 px-3 py-2.5 bg-surface-primary">
                    <Avatar src={p.avatar_url} alt={displayName(p)} size="sm" />
                    <div className="flex-1 min-w-0">
                      <p className="text-sm font-medium truncate">{displayName(p)}</p>
                      <p className="text-xs text-text-muted truncate">
                        {[p.title, p.field_of_study, p.location].filter(Boolean).join(' · ') || 'Researcher'}
                      </p>
                    </div>
                    <Button
                      size="sm"
                      onClick={() =>
                        inviteMutation.mutate({
                          workspaceId,
                          invitedUserId: p.id,
                          role: 'editor',
                        })
                      }
                      isLoading={inviteMutation.isLoading}
                    >
                      Invite
                    </Button>
                  </li>
                ))}
              </ul>
            )}
          </CardContent>
        </Card>
      )}

      {isLoading ? (
        <div className="flex justify-center py-8">
          <FiLoader className="animate-spin text-accent-primary" />
        </div>
      ) : (
        <ul className="space-y-2">
          {members.map((m) => (
            <li
              key={`${m.user_id}-${m.invitation_status}`}
              className="flex items-center gap-3 p-3 rounded-md border border-border-medium bg-surface-primary"
            >
              <Avatar src={m.profile?.avatar_url} alt={displayName(m.profile)} size="sm" />
              <div className="flex-1 min-w-0">
                <p className="text-sm font-medium text-text-primary truncate">
                  {displayName(m.profile)}
                </p>
                <p className="text-xs text-text-muted">
                  {m.role} · {m.invitation_status}
                </p>
              </div>
              {canManage && m.role !== 'owner' && m.user_id !== currentUserId && (
                <Button
                  size="sm"
                  variant="outline"
                  onClick={() =>
                    removeMutation.mutate({
                      workspaceId,
                      memberUserIdToRemove: m.user_id,
                    })
                  }
                >
                  Remove
                </Button>
              )}
            </li>
          ))}
        </ul>
      )}
    </div>
  );
}

function DocumentsTab({
  workspaceId,
  docs,
  isLoading,
  canEdit,
}: {
  workspaceId: string;
  docs: any[];
  isLoading: boolean;
  canEdit: boolean;
}) {
  return (
    <div className="space-y-4">
      <div className="flex justify-end">
        {canEdit && (
          <Link href={`/workspaces/${workspaceId}/documents/new`} className="no-underline">
            <Button size="sm">
              <FiPlus className="mr-1" /> New document
            </Button>
          </Link>
        )}
      </div>
      {isLoading ? (
        <div className="flex justify-center py-8">
          <FiLoader className="animate-spin text-accent-primary" />
        </div>
      ) : !docs.length ? (
        <EmptyState
          icon={<FiFileText size={28} />}
          title="No documents"
          description="Create a shared note or research draft for this workspace."
          actionLabel={canEdit ? 'Create document' : undefined}
          actionHref={canEdit ? `/workspaces/${workspaceId}/documents/new` : undefined}
        />
      ) : (
        <ul className="space-y-2">
          {docs.map((doc) => {
            const creator = Array.isArray(doc.created_by) ? doc.created_by[0] : doc.created_by;
            return (
              <li key={doc.id}>
                <Link
                  href={`/workspaces/${workspaceId}/documents/${doc.id}`}
                  className="block p-4 rounded-md border border-border-medium bg-surface-primary hover:bg-surface-hover no-underline"
                >
                  <p className="font-medium text-text-primary">{doc.title}</p>
                  <p className="text-xs text-text-muted mt-1">
                    {doc.document_type}
                    {creator ? ` · ${displayName(creator)}` : ''}
                    {doc.updated_at
                      ? ` · updated ${new Date(doc.updated_at).toLocaleDateString()}`
                      : ''}
                  </p>
                </Link>
              </li>
            );
          })}
        </ul>
      )}
    </div>
  );
}

function TasksTab({
  workspaceId,
  tasks,
  isLoading,
  canEdit,
}: {
  workspaceId: string;
  tasks: any[];
  isLoading: boolean;
  canEdit: boolean;
}) {
  const { success, error: toastError } = useToast();
  const utils = api.useUtils();
  const [title, setTitle] = useState('');

  const createMutation = api.workspace.createWorkspaceTask.useMutation({
    onSuccess: async () => {
      setTitle('');
      success('Task added');
      await utils.workspace.listWorkspaceTasks.invalidate({ workspaceId });
    },
    onError: (e) => toastError(e.message),
  });

  const updateMutation = api.workspace.updateWorkspaceTask.useMutation({
    onSuccess: async () => {
      await utils.workspace.listWorkspaceTasks.invalidate({ workspaceId });
    },
    onError: (e) => toastError(e.message),
  });

  const deleteMutation = api.workspace.deleteWorkspaceTask.useMutation({
    onSuccess: async () => {
      success('Task deleted');
      await utils.workspace.listWorkspaceTasks.invalidate({ workspaceId });
    },
    onError: (e) => toastError(e.message),
  });

  return (
    <div className="space-y-4">
      {canEdit && (
        <form
          onSubmit={(e) => {
            e.preventDefault();
            if (!title.trim()) return;
            createMutation.mutate({ workspaceId, title: title.trim() });
          }}
          className="flex gap-2"
        >
          <Input
            value={title}
            onChange={(e) => setTitle(e.target.value)}
            placeholder="Add a task…"
          />
          <Button type="submit" size="sm" isLoading={createMutation.isLoading}>
            Add
          </Button>
        </form>
      )}

      {isLoading ? (
        <div className="flex justify-center py-8">
          <FiLoader className="animate-spin text-accent-primary" />
        </div>
      ) : !tasks.length ? (
        <EmptyState
          icon={<FiCheckSquare size={28} />}
          title="No tasks"
          description="Track to-dos for this collaboration."
        />
      ) : (
        <ul className="space-y-2">
          {tasks.map((task) => (
            <li
              key={task.id}
              className="flex items-center gap-3 p-3 rounded-md border border-border-medium bg-surface-primary"
            >
              <div className="flex-1 min-w-0">
                <p className="text-sm font-medium text-text-primary truncate">{task.title}</p>
                {task.description && (
                  <p className="text-xs text-text-muted truncate">{task.description}</p>
                )}
              </div>
              {canEdit && (
                <>
                  <select
                    className="text-xs border border-border-medium rounded-md bg-bg-primary px-2 py-1"
                    value={task.status}
                    onChange={(e) =>
                      updateMutation.mutate({
                        taskId: task.id,
                        status: e.target.value as any,
                      })
                    }
                  >
                    <option value="todo">To do</option>
                    <option value="in_progress">In progress</option>
                    <option value="review">Review</option>
                    <option value="completed">Completed</option>
                    <option value="archived">Archived</option>
                  </select>
                  <button
                    type="button"
                    className="text-text-muted hover:text-accent-error p-1"
                    onClick={() => deleteMutation.mutate({ taskId: task.id })}
                    aria-label="Delete task"
                  >
                    <FiTrash2 size={14} />
                  </button>
                </>
              )}
              {!canEdit && (
                <span className="text-xs text-text-muted capitalize">
                  {String(task.status).replace('_', ' ')}
                </span>
              )}
            </li>
          ))}
        </ul>
      )}
    </div>
  );
}

function FilesTab({
  workspaceId,
  files,
  isLoading,
  canEdit,
}: {
  workspaceId: string;
  files: any[];
  isLoading: boolean;
  canEdit: boolean;
}) {
  const { success, error: toastError } = useToast();
  const utils = api.useUtils();
  const [uploading, setUploading] = useState(false);

  const registerMutation = api.workspace.registerWorkspaceFile.useMutation();
  const signedUrlMutation = api.workspace.getWorkspaceFileSignedUrl.useMutation();
  const deleteMutation = api.workspace.deleteWorkspaceFile.useMutation({
    onSuccess: async () => {
      success('File deleted');
      await utils.workspace.listWorkspaceFiles.invalidate({ workspaceId });
    },
    onError: (e) => toastError(e.message),
  });

  const onUpload = async (e: React.ChangeEvent<HTMLInputElement>) => {
    const file = e.target.files?.[0];
    if (!file) return;
    setUploading(true);
    try {
      const safeName = file.name.replace(/[^a-zA-Z0-9._-]/g, '_');
      const path = `${workspaceId}/${Date.now()}-${safeName}`;
      const { error: uploadError } = await supabase.storage
        .from('workspace_files')
        .upload(path, file, { upsert: false });
      if (uploadError) throw uploadError;

      await registerMutation.mutateAsync({
        workspaceId,
        fileName: file.name,
        storageObjectPath: path,
        fileType: file.type || null,
        fileSizeBytes: file.size,
      });
      success('File uploaded');
      await utils.workspace.listWorkspaceFiles.invalidate({ workspaceId });
    } catch (err: any) {
      toastError(err.message || 'Upload failed');
    } finally {
      setUploading(false);
      e.target.value = '';
    }
  };

  const download = async (fileId: string) => {
    try {
      const { url, fileName } = await signedUrlMutation.mutateAsync({ fileId });
      const a = document.createElement('a');
      a.href = url;
      a.download = fileName;
      a.target = '_blank';
      a.rel = 'noopener noreferrer';
      a.click();
    } catch (err: any) {
      toastError(err.message || 'Download failed');
    }
  };

  return (
    <div className="space-y-4">
      {canEdit && (
        <div>
          <label className="inline-flex items-center gap-2 cursor-pointer">
            <span className="inline-flex items-center justify-center rounded-md bg-accent-primary text-white text-sm px-3 py-1.5">
              {uploading ? 'Uploading…' : 'Upload file'}
            </span>
            <input
              type="file"
              className="hidden"
              onChange={onUpload}
              disabled={uploading}
            />
          </label>
        </div>
      )}

      {isLoading ? (
        <div className="flex justify-center py-8">
          <FiLoader className="animate-spin text-accent-primary" />
        </div>
      ) : !files.length ? (
        <EmptyState
          icon={<FiPaperclip size={28} />}
          title="No files"
          description="Upload PDFs, datasets, or drafts for the team."
        />
      ) : (
        <ul className="space-y-2">
          {files.map((file) => (
            <li
              key={file.id}
              className="flex items-center gap-3 p-3 rounded-md border border-border-medium bg-surface-primary"
            >
              <div className="flex-1 min-w-0">
                <p className="text-sm font-medium truncate">{file.file_name}</p>
                <p className="text-xs text-text-muted">
                  {file.file_type || 'file'}
                  {file.file_size_bytes != null ? ` · ${Math.round(Number(file.file_size_bytes) / 1024)} KB` : ''}
                </p>
              </div>
              <Button size="sm" variant="outline" onClick={() => void download(file.id)}>
                <FiDownload />
              </Button>
              {canEdit && (
                <Button
                  size="sm"
                  variant="outline"
                  onClick={() => deleteMutation.mutate({ fileId: file.id })}
                >
                  <FiTrash2 />
                </Button>
              )}
            </li>
          ))}
        </ul>
      )}
    </div>
  );
}

function ChatTab({
  workspaceId,
  messages,
  isLoading,
  currentUserId,
}: {
  workspaceId: string;
  messages: any[];
  isLoading: boolean;
  currentUserId?: string;
}) {
  const { error: toastError } = useToast();
  const utils = api.useUtils();
  const [draft, setDraft] = useState('');

  const sendMutation = api.workspace.sendWorkspaceMessage.useMutation({
    onSuccess: async () => {
      setDraft('');
      await utils.workspace.listWorkspaceMessages.invalidate({ workspaceId });
    },
    onError: (e) => toastError(e.message),
  });

  return (
    <div className="border border-border-medium rounded-md bg-surface-primary overflow-hidden flex flex-col h-[60vh]">
      <div className="flex-1 overflow-y-auto p-4 space-y-3">
        {isLoading ? (
          <div className="flex justify-center py-10">
            <FiLoader className="animate-spin text-accent-primary" />
          </div>
        ) : !messages.length ? (
          <p className="text-sm text-text-muted text-center py-10">No messages yet. Say hello.</p>
        ) : (
          messages.map((m) => {
            const mine = m.user_id === currentUserId;
            const sender = Array.isArray(m.sender) ? m.sender[0] : m.sender;
            return (
              <div key={m.id} className={`flex ${mine ? 'justify-end' : 'justify-start'}`}>
                <div
                  className={`max-w-[75%] rounded-md px-3 py-2 text-sm ${
                    mine
                      ? 'bg-accent-primary text-white'
                      : 'bg-surface-secondary text-text-primary border border-border-subtle'
                  }`}
                >
                  {!mine && (
                    <p className="text-[10px] opacity-70 mb-0.5">{displayName(sender)}</p>
                  )}
                  {m.content}
                </div>
              </div>
            );
          })
        )}
      </div>
      <form
        onSubmit={(e) => {
          e.preventDefault();
          if (!draft.trim()) return;
          sendMutation.mutate({ workspaceId, content: draft.trim() });
        }}
        className="p-3 border-t border-border-medium flex gap-2"
      >
        <Input
          value={draft}
          onChange={(e) => setDraft(e.target.value)}
          placeholder="Write a message…"
        />
        <Button type="submit" disabled={!draft.trim()} isLoading={sendMutation.isLoading}>
          Send
        </Button>
      </form>
    </div>
  );
}
