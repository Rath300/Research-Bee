"use client";

import Link from 'next/link';
import { usePathname } from 'next/navigation';
import { useUIStore, useAuthStore } from '@/lib/store';
import { supabase } from '@/lib/supabaseClient';
import { Sidebar as ProSidebar, Menu, MenuItem, SubMenu } from 'react-pro-sidebar';
import {
  FiGrid,
  FiMessageSquare,
  FiPlus,
  FiChevronLeft,
  FiChevronRight,
  FiSearch,
  FiSettings,
  FiLogOut,
  FiUser,
  FiHeart,
  FiBriefcase,
  FiTrendingUp,
} from 'react-icons/fi';
import Image from 'next/image';

export function Sidebar() {
  const pathname = usePathname();
  const { sidebarOpen, setSidebarOpen } = useUIStore(state => ({
    sidebarOpen: state.sidebarOpen,
    setSidebarOpen: state.setSidebarOpen,
  }));
  const { profile, clearAuth } = useAuthStore(state => ({
    profile: state.profile,
    clearAuth: state.clearAuth,
  }));

  const currentUserId = profile?.id;
  const currentUserName =
    (profile?.first_name && profile?.last_name
      ? `${profile.first_name} ${profile.last_name}`
      : profile?.first_name) || 'User';
  const currentUserAvatarUrl = profile?.avatar_url || '/images/default-avatar.png';

  const mainNavItems = [
    { label: 'Dashboard', href: '/dashboard', icon: <FiGrid /> },
    { label: 'My Projects', href: '/dashboard/projects', icon: <FiBriefcase /> },
    { label: 'Chats', href: '/chats', icon: <FiMessageSquare /> },
    { label: 'Discover Matches', href: '/match', icon: <FiSearch /> },
    { label: 'My Matches', href: '/matches', icon: <FiHeart /> },
    { label: 'Trending', href: '/trending', icon: <FiTrendingUp /> },
    { label: 'External Research', href: '/external-research', icon: <FiSearch /> },
  ];

  const settingsSubItems = [
    { label: 'Account', href: '/settings/account', icon: <FiUser /> },
  ];

  const isActive = (href: string) =>
    pathname === href ||
    (pathname?.startsWith(`${href}/`) && href !== '/') ||
    (href === '/settings' && pathname?.startsWith('/settings'));

  const handleSignOut = async () => {
    try {
      const { error } = await supabase.auth.signOut();
      if (error) {
        console.error('Error signing out:', error);
        alert('Error signing out. Please try again.');
        return;
      }
      clearAuth();
    } catch (e) {
      console.error('Unexpected error during sign out:', e);
      alert('An unexpected error occurred during sign out.');
    }
  };

  return (
    <div className="flex h-screen fixed top-0 left-0 z-30">
      <ProSidebar
        collapsed={!sidebarOpen}
        width="240px"
        collapsedWidth="70px"
        backgroundColor="#F3F1ED"
        rootStyles={{
          borderRightWidth: '1px',
          borderRightColor: '#E7E5E4',
          color: '#1C1917',
          height: '100vh',
          '.ps-sidebar-container': {
            backgroundColor: 'transparent',
            display: 'flex',
            flexDirection: 'column',
          },
          transition: 'width 0.2s ease',
        }}
      >
        <div className="flex flex-col h-full">
          <div
            className={`px-3 pt-4 pb-3 flex ${
              sidebarOpen ? 'items-center' : 'items-center flex-col justify-center'
            }`}
          >
            {sidebarOpen && (
              <Link
                href="/dashboard"
                className="font-display text-lg font-semibold text-text-primary no-underline hover:text-text-primary truncate mr-2"
              >
                ResearchBee
              </Link>
            )}
            <button
              onClick={() => setSidebarOpen(!sidebarOpen)}
              className={`p-1.5 rounded-md hover:bg-surface-hover transition-colors ${
                sidebarOpen ? 'ml-auto' : ''
              }`}
              aria-label={sidebarOpen ? 'Collapse sidebar' : 'Expand sidebar'}
            >
              {sidebarOpen ? (
                <FiChevronLeft size={16} className="text-text-muted" />
              ) : (
                <FiChevronRight size={16} className="text-text-muted" />
              )}
            </button>
          </div>

          <div
            className={`px-3 pb-3 flex ${
              sidebarOpen ? 'items-center' : 'justify-center'
            } border-b border-border-medium mb-2`}
          >
            {currentUserId ? (
              <Link href={`/profile/${currentUserId}`}>
                <Image
                  src={currentUserAvatarUrl}
                  alt={currentUserName}
                  width={sidebarOpen ? 32 : 36}
                  height={sidebarOpen ? 32 : 36}
                  className={`rounded-full border border-border-medium ${
                    sidebarOpen ? 'mr-2.5' : ''
                  } cursor-pointer`}
                  priority
                />
              </Link>
            ) : (
              <div
                className={`rounded-full bg-surface-primary border border-border-medium flex items-center justify-center ${
                  sidebarOpen ? 'mr-2.5' : ''
                }`}
                style={{ width: sidebarOpen ? 32 : 36, height: sidebarOpen ? 32 : 36 }}
              >
                <FiUser size={16} className="text-text-muted" />
              </div>
            )}
            {sidebarOpen && (
              <div className="overflow-hidden whitespace-nowrap flex-grow min-w-0">
                {currentUserId ? (
                  <Link
                    href={`/profile/${currentUserId}`}
                    className="hover:underline no-underline"
                  >
                    <h5 className="font-ui font-medium text-sm text-text-primary truncate">
                      {currentUserName}
                    </h5>
                  </Link>
                ) : (
                  <h5 className="font-ui font-medium text-sm text-text-primary truncate">
                    {currentUserName}
                  </h5>
                )}
              </div>
            )}
          </div>

          <Menu
            className="flex-grow overflow-y-auto"
            menuItemStyles={{
              button: ({ level, active }) => ({
                color: active ? '#3F6F54' : '#57534E',
                backgroundColor: active ? '#E8F0EB' : 'transparent',
                paddingLeft: sidebarOpen ? (level === 0 ? '12px' : '0') : '0',
                justifyContent: sidebarOpen ? 'flex-start' : 'center',
                height: '36px',
                borderRadius: '6px',
                margin: '1px 8px',
                alignItems: 'center',
                fontSize: '0.875rem',
                fontWeight: 500,
                transition: 'background-color 0.15s ease, color 0.15s ease',
                '&:hover': {
                  backgroundColor: active ? '#E8F0EB' : '#F5F5F4',
                  color: active ? '#3F6F54' : '#1C1917',
                },
              }),
              icon: ({ active }) => ({
                color: active ? '#3F6F54' : '#78716C',
                marginLeft: sidebarOpen ? '0' : 'auto',
                marginRight: sidebarOpen ? '8px' : 'auto',
                transition: 'color 0.15s ease',
              }),
              label: () => ({
                fontSize: '0.875rem',
                fontWeight: 500,
                whiteSpace: 'nowrap',
                overflow: 'hidden',
                textOverflow: 'ellipsis',
              }),
              subMenuContent: () => ({
                backgroundColor: 'transparent',
                marginLeft: sidebarOpen ? '8px' : '0',
              }),
            }}
          >
            {mainNavItems.map((item) => (
              <MenuItem
                key={item.label}
                icon={item.icon}
                active={isActive(item.href)}
                component={<Link href={item.href} />}
              >
                {sidebarOpen ? item.label : ''}
              </MenuItem>
            ))}

            <SubMenu
              label={sidebarOpen ? 'Settings' : ''}
              icon={<FiSettings />}
              active={
                settingsSubItems.some((sub) => isActive(sub.href)) || isActive('/settings')
              }
              defaultOpen={
                settingsSubItems.some((sub) => isActive(sub.href)) || isActive('/settings')
              }
            >
              {sidebarOpen &&
                settingsSubItems.map((subItem) => (
                  <MenuItem
                    key={subItem.label}
                    icon={subItem.icon}
                    active={isActive(subItem.href)}
                    component={<Link href={subItem.href} />}
                  >
                    {subItem.label}
                  </MenuItem>
                ))}
            </SubMenu>

            <MenuItem icon={<FiLogOut />} onClick={handleSignOut}>
              {sidebarOpen ? 'Log out' : ''}
            </MenuItem>
          </Menu>

          <div className={`mb-4 px-3 ${sidebarOpen ? '' : 'flex justify-center'}`}>
            {sidebarOpen ? (
              <Link href="/projects/new" className="block no-underline">
                <button className="w-full bg-accent-primary text-text-inverse py-2 px-3 rounded-md text-xs font-ui font-medium hover:bg-accent-primary-hover transition-colors flex items-center justify-center">
                  <FiPlus className="mr-1.5" size={14} /> New project
                </button>
              </Link>
            ) : (
              <Link href="/projects/new">
                <button
                  className="bg-accent-primary text-text-inverse p-2 rounded-md hover:bg-accent-primary-hover transition-colors"
                  aria-label="Add new project"
                >
                  <FiPlus size={16} />
                </button>
              </Link>
            )}
          </div>
        </div>
      </ProSidebar>
    </div>
  );
}
