'use client';

import { useState, useEffect, useCallback } from 'react';
import { useSearchParams } from 'next/navigation';
import { supabase } from "@/lib/supabaseClient";
import { Button } from '@/components/ui/Button';
import { AccessibleProjectLink } from '@/components/project/AccessibleProjectLink';
import { PageContainer } from '@/components/layout/PageContainer';
import { FiSearch, FiTrendingUp, FiClock, FiAlertCircle, FiLoader, FiUser } from 'react-icons/fi';
import { Avatar } from '@/components/ui/Avatar';
import { type Database } from '@/lib/database.types';

type Project = Database['public']['Tables']['projects']['Row'];

export default function DiscoverPage() {
  // supabase is already imported as a singleton
  const searchParams = useSearchParams();
  const [projects, setProjects] = useState<Project[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [filter, setFilter] = useState<'trending' | 'recent'>('trending');
  const [searchQuery, setSearchQuery] = useState<string>('');

  const loadProjects = useCallback(async () => {
    setLoading(true);
    setError(null);
    try {
      let query = supabase
        .from('projects')
        .select('*')
        .eq('is_public', true)
        .limit(20);

      if (filter === 'trending') {
        query = query.order('created_at', { ascending: false });
      } else {
        query = query.order('created_at', { ascending: false });
      }

      const { data, error: projectsError } = await query;

      if (projectsError) throw projectsError;
      setProjects((data as Project[] | null) || []);
    } catch (err) {
      console.error("Error loading projects:", err);
      setError(err instanceof Error ? err.message : 'Failed to load projects');
    } finally {
      setLoading(false);
    }
  }, [supabase, filter]);

  // Initialize search query from URL params
  useEffect(() => {
    if (searchParams) {
      const query = searchParams.get('q');
      if (query) {
        setSearchQuery(query);
      }
    }
  }, [searchParams]);

  useEffect(() => {
    loadProjects();
  }, [loadProjects]);

  if (loading) {
    return (
      <PageContainer title="Discover Projects" className="bg-bg-primary min-h-screen text-text-primary flex items-center justify-center">
        <div className="flex flex-col items-center font-sans">
          <FiLoader className="animate-spin text-accent-primary text-6xl mb-4" />
          <p className="text-xl text-text-secondary">Loading projects...</p>
        </div>
      </PageContainer>
    );
  }

  if (error) {
    return (
      <PageContainer title="Error" className="bg-bg-primary min-h-screen text-text-primary flex items-center justify-center">
        <div className="bg-surface-primary border border-border-medium rounded-md p-8 text-center font-sans">
          <FiAlertCircle className="mx-auto text-red-500 text-6xl mb-4" />
          <h2 className="text-2xl font-heading text-text-primary mb-2">Oops! Something went wrong.</h2>
          <p className="text-text-secondary mb-4">Error: {error}</p>
          <Button 
            onClick={loadProjects}
            variant="primary"
            className="font-sans"
          >
            Try Again
          </Button>
        </div>
      </PageContainer>
    );
  }

  return (
    <PageContainer title="Discover Projects" className="bg-bg-primary min-h-screen text-text-primary font-sans">
      <div className="p-4 sm:p-6 md:p-8 space-y-8">
        <div className="bg-surface-primary border border-border-medium rounded-md p-6 flex flex-col sm:flex-row justify-between items-center gap-4">
          <div className="flex items-center">
            <FiSearch className="text-3xl text-accent-primary mr-3" />
            <h1 className="text-3xl font-heading text-text-primary">Discover Projects</h1>
          </div>
          <div className="flex gap-3">
            <Button
              variant={filter === 'trending' ? 'primary' : 'outline'}
              onClick={() => setFilter('trending')}
              className="font-sans"
            >
              <FiTrendingUp className="mr-2" /> Trending
            </Button>
            <Button
              variant={filter === 'recent' ? 'primary' : 'outline'}
              onClick={() => setFilter('recent')}
              className="font-sans"
            >
              <FiClock className="mr-2" /> Recent
            </Button>
          </div>
        </div>

        {projects.length > 0 ? (
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-6">
            {projects.map((project) => (
              <AccessibleProjectLink projectId={project.id} key={project.id} className="block h-full">
                <div className="bg-surface-primary border border-border-medium rounded-md flex flex-col justify-between h-full p-5 hover:bg-surface-hover transition-colors">
                  <div>
                    <h2 className="text-xl font-heading text-text-primary mb-2 truncate hover:text-accent-primary transition-colors" title={project.title}>
                      {project.title}
                    </h2>
                    <p className="text-text-secondary text-sm mb-3 line-clamp-3 font-sans" title={project.description || undefined}>
                      {project.description || 'No description available.'}
                    </p>
                    
                    <div className="flex items-center mb-4 font-sans">
                      <div className="w-8 h-8 rounded-full bg-text-secondary/10 flex items-center justify-center mr-2 overflow-hidden flex-shrink-0">
                        <Avatar 
                          src={null} 
                          alt="User" 
                          size="sm"
                          fallback={<FiUser className="h-4 w-4 text-text-secondary" />}
                        />
                      </div>
                      <div>
                        <p className="text-sm font-medium text-text-primary truncate">Project Leader</p>
                        <p className="text-xs text-text-secondary truncate">
                          Research Project
                        </p>
                      </div>
                    </div>

                    <div className="flex flex-wrap gap-2 mb-3 font-sans">
                      {(project.tags || []).map((tag: string) => (
                        <span
                          key={tag}
                          className="bg-accent-soft text-accent-primary px-2 py-1 rounded-sm text-xs"
                        >
                          {tag}
                        </span>
                      ))}
                    </div>
                  </div>

                  <div className="mt-auto pt-3 border-t border-border-light flex justify-between items-center text-xs text-text-muted font-sans">
                    <span>{project.created_at ? new Date(project.created_at).toLocaleDateString() : 'Date N/A'}</span>
                  </div>
                </div>
              </AccessibleProjectLink>
            ))}
          </div>
        ) : (
          <div className="bg-surface-primary border border-border-medium rounded-md p-10 text-center col-span-full font-sans">
            <FiSearch className="mx-auto text-6xl text-text-muted mb-6" />
            <h2 className="text-2xl font-heading text-text-primary mb-3">No Projects Found</h2>
            <p className="text-text-secondary mb-6">
              {filter === 'trending' ? "There are no trending projects matching your criteria right now." : "No recent projects found. Check back later!"}
            </p>
            <Button
              variant="secondary"
              onClick={() => setFilter(filter === 'trending' ? 'recent' : 'trending')}
              className="font-sans"
            >
              {filter === 'trending' ? 'View Recent Projects' : 'View Trending Projects'}
            </Button>
          </div>
        )}
      </div>
    </PageContainer>
  );
} 