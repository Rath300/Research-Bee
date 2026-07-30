import { type FetchCreateContextFnOptions } from '@trpc/server/adapters/fetch';
import { cookies } from 'next/headers';
import { createServerClient } from '@supabase/ssr';
import type { User, SupabaseClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!;
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!;

function readBearerToken(req: Request): string | undefined {
  const authHeader = req.headers.get('authorization') ?? req.headers.get('Authorization');
  if (typeof authHeader === 'string' && authHeader.startsWith('Bearer ')) {
    return authHeader.slice('Bearer '.length).trim() || undefined;
  }
  return undefined;
}

export async function createContext(opts: FetchCreateContextFnOptions | { req: Request }) {
  const cookieStore = cookies();
  const accessToken = readBearerToken(opts.req);

  const cookieMethods = {
    get: (name: string) => cookieStore.get?.(name)?.value ?? undefined,
    set: () => {},
    remove: () => {},
  };

  const supabase: SupabaseClient = createServerClient(supabaseUrl, supabaseAnonKey, {
    cookies: cookieMethods,
    ...(accessToken
      ? {
          global: {
            headers: {
              Authorization: `Bearer ${accessToken}`,
            },
          },
        }
      : {}),
  });

  let user: User | null = null;

  // Prefer validating the JWT from the client Authorization header (App Router tRPC).
  if (accessToken) {
    const { data, error } = await supabase.auth.getUser(accessToken);
    if (error) {
      console.warn('API context getUser(jwt) failed:', error.message);
    } else {
      user = data.user;
    }
  }

  // Fall back to cookie session (SSR / middleware-synced cookies).
  if (!user) {
    const { data, error } = await supabase.auth.getUser();
    if (error) {
      console.warn('API context getUser(cookies) failed:', error.message);
    } else {
      user = data.user;
    }
  }

  return { supabase, user };
}

export type Context = Awaited<ReturnType<typeof createContext>>;
