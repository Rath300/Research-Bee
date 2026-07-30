'use client';

import { useEffect, useRef } from 'react';
import type { Session } from '@supabase/supabase-js';
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
  const bootstrappedRef = useRef(false);
  const profileFetchInFlightRef = useRef<string | null>(null);

  useEffect(() => {
    let isMounted = true;
    let authListenerSubscription: { unsubscribe: () => void } | null = null;

    const syncSessionQuietly = (session: Session | null) => {
      const remoteUser = session?.user ?? null;
      lastUserIdRef.current = remoteUser?.id ?? null;
      setUser(remoteUser);
      setSession(session);
    };

    const loadProfileIfNeeded = async (userId: string, force = false) => {
      const existing = useAuthStore.getState().profile;
      if (!force && existing?.id === userId) {
        setHasAttemptedProfileFetch(true);
        return existing;
      }
      if (profileFetchInFlightRef.current === userId) return existing;
      profileFetchInFlightRef.current = userId;
      try {
        const profileData = await fetchProfileWithRetry(userId);
        if (!isMounted) return profileData;
        // Keep previous complete profile if a transient fetch returned null
        if (!profileData && existing?.id === userId) {
          setHasAttemptedProfileFetch(true);
          return existing;
        }
        setProfile(profileData);
        return profileData;
      } finally {
        if (profileFetchInFlightRef.current === userId) {
          profileFetchInFlightRef.current = null;
        }
      }
    };

    const applySession = async (
      session: Session | null,
      opts: { showLoading?: boolean; forceProfile?: boolean } = {}
    ) => {
      if (!isMounted) return;

      const { showLoading = false, forceProfile = false } = opts;
      const remoteUser = session?.user ?? null;
      const nextUserId = remoteUser?.id ?? null;
      const prevUserId = lastUserIdRef.current;

      if (showLoading) setLoading(true);

      if (prevUserId && nextUserId && prevUserId !== nextUserId) {
        setProfile(null);
        setHasAttemptedProfileFetch(false);
      }

      if (!nextUserId) {
        if (prevUserId || useAuthStore.getState().user) {
          clearAuth();
        } else {
          setUser(null);
          setSession(null);
          setLoading(false);
          setHasAttemptedProfileFetch(true);
        }
        lastUserIdRef.current = null;
        return;
      }

      syncSessionQuietly(session);

      await loadProfileIfNeeded(nextUserId, forceProfile || prevUserId !== nextUserId);

      if (!isMounted) return;
      setLoading(false);
      setHasAttemptedProfileFetch(true);
    };

    const mainAuthSetup = async () => {
      if (!useAuthStore.persist.hasHydrated()) {
        await useAuthStore.persist.rehydrate();
      }
      if (!isMounted) return;

      // Seed lastUserId from rehydrated store to avoid false "user changed" on first event
      lastUserIdRef.current = useAuthStore.getState().user?.id ?? null;

      const { data } = await supabase.auth.getSession();
      await applySession(data.session, {
        showLoading: !useAuthStore.getState().user,
        forceProfile: !useAuthStore.getState().profile,
      });
      bootstrappedRef.current = true;

      authListenerSubscription = supabase.auth.onAuthStateChange(async (event, session) => {
        if (!isMounted) return;

        const nextUserId = session?.user?.id ?? null;
        const sameUser = !!nextUserId && nextUserId === lastUserIdRef.current;

        // Tab focus / token refresh must NOT remount the app shell.
        if (event === 'TOKEN_REFRESHED' || event === 'INITIAL_SESSION') {
          if (session) {
            syncSessionQuietly(session);
            if (sameUser && !useAuthStore.getState().profile) {
              await loadProfileIfNeeded(nextUserId);
            }
          }
          setLoading(false);
          return;
        }

        if (event === 'SIGNED_OUT') {
          lastUserIdRef.current = null;
          clearAuth();
          return;
        }

        if (event === 'SIGNED_IN' && sameUser) {
          syncSessionQuietly(session);
          // Soft profile refresh in background — never flip global loading
          void loadProfileIfNeeded(nextUserId);
          setLoading(false);
          return;
        }

        // Real sign-in / user switch
        await applySession(session, {
          showLoading: !sameUser && !bootstrappedRef.current,
          forceProfile: !sameUser,
        });
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
