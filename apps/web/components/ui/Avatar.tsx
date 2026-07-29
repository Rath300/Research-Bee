import React, { useState, useEffect } from 'react';
import Image from 'next/image';
import { cn } from '@/lib/utils';
import { FiUser } from 'react-icons/fi';

interface AvatarProps {
  src?: string | null;
  alt: string;
  size?: 'sm' | 'md' | 'lg' | 'xl';
  fallback?: React.ReactNode;
  className?: string;
  priority?: boolean;
}

export function Avatar({
  src,
  alt,
  size = 'md',
  fallback,
  className,
  priority = false,
}: AvatarProps) {
  const [imageError, setImageError] = useState(false);

  const sizeMap = {
    sm: { dimension: 32, textClass: 'text-sm', iconSize: 16 },
    md: { dimension: 40, textClass: 'text-base', iconSize: 20 },
    lg: { dimension: 64, textClass: 'text-xl', iconSize: 32 },
    xl: { dimension: 128, textClass: 'text-3xl', iconSize: 64 },
  };

  const { dimension, textClass, iconSize } = sizeMap[size];

  let fallbackContent = fallback;
  if (!fallbackContent) {
    fallbackContent = <FiUser size={iconSize} />;
  }

  useEffect(() => {
    setImageError(false);
  }, [src]);

  const shouldUseFallback = !src || imageError;

  if (shouldUseFallback) {
    return (
      <div
        className={cn(
          'flex items-center justify-center rounded-full bg-surface-secondary text-text-muted border border-border-medium',
          className
        )}
        style={{ width: dimension, height: dimension }}
      >
        <span className={cn('font-medium', textClass)}>
          {fallbackContent}
        </span>
      </div>
    );
  }

  return (
    <div
      className={cn(
        'relative rounded-full overflow-hidden border border-border-medium',
        className
      )}
      style={{ width: dimension, height: dimension }}
    >
      <Image
        src={src}
        alt={alt}
        width={dimension}
        height={dimension}
        className="object-cover w-full h-full"
        priority={priority}
        onError={() => {
          console.warn(`Avatar image failed to load: ${src}`);
          setImageError(true);
        }}
      />
    </div>
  );
}
