'use client';

import Link from 'next/link';
import { motion } from 'framer-motion';
import { BeeLogo } from '@/components/ui/BeeLogo';
import { StatCard } from '@/components/ui/StatCard';
import {
  FiUsers,
  FiBriefcase,
  FiMessageSquare,
  FiSearch,
  FiHeart,
  FiLayers,
} from 'react-icons/fi';

const productSurfaces = [
  {
    title: 'Discover collaborators',
    description: 'Browse researchers by skills, interests, and project needs.',
    icon: FiSearch,
  },
  {
    title: 'Match on projects',
    description: 'Swipe through aligned profiles and connect when there is mutual interest.',
    icon: FiHeart,
  },
  {
    title: 'Collaborate in workspaces',
    description: 'Shared rooms for chat, tasks, files, and notes as partnerships take shape.',
    icon: FiLayers,
  },
];

const platformStats = [
  { label: 'Researchers', value: 930, icon: FiUsers },
  { label: 'Projects', value: 152, icon: FiBriefcase },
  { label: 'Matches', value: 947, icon: FiHeart },
  { label: 'Workspaces', value: 40, icon: FiMessageSquare },
];

const fadeUp = {
  hidden: { opacity: 0, y: 24 },
  visible: (delay = 0) => ({
    opacity: 1,
    y: 0,
    transition: { duration: 0.5, delay, ease: [0.22, 1, 0.36, 1] },
  }),
};

