import Link from 'next/link';
import { useRouter } from 'next/navigation';
import { Button } from '@/components/ui/Button';
import { useAuthStore } from '@/lib/store';

export function Header() {
  const router = useRouter();
  const { user } = useAuthStore();

  return (
    <header className="w-full py-3 bg-bg-primary border-b border-border-medium">
      <div className="max-w-5xl mx-auto px-4 md:px-6">
        <div className="flex items-center justify-between">
          <Link
            href="/"
            className="font-display text-xl font-semibold text-text-primary no-underline hover:text-text-primary"
          >
            ResearchBee
          </Link>

          <nav className="hidden md:flex items-center gap-5">
            <Link
              href="/research"
              className="text-sm text-text-secondary hover:text-accent-primary no-underline"
            >
              Research
            </Link>
            <Link
              href="/collaborators"
              className="text-sm text-text-secondary hover:text-accent-primary no-underline"
            >
              Collaborators
            </Link>
            <Link
              href="/projects"
              className="text-sm text-text-secondary hover:text-accent-primary no-underline"
            >
              Projects
            </Link>
          </nav>

          <div className="flex items-center gap-2">
            {user ? (
              <Button size="sm" onClick={() => router.push('/dashboard')}>
                Dashboard
              </Button>
            ) : (
              <>
                <Button variant="ghost" size="sm" onClick={() => router.push('/login')}>
                  Log in
                </Button>
                <Button size="sm" onClick={() => router.push('/signup')}>
                  Get started
                </Button>
              </>
            )}
          </div>
        </div>
      </div>
    </header>
  );
}
