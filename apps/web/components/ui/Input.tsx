import { forwardRef } from 'react';
import { cn } from '@/lib/utils';

interface BaseInputProps {
  label?: string;
  error?: boolean;
  helperText?: string;
  leftIcon?: React.ReactNode;
  rightIcon?: React.ReactNode;
  isFullWidth?: boolean;
  className?: string;
}

interface StandardInputHtmlProps extends Omit<React.InputHTMLAttributes<HTMLInputElement>, 'type' | 'className'> {}
interface StandardInputProps extends BaseInputProps, StandardInputHtmlProps {
  type?: 'text' | 'password' | 'email' | 'number' | 'search' | 'tel' | 'url';
}

interface TextAreaHtmlProps extends Omit<React.TextareaHTMLAttributes<HTMLTextAreaElement>, 'className'> {}
interface TextAreaProps extends BaseInputProps, TextAreaHtmlProps {
  type: 'textarea';
}

export type InputProps = StandardInputProps | TextAreaProps;

export const Input = forwardRef<
  HTMLInputElement | HTMLTextAreaElement,
  InputProps
>(
  (props, ref) => {
    const { className, type, ...rest } = props;

    const commonClasses = cn(
      'flex w-full rounded-md border bg-bg-tertiary px-3 py-2 text-sm text-text-primary font-body',
      'placeholder:text-text-muted caret-accent-primary',
      'focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-accent-primary focus-visible:border-accent-primary',
      'disabled:cursor-not-allowed disabled:opacity-50 disabled:bg-bg-quaternary',
      'transition-colors duration-150',
      'min-h-[40px]',
      props.error
        ? 'border-accent-error focus-visible:ring-accent-error focus-visible:border-accent-error'
        : 'border-border-medium hover:border-border-dark',
      className
    );

    if (type === 'textarea') {
      const textAreaSpecificProps = rest as Omit<TextAreaProps, 'type' | 'className'>;
      return (
        <textarea
          className={cn(commonClasses, 'h-auto min-h-[100px]')}
          ref={ref as React.Ref<HTMLTextAreaElement>}
          {...textAreaSpecificProps}
        />
      );
    }

    const standardInputSpecificProps = rest as Omit<StandardInputProps, 'type' | 'className'>;
    return (
      <input
        type={type || 'text'}
        className={cn(commonClasses, 'h-10')}
        ref={ref as React.Ref<HTMLInputElement>}
        {...standardInputSpecificProps}
      />
    );
  }
);
Input.displayName = 'Input';
