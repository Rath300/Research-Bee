"use client";

import { Suspense, useState } from 'react';
import Link from 'next/link';
import { useRouter, useSearchParams } from 'next/navigation';
import { supabase } from "@/lib/supabaseClient";
import { Card, CardHeader, CardTitle, CardDescription, CardContent } from "@/components/ui/Card";
import { Input } from "@/components/ui/Input";
import { Button } from "@/components/ui/Button";
import { useAuthStore } from '@/lib/store';
import { isProfileComplete, isSafeRedirectPath } from '@/lib/profile';

function LoginForm() {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const router = useRouter();
  const searchParams = useSearchParams();

  const handleLogin = async (e: React.FormEvent) => {
    e.preventDefault();
    setError(null);
    setIsLoading(true);

    try {
      const { error: signInError } = await supabase.auth.signInWithPassword({
        email,
        password,
      });

      if (signInError) {
        console.error("Supabase Sign-In Error:", signInError);
        setError(signInError.message || "Invalid login credentials.");
        setIsLoading(false);
        return;
      }

      let tries = 0;
      while (!useAuthStore.getState().user && tries < 30) {
        await new Promise((res) => setTimeout(res, 100));
        tries++;
      }

      tries = 0;
      while (!useAuthStore.getState().hasAttemptedProfileFetch && tries < 30) {
        await new Promise((res) => setTimeout(res, 100));
        tries++;
      }

      const { profile } = useAuthStore.getState();
      const redirectTo = searchParams?.get('redirect_to') ?? null;
      if (!isProfileComplete(profile)) {
        router.replace('/profile-setup');
      } else if (isSafeRedirectPath(redirectTo)) {
        router.replace(redirectTo);
      } else {
        router.replace('/dashboard');
      }
    } catch (err: any) {
      console.error("Generic Login Error:", err);
      setError(err.message || "An unexpected error occurred. Please try again.");
      setIsLoading(false);
    }
  };

  if (isLoading) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-bg-primary">
        <span className="text-text-muted font-ui text-sm">Signing in…</span>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-bg-primary flex flex-col items-center justify-center p-4">
      <div className="absolute top-6 left-6">
        <Link href="/" className="font-display text-xl font-semibold text-text-primary no-underline hover:text-text-primary">
          ResearchBee
        </Link>
      </div>

      <div className="w-full max-w-sm">
        <Card className="w-full border-border-medium bg-surface-primary p-6">
          <CardHeader className="text-center mb-2 border-0 pb-0 mb-4">
            <CardTitle className="font-display text-2xl font-semibold text-text-primary">
              Sign in
            </CardTitle>
            <CardDescription className="mt-1.5 text-sm text-text-muted">
              Welcome back. Enter your details to continue.
            </CardDescription>
          </CardHeader>

          <CardContent>
            {error && (
              <div className="p-3 mb-4 bg-red-50 border border-red-200 rounded-md text-accent-error text-sm">
                {error}
              </div>
            )}

            <form onSubmit={handleLogin} className="space-y-4">
              <div>
                <label htmlFor="email" className="label">Email</label>
                <Input
                  id="email"
                  type="email"
                  value={email}
                  onChange={(e) => setEmail(e.target.value)}
                  required
                  placeholder="you@university.edu"
                />
              </div>

              <div>
                <div className="flex items-center justify-between mb-1.5">
                  <label htmlFor="password" className="label mb-0">Password</label>
                  <Link
                    href="/reset-password"
                    className="text-xs font-ui text-text-muted hover:text-accent-primary no-underline"
                  >
                    Forgot password?
                  </Link>
                </div>
                <Input
                  id="password"
                  type="password"
                  value={password}
                  onChange={(e) => setPassword(e.target.value)}
                  required
                  placeholder="Password"
                />
              </div>

              <Button type="submit" isLoading={isLoading} isFullWidth size="lg">
                Sign in
              </Button>
            </form>

            <p className="text-center mt-6 text-sm text-text-muted">
              Don&apos;t have an account?{" "}
              <Link href="/signup" className="font-medium text-accent-primary hover:text-accent-primary-hover">
                Sign up
              </Link>
            </p>
          </CardContent>
        </Card>
      </div>

      <footer className="absolute bottom-6 text-center w-full text-xs text-text-muted">
        &copy; {new Date().getFullYear()} ResearchBee
      </footer>
    </div>
  );
}

export default function Login() {
  return (
    <Suspense
      fallback={
        <div className="min-h-screen flex items-center justify-center bg-bg-primary">
          <span className="text-text-muted font-ui text-sm">Loading…</span>
        </div>
      }
    >
      <LoginForm />
    </Suspense>
  );
}
