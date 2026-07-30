'use client';

import { useState } from 'react';
import Link from 'next/link';
import { useParams, useRouter } from 'next/navigation';
import { api } from '@/lib/trpc';
import { PageContainer } from '@/components/layout/PageContainer';
import { Button } from '@/components/ui/Button';
import { Input } from '@/components/ui/Input';
import { Textarea } from '@/components/ui/Textarea';
import { Card, CardContent } from '@/components/ui/Card';
import { useToast } from '@/components/ui/Toast';
import { FiLoader } from 'react-icons/fi';

export default function NewWorkspaceDocumentPage() {
  const params = useParams();
  const workspaceId = (params?.workspaceId as string) || '';
  const router = useRouter();
  const { success, error: toastError } = useToast();
  const [title, setTitle] = useState('');
  const [text, setText] = useState('');

  const createMutation = api.workspace.createWorkspaceDocument.useMutation({
    onSuccess: (doc) => {
      success('Document created');
      router.replace(`/workspaces/${workspaceId}/documents/${doc.id}`);
    },
    onError: (err) => toastError(err.message),
  });

  if (!workspaceId) {
    return (
      <PageContainer title="New document">
        <FiLoader className="animate-spin mx-auto" />
      </PageContainer>
    );
  }

  return (
    <PageContainer title="New document">
      <div className="max-w-2xl mx-auto space-y-4">
        <Link href={`/workspaces/${workspaceId}`} className="text-xs text-accent-primary font-medium">
          ← Back to workspace
        </Link>
        <Card>
          <CardContent className="p-5 space-y-4">
            <div>
              <label className="text-sm font-medium">Title</label>
              <Input
                className="mt-1"
                value={title}
                onChange={(e) => setTitle(e.target.value)}
                placeholder="Document title"
              />
            </div>
            <div>
              <label className="text-sm font-medium">Content</label>
              <Textarea
                className="mt-1 min-h-[220px]"
                value={text}
                onChange={(e) => setText(e.target.value)}
                placeholder="Start writing…"
              />
            </div>
            <Button
              disabled={!title.trim() || createMutation.isLoading}
              isLoading={createMutation.isLoading}
              onClick={() =>
                createMutation.mutate({
                  workspaceId,
                  title: title.trim(),
                  content: { text },
                  documentType: 'Generic Document',
                })
              }
            >
              Create document
            </Button>
          </CardContent>
        </Card>
      </div>
    </PageContainer>
  );
}
