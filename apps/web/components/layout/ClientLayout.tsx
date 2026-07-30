"use client";

import React from 'react';

/** Legacy wrapper — app shell now lives in `app/(app)/layout.tsx`. */
export function ClientLayout({ children }: { children: React.ReactNode }) {
  return <>{children}</>;
}
