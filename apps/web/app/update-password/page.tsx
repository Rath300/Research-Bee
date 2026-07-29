'use client';

import React, { useState, useEffect } from 'react';
import { useRouter } from 'next/navigation';
import Link from 'next/link';
import { Button } from '@/components/ui/Button';
import { Input } from '@/components/ui/Input';
import { Card, CardHeader, CardTitle, CardDescription, CardContent, CardFooter } from '@/components/ui/Card';
import { FiCheckCircle, FiAlertCircle } from 'react-icons/fi';
import { supabase } from '@/lib/supabaseClient';

export default function UpdatePasswordPage() {
  const router = useRouter();
  const [password, setPassword] = useState('');
  const [confirmPassword, setConfirmPassword] = useState('');
  const [isLoading, setIsLoading] = useState(false);
  const [isSuccess, setIsSuccess] = useState(false);
  const [error, setError] = useState('');

  useEffect(() => {
    const checkSession = async () => {
      const { data, error: sessionError } = await supabase.auth.getSession();

      if (sessionError) {
        console.error("Error getting session:", sessionError);
        setError("Could not verify your session. Please try resetting your password again.");
        return;
      }

      if (!data.session && !window.location.hash.includes('access_token')) {
        if (window.location.hash.includes('error_code=401')) {
          setError("Password reset link has expired or is invalid. Please request a new one.");
        } else if (window.location.hash.includes('error')) {
          setError("An error occurred with the password reset link. Please try again.");
        }
        setTimeout(() => router.push('/login'), 3000);
      }
    };

    checkSession();
  }, [router]);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();

    if (!password || !confirmPassword) {
      setError('Please fill in all fields');
      return;
    }
    if (password !== confirmPassword) {
      setError('Passwords do not match');
      return;
    }
    if (password.length < 8) {
      setError('Password must be at least 8 characters');
      return;
    }

    try {
      setIsLoading(true);
      setError('');

      const { error: updateError } = await supabase.auth.updateUser({
        password: password,
      });

      if (updateError) throw updateError;

      setIsSuccess(true);
      setTimeout(() => {
        router.push('/login');
      }, 3000);
    } catch (err: any) {
      console.error('Update password error:', err);
      setError(err.message || 'Failed to update password. Please try again.');
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
              Update password
            </CardTitle>
            <CardDescription className="mt-1.5 text-sm text-text-muted">
              Choose a new password for your account.
            </CardDescription>
          </CardHeader>

          {isSuccess ? (
            <CardContent>
              <div className="p-4 bg-accent-soft border border-border-medium rounded-md text-accent-primary text-sm flex items-start gap-3">
                <FiCheckCircle className="h-5 w-5 flex-shrink-0 mt-0.5" />
                <div>
                  <p className="font-medium">Password updated</p>
                  <p className="mt-1 text-xs text-text-secondary">Redirecting to login…</p>
                </div>
              </div>
            </CardContent>
          ) : (
            <form onSubmit={handleSubmit}>
              <CardContent className="space-y-4">
                {error && (
                  <div className="p-3 bg-red-50 border border-red-200 rounded-md text-accent-error text-sm flex items-center gap-2">
                    <FiAlertCircle className="h-4 w-4 flex-shrink-0" />
                    <span>{error}</span>
                  </div>
                )}

                <div>
                  <label htmlFor="password" className="label">New password</label>
                  <Input
                    id="password"
                    type="password"
                    placeholder="At least 8 characters"
                    value={password}
                    onChange={(e) => setPassword(e.target.value)}
                    required
                    minLength={8}
                  />
                </div>

                <div>
                  <label htmlFor="confirmPassword" className="label">Confirm password</label>
                  <Input
                    id="confirmPassword"
                    type="password"
                    placeholder="Confirm new password"
                    value={confirmPassword}
                    onChange={(e) => setConfirmPassword(e.target.value)}
                    required
                    minLength={8}
                  />
                </div>
              </CardContent>

              <CardFooter className="border-0 pt-2">
                <Button type="submit" isLoading={isLoading} isFullWidth size="lg">
                  Update password
                </Button>
              </CardFooter>
            </form>
          )}

          <p className="text-center mt-4 text-sm text-text-muted px-6 pb-2">
            Remembered your password?{" "}
            <Link href="/login" className="font-medium text-accent-primary hover:text-accent-primary-hover">
              Back to login
            </Link>
          </p>
        </Card>
      </div>
    </div>
  );
}
