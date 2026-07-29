import Link from 'next/link';

const productSurfaces = [
  {
    title: 'Discover collaborators',
    description: 'Browse researchers by skills, interests, and project needs.',
  },
  {
    title: 'Match on projects',
    description: 'Post ideas or join ongoing work that fits your expertise.',
  },
  {
    title: 'Message and collaborate',
    description: 'Keep conversations in one place as partnerships take shape.',
  },
];

export default function LandingPage() {
  return (
    <div className="min-h-screen bg-bg-primary text-text-primary flex flex-col">
      <header className="w-full sticky top-0 z-50 bg-bg-primary border-b border-border-medium">
        <div className="max-w-5xl mx-auto px-4 sm:px-6 py-4 flex justify-between items-center">
          <Link
            href="/"
            className="font-display text-2xl font-semibold text-text-primary tracking-tight no-underline hover:text-text-primary"
          >
            ResearchBee
          </Link>
          <div className="flex items-center gap-2">
            <Link
              href="/login"
              className="px-3 py-1.5 text-sm font-ui font-medium text-text-secondary hover:text-text-primary transition-colors no-underline"
            >
              Log in
            </Link>
            <Link
              href="/signup"
              className="px-3 py-1.5 text-sm font-ui font-medium text-text-inverse bg-accent-primary hover:bg-accent-primary-hover rounded-md transition-colors no-underline"
            >
              Get started
            </Link>
          </div>
        </div>
      </header>

      <main className="flex-grow">
        {/* Hero — brand, one headline, one line, CTAs, product visual */}
        <section className="max-w-5xl mx-auto px-4 sm:px-6 pt-16 pb-20 md:pt-24 md:pb-28">
          <p className="font-display text-4xl sm:text-5xl md:text-6xl font-semibold text-text-primary tracking-tight mb-6">
            ResearchBee
          </p>
          <h1 className="font-display text-2xl sm:text-3xl md:text-4xl font-medium text-text-primary tracking-tight max-w-2xl mb-4">
            Find collaborators for your next research project.
          </h1>
          <p className="text-base sm:text-lg text-text-secondary max-w-xl mb-8 leading-relaxed">
            A quiet workspace to discover peers, match on ideas, and start working together.
          </p>
          <div className="flex flex-wrap items-center gap-3 mb-16">
            <Link
              href="/signup"
              className="inline-flex items-center justify-center px-5 py-2.5 text-sm font-ui font-medium text-text-inverse bg-accent-primary hover:bg-accent-primary-hover rounded-md transition-colors no-underline"
            >
              Create free account
            </Link>
            <Link
              href="/login"
              className="inline-flex items-center justify-center px-5 py-2.5 text-sm font-ui font-medium text-text-primary border border-border-medium hover:bg-surface-hover rounded-md transition-colors no-underline"
            >
              Sign in
            </Link>
          </div>

          {/* Product visual — quiet workspace mock */}
          <div className="rounded-md border border-border-medium bg-surface-primary overflow-hidden shadow-soft">
            <div className="flex border-b border-border-medium">
              <div className="w-44 shrink-0 border-r border-border-medium bg-surface-secondary p-3 hidden sm:block">
                <div className="text-xs font-ui font-medium text-text-muted mb-3">Workspace</div>
                <div className="space-y-1">
                  {['Dashboard', 'Matches', 'Projects', 'Chats'].map((item, i) => (
                    <div
                      key={item}
                      className={`px-2 py-1.5 rounded-sm text-sm font-ui ${
                        i === 0
                          ? 'bg-accent-soft text-accent-primary'
                          : 'text-text-secondary'
                      }`}
                    >
                      {item}
                    </div>
                  ))}
                </div>
              </div>
              <div className="flex-1 p-4 sm:p-6 min-h-[220px]">
                <div className="text-xs font-ui text-text-muted mb-2">Dashboard</div>
                <div className="font-heading text-lg text-text-primary mb-4">Your research hub</div>
                <div className="space-y-2">
                  {['Climate modeling collaboration', 'HCI study partners', 'Lab methods review'].map(
                    (row) => (
                      <div
                        key={row}
                        className="flex items-center justify-between px-3 py-2.5 rounded-sm border border-border-light hover:bg-surface-hover"
                      >
                        <span className="text-sm text-text-primary">{row}</span>
                        <span className="tag-accent">Open</span>
                      </div>
                    )
                  )}
                </div>
              </div>
            </div>
          </div>
        </section>

        {/* How it works — one job */}
        <section className="border-t border-border-medium bg-surface-secondary">
          <div className="max-w-5xl mx-auto px-4 sm:px-6 py-16 md:py-20">
            <h2 className="font-display text-2xl md:text-3xl font-semibold text-text-primary tracking-tight mb-3">
              How it works
            </h2>
            <p className="text-text-secondary max-w-xl mb-10">
              Set up a profile, browse people and projects, then connect when there is a fit.
            </p>
            <ol className="grid grid-cols-1 md:grid-cols-3 gap-8 md:gap-10">
              {[
                {
                  title: 'Create a profile',
                  description: 'Share your interests, skills, and what you want to work on.',
                },
                {
                  title: 'Discover peers',
                  description: 'Search and match with researchers aligned to your goals.',
                },
                {
                  title: 'Start collaborating',
                  description: 'Message matches and move projects forward together.',
                },
              ].map((step, index) => (
                <li key={step.title} className="flex flex-col">
                  <span className="text-xs font-ui font-medium text-accent-primary mb-2">
                    {String(index + 1).padStart(2, '0')}
                  </span>
                  <h3 className="font-heading text-lg font-medium text-text-primary mb-2">
                    {step.title}
                  </h3>
                  <p className="text-sm text-text-secondary leading-relaxed">{step.description}</p>
                </li>
              ))}
            </ol>
          </div>
        </section>

        {/* Product surfaces — one job */}
        <section className="border-t border-border-medium">
          <div className="max-w-5xl mx-auto px-4 sm:px-6 py-16 md:py-20">
            <h2 className="font-display text-2xl md:text-3xl font-semibold text-text-primary tracking-tight mb-3">
              Built for research work
            </h2>
            <p className="text-text-secondary max-w-xl mb-10">
              Everything you need to find people and keep collaboration organized.
            </p>
            <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
              {productSurfaces.map((surface) => (
                <div
                  key={surface.title}
                  className="border-t border-border-medium pt-4"
                >
                  <h3 className="font-heading text-base font-medium text-text-primary mb-2">
                    {surface.title}
                  </h3>
                  <p className="text-sm text-text-secondary leading-relaxed">
                    {surface.description}
                  </p>
                </div>
              ))}
            </div>
          </div>
        </section>

        {/* Closing CTA */}
        <section className="border-t border-border-medium bg-accent-soft">
          <div className="max-w-5xl mx-auto px-4 sm:px-6 py-14 flex flex-col sm:flex-row sm:items-center sm:justify-between gap-6">
            <div>
              <h2 className="font-display text-xl md:text-2xl font-semibold text-text-primary tracking-tight mb-1">
                Ready to find your next collaborator?
              </h2>
              <p className="text-sm text-text-secondary">Free to join. No credit card required.</p>
            </div>
            <Link
              href="/signup"
              className="inline-flex items-center justify-center px-5 py-2.5 text-sm font-ui font-medium text-text-inverse bg-accent-primary hover:bg-accent-primary-hover rounded-md transition-colors no-underline shrink-0"
            >
              Get started
            </Link>
          </div>
        </section>
      </main>

      <footer className="py-6 border-t border-border-medium">
        <div className="max-w-5xl mx-auto px-4 sm:px-6 text-center text-text-muted text-sm">
          &copy; {new Date().getFullYear()} ResearchBee. All rights reserved.
        </div>
      </footer>
    </div>
  );
}
