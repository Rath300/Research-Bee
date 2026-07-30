'use client';

import Link from 'next/link';
import { Button } from '@/components/ui/Button';
import type { ReactNode } from 'react';

interface EmptyStateProps {
  icon?: ReactNode;
  title: string;
  description: string;
  actionLabel?: string;
  actionHref?: string;
  onAction?: () => void;
}

export function EmptyState({
  icon,
  title,
  description,
  actionLabel,
  actionHref,
  onAction,
}: EmptyStateProps) {
  return (
    <div className="text-center py-14 px-6 border border-border-medium rounded-md bg-surface-primary">
      {icon && <div className="mx-auto mb-3 text-accent-primary flex justify-center">{icon}</div>}
      <h3 className="font-heading text-lg font-semibold text-text-primary">{title}</h3>
      <p className="text-sm text-text-muted mt-1.5 max-w-md mx-auto leading-relaxed">{description}</p>
      {actionLabel && (actionHref || onAction) && (
        <div className="mt-5">
          {actionHref ? (
            <Link href={actionHref} className="no-underline">
              <Button size="sm">{actionLabel}</Button>
            </Link>
          ) : (
            <Button size="sm" onClick={onAction}>
              {actionLabel}
            </Button>
          )}
        </div>
      )}
    </div>
  );
}
