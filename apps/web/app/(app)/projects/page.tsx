'use client';

import React from 'react';
import { api } from '@/lib/trpc';
import { PageContainer } from '@/components/layout/PageContainer';
import { FiLoader, FiPlusCircle, FiBriefcase } from 'react-icons/fi';
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/Card';
import Link from 'next/link';
import { Button } from '@/components/ui/Button';
import { useAuthStore } from '@/lib/store';
import { EmptyState } from '@/components/ui/EmptyState';

export default function ProjectsPage() {
  const { isLoading: authLoading, session } = useAuthStore();
  const { data: projects, isLoading, error } = api.project.listMyProjects.useQuery(undefined, {
    enabled: !authLoading && !!session,
  });

  return (
    <PageContainer title="Projects">
      <div className="flex justify-between items-center mb-6">
        <div>
          <h1 className="text-2xl font-display font-semibold text-text-primary">Projects</h1>
          <p className="text-sm text-text-muted mt-1">Workspaces for collaboration, tasks, and files.</p>
        </div>
        <Link href="/projects/new" passHref>
          <Button>
            <FiPlusCircle className="mr-2" />
            New Project
          </Button>
        </Link>
      </div>

      {isLoading && (
        <div className="flex justify-center items-center p-8">
          <FiLoader className="animate-spin text-accent-primary text-3xl" />
        </div>
      )}

      {error && <p className="text-accent-error text-sm">Error: {error.message || 'Failed to load projects.'}</p>}

      {!isLoading && !error && projects && projects.length === 0 && (
        <EmptyState
          icon={<FiBriefcase size={28} />}
          title="No projects yet"
          description="Create a project to invite collaborators, track tasks, and keep notes in one place."
          actionLabel="Create project"
          actionHref="/projects/new"
        />
      )}

      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        {projects?.map((project) => (
          <Link key={project.id} href={`/projects/${project.id}`} passHref>
            <Card className="bg-surface-primary border-border-medium hover:bg-surface-hover transition-colors cursor-pointer h-full flex flex-col">
              <CardHeader>
                <CardTitle className="text-xl text-text-primary">{project.title}</CardTitle>
                <div className="text-xs text-text-secondary font-medium px-2 py-1 rounded-sm bg-surface-secondary w-min mt-2">
                  {project.role?.toUpperCase() || ''}
                </div>
                {project.tags && project.tags.length > 0 && (
                  <div className="flex flex-wrap gap-2 mt-2">
                    {project.tags.map((tag: string) => (
                      <span
                        key={tag}
                        className="bg-accent-muted text-accent-primary px-2 py-1 rounded-sm text-xs"
                      >
                        {tag}
                      </span>
                    ))}
                  </div>
                )}
              </CardHeader>
              <CardContent className="flex-grow">
                <CardDescription className="text-text-secondary line-clamp-3">
                  {project.description || 'No description available.'}
                </CardDescription>
              </CardContent>
            </Card>
          </Link>
        ))}
      </div>
    </PageContainer>
  );
}
