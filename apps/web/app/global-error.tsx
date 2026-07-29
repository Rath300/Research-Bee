'use client';

export default function GlobalError({
  error,
  reset,
}: {
  error: Error & { digest?: string };
  reset: () => void;
}) {
  return (
    <html lang="en">
      <body style={{ fontFamily: 'system-ui, sans-serif', background: '#FBF9F6', color: '#1C1917', margin: 0 }}>
        <div style={{ minHeight: '100vh', display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', padding: 24 }}>
          <h1 style={{ fontSize: 24, fontWeight: 600, marginBottom: 8 }}>Something went wrong</h1>
          <p style={{ fontSize: 14, color: '#78716C', marginBottom: 24, textAlign: 'center' }}>
            {error?.message || 'An unexpected error occurred.'}
          </p>
          <button
            type="button"
            onClick={reset}
            style={{
              background: '#3F6F54',
              color: '#fff',
              border: 'none',
              borderRadius: 6,
              padding: '8px 16px',
              fontWeight: 500,
              cursor: 'pointer',
            }}
          >
            Try again
          </button>
        </div>
      </body>
    </html>
  );
}
