"use client";

import { useState } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { supabase } from "@/lib/supabaseClient";
import { Card, CardHeader, CardTitle, CardDescription, CardContent } from "@/components/ui/Card";
import { Input } from "@/components/ui/Input";
import { Button } from "@/components/ui/Button";
import { useAuthStore } from '@/lib/store';
import { trackSignUp } from '@/lib/analytics';

export default function Signup() {
  const [fullName, setFullName] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const router = useRouter();
  const { isLoading: authLoading } = useAuthStore();

  const handleSignup = async (e: React.FormEvent) => {
    e.preventDefault();
    setError(null);

    if (password !== confirmPassword) {
      setError("Passwords do not match");
      return;
    }

    setIsLoading(true);

    try {
      const nameParts = fullName.trim().split(/\s+/);
      const firstName = nameParts[0] || '';
      const lastName = nameParts.slice(1).join(' ') || '';

      const { data, error } = await supabase.auth.signUp({
        email,
        password,
        options: {
          data: {
            first_name: firstName,
            last_name: lastName,
            full_name: fullName,
          },
        },
      });

      if (error) throw error;

      if (data?.user) {
        trackSignUp('email');
        router.push("/profile-setup");
      }
    } catch (err: any) {
      setError(err.message || "An error occurred during signup");
    } finally {
      setIsLoading(false);
    }
  };

  if (authLoading) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-bg-primary">
        <span className="text-text-muted font-ui text-sm">Loading…</span>
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
          <CardHeader className="text-center border-0 pb-0 mb-4">
            <CardTitle className="font-display text-2xl font-semibold text-text-primary">
              Create account
            </CardTitle>
            <CardDescription className="mt-1.5 text-sm text-text-muted">
              Start finding research collaborators.
            </CardDescription>
          </CardHeader>

          <CardContent>
            {error && (
              <div className="p-3 mb-4 bg-red-50 border border-red-200 rounded-md text-accent-error text-sm">
                {error}
              </div>
            )}

            <form onSubmit={handleSignup} className="space-y-3">
              <div>
                <label htmlFor="fullName" className="label">Full name</label>
                <Input
                  id="fullName"
                  type="text"
                  value={fullName}
                  onChange={(e) => setFullName(e.target.value)}
                  required
                  placeholder="Jane Doe"
                />
              </div>

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
                <label htmlFor="password" className="label">Password</label>
                <Input
                  id="password"
                  type="password"
                  value={password}
                  onChange={(e) => setPassword(e.target.value)}
                  required
                  placeholder="At least 6 characters"
                  minLength={6}
                />
              </div>

              <div>
                <label htmlFor="confirmPassword" className="label">Confirm password</label>
                <Input
                  id="confirmPassword"
                  type="password"
                  value={confirmPassword}
                  onChange={(e) => setConfirmPassword(e.target.value)}
                  required
                  placeholder="Confirm password"
                  minLength={6}
                />
              </div>

              <div className="pt-2">
                <Button type="submit" isLoading={isLoading} isFullWidth size="lg">
                  {isLoading ? "Creating account…" : "Create account"}
                </Button>
              </div>
            </form>

            <p className="text-center mt-6 text-sm text-text-muted">
              Already have an account?{" "}
              <Link href="/login" className="font-medium text-accent-primary hover:text-accent-primary-hover">
                Log in
              </Link>
            </p>
          </CardContent>
        </Card>
      </div>
    </div>
  );
}
