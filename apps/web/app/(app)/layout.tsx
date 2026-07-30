'use client';

import React, { useEffect, useRef } from 'react';
import { Sidebar as AppSidebar } from '@/components/layout/Sidebar';
import { DashboardHeader as AppHeader } from '@/components/layout/DashboardHeader';
import { useUIStore, useAuthStore } from '@/lib/store';
import { useRouter, usePathname } from 'next/navigation';
import { FiLoader } from 'react-icons/fi';
import { AppTour } from '@/components/layout/AppTour';
import { isProfileComplete } from '@/lib/profile';

export default function AppLayout({ children }: { children: React.ReactNode }) {
  const { sidebarOpen, setSidebarOpen } = useUIStore();
  const { user, profile, isLoading: authIsLoading, hasAttemptedProfileFetch } = useAuthStore();
  const router = useRouter();
  const pathname = usePathname();
  const hasRenderedAppRef = useRef(false);

  // Once we've shown the app shell, keep it mounted across quiet auth refreshes.
  if (user && hasAttemptedProfileFetch && isProfileComplete(profile)) {
    hasRenderedAppRef.current = true;
  }

  useEffect(() => {
    if (authIsLoading && !hasRenderedAppRef.current) return;
    if (!user) {
      hasRenderedAppRef.current = false;
      router.replace('/login');
      return;
    }
    if (hasAttemptedProfileFetch && !isProfileComplete(profile) && pathname !== '/profile-setup') {
      router.replace('/profile-setup');
    }
  }, [user, profile, authIsLoading, router, pathname, hasAttemptedProfileFetch]);

  const toggleSidebar = () => setSidebarOpen(!sidebarOpen);
  const isSidebarCollapsed = !sidebarOpen;

  // Initial boot only — never blank the shell on tab-focus token refresh
  if (authIsLoading && !hasRenderedAppRef.current && !user) {
    return (
      <div className="flex h-screen w-screen items-center justify-center bg-bg-primary">
        <FiLoader className="animate-spin text-accent-primary text-2xl" />
      </div>
    );
  }

  if (!user) return null;

  if (hasAttemptedProfileFetch && !isProfileComplete(profile) && pathname !== '/profile-setup') {
    return null;
  }

  return (
    <div className="flex h-screen bg-bg-primary">
      <AppSidebar />
      <div
        className="flex flex-1 flex-col overflow-hidden transition-all duration-300 ease-in-out"
        style={{ marginLeft: sidebarOpen ? '270px' : '80px' }}
      >
        <AppHeader
          profile={profile}
          toggleSidebar={toggleSidebar}
          isSidebarCollapsed={isSidebarCollapsed}
        />
        <div className="flex-1 overflow-y-auto bg-bg-primary">
          <div className="p-5 md:p-6">{children}</div>
        </div>
      </div>
      <AppTour />
    </div>
  );
}
