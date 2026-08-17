import { type ReactNode } from 'react';
import { cn } from '@/lib/utils';

interface StatCardProps {
  label: string;
  value: string | number;
  hint?: string;
  icon?: ReactNode;
  className?: string;
}

export function StatCard({ label, value, hint, icon, className }: StatCardProps) {
  return (
    <div
      className={cn(
        'rounded-md border border-border-medium bg-surface-primary p-4 shadow-soft',
        className,
      )}
    >
      <div className="flex items-start justify-between gap-2">
        <p className="text-xs font-ui font-medium uppercase tracking-wide text-text-muted">
          {label}
        </p>
        {icon ? <span className="text-accent-primary">{icon}</span> : null}
      </div>
      <p className="mt-2 font-display text-2xl font-semibold text-text-primary tabular-nums">
        {value}
      </p>
      {hint ? <p className="mt-1 text-xs text-text-secondary">{hint}</p> : null}
    </div>
  );
}
