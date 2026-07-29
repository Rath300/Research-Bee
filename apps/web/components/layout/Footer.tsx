import Link from 'next/link';

export function Footer() {
  return (
    <footer className="w-full py-8 bg-surface-secondary border-t border-border-medium">
      <div className="max-w-5xl mx-auto px-4 md:px-6">
        <div className="grid grid-cols-2 gap-8 md:grid-cols-4">
          <div className="flex flex-col gap-2 col-span-2 md:col-span-1">
            <span className="font-display text-lg font-semibold text-text-primary">
              ResearchBee
            </span>
            <p className="text-sm text-text-muted">
              Connecting researchers worldwide.
            </p>
          </div>
          <nav className="flex flex-col gap-2 text-sm">
            <p className="font-ui font-medium text-text-primary">Platform</p>
            <Link href="/research" className="text-text-muted hover:text-accent-primary no-underline">
              Research
            </Link>
            <Link href="/collaborators" className="text-text-muted hover:text-accent-primary no-underline">
              Collaborators
            </Link>
            <Link href="/projects" className="text-text-muted hover:text-accent-primary no-underline">
              Projects
            </Link>
          </nav>
          <nav className="flex flex-col gap-2 text-sm">
            <p className="font-ui font-medium text-text-primary">Account</p>
            <Link href="/login" className="text-text-muted hover:text-accent-primary no-underline">
              Log in
            </Link>
            <Link href="/signup" className="text-text-muted hover:text-accent-primary no-underline">
              Sign up
            </Link>
          </nav>
        </div>
        <div className="mt-8 pt-4 border-t border-border-medium text-center text-xs text-text-muted">
          &copy; {new Date().getFullYear()} ResearchBee. All rights reserved.
        </div>
      </div>
    </footer>
  );
}