export function LandingContent() {
  return (
    <div className="min-h-screen bg-bg-primary text-text-primary flex flex-col">
      <header className="w-full sticky top-0 z-50 bg-bg-primary/90 backdrop-blur-sm border-b border-border-medium">
        <div className="max-w-5xl mx-auto px-4 sm:px-6 py-4 flex justify-between items-center">
          <Link
            href="/"
            className="flex items-center gap-2.5 font-display text-xl font-semibold text-text-primary tracking-tight no-underline hover:text-text-primary"
          >
            <BeeLogo size={28} />
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
              className="px-3 py-1.5 text-sm font-ui font-medium text-text-inverse bg-accent-primary hover:bg-accent-primary-hover rounded-md transition-colors no-underline shadow-soft"
            >
              Get started
            </Link>
          </div>
        </div>
      </header>

      <main className="flex-grow">
        <section className="max-w-5xl mx-auto px-4 sm:px-6 pt-14 pb-16 md:pt-20 md:pb-24">
          <motion.div
            initial="hidden"
            animate="visible"
            variants={fadeUp}
            custom={0}
            className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-accent-soft text-accent-primary text-xs font-ui font-medium mb-6"
          >
            <BeeLogo size={16} />
            Built for student researchers
          </motion.div>

          <motion.h1
            initial="hidden"
            animate="visible"
            variants={fadeUp}
            custom={0.05}
            className="font-display text-4xl sm:text-5xl md:text-6xl font-semibold text-text-primary tracking-tight max-w-3xl mb-5"
          >
            Find your next research collaborator.
          </motion.h1>

          <motion.p
            initial="hidden"
            animate="visible"
            variants={fadeUp}
            custom={0.1}
            className="text-base sm:text-lg text-text-secondary max-w-xl mb-8 leading-relaxed"
          >
            A quiet workspace to discover peers, match on ideas, and start working together — without
            the noise of generic social networks.
          </motion.p>

          <motion.div
            initial="hidden"
            animate="visible"
            variants={fadeUp}
            custom={0.15}
            className="flex flex-wrap items-center gap-3 mb-14"
          >
            <Link
              href="/signup"
              className="inline-flex items-center justify-center px-5 py-2.5 text-sm font-ui font-medium text-text-inverse bg-accent-primary hover:bg-accent-primary-hover rounded-md transition-colors no-underline shadow-soft"
            >
              Create free account
            </Link>
            <Link
              href="/login"
              className="inline-flex items-center justify-center px-5 py-2.5 text-sm font-ui font-medium text-text-primary border border-border-medium hover:bg-surface-hover rounded-md transition-colors no-underline"
            >
              Sign in
            </Link>
          </motion.div>

          <motion.div
            initial="hidden"
            animate="visible"
            variants={fadeUp}
            custom={0.2}
            className="grid grid-cols-2 lg:grid-cols-4 gap-3 mb-14"
          >
            {platformStats.map((stat) => {
              const Icon = stat.icon;
              return (
                <StatCard
                  key={stat.label}
                  label={stat.label}
                  value={stat.value.toLocaleString()}
                  icon={<Icon size={16} />}
                />
              );
            })}
          </motion.div>

          <motion.div
            initial="hidden"
            animate="visible"
            variants={fadeUp}
            custom={0.25}
            className="rounded-md border border-border-medium bg-surface-primary overflow-hidden shadow-panel"
          >
            <div className="flex border-b border-border-medium">
              <div className="w-44 shrink-0 border-r border-border-medium bg-surface-secondary p-3 hidden sm:block">
                <div className="flex items-center gap-2 mb-4">
                  <BeeLogo size={18} />
                  <span className="text-xs font-ui font-medium text-text-muted">Workspace</span>
                </div>
                <div className="space-y-1">
                  {['Dashboard', 'Find people', 'Matches', 'Projects'].map((item, i) => (
                    <div
                      key={item}
                      className={`px-2 py-1.5 rounded-sm text-sm font-ui ${
                        i === 0 ? 'bg-accent-soft text-accent-primary' : 'text-text-secondary'
                      }`}
                    >
                      {item}
                    </div>
                  ))}
                </div>
              </div>
              <div className="flex-1 p-4 sm:p-6 min-h-[240px]">
                <div className="text-xs font-ui text-text-muted mb-2">Dashboard</div>
                <div className="font-heading text-lg text-text-primary mb-4">Your research hub</div>
                <div className="space-y-2">
                  {[
                    { title: 'Climate modeling collaboration', status: '3 new matches' },
                    { title: 'HCI study partners', status: '2 messages' },
                    { title: 'Neuroscience lit review', status: 'Open project' },
                  ].map((row) => (
                    <div
                      key={row.title}
                      className="flex items-center justify-between px-3 py-2.5 rounded-sm border border-border-light hover:bg-surface-hover transition-colors"
                    >
                      <span className="text-sm text-text-primary">{row.title}</span>
                      <span className="tag-accent text-xs">{row.status}</span>
                    </div>
                  ))}
                </div>
              </div>
            </div>
          </motion.div>
        </section>

        <section className="border-t border-border-medium bg-surface-secondary">
          <div className="max-w-5xl mx-auto px-4 sm:px-6 py-16 md:py-20">
            <motion.h2
              initial="hidden"
              whileInView="visible"
              viewport={{ once: true, margin: '-80px' }}
              variants={fadeUp}
              className="font-display text-2xl md:text-3xl font-semibold text-text-primary tracking-tight mb-3"
            >
              How it works
            </motion.h2>
            <motion.p
              initial="hidden"
              whileInView="visible"
              viewport={{ once: true }}
              variants={fadeUp}
              custom={0.05}
              className="text-text-secondary max-w-xl mb-10"
            >
              Set up a profile, browse people and projects, then connect when there is a fit.
            </motion.p>
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
                <motion.li
                  key={step.title}
                  initial="hidden"
                  whileInView="visible"
                  viewport={{ once: true }}
                  variants={fadeUp}
                  custom={index * 0.08}
                  className="flex flex-col"
                >
                  <span className="text-xs font-ui font-medium text-accent-primary mb-2">
                    {String(index + 1).padStart(2, '0')}
                  </span>
                  <h3 className="font-heading text-lg font-medium text-text-primary mb-2">
                    {step.title}
                  </h3>
                  <p className="text-sm text-text-secondary leading-relaxed">{step.description}</p>
                </motion.li>
              ))}
            </ol>
          </div>
        </section>

        <section className="border-t border-border-medium">
          <div className="max-w-5xl mx-auto px-4 sm:px-6 py-16 md:py-20">
            <h2 className="font-display text-2xl md:text-3xl font-semibold text-text-primary tracking-tight mb-3">
              Built for research work
            </h2>
            <p className="text-text-secondary max-w-xl mb-10">
              Everything you need to find people and keep collaboration organized.
            </p>
            <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
              {productSurfaces.map((surface, index) => {
                const Icon = surface.icon;
                return (
                  <motion.div
                    key={surface.title}
                    initial="hidden"
                    whileInView="visible"
                    viewport={{ once: true }}
                    variants={fadeUp}
                    custom={index * 0.08}
                    className="rounded-md border border-border-medium bg-surface-primary p-5 shadow-soft"
                  >
                    <div className="inline-flex items-center justify-center w-10 h-10 rounded-md bg-accent-soft text-accent-primary mb-4">
                      <Icon size={20} />
                    </div>
                    <h3 className="font-heading text-base font-medium text-text-primary mb-2">
                      {surface.title}
                    </h3>
                    <p className="text-sm text-text-secondary leading-relaxed">
                      {surface.description}
                    </p>
                  </motion.div>
                );
              })}
            </div>
          </div>
        </section>

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
              className="inline-flex items-center justify-center px-5 py-2.5 text-sm font-ui font-medium text-text-inverse bg-accent-primary hover:bg-accent-primary-hover rounded-md transition-colors no-underline shrink-0 shadow-soft"
            >
              Get started
            </Link>
          </div>
        </section>
      </main>

      <footer className="py-6 border-t border-border-medium">
        <div className="max-w-5xl mx-auto px-4 sm:px-6 flex flex-col sm:flex-row items-center justify-between gap-3 text-text-muted text-sm">
          <div className="flex items-center gap-2">
            <BeeLogo size={18} />
            <span>ResearchBee</span>
          </div>
          <span>&copy; {new Date().getFullYear()} ResearchBee. All rights reserved.</span>
        </div>
      </footer>
    </div>
  );
}
