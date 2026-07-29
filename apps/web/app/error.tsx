'use client';

import { useEffect } from 'react';
import Link from 'next/link';

export default function Error({
  error,
  reset,
}: {
  error: Error & { digest?: string };
  reset: () => void;
}) {
  useEffect(() => {
    console.error(error);
  }, [error]);

  return (
    <div className="flex flex-col items-center justify-center min-h-screen p-4 bg-bg-primary">
      <h1 className="font-display text-2xl font-semibold text-text-primary mb-2">
        Something went wrong
      </h1>
      <p className="text-sm text-text-muted mb-6 text-center max-w-sm">
        An unexpected error occurred. You can try again or go back home.
      </p>
      <div className="flex gap-3">
        <button
          type="button"
          onClick={reset}
          className="bg-accent-primary hover:bg-accent-primary-hover text-text-inverse font-ui font-medium py-2 px-4 rounded-md transition-colors"
        >
          Try again
        </button>
        <Link
          href="/"
          className="border border-border-medium text-text-primary font-ui font-medium py-2 px-4 rounded-md hover:bg-surface-hover transition-colors no-underline"
        >
          Go home
        </Link>
      </div>
    </div>
  );
}
