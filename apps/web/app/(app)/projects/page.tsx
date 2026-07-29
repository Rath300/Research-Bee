'use client';

import { getProjects } from '@/lib/posts';
import Link from 'next/link';
import { FiLoader, FiChevronRight, FiBriefcase } from 'react-icons/fi';
import { Card, CardHeader, CardTitle, CardContent } from '@/components/ui/Card';
import { useAuthStore } from '@/lib/store';

export default function ProjectsPage() {
  const { isLoading: authLoading, session } = useAuthStore();
  // Assuming a tRPC procedure `listMyProjects` exists to get all projects for the current user.
  // We may need to create this procedure if it doesn't exist.
  const { data: projects, isLoading, error } = getProjects();

  if (isLoading) {
    return <div className="p-8 bg-bg-primary"><FiLoader className="animate-spin text-accent-primary text-2xl" /></div>;
  }

  if (error) {
    return <div className="p-8 text-red-500 bg-bg-primary">Error loading projects: {error.message}</div>;
  }

  return (
    <div className="p-4 md:p-8 text-text-primary bg-bg-primary">
      <Card className="bg-surface-primary border-border-medium">
        <CardHeader>
          <CardTitle className="text-2xl font-bold flex items-center text-text-primary">
            <FiBriefcase className="mr-3 text-accent-primary" /> My Projects
          </CardTitle>
        </CardHeader>
        <CardContent>
          {projects && projects.length > 0 ? (
            <div className="space-y-4">
              {projects.map(project => (
                <Link 
                  key={project.id}
                  href={`/projects/${project.id}`}
                  className="block p-4 bg-surface-secondary rounded-md border border-border-light hover:bg-surface-hover transition-colors"
                >
                  <div className="flex items-center justify-between">
                    <div>
                        <h3 className="font-semibold text-lg text-text-primary">{project.title}</h3>
                        <p className="text-sm text-text-secondary">
                            Role: {project.role}
                        </p>
                        {project.tags && project.tags.length > 0 && (
                          <div className="flex flex-wrap gap-2 mt-2">
                            {project.tags.map((tag: string) => (
                              <span
                                key={tag}
                                className="bg-accent-soft text-text-secondary px-2 py-1 rounded-sm text-xs"
                              >
                                {tag}
                              </span>
                            ))}
                          </div>
                        )}
                    </div>
                    <FiChevronRight className="h-5 w-5 text-text-muted" />
                  </div>
                </Link>
              ))}
            </div>
          ) : (
            <p className="text-text-muted">You are not a part of any projects yet.</p>
          )}
        </CardContent>
      </Card>
    </div>
  );
}
