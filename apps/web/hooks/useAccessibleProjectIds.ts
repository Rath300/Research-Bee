'use client';

import { useMemo } from 'react';
import { api } from '@/lib/trpc';
import { useAuthStore } from '@/lib/store';

export function useAccessibleProjectIds() {
  const { session, isLoading: authLoading } = useAuthStore();
  const { data: projects, isLoading: projectsLoading } = api.project.listMyProjects.useQuery(undefined, {
    enabled: !authLoading && !!session,
  });

  const accessibleIds = useMemo(
    () => new Set(projects?.map((project) => project.id) ?? []),
    [projects],
  );

  return {
    accessibleIds,
    isLoading: authLoading || (!!session && projectsLoading),
    hasAccess: (projectId: string) => accessibleIds.has(projectId),
  };
}
