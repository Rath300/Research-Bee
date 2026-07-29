/** @type {import('tailwindcss').Config} */
const { fontFamily } = require('tailwindcss/defaultTheme');

module.exports = {
  content: [
    './app/**/*.{js,ts,jsx,tsx,mdx}',
    './components/**/*.{js,ts,jsx,tsx,mdx}',
    './pages/**/*.{js,ts,jsx,tsx,mdx}',
    './src/**/*.{js,ts,jsx,tsx,mdx}',
  ],
  theme: {
    extend: {
      colors: {
        // Legacy aliases (mapped to warm system)
        'researchbee-yellow': '#3F6F54',
        'researchbee-yellow-dark': '#345C46',
        'researchbee-black': '#1C1917',
        'researchbee-dark-gray': '#292524',
        'researchbee-medium-gray': '#57534E',
        'researchbee-light-gray': '#A8A29E',
        'researchbee-white': '#FFFFFF',

        // Warm paper backgrounds
        'bg-primary': '#FBF9F6',
        'bg-secondary': '#FFFFFF',
        'bg-tertiary': '#FFFFFF',
        'bg-quaternary': '#F3F1ED',

        // Warm charcoal text
        'text-primary': '#1C1917',
        'text-secondary': '#57534E',
        'text-muted': '#78716C',
        'text-inverse': '#FFFFFF',

        // Sage green accents
        'accent-primary': '#3F6F54',
        'accent-primary-hover': '#345C46',
        'accent-secondary': '#78716C',
        'accent-secondary-hover': '#57534E',
        'accent-success': '#3F6F54',
        'accent-warning': '#B45309',
        'accent-error': '#B91C1C',
        'accent-soft': '#E8F0EB',

        // Warm stone borders
        'border-light': '#F5F5F4',
        'border-medium': '#E7E5E4',
        'border-dark': '#D6D3D1',
        'border-accent': '#3F6F54',

        // Warm surfaces
        'surface-primary': '#FFFFFF',
        'surface-secondary': '#F3F1ED',
        'surface-hover': '#F5F5F4',
        'surface-active': '#E8F0EB',

        // Legacy name remaps
        'ic-text-primary': '#1C1917',
        'ic-text-secondary': '#57534E',
        'ic-border': '#E7E5E4',
        'accent-purple': '#3F6F54',
        'accent-purple-hover': '#345C46',
      },
      fontFamily: {
        sans: ['var(--font-source-sans)', ...fontFamily.sans],
        display: ['var(--font-newsreader)', ...fontFamily.serif],
        heading: ['var(--font-newsreader)', ...fontFamily.serif],
        body: ['var(--font-source-sans)', ...fontFamily.sans],
        ui: ['var(--font-source-sans)', ...fontFamily.sans],
        mono: ['var(--font-jetbrains-mono)', ...fontFamily.mono],
        'geist-sans': ['var(--font-source-sans)', ...fontFamily.sans],
      },
      animation: {
        'fade-in': 'fadeIn 0.3s ease-in-out',
        'slide-up': 'slideUp 0.3s ease-out',
      },
      keyframes: {
        fadeIn: {
          '0%': { opacity: '0' },
          '100%': { opacity: '1' },
        },
        slideUp: {
          '0%': { transform: 'translateY(20px)', opacity: '0' },
          '100%': { transform: 'translateY(0)', opacity: '1' },
        },
      },
      boxShadow: {
        soft: '0 1px 2px 0 rgba(28, 25, 23, 0.04)',
        panel: '0 1px 3px 0 rgba(28, 25, 23, 0.06)',
      },
      zIndex: {
        dropdown: 40,
        modal: 50,
        tooltip: 60,
      },
      spacing: {
        '18': '4.5rem',
        '22': '5.5rem',
      },
      transitionDuration: {
        '400': '400ms',
      },
      typography: (theme) => ({
        DEFAULT: {
          css: {
            color: theme('colors.text-primary'),
            a: {
              color: theme('colors.accent-primary'),
              '&:hover': {
                color: theme('colors.accent-primary-hover'),
              },
            },
            h1: {
              color: theme('colors.text-primary'),
              fontFamily: theme('fontFamily.heading').join(', '),
            },
            h2: {
              color: theme('colors.text-primary'),
              fontFamily: theme('fontFamily.heading').join(', '),
            },
            h3: {
              color: theme('colors.text-primary'),
              fontFamily: theme('fontFamily.heading').join(', '),
            },
            h4: {
              color: theme('colors.text-primary'),
              fontFamily: theme('fontFamily.heading').join(', '),
            },
            strong: {
              color: theme('colors.text-primary'),
            },
            blockquote: {
              color: theme('colors.text-secondary'),
              borderLeftColor: theme('colors.border-medium'),
            },
            code: {
              color: theme('colors.accent-primary'),
            },
            hr: {
              borderColor: theme('colors.border-medium'),
            },
          },
        },
      }),
    },
  },
  plugins: [
    require('@tailwindcss/typography'),
    require('@tailwindcss/forms'),
  ],
};
