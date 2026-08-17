'use client';

import { useState, useEffect, useCallback } from 'react';
import { useSearchParams } from 'next/navigation';
import { supabase } from '@/lib/supabaseClient';
import { Button } from '@/components/ui/Button';
import { AccessibleProjectLink } from '@/components/project/AccessibleProjectLink';
import { EmptyState } from '@/components/ui/EmptyState';
import { ProjectCardSkeleton } from '@/components/ui/LoadingSkeleton';
import { FiTrendingUp, FiClock, FiAlertCircle, FiBriefcase } from 'react-icons/fi';
import { type Database } from '@/lib/database.types';

type Project = Database['public']['Tables']['projects']['Row'];

export default function DiscoverPage() {
  const searchParams = useSearchParams();
  const [projects, setProjects] = useState<Project[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [filter, setFilter] = useState<'trending' | 'recent'>('trending');
  const [searchQuery, setSearchQuery] = useState('');

  const loadProjects = useCallback(async () => {
    setLoading(true);
    setError(null);
    try {
      let query = supabase
        .from('projects')
        .select('*')
        .eq('is_public', true)
        .order('created_at', { ascending: false })
        .limit(20);

      if (searchQuery.trim()) {
        query = query.or(
          `title.ilike.%${searchQuery.trim()}%,description.ilike.%${searchQuery.trim()}%`,
        );
      }

      const { data, error: projectsError } = await query;
      if (projectsError) throw projectsError;
      setProjects((data as Project[] | null) || []);
    } catch (err) {
      console.error('Error loading projects:', err);
      setError(err instanceof Error ? err.message : 'Failed to load projects');
    } finally {
      setLoading(false);
    }
  }, [filter, searchQuery]);

  useEffect(() => {
    const query = searchParams?.get('q');
    if (query) {
      setSearchQuery(query);
    }
  }, [searchParams]);

  useEffect(() => {
    loadProjects();
  }, [loadProjects]);

  if (loading) {
    return (
      <div className="max-w-6xl mx-auto space-y-6">
        <div className="space-y-2">
          <div className="h-8 w-48 bg-surface-secondary animate-pulse rounded-md" />
          <div className="h-4 w-72 bg-surface-secondary animate-pulse rounded-md" />
        </div>
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          {Array.from({ length: 6 }).map((_, i) => (
            <ProjectCardSkeleton key={i} />
          ))}
        </div>
      </div>
    );
  }

  if (error) {
    return (
      <div className="max-w-lg mx-auto py-12 text-center">
        <FiAlertCircle className="mx-auto text-red-500 text-5xl mb-4" />
        <h2 className="text-xl font-heading text-text-primary mb-2">Could not load projects</h2>
        <p className="text-text-secondary mb-4">{error}</p>
        <Button onClick={loadProjects} variant="primary">
          Try again
        </Button>
      </div>
    );
  }

  return (
    <div className="max-w-6xl mx-auto space-y-6">
      <div className="flex flex-col sm:flex-row sm:items-end sm:justify-between gap-4">
        <div>
          <h1 className="font-display text-2xl md:text-3xl font-semibold text-text-primary">
            Discover projects
          </h1>
          <p className="text-sm text-text-muted mt-1">
            Browse public research projects and request to join collaborations.
          </p>
        </div>
        <div className="flex gap-2">
          <Button
            variant={filter === 'trending' ? 'primary' : 'outline'}
            size="sm"
            onClick={() => setFilter('trending')}
          >
            <FiTrendingUp className="mr-2" /> Trending
          </Button>
          <Button
            variant={filter === 'recent' ? 'primary' : 'outline'}
            size="sm"
            onClick={() => setFilter('recent')}
          >
            <FiClock className="mr-2" /> Recent
          </Button>
        </div>
      </div>

      {projects.length > 0 ? (
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          {projects.map((project) => (
            <AccessibleProjectLink projectId={project.id} key={project.id} className="block h-full">
              <div className="bg-surface-primary border border-border-medium rounded-md flex flex-col justify-between h-full p-5 hover:bg-surface-hover hover:shadow-panel transition-all">
                <div>
                  <h2
                    className="text-lg font-heading text-text-primary mb-2 line-clamp-2 hover:text-accent-primary transition-colors"
                    title={project.title}
                  >
                    {project.title}
                  </h2>
                  <p
                    className="text-text-secondary text-sm mb-3 line-clamp-3"
                    title={project.description || undefined}
                  >
                    {project.description || 'No description available.'}
                  </p>

                  <div className="flex flex-wrap gap-2 mb-3">
                    {(project.tags || []).slice(0, 3).map((tag: string) => (
                      <span
                        key={tag}
                        className="bg-accent-soft text-accent-primary px-2 py-1 rounded-sm text-xs"
                      >
                        {tag}
                      </span>
                    ))}
                  </div>
                </div>

                <div className="mt-auto pt-3 border-t border-border-light flex justify-between items-center text-xs text-text-muted">
                  <span>
                    {project.created_at
                      ? new Date(project.created_at).toLocaleDateString()
                      : 'Date N/A'}
                  </span>
                  <span className="text-accent-primary font-medium">View project</span>
                </div>
              </div>
            </AccessibleProjectLink>
          ))}
        </div>
      ) : (
        <EmptyState
          icon={<FiBriefcase size={28} />}
          title="No projects found"
          description={
            searchQuery
              ? `No public projects match "${searchQuery}". Try a different search.`
              : 'Check back later for new research opportunities.'
          }
        />
      )}
    </div>
  );
}
