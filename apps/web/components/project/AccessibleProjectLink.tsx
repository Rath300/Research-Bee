'use client';

import { useState, type MouseEvent, type ReactNode } from 'react';
import { useRouter } from 'next/navigation';
import { useAccessibleProjectIds } from '@/hooks/useAccessibleProjectIds';
import { ProjectAccessModal } from '@/components/project/ProjectAccessModal';

interface AccessibleProjectLinkProps {
  projectId: string;
  href?: string;
  children: ReactNode;
  className?: string;
}

export function AccessibleProjectLink({
  projectId,
  href,
  children,
  className,
}: AccessibleProjectLinkProps) {
  const router = useRouter();
  const { hasAccess, isLoading } = useAccessibleProjectIds();
  const [showAccessModal, setShowAccessModal] = useState(false);
  const targetHref = href ?? `/projects/${projectId}`;

  function handleClick(event: MouseEvent<HTMLAnchorElement>) {
    event.preventDefault();

    if (isLoading) {
      return;
    }

    if (hasAccess(projectId)) {
      router.push(targetHref);
      return;
    }

    setShowAccessModal(true);
  }

  return (
    <>
      <a href={targetHref} onClick={handleClick} className={className}>
        {children}
      </a>
      {showAccessModal ? (
        <ProjectAccessModal onClose={() => setShowAccessModal(false)} />
      ) : null}
    </>
  );
}
