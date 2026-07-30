'use client';

import { useEffect, useState } from 'react';
import Link from 'next/link';
import { useParams } from 'next/navigation';
import { api } from '@/lib/trpc';
import { PageContainer } from '@/components/layout/PageContainer';
import { Button } from '@/components/ui/Button';
import { Input } from '@/components/ui/Input';
import { Textarea } from '@/components/ui/Textarea';
import { Card, CardContent } from '@/components/ui/Card';
import { useToast } from '@/components/ui/Toast';
import { FiLoader } from 'react-icons/fi';

export default function WorkspaceDocumentEditorPage() {
  const params = useParams();
  const workspaceId = (params?.workspaceId as string) || '';
  const documentId = (params?.documentId as string) || '';
  const { success, error: toastError } = useToast();
  const [title, setTitle] = useState('');
  const [text, setText] = useState('');
  const [hydrated, setHydrated] = useState(false);

  const docQuery = api.workspace.getWorkspaceDocumentById.useQuery(
    { documentId },
    { enabled: !!documentId }
  );

  useEffect(() => {
    if (!docQuery.data || hydrated) return;
    setTitle(docQuery.data.title || '');
    const content = docQuery.data.content as { text?: string } | null;
    setText(typeof content?.text === 'string' ? content.text : '');
    setHydrated(true);
  }, [docQuery.data, hydrated]);

  const saveMutation = api.workspace.updateWorkspaceDocument.useMutation({
    onSuccess: () => success('Saved'),
    onError: (err) => toastError(err.message),
  });

  if (docQuery.isLoading || !hydrated) {
    return (
      <PageContainer title="Document">
        <div className="flex justify-center py-16">
          <FiLoader className="animate-spin text-accent-primary text-xl" />
        </div>
      </PageContainer>
    );
  }

  if (docQuery.error) {
    return (
      <PageContainer title="Document">
        <p className="text-sm text-accent-error">{docQuery.error.message}</p>
      </PageContainer>
    );
  }

  return (
    <PageContainer title={title || 'Document'}>
      <div className="max-w-2xl mx-auto space-y-4">
        <Link href={`/workspaces/${workspaceId}`} className="text-xs text-accent-primary font-medium">
          ← Back to workspace
        </Link>
        <Card>
          <CardContent className="p-5 space-y-4">
            <Input value={title} onChange={(e) => setTitle(e.target.value)} />
            <Textarea
              className="min-h-[320px]"
              value={text}
              onChange={(e) => setText(e.target.value)}
            />
            <Button
              isLoading={saveMutation.isLoading}
              onClick={() =>
                saveMutation.mutate({
                  documentId,
                  title: title.trim() || 'Untitled',
                  content: { text },
                })
              }
            >
              Save
            </Button>
          </CardContent>
        </Card>
      </div>
    </PageContainer>
  );
}
