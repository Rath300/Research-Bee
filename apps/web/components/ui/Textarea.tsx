import { forwardRef } from 'react';
import { cn } from '@/lib/utils';

export interface TextareaProps
  extends React.TextareaHTMLAttributes<HTMLTextAreaElement> {}

export const Textarea = forwardRef<HTMLTextAreaElement, TextareaProps>(
  ({ className, ...props }, ref) => {
    return (
      <textarea
        className={cn(
          'flex min-h-[80px] w-full rounded-md border border-border-medium bg-bg-tertiary px-3 py-2 text-sm text-text-primary',
          'placeholder:text-text-muted',
          'focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-accent-primary focus-visible:border-accent-primary',
          'disabled:cursor-not-allowed disabled:opacity-50',
          'transition-colors duration-150',
          className
        )}
        ref={ref}
        {...props}
      />
    );
  }
);
Textarea.displayName = 'Textarea';
