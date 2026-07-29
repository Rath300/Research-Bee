"use client";

import Link from "next/link";
import { FiMail } from "react-icons/fi";
import { Button } from "@/components/ui/Button";
import { Card, CardContent } from "@/components/ui/Card";

export default function CheckEmail() {
  return (
    <div className="min-h-screen bg-bg-primary flex flex-col items-center justify-center p-4">
      <div className="absolute top-6 left-6">
        <Link href="/" className="font-display text-xl font-semibold text-text-primary no-underline hover:text-text-primary">
          ResearchBee
        </Link>
      </div>

      <div className="w-full max-w-md text-center space-y-6">
        <div className="mx-auto h-12 w-12 rounded-md bg-accent-soft flex items-center justify-center">
          <FiMail className="h-6 w-6 text-accent-primary" />
        </div>

        <div>
          <h2 className="font-display text-2xl font-semibold text-text-primary">Check your email</h2>
          <p className="mt-2 text-sm text-text-muted">
            We sent a confirmation link. Click it to verify your account.
          </p>
        </div>

        <Card className="text-left border-border-medium bg-surface-primary p-5">
          <CardContent className="p-0">
            <h3 className="text-sm font-ui font-medium text-text-primary mb-2">What&apos;s next</h3>
            <ol className="list-decimal list-inside text-text-secondary space-y-1.5 text-sm">
              <li>Open the confirmation message (check spam too)</li>
              <li>Click the verification link</li>
              <li>Sign in to ResearchBee</li>
            </ol>
          </CardContent>
        </Card>

        <Link href="/login" className="inline-block no-underline">
          <Button size="lg">Return to sign in</Button>
        </Link>

        <p className="text-sm text-text-muted">
          Didn&apos;t receive an email?{" "}
          <Link href="/signup" className="font-medium text-accent-primary hover:text-accent-primary-hover">
            Try signing up again
          </Link>
        </p>
      </div>
    </div>
  );
}
