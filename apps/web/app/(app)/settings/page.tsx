'use client';

import React, { useState, useEffect } from 'react';
import { useRouter } from 'next/navigation';
import dynamic from 'next/dynamic';
import { Button } from '@/components/ui/Button';
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/Card';
import { FiUser, FiLoader, FiAlertCircle, FiSettings } from 'react-icons/fi';
import { useAuthStore } from '@/lib/store';
import { getProfile } from '@/lib/api';
import { type Profile as ProfileType } from '@research-collab/db';
import { PageContainer } from '@/components/layout/PageContainer';
import { Avatar } from '@/components/ui/Avatar';
import { ProfileCompletenessMeter } from '@/components/profile/ProfileCompletenessMeter';

const ProfileForm = dynamic(() => import('@/components/profile/ProfileForm').then(mod => mod.ProfileForm), {
  loading: () => (
    <div className="flex justify-center items-center p-8">
      <FiLoader className="animate-spin text-accent-primary text-3xl" />
    </div>
  ),
  ssr: false, 
});

export default function SettingsPage() {
  const router = useRouter();
  const { user, profile, setProfile } = useAuthStore();
  
  const [isLoading, setIsLoading] = useState(true);
  const [pageError, setPageError] = useState<string | null>(null);

  useEffect(() => {
    const loadProfileData = async () => {
      if (!user) {
        // This should ideally be caught by middleware, but as a fallback:
        router.push('/login');
        return;
      }
      
      setIsLoading(true);
      setPageError(null);
      try {
        if (!profile || !profile.updated_at) {
          const fetchedProfileData = await getProfile(user.id);
          if (fetchedProfileData) {
            const processedProfile: ProfileType = {
              ...fetchedProfileData,
              updated_at: fetchedProfileData.updated_at ? new Date(fetchedProfileData.updated_at) : null,
              // created_at and joining_date are not in ProfileType from @research-collab/db
              // created_at: fetchedProfileData.created_at ? new Date(fetchedProfileData.created_at) : new Date(), 
              // joining_date: fetchedProfileData.joining_date ? new Date(fetchedProfileData.joining_date) : new Date(), 
            };
            setProfile(processedProfile);
          } else {
            throw new Error('Profile data could not be fetched.');
          }
        }
      } catch (err: any) {
        console.error('Error loading profile on settings page:', err);
        setPageError(err.message || 'Failed to load profile data. Please try refreshing.');
      } finally {
        setIsLoading(false);
      }
    };
    
    if (user) {
        loadProfileData();
    } else if (!isLoading && !useAuthStore.getState().isLoading) { // Check auth store loading state too
        router.push('/login');
    }
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [user, router, isLoading]); // Removed profile, setProfile from deps as it causes loops if profile itself is updated by setProfile call within

  const handleProfileUpdated = () => {
    // console.log('Profile updated successfully from callback!');
    // Potentially refetch or update local state if needed beyond what ProfileForm does
  };

  const profileForForm = profile ? {
    ...profile,
    full_name: `${profile.first_name || ''} ${profile.last_name || ''}`.trim(),
    research_interests: profile.interests || [],
    // Ensure all fields expected by ProfileForm are mapped correctly
    // skills, looking_for, education etc.
  } : undefined;

  if (isLoading || (!profile && !pageError)) { // Show loading if isLoading or if profile isn't there yet (and no error)
    return (
      <PageContainer title="Settings" className="bg-bg-primary min-h-screen text-text-primary flex items-center justify-center">
        <div className="flex flex-col items-center">
          <FiLoader className="animate-spin text-accent-primary text-5xl mb-4" />
          <p className="text-xl text-text-secondary font-sans">Loading your settings...</p>
        </div>
      </PageContainer>
    );
  }

  if (pageError) {
    return (
      <PageContainer title="Error" className="bg-bg-primary min-h-screen text-text-primary flex items-center justify-center">
        <div className="bg-surface-primary border border-border-medium p-8 rounded-md text-center max-w-md w-full">
          <FiAlertCircle className="mx-auto text-red-500 text-5xl mb-4" />
          <h2 className="text-2xl font-heading text-text-primary mb-2">Oops! Something went wrong.</h2>
          <p className="text-text-secondary mb-6 font-sans">{pageError}</p>
          <Button 
            variant="primary"
            onClick={() => router.refresh()} 
            className="w-full font-sans"
          >
            Try Again
          </Button>
        </div>
      </PageContainer>
    );
  }
  
  if (!user || !profileForForm ) {
     // This state should ideally not be reached if middleware and above checks are working.
     // If it is, it implies a deeper issue or a race condition.
     if (!useAuthStore.getState().isLoading) router.push('/login');
     return (
      <PageContainer title="Settings" className="bg-bg-primary min-h-screen text-text-primary flex items-center justify-center">
        <div className="flex flex-col items-center">
          <FiLoader className="animate-spin text-accent-primary text-5xl mb-4" />
          <p className="text-xl text-text-secondary font-sans">Preparing settings...</p>
        </div>
      </PageContainer>
     );
  }

  return (
    <PageContainer title="Account Settings" className="bg-bg-primary min-h-screen text-text-primary font-sans">
      <div className="container mx-auto max-w-4xl px-4 py-12 sm:py-16 lg:py-20">
        <div className="mb-12 sm:mb-16 text-center">
          <FiSettings className="mx-auto text-accent-primary text-5xl mb-4" />
          <h1 className="text-4xl sm:text-5xl font-heading text-text-primary tracking-tight">
            Account Settings
          </h1>
        </div>
        
        <div className="mb-6">
          <ProfileCompletenessMeter profile={profile} showMissing />
        </div>

        <Card className="bg-surface-primary border border-border-medium">
          <CardHeader className="border-b border-border-light pb-4">
            <CardTitle className="text-2xl sm:text-3xl font-heading text-text-primary">Profile Information</CardTitle>
            <CardDescription className="text-text-secondary mt-1 font-sans">
              Keep your personal details and preferences up to date. Stronger profiles get better matches.
            </CardDescription>
          </CardHeader>
          <CardContent className="pt-6">
            <ProfileForm initialData={profileForForm} onProfileUpdate={handleProfileUpdated} />
          </CardContent>
        </Card>
      </div>
    </PageContainer>
  );
} 