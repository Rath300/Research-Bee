'use client';

import { useState } from 'react';
import { useAuthStore } from '@/lib/store';
import { FiBell, FiUser, FiMessageSquare } from 'react-icons/fi';
import Link from 'next/link';
import { api } from '@/lib/trpc';

export function NotificationBell() {
  const { user } = useAuthStore();
  const [open, setOpen] = useState(false);
  const utils = api.useUtils();

  const { data: notifications = [] } = api.notifications.list.useQuery(undefined, {
    enabled: !!user,
    refetchInterval: 30000,
  });

  const unreadCountQuery = api.notifications.getUnreadCount.useQuery(undefined, {
    enabled: !!user,
    refetchInterval: 30000,
  });

  const markAll = api.notifications.markAllAsRead.useMutation({
    onSuccess: async () => {
      await utils.notifications.list.invalidate();
      await utils.notifications.getUnreadCount.invalidate();
    },
  });

  const unreadCount = unreadCountQuery.data?.count ?? notifications.filter((n) => !n.is_read).length;

  const handleOpen = () => {
    const next = !open;
    setOpen(next);
    if (next && unreadCount > 0) {
      markAll.mutate();
    }
  };

  return (
    <div className="relative">
      <button
        onClick={handleOpen}
        className="relative focus:outline-none p-1 rounded-md hover:bg-surface-hover transition-colors"
        aria-label="Notifications"
      >
        <FiBell className="w-6 h-6 text-text-secondary" />
        {unreadCount > 0 && (
          <span className="absolute -top-1 -right-1 bg-red-500 text-white text-xs rounded-sm px-1.5 py-0.5">
            {unreadCount}
          </span>
        )}
      </button>
      {open && (
        <div className="absolute right-0 mt-2 w-80 bg-surface-primary border border-border-medium rounded-md shadow-lg z-50">
          <div className="p-4 border-b border-border-light flex items-center justify-between">
            <span className="font-semibold text-text-primary text-sm">Notifications</span>
            <Link
              href="/notifications"
              className="text-xs text-accent-primary"
              onClick={() => setOpen(false)}
            >
              View all
            </Link>
          </div>
          <div className="max-h-80 overflow-y-auto">
            {notifications.length === 0 ? (
              <div className="p-4 text-text-muted text-center text-sm">No notifications</div>
            ) : (
              notifications.slice(0, 12).map((n) => (
                <div
                  key={n.id}
                  className="flex items-center px-4 py-3 border-b border-border-light last:border-b-0 hover:bg-surface-hover transition-colors"
                >
                  <FiUser className="w-5 h-5 text-accent-primary mr-3 shrink-0" />
                  <div className="flex-1 min-w-0">
                    <div className="text-text-primary text-sm font-medium truncate">{n.content}</div>
                    <div className="text-xs text-text-muted">
                      {new Date(n.created_at).toLocaleString()}
                    </div>
                  </div>
                  {n.link_to && (
                    <Link
                      href={n.link_to}
                      className="ml-3 text-accent-primary hover:underline flex items-center text-xs shrink-0"
                      onClick={() => setOpen(false)}
                    >
                      <FiMessageSquare className="mr-1" /> Open
                    </Link>
                  )}
                </div>
              ))
            )}
          </div>
        </div>
      )}
    </div>
  );
}
