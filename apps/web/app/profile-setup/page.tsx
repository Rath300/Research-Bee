'use client';

import React, { useEffect, useState } from 'react';
import { useRouter } from 'next/navigation';
import { useAuthStore } from '@/lib/store';
import dynamic from 'next/dynamic';
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/Card';
import { FiLoader, FiUserCheck } from 'react-icons/fi';
import { PageContainer } from '@/components/layout/PageContainer';

const ProfileForm = dynamic(() => import('@/components/profile/ProfileForm').then(mod => mod.ProfileForm), {
  loading: () => (
    <div className="flex justify-center items-center p-8">
      <FiLoader className="animate-spin text-accent-primary text-2xl" />
    </div>
  ),
  ssr: false,
});

export default function ProfileSetupPage() {
  const router = useRouter();
  const { user, isLoading: authLoading, profile } = useAuthStore();
  const [isRedirecting, setIsRedirecting] = useState(false);

  useEffect(() => {
    if (!authLoading) {
      if (!user) {
        router.replace('/login');
      } else if (
        profile &&
        profile.first_name &&
        profile.last_name &&
        profile.first_name !== 'Anonymous' &&
        profile.last_name !== 'User' &&
        profile.bio
      ) {
        router.replace('/dashboard');
      }
    }
  }, [user, authLoading, profile, router]);

  const handleProfileSetupComplete = () => {
    setIsRedirecting(true);
    setTimeout(() => {
      router.replace('/dashboard');
    }, 1500);
  };

  if (
    authLoading ||
    (!user && !authLoading) ||
    (profile &&
      profile.first_name &&
      profile.last_name &&
      profile.first_name !== 'Anonymous' &&
      profile.last_name !== 'User' &&
      profile.bio &&
      !isRedirecting)
  ) {
    return (
      <PageContainer title="Profile Setup" className="bg-bg-primary min-h-screen flex items-center justify-center">
        <div className="flex flex-col items-center">
          <FiLoader className="animate-spin text-accent-primary text-3xl mb-3" />
          <p className="text-sm text-text-secondary">Loading your information…</p>
        </div>
      </PageContainer>
    );
  }

  if (isRedirecting) {
    return (
      <PageContainer title="Profile Setup Complete" className="bg-bg-primary min-h-screen flex items-center justify-center">
        <div className="text-center p-6">
          <FiUserCheck className="text-4xl text-accent-primary mx-auto mb-3" />
          <h2 className="text-xl font-heading font-semibold text-text-primary">Profile setup complete</h2>
          <p className="text-sm text-text-secondary mt-1">Redirecting to the dashboard…</p>
        </div>
      </PageContainer>
    );
  }

  return (
    <PageContainer title="Set Up Your Profile" className="bg-bg-primary min-h-screen flex flex-col items-center justify-center p-4">
      <div className="w-full max-w-2xl">
        <Card className="bg-surface-primary border border-border-medium rounded-md">
          <CardHeader className="pt-6 pb-4 text-center border-b border-border-medium">
            <FiUserCheck className="text-3xl text-accent-primary mx-auto mb-3" />
            <CardTitle className="text-2xl font-display font-semibold text-text-primary">
              Set up your profile
            </CardTitle>
            <CardDescription className="text-text-muted mt-1.5 text-sm">
              Complete your profile to start connecting and collaborating.
            </CardDescription>
          </CardHeader>
          <CardContent className="p-6">
            <ProfileForm onProfileUpdate={handleProfileSetupComplete} />
          </CardContent>
        </Card>
      </div>
    </PageContainer>
  );
}
