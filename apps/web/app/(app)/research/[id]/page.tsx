'use client';

import { useState } from 'react';
import { useParams, useRouter } from 'next/navigation';
import Link from 'next/link';
import { api } from '@/lib/trpc';
import { useAuthStore } from '@/lib/store';
import { PageContainer } from '@/components/layout/PageContainer';
import { Avatar } from '@/components/ui/Avatar';
import { Button } from '@/components/ui/Button';
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/Card';
import { FiLoader, FiAlertCircle, FiUser, FiFileText, FiDownload, FiTag, FiCalendar, FiEye, FiArrowLeft } from 'react-icons/fi';
import { formatDistanceToNow } from 'date-fns';
import { supabase } from '@/lib/supabaseClient';
import { ProjectAccessModal } from '@/components/project/ProjectAccessModal';

export default function ResearchPostPage() {
  const router = useRouter();
  const params = useParams();
  const postId = params?.id as string;

  const { user, isLoading: authLoading } = useAuthStore();
  const { data: post, isLoading: loading, error: queryError } = api.project.getById.useQuery(
    { id: postId },
    { enabled: !authLoading && !!postId }
  );

  const error = queryError?.message || null;

  const handleFileDownload = async (filePath: string, fileName: string) => {
    try {
      const { data, error: signedError } = await supabase.storage
        .from('project_files')
        .createSignedUrl(filePath, 60 * 10);
      if (signedError || !data?.signedUrl) {
        console.error(signedError);
        return;
      }
      const link = document.createElement('a');
      link.href = data.signedUrl;
      link.setAttribute('download', fileName || 'download');
      link.target = '_blank';
      link.rel = 'noopener noreferrer';
      document.body.appendChild(link);
      link.click();
      document.body.removeChild(link);
    } catch (e) {
      console.error(e);
    }
  };

  if (loading || authLoading) {
    return (
      <PageContainer title="Loading Post..." className="bg-bg-primary min-h-screen text-text-primary flex items-center justify-center">
        <div className="flex flex-col items-center">
          <FiLoader className="animate-spin text-accent-primary text-6xl mb-4" />
          <p className="text-xl text-text-muted">Loading research post...</p>
        </div>
      </PageContainer>
    );
  }

  if (error) {
    const isAccessError = error.toLowerCase().includes('do not have access');

    if (isAccessError) {
      return (
        <>
          <ProjectAccessModal onClose={() => router.push('/discover')} />
          <PageContainer title="Access restricted" className="bg-bg-primary min-h-screen text-text-primary flex items-center justify-center p-6">
            <div className="bg-surface-primary border border-border-medium p-8 rounded-md shadow-sm text-center max-w-md">
              <FiAlertCircle className="mx-auto text-red-500 text-5xl mb-4" />
              <h2 className="text-2xl font-heading text-text-primary mb-2">Access restricted</h2>
              <p className="text-text-secondary mb-6">You do not have access to this project.</p>
              <Button variant="secondary" onClick={() => router.push('/discover')}>
                Back to Discover
              </Button>
            </div>
          </PageContainer>
        </>
      );
    }

    return (
      <PageContainer title="Error" className="bg-bg-primary min-h-screen text-text-primary flex items-center justify-center p-6">
        <div className="bg-surface-primary border border-border-medium p-8 rounded-md shadow-sm text-center max-w-md">
          <FiAlertCircle className="mx-auto text-red-500 text-5xl mb-4" />
          <h2 className="text-2xl font-heading text-text-primary mb-2">Oops! Something went wrong.</h2>
          <p className="text-text-secondary mb-6">{error}</p>
          <Button 
            variant="secondary" 
            onClick={() => router.push('/discover')}
          >
            Back to Discover
          </Button>
        </div>
      </PageContainer>
    );
  }

  if (!post) {
    return (
      <PageContainer title="Post Not Found" className="bg-bg-primary min-h-screen text-text-primary flex items-center justify-center p-6">
        <div className="bg-surface-primary border border-border-medium p-8 rounded-md shadow-sm text-center">
          <FiAlertCircle className="mx-auto text-text-muted text-5xl mb-4" />
          <h2 className="text-2xl font-heading text-text-primary">Post Not Found</h2>
          <p className="text-text-secondary mb-6">The research post you are looking for does not exist or could not be loaded.</p>
          <Button variant="secondary" onClick={() => router.push('/discover')}>
            Back to Discover
          </Button>
        </div>
      </PageContainer>
    );
  }

  const author = post.profiles;
  const postDate = post.created_at ? formatDistanceToNow(new Date(post.created_at), { addSuffix: true }) : 'some time ago';

  return (
    <PageContainer title={post.title || "Research Post"} className="bg-bg-primary min-h-screen text-text-primary">
      <div className="absolute top-20 left-6 z-10"> {/* Adjusted top to avoid header overlap, may need tweaking */}
        <Button variant="ghost" size="sm" onClick={() => router.back()} className="text-text-muted hover:text-accent-primary hover:bg-surface-hover p-2 rounded-md">
          <FiArrowLeft size={24} />
        </Button>
      </div>
      <div className="container mx-auto max-w-4xl px-4 py-12 sm:py-16 lg:py-20">
        <Card className="mb-8 overflow-hidden">
          <CardHeader className="pt-8 pb-6 text-center border-b border-border-light">
            <FiFileText className="text-5xl text-accent-primary mx-auto mb-4" />
            <CardTitle className="text-3xl sm:text-4xl font-heading text-text-primary tracking-tight">
              {post.title}
            </CardTitle>
            <div className="mt-4 flex items-center justify-center space-x-4 text-sm text-text-muted">
              <div className="flex items-center">
                <FiCalendar className="mr-1.5" /> Published {postDate}
              </div>
              {post.visibility && (
                <div className="flex items-center capitalize">
                  <FiEye className="mr-1.5" /> {post.visibility}
                </div>
              )}
            </div>
          </CardHeader>
        </Card>

        <div className="grid grid-cols-1 md:grid-cols-12 gap-8">
          <div className="md:col-span-8 space-y-6">
            <Card>
              <CardContent className="p-6 md:p-8 prose prose-sm sm:prose-base max-w-none text-text-secondary !leading-relaxed">
                <div dangerouslySetInnerHTML={{ __html: post.content.replace(/\n/g, '<br />') }} />
              </CardContent>
            </Card>

            {(post.tags && post.tags.length > 0) && (
              <Card>
                <CardHeader>
                  <CardTitle className="text-xl font-heading text-text-primary flex items-center"><FiTag className="mr-2 text-accent-primary"/>Tags</CardTitle>
                </CardHeader>
                <CardContent className="p-6 flex flex-wrap gap-3">
                  {post.tags.map(tag => (
                    <span key={tag} className="tag-accent px-2.5 py-1">
                      {tag}
                    </span>
                  ))}
                </CardContent>
              </Card>
            )}

            {(post.project_files && post.project_files.length > 0) && (
              <Card>
                <CardHeader>
                  <CardTitle className="text-xl font-heading text-text-primary flex items-center"><FiDownload className="mr-2 text-accent-primary"/>Attached Files</CardTitle>
                </CardHeader>
                <CardContent className="p-6 space-y-3">
                  {post.project_files.map(file => (
                    <div key={file.id} className="flex items-center justify-between p-3 rounded-md bg-surface-secondary border border-border-light hover:bg-surface-hover transition-colors">
                      <div className="flex items-center">
                        <FiFileText className="h-5 w-5 text-accent-primary mr-3 flex-shrink-0" />
                        <div>
                          <p className="text-sm font-medium text-text-primary">{file.file_name}</p>
                          <p className="text-xs text-text-muted">{(file.file_size / (1024*1024)).toFixed(2)} MB - {file.file_type}</p>
                        </div>
                      </div>
                      <Button 
                        variant="outline"
                        size="sm"
                        onClick={() => handleFileDownload(file.file_path, file.file_name)}
                        className="border-accent-primary text-accent-primary hover:bg-accent-primary/10 flex-shrink-0"
                      >
                        <FiDownload className="mr-2 h-4 w-4"/> Download
                      </Button>
                    </div>
                  ))}
                </CardContent>
              </Card>
            )}
          </div>

          <div className="md:col-span-4 space-y-6">
            {author && (
              <Card className="sticky top-24">
                <CardHeader className="items-center text-center border-b border-border-light pb-4">
                    <Avatar 
                        src={author.avatar_url || null} 
                        fallback={`${author.first_name?.[0] || ''}${author.last_name?.[0] || ''}`}
                        alt={`${author.first_name} ${author.last_name}`}
                        className="w-24 h-24 text-3xl mb-3 border-2 border-border-medium shadow-sm"
                    />
                  <CardTitle className="text-xl font-heading text-text-primary truncate max-w-full">{`${author.first_name || ''} ${author.last_name || ''}`.trim() || "Author"}</CardTitle>
                  {author.institution && <CardDescription className="text-text-muted mt-1">{author.institution}</CardDescription>}
                </CardHeader>
                <CardContent className="p-6 text-center">
                  <Link href={`/profile/${author.id}`} passHref>
                    <Button variant="primary" className="w-full">
                      <FiUser className="mr-2"/> View Profile
                    </Button>
                  </Link>
                </CardContent>
              </Card>
            )}
          </div>
        </div>
    </div>
    </PageContainer>
  );
} 