// WARNING: This is the ONLY place the Supabase browser client should be created.
// Do NOT call createBrowserClient / createClient elsewhere in client code.

import { createBrowserClient } from '@supabase/ssr';
import { type SupabaseClient } from '@supabase/supabase-js';
import { type Database } from '../types/database.types';

/**
 * Custom error class for Supabase operations
 */
export class SupabaseError extends Error {
  status: number;
  code?: string;

  constructor(message: string, status = 400, code?: string) {
    super(message);
    this.name = 'SupabaseError';
    this.status = status;
    this.code = code;
  }
}

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseAnonKey) {
  throw new Error('Missing Supabase URL or anonymous key. Check your environment variables.');
}

const globalForSupabase = globalThis as unknown as {
  __researchbee_supabase?: SupabaseClient<Database>;
};

function createBrowserSupabaseClient(): SupabaseClient<Database> {
  // Use default cookie/storage key so middleware + auth callback stay in sync.
  return createBrowserClient(supabaseUrl!, supabaseAnonKey!) as SupabaseClient<Database>;
}

export function getSupabaseClient(): SupabaseClient<Database> {
  if (!globalForSupabase.__researchbee_supabase) {
    globalForSupabase.__researchbee_supabase = createBrowserSupabaseClient();
  }
  return globalForSupabase.__researchbee_supabase;
}

/** Singleton browser client — always use this in client components. */
export const supabase = getSupabaseClient();

export const supabaseClient = supabase;

export function resetSupabaseClient() {
  globalForSupabase.__researchbee_supabase = undefined;
}
