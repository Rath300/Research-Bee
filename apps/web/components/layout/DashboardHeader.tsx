'use client';

import React from 'react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';
import { FiBell, FiUser, FiSettings, FiLogOut, FiMenu, FiX } from 'react-icons/fi';
import { Avatar } from '@/components/ui/Avatar';
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu';
import { Button } from '@/components/ui/Button';
import { useAuthStore } from '@/lib/store';
import { supabase } from '@/lib/supabaseClient';
import { type Profile as DbProfile } from '@research-collab/db';
import { titleCase } from '@/lib/utils';

interface DashboardHeaderProps {
  profile: DbProfile | null;
  toggleSidebar: () => void;
  isSidebarCollapsed: boolean;
}

export function DashboardHeader({
  profile,
  toggleSidebar,
  isSidebarCollapsed,
}: DashboardHeaderProps) {
  const router = useRouter();
  const { clearAuth } = useAuthStore();

  const handleLogout = async () => {
    try {
      const { error } = await supabase.auth.signOut();
      if (error) {
        console.error('[DashboardHeader] Supabase signOut error:', error.message);
      }
    } catch (e: any) {
      console.error('[DashboardHeader] Exception during signOut:', e.message);
    }

    clearAuth();

    if (typeof window !== 'undefined') {
      window.location.assign('/login');
    } else {
      router.push('/login');
    }
  };

  const displayName = profile?.first_name
    ? titleCase(`${profile.first_name} ${profile.last_name ?? ''}`.trim())
    : 'User';
  const displayAvatarUrl = profile?.avatar_url;

  return (
    <header className="sticky top-0 z-20 flex items-center justify-between h-12 px-4 md:px-6 bg-bg-primary border-b border-border-medium">
      <div className="flex items-center">
        <Button
          variant="ghost"
          size="sm"
          onClick={toggleSidebar}
          className="p-2 text-text-muted hover:text-text-primary"
        >
          {isSidebarCollapsed ? <FiMenu className="h-4 w-4" /> : <FiX className="h-4 w-4" />}
        </Button>
      </div>

      <div className="flex items-center gap-1">
        <Link
          href="/notifications"
          className="p-2 rounded-md text-text-muted hover:text-text-primary hover:bg-surface-hover no-underline"
        >
          <FiBell className="w-4 h-4" />
        </Link>

        <DropdownMenu>
          <DropdownMenuTrigger asChild>
            <Button variant="ghost" className="relative h-8 w-8 rounded-full p-0">
              <Avatar
                src={displayAvatarUrl}
                alt={displayName}
                size="sm"
                fallback={<FiUser size={14} />}
              />
            </Button>
          </DropdownMenuTrigger>
          <DropdownMenuContent className="w-52" align="end" forceMount>
            <DropdownMenuItem
              className="cursor-pointer"
              onClick={() => router.push('/profile/me')}
            >
              <FiUser className="mr-2 h-4 w-4" />
              <span>My profile</span>
            </DropdownMenuItem>
            <DropdownMenuItem
              className="cursor-pointer"
              onClick={() => router.push('/settings/account')}
            >
              <FiSettings className="mr-2 h-4 w-4" />
              <span>Settings</span>
            </DropdownMenuItem>
            <DropdownMenuSeparator />
            <DropdownMenuItem
              className="text-accent-error focus:text-accent-error cursor-pointer"
              onClick={handleLogout}
            >
              <FiLogOut className="mr-2 h-4 w-4" />
              <span>Log out</span>
            </DropdownMenuItem>
          </DropdownMenuContent>
        </DropdownMenu>
      </div>
    </header>
  );
}
