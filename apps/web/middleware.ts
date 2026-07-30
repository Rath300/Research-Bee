import { createServerClient, type CookieOptions } from '@supabase/ssr';
import { NextResponse, type NextRequest } from 'next/server';
import { isProfileComplete } from '@/lib/profile';

const PROTECTED_PATHS = [
  '/dashboard',
  '/settings',
  '/profile',
  '/projects',
  '/chats',
  '/chat',
  '/research',
  '/onboarding',
  '/match',
  '/matches',
  '/notifications',
  '/collaborators',
  '/trending',
  '/analytics',
  '/external-research',
  '/discover',
  '/search',
  '/workspaces',
  '/profile-setup',
];

const AUTH_PATHS = [
  '/login',
  '/signup',
  '/reset-password',
  '/update-password',
  '/auth/check-email',
  '/auth/login',
];

const PROFILE_SETUP_PATH = '/profile-setup';

function copyCookies(from: NextResponse, to: NextResponse) {
  from.cookies.getAll().forEach((cookie) => {
    to.cookies.set(cookie.name, cookie.value);
  });
}

export async function middleware(request: NextRequest) {
  let response = NextResponse.next({
    request: {
      headers: request.headers,
    },
  });

  const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!;
  const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!;

  const supabase = createServerClient(supabaseUrl, supabaseAnonKey, {
    cookies: {
      get(name: string) {
        return request.cookies.get(name)?.value;
      },
      set(name: string, value: string, options: CookieOptions) {
        request.cookies.set({ name, value, ...options });
        response = NextResponse.next({
          request: { headers: request.headers },
        });
        response.cookies.set({ name, value, ...options });
      },
      remove(name: string, options: CookieOptions) {
        request.cookies.set({ name, value: '', ...options });
        response = NextResponse.next({
          request: { headers: request.headers },
        });
        response.cookies.set({ name, value: '', ...options });
      },
    },
  });

  const {
    data: { session },
  } = await supabase.auth.getSession();

  const { pathname } = request.nextUrl;
  const isUserAuthenticated = !!session;
  const isProtectedRoute = PROTECTED_PATHS.some((path) => pathname === path || pathname.startsWith(`${path}/`));
  const isAuthRoute = AUTH_PATHS.includes(pathname);
  const isProfileSetupRoute = pathname === PROFILE_SETUP_PATH;

  if (pathname === '/auth/login') {
    const redirect = NextResponse.redirect(new URL('/login', request.url));
    copyCookies(response, redirect);
    return redirect;
  }

  if (isProtectedRoute && !isUserAuthenticated && !isProfileSetupRoute) {
    const redirectUrl = new URL('/login', request.url);
    if (!pathname.startsWith('/api')) {
      redirectUrl.searchParams.set('redirect_to', pathname + request.nextUrl.search);
    }
    const redirect = NextResponse.redirect(redirectUrl);
    copyCookies(response, redirect);
    return redirect;
  }

  if (isUserAuthenticated && session?.user?.id) {
    let hasCompleteProfile = false;
    let schemaCacheMiss = false;

    try {
      const { data: profile, error } = await supabase
        .from('profiles')
        .select('id, first_name, last_name, bio')
        .eq('id', session.user.id)
        .single();

      schemaCacheMiss =
        error?.code === 'PGRST205' ||
        !!error?.message?.toLowerCase().includes('schema cache') ||
        !!error?.message?.toLowerCase().includes('could not find the table');

      if (schemaCacheMiss) {
        console.warn('Middleware profile check skipped (schema cache):', error?.message);
      } else {
        hasCompleteProfile = isProfileComplete(profile);
      }
    } catch (error) {
      console.error('Error checking user profile in middleware:', error);
      // Fail open on unexpected errors
      return response;
    }

    if (schemaCacheMiss) {
      return response;
    }

    // Auth routes: send complete users to dashboard, incomplete to profile-setup
    if (isAuthRoute && pathname !== '/auth/check-email' && pathname !== '/update-password') {
      const target = hasCompleteProfile ? '/dashboard' : PROFILE_SETUP_PATH;
      const redirect = NextResponse.redirect(new URL(target, request.url));
      copyCookies(response, redirect);
      return redirect;
    }

    if (!hasCompleteProfile && !isProfileSetupRoute && !isAuthRoute) {
      const redirect = NextResponse.redirect(new URL(PROFILE_SETUP_PATH, request.url));
      copyCookies(response, redirect);
      return redirect;
    }

    if (hasCompleteProfile && isProfileSetupRoute) {
      const redirect = NextResponse.redirect(new URL('/dashboard', request.url));
      copyCookies(response, redirect);
      return redirect;
    }
  }

  return response;
}

export const config = {
  matcher: ['/((?!api|_next/static|_next/image|favicon.ico|images|videos).*)'],
};
