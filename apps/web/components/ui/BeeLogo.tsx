interface BeeLogoProps {
  size?: number;
  className?: string;
}

export function BeeLogo({ size = 32, className }: BeeLogoProps) {
  return (
    <svg
      width={size}
      height={size}
      viewBox="0 0 64 64"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
      className={className}
      aria-hidden
    >
      <path
        d="M32 48c9.941 0 18-8.059 18-18S41.941 12 32 12 14 20.059 14 30s8.059 18 18 18z"
        fill="#3F6F54"
      />
      <path
        d="M26 22h12M24 30h16M26 38h12"
        stroke="#1C1917"
        strokeWidth={3}
        strokeLinecap="round"
      />
      <path
        d="M14 26c-4.418 0-8-3.582-8-8s3.582-8 8-8 8 3.582 8 8-3.582 8-8 8zM50 26c4.418 0 8-3.582 8-8s-3.582-8-8-8-8 3.582-8 8 3.582 8 8 8z"
        fill="#E8F0EB"
        fillOpacity={0.95}
      />
      <path d="M32 48v8l4-4-4-4z" fill="#57534E" />
      <circle cx="26" cy="20" r="3" fill="#1C1917" />
      <circle cx="38" cy="20" r="3" fill="#1C1917" />
      <path
        d="M27 15c-1-3-3-5-5-5M37 15c1-3 3-5 5-5"
        stroke="#1C1917"
        strokeWidth={1.5}
        strokeLinecap="round"
      />
    </svg>
  );
}
