'use client';

import { Button } from '@/components/ui/Button';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/Card';
import { FiAlertCircle, FiX } from 'react-icons/fi';

interface ProjectAccessModalProps {
  onClose: () => void;
}

export function ProjectAccessModal({ onClose }: ProjectAccessModalProps) {
  return (
    <div
      className="fixed inset-0 bg-black/50 flex items-center justify-center z-50 p-4"
      onClick={onClose}
      role="presentation"
    >
      <Card
        className="w-full max-w-md"
        onClick={(event) => event.stopPropagation()}
      >
        <CardHeader className="flex flex-row items-center justify-between pb-2">
          <CardTitle className="text-lg">Access restricted</CardTitle>
          <Button variant="ghost" size="sm" onClick={onClose} aria-label="Close">
            <FiX size={18} />
          </Button>
        </CardHeader>
        <CardContent className="space-y-4">
          <div className="flex items-start gap-3">
            <FiAlertCircle className="text-red-500 text-2xl flex-shrink-0 mt-0.5" />
            <p className="text-text-secondary">
              You do not have access to this project. Only collaborators can open project workspaces.
            </p>
          </div>
          <Button variant="primary" className="w-full" onClick={onClose}>
            OK
          </Button>
        </CardContent>
      </Card>
    </div>
  );
}
