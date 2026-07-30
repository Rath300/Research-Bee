import { createServerClient, type CookieOptions } from '@supabase/ssr';
import { NextResponse, type NextRequest } from 'next/server';
import { isProfileComplete, isSafeRedirectPath } from '@/lib/profile';

export const dynamic = 'force-dynamic';

export async function GET(request: NextRequest) {
  const requestUrl = new URL(request.url);
  const code = requestUrl.searchParams.get('code');
  const nextParam =
    requestUrl.searchParams.get('next') ??
    requestUrl.searchParams.get('redirect_to') ??
    requestUrl.searchParams.get('redirect');

  let redirectPath = '/dashboard';
  const cookieJar: { name: string; value: string; options: CookieOptions }[] = [];

  if (code) {
    const supabase = createServerClient(
      process.env.NEXT_PUBLIC_SUPABASE_URL!,
      process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
      {
        cookies: {
          get(name: string) {
            return request.cookies.get(name)?.value;
          },
          set(name: string, value: string, options: CookieOptions) {
            cookieJar.push({ name, value, options });
          },
          remove(name: string, options: CookieOptions) {
            cookieJar.push({ name, value: '', options: { ...options, maxAge: 0 } });
          },
        },
      }
    );

    const { error } = await supabase.auth.exchangeCodeForSession(code);

    if (!error) {
      const {
        data: { user },
      } = await supabase.auth.getUser();

      if (user?.id) {
        const { data: profile } = await supabase
          .from('profiles')
          .select('first_name, last_name, bio')
          .eq('id', user.id)
          .maybeSingle();

        redirectPath = isProfileComplete(profile) ? '/dashboard' : '/profile-setup';
      } else {
        redirectPath = '/profile-setup';
      }
    } else {
      console.error('Auth callback exchange failed:', error.message);
      redirectPath = '/login';
    }
  }

  if (isSafeRedirectPath(nextParam)) {
    // Only honor next when profile is complete (or when going to profile-setup)
    if (redirectPath === '/dashboard' || nextParam === '/profile-setup') {
      redirectPath = nextParam;
    }
  }

  const redirect = NextResponse.redirect(new URL(redirectPath, requestUrl.origin));
  for (const { name, value, options } of cookieJar) {
    redirect.cookies.set({ name, value, ...options });
  }
  return redirect;
}
