'use client';

import React, { useState } from 'react';
import Link from 'next/link';
import { Button } from '@/components/ui/Button';
import { Input } from '@/components/ui/Input';
import { Card, CardHeader, CardTitle, CardDescription, CardContent } from '@/components/ui/Card';
import { FiArrowLeft, FiCheckCircle, FiAlertCircle } from 'react-icons/fi';
import { supabase } from '@/lib/supabaseClient';

export default function ResetPasswordPage() {
  const [email, setEmail] = useState('');
  const [isLoading, setIsLoading] = useState(false);
  const [isSuccess, setIsSuccess] = useState(false);
  const [error, setError] = useState('');

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();

    if (!email) {
      setError('Please enter your email address');
      return;
    }

    try {
      setIsLoading(true);
      setError('');

      const { error: resetError } = await supabase.auth.resetPasswordForEmail(email, {
        redirectTo: `${window.location.origin}/update-password`,
      });

      if (resetError) throw resetError;

      setIsSuccess(true);
    } catch (err: any) {
      console.error('Reset password error:', err);
      setError(err.message || 'Failed to reset password. Please try again.');
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <div className="min-h-screen bg-bg-primary flex flex-col items-center justify-center p-4">
      <div className="absolute top-6 left-6">
        <Link href="/" className="font-display text-xl font-semibold text-text-primary no-underline hover:text-text-primary">
          ResearchBee
        </Link>
      </div>

      <div className="w-full max-w-sm">
        <Card className="w-full border-border-medium bg-surface-primary p-6">
          <CardHeader className="text-center border-0 pb-0 mb-4">
            <CardTitle className="font-display text-2xl font-semibold text-text-primary">
              Reset password
            </CardTitle>
            <CardDescription className="mt-1.5 text-sm text-text-muted">
              Enter your email and we&apos;ll send a reset link.
            </CardDescription>
          </CardHeader>

          <CardContent>
            {isSuccess ? (
              <div className="p-4 mb-4 bg-accent-soft border border-border-medium rounded-md text-accent-primary text-sm flex items-start gap-3">
                <FiCheckCircle className="h-5 w-5 flex-shrink-0 mt-0.5" />
                <div>
                  <p className="font-medium">Reset link sent</p>
                  <p className="mt-1 text-xs text-text-secondary">Check your email for instructions.</p>
                </div>
              </div>
            ) : (
              <form onSubmit={handleSubmit} className="space-y-4">
                {error && (
                  <div className="p-3 bg-red-50 border border-red-200 rounded-md text-accent-error text-sm flex items-center gap-2">
                    <FiAlertCircle className="h-4 w-4 flex-shrink-0" />
                    <span>{error}</span>
                  </div>
                )}

                <div>
                  <label htmlFor="email" className="label">Email</label>
                  <Input
                    id="email"
                    type="email"
                    placeholder="you@university.edu"
                    value={email}
                    onChange={(e) => setEmail(e.target.value)}
                    required
                    autoComplete="email"
                  />
                </div>

                <Button type="submit" isLoading={isLoading} isFullWidth size="lg">
                  Send reset link
                </Button>
              </form>
            )}

            <div className="text-center mt-6">
              <Link
                href="/login"
                className="inline-flex items-center text-sm text-text-muted hover:text-accent-primary no-underline"
              >
                <FiArrowLeft className="mr-1.5 h-4 w-4" />
                Back to login
              </Link>
            </div>
          </CardContent>
        </Card>
      </div>
    </div>
  );
}
