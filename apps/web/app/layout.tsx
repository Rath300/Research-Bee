import type { Metadata } from 'next';
import './globals.css';
import { AuthProvider } from '@/components/providers/auth-provider';
import { TRPCProvider } from '@/components/providers/TRPCProvider';
import { Source_Sans_3, Source_Serif_4, JetBrains_Mono } from 'next/font/google';
import Script from 'next/script';

const sourceSans = Source_Sans_3({
  subsets: ['latin'],
  display: 'swap',
  variable: '--font-source-sans',
});

const sourceSerif = Source_Serif_4({
  subsets: ['latin'],
  display: 'swap',
  variable: '--font-newsreader',
  adjustFontFallback: true,
});

const jetbrainsMono = JetBrains_Mono({
  subsets: ['latin'],
  display: 'swap',
  variable: '--font-jetbrains-mono',
});

export const metadata: Metadata = {
  title: 'ResearchBee — Find research collaborators',
  description: 'Find research collaborators, join projects, and build meaningful connections in the research community.',
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html
      lang="en"
      className={`${sourceSans.variable} ${sourceSerif.variable} ${jetbrainsMono.variable} font-sans antialiased`}
    >
      <head>
        <Script
          src="https://www.googletagmanager.com/gtag/js?id=G-DJ066QLDTL"
          strategy="afterInteractive"
        />
        <Script id="google-analytics" strategy="afterInteractive">
          {`
            window.dataLayer = window.dataLayer || [];
            function gtag(){dataLayer.push(arguments);}
            gtag('js', new Date());
            gtag('config', 'G-DJ066QLDTL');
          `}
        </Script>
      </head>
      <body className="bg-bg-primary text-text-primary min-h-screen flex flex-col font-body antialiased">
        <AuthProvider>
          <TRPCProvider>
            <div className="flex-grow">{children}</div>
          </TRPCProvider>
        </AuthProvider>
      </body>
    </html>
  );
}
