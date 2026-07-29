import Link from 'next/link';

export default function NotFoundPage() {
  return (
    <div className="flex flex-col items-center justify-center min-h-screen p-4 bg-bg-primary">
      <h1 className="font-display text-3xl font-semibold text-text-primary mb-3">
        Page not found
      </h1>
      <p className="mb-6 text-text-muted text-sm">
        The page you&apos;re looking for doesn&apos;t exist.
      </p>
      <Link
        href="/"
        className="bg-accent-primary hover:bg-accent-primary-hover text-text-inverse font-ui font-medium py-2 px-4 rounded-md transition-colors no-underline"
      >
        Go back home
      </Link>
    </div>
  );
}
