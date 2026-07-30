'use client';

import { useEffect, useRef } from 'react';
import { supabase } from '@/lib/supabaseClient';
import { useAuthStore } from '@/lib/store';
import { getProfile } from '@/lib/api';

async function fetchProfileWithRetry(userId: string, attempts = 3) {
  let lastError: unknown = null;
  for (let i = 0; i < attempts; i++) {
    try {
      return await getProfile(userId);
    } catch (error) {
      lastError = error;
      const message = error instanceof Error ? error.message.toLowerCase() : '';
      const isTransient =
        message.includes('schema cache') ||
        message.includes('could not find the table') ||
        message.includes('fetch');
      if (!isTransient || i === attempts - 1) break;
      await new Promise((r) => setTimeout(r, 250 * (i + 1)));
    }
  }
  if (lastError) console.error('[AuthProvider] Profile fetch failed after retries:', lastError);
  return null;
}

export function AuthProvider({ children }: { children: React.ReactNode }) {
  const {
    setUser,
    setSession,
    setProfile,
    setLoading,
    setHasAttemptedProfileFetch,
    clearAuth,
  } = useAuthStore();

  const lastUserIdRef = useRef<string | null>(null);

  useEffect(() => {
    let isMounted = true;
    let authListenerSubscription: { unsubscribe: () => void } | null = null;

    const applySession = async (session: Awaited<ReturnType<typeof supabase.auth.getSession>>['data']['session']) => {
      if (!isMounted) return;

      const remoteUser = session?.user ?? null;
      const nextUserId = remoteUser?.id ?? null;

      // Invalidate stale persisted profile when user changes
      if (lastUserIdRef.current && nextUserId && lastUserIdRef.current !== nextUserId) {
        setProfile(null);
        setHasAttemptedProfileFetch(false);
      }
      if (!nextUserId && lastUserIdRef.current) {
        clearAuth();
        lastUserIdRef.current = null;
        return;
      }

      lastUserIdRef.current = nextUserId;
      setUser(remoteUser);
      setSession(session);

      if (remoteUser) {
        const profileData = await fetchProfileWithRetry(remoteUser.id);
        if (!isMounted) return;
        setProfile(profileData);
      } else {
        setProfile(null);
      }

      setLoading(false);
      setHasAttemptedProfileFetch(true);
    };

    const mainAuthSetup = async () => {
      if (!useAuthStore.persist.hasHydrated()) {
        await useAuthStore.persist.rehydrate();
      }
      if (!isMounted) return;

      setLoading(true);
      const { data } = await supabase.auth.getSession();
      await applySession(data.session);

      authListenerSubscription = supabase.auth.onAuthStateChange(async (event, session) => {
        if (!isMounted) return;
        console.log('[AuthProvider] onAuthStateChange:', event, session?.user?.id ?? null);

        if (event === 'SIGNED_OUT') {
          lastUserIdRef.current = null;
          clearAuth();
          return;
        }

        // TOKEN_REFRESHED shouldn't force a full profile refetch unless user missing
        if (event === 'TOKEN_REFRESHED' && session?.user?.id === lastUserIdRef.current) {
          setSession(session);
          setUser(session.user);
          setLoading(false);
          return;
        }

        setLoading(true);
        await applySession(session);
      }).data.subscription;
    };

    mainAuthSetup().catch((error) => {
      console.error('[AuthProvider] Critical error in mainAuthSetup:', error);
      if (isMounted) {
        clearAuth();
        setLoading(false);
        setHasAttemptedProfileFetch(true);
      }
    });

    return () => {
      isMounted = false;
      authListenerSubscription?.unsubscribe();
    };
  }, [setUser, setSession, setProfile, setLoading, setHasAttemptedProfileFetch, clearAuth]);

  return <>{children}</>;
}
