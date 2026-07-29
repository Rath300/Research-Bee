import React from 'react';
import { twMerge } from 'tailwind-merge';

interface TabProps {
  label: string;
  active: boolean;
  onClick: () => void;
  count?: number;
  className?: string;
}

export function Tab({ label, active, onClick, count, className }: TabProps) {
  return (
    <button
      type="button"
      onClick={onClick}
      className={twMerge(
        'py-3 px-1 relative font-ui font-medium text-sm focus-visible:outline-none transition-colors',
        active
          ? 'text-accent-primary'
          : 'text-text-muted hover:text-text-primary',
        className
      )}
    >
      <div className="flex items-center">
        <span>{label}</span>
        {count !== undefined && (
          <span
            className={`ml-2 rounded-sm px-1.5 py-0.5 text-xs font-medium ${
              active
                ? 'bg-accent-soft text-accent-primary'
                : 'bg-surface-secondary text-text-muted'
            }`}
          >
            {count}
          </span>
        )}
      </div>

      {active && (
        <span className="absolute inset-x-0 bottom-0 h-0.5 bg-accent-primary" />
      )}
    </button>
  );
}
