"use client";

import { useState } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { supabase } from "@/lib/supabaseClient";
import { Input } from "@/components/ui/Input";
import { Button } from "@/components/ui/Button";
import { Card, CardHeader, CardTitle, CardDescription, CardContent } from "@/components/ui/Card";

export default function Login() {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const router = useRouter();

  const handleLogin = async (e: React.FormEvent) => {
    e.preventDefault();
    setError(null);
    setIsLoading(true);

    try {
      const { data, error } = await supabase.auth.signInWithPassword({
        email,
        password,
      });

      if (error) throw error;

      if (data?.user) {
        router.push("/dashboard");
      }
    } catch (err: any) {
      setError(err.message || "An error occurred during login.");
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
        <Card className="border-border-medium bg-surface-primary p-6">
          <CardHeader className="text-center border-0 pb-0 mb-4">
            <CardTitle className="font-display text-2xl font-semibold text-text-primary">
              Sign in
            </CardTitle>
            <CardDescription className="mt-1.5 text-sm text-text-muted">
              Access your ResearchBee account
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
                  placeholder="Enter your email"
                />
              </div>

              <div>
                <div className="flex items-center justify-between mb-1.5">
                  <label htmlFor="password" className="label mb-0">Password</label>
                  <Link
                    href="/reset-password"
                    className="text-xs text-text-muted hover:text-accent-primary no-underline"
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
                  placeholder="Enter your password"
                />
              </div>

              <Button type="submit" isLoading={isLoading} isFullWidth size="lg">
                Sign in
              </Button>
            </form>

            <p className="text-center mt-6 text-sm text-text-muted">
              New to ResearchBee?{" "}
              <Link href="/signup" className="font-medium text-accent-primary hover:text-accent-primary-hover">
                Sign up
              </Link>
            </p>
          </CardContent>
        </Card>
      </div>
    </div>
  );
}
