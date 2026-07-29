import React from 'react';
import { cn } from '@/lib/utils';

type BadgeVariant = 'primary' | 'secondary' | 'destructive' | 'outline' | 'accent';

export interface BadgeProps extends React.HTMLAttributes<HTMLDivElement> {
  variant?: BadgeVariant;
}

const getBadgeClasses = (variant: BadgeVariant = 'secondary') => {
  const baseClasses =
    'inline-flex items-center rounded-sm border px-2 py-0.5 text-xs font-medium transition-colors focus:outline-none focus:ring-1 focus:ring-accent-primary focus:ring-offset-1';

  const variantClasses = {
    primary: 'border-transparent bg-accent-primary text-text-inverse',
    secondary: 'border-transparent bg-surface-secondary text-text-secondary',
    accent: 'border-transparent bg-accent-soft text-accent-primary',
    destructive: 'border-transparent bg-red-50 text-accent-error',
    outline: 'border-border-medium bg-transparent text-text-secondary',
  };

  return `${baseClasses} ${variantClasses[variant]}`;
};

function Badge({ className, variant = 'secondary', ...props }: BadgeProps) {
  return (
    <div className={cn(getBadgeClasses(variant), className)} {...props} />
  );
}

export { Badge };
