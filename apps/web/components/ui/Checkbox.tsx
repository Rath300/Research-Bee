'use client';

import React from 'react';
import { cn } from '@/lib/utils';

interface CheckboxProps extends React.InputHTMLAttributes<HTMLInputElement> {
  onCheckedChange?: (checked: boolean) => void;
}

export const Checkbox = React.forwardRef<
  HTMLInputElement,
  CheckboxProps
>(({ className, onCheckedChange, checked, ...props }, ref) => {
  const handleChange = (event: React.ChangeEvent<HTMLInputElement>) => {
    if (onCheckedChange) {
      onCheckedChange(event.target.checked);
    }
  };

  return (
    <input
      type="checkbox"
      ref={ref}
      className={cn(
        'h-4 w-4 rounded border-border-medium text-accent-primary focus:ring-accent-primary focus:ring-offset-bg-primary',
        className
      )}
      checked={checked}
      onChange={handleChange}
      {...props}
    />
  );
});

Checkbox.displayName = 'Checkbox';
