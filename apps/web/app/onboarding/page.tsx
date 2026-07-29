'use client';

import Link from 'next/link';
import { Button } from '@/components/ui/Button';
import { Card, CardHeader, CardTitle, CardDescription, CardContent, CardFooter } from '@/components/ui/Card';
import { FiMail, FiArrowRight } from 'react-icons/fi';

export default function OnboardingPage() {
  return (
    <div className="min-h-screen bg-bg-primary flex flex-col items-center justify-center p-4">
      <div className="absolute top-6 left-6">
        <Link href="/" className="font-display text-xl font-semibold text-text-primary no-underline hover:text-text-primary">
          ResearchBee
        </Link>
      </div>

      <div className="w-full max-w-md">
        <Card className="w-full border-border-medium bg-surface-primary p-6">
          <CardHeader className="text-center border-0 pb-0 mb-4">
            <div className="mx-auto h-12 w-12 rounded-md bg-accent-soft flex items-center justify-center mb-4">
              <FiMail className="h-6 w-6 text-accent-primary" />
            </div>
            <CardTitle className="font-display text-2xl font-semibold text-text-primary">
              Verify your email
            </CardTitle>
            <CardDescription className="mt-1.5 text-sm text-text-muted">
              We sent a confirmation link to your email. Click it to activate your account.
            </CardDescription>
          </CardHeader>

          <CardContent className="space-y-4 mt-2">
            <div className="p-4 bg-surface-secondary rounded-md border border-border-medium text-sm">
              <p className="font-medium text-text-primary mb-2">If the link doesn&apos;t work</p>
              <ol className="list-decimal pl-5 space-y-1 text-text-secondary">
                <li>Copy the full URL from the email</li>
                <li>Paste it into your browser&apos;s address bar</li>
                <li>
                  Or try to{' '}
                  <Link href="/login" className="text-accent-primary hover:text-accent-primary-hover">
                    log in
                  </Link>{' '}
                  with your credentials
                </li>
              </ol>
            </div>
            <p className="text-sm text-text-muted text-center">
              Didn&apos;t get an email? Check spam or try signing up again.
            </p>
          </CardContent>

          <CardFooter className="flex flex-col mt-4 border-0 pt-0">
            <Link href="/login" className="block w-full no-underline">
              <Button isFullWidth size="lg" rightIcon={<FiArrowRight />}>
                Go to login
              </Button>
            </Link>
          </CardFooter>
        </Card>
      </div>
    </div>
  );
}
