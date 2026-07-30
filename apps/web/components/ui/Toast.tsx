'use client';

import React, { createContext, useCallback, useContext, useMemo, useState } from 'react';
import { FiAlertCircle, FiCheckCircle, FiInfo, FiX } from 'react-icons/fi';

type ToastVariant = 'success' | 'error' | 'info';

interface ToastItem {
  id: string;
  message: string;
  variant: ToastVariant;
}

interface ToastContextValue {
  toast: (message: string, variant?: ToastVariant) => void;
  success: (message: string) => void;
  error: (message: string) => void;
  info: (message: string) => void;
}

const ToastContext = createContext<ToastContextValue | null>(null);

export function useToast() {
  const ctx = useContext(ToastContext);
  if (!ctx) {
    return {
      toast: (message: string) => console.log('[toast]', message),
      success: (message: string) => console.log('[toast:success]', message),
      error: (message: string) => console.error('[toast:error]', message),
      info: (message: string) => console.log('[toast:info]', message),
    };
  }
  return ctx;
}

export function ToastProvider({ children }: { children: React.ReactNode }) {
  const [items, setItems] = useState<ToastItem[]>([]);

  const dismiss = useCallback((id: string) => {
    setItems((prev) => prev.filter((t) => t.id !== id));
  }, []);

  const toast = useCallback(
    (message: string, variant: ToastVariant = 'info') => {
      const id = `${Date.now()}-${Math.random().toString(36).slice(2, 8)}`;
      setItems((prev) => [...prev.slice(-4), { id, message, variant }]);
      window.setTimeout(() => dismiss(id), 4200);
    },
    [dismiss]
  );

  const value = useMemo<ToastContextValue>(
    () => ({
      toast,
      success: (message) => toast(message, 'success'),
      error: (message) => toast(message, 'error'),
      info: (message) => toast(message, 'info'),
    }),
    [toast]
  );

  return (
    <ToastContext.Provider value={value}>
      {children}
      <div className="fixed bottom-4 right-4 z-[100] flex flex-col gap-2 max-w-sm w-[calc(100%-2rem)] pointer-events-none">
        {items.map((item) => {
          const Icon =
            item.variant === 'success'
              ? FiCheckCircle
              : item.variant === 'error'
                ? FiAlertCircle
                : FiInfo;
          const colors =
            item.variant === 'success'
              ? 'border-green-200 bg-green-50 text-green-900'
              : item.variant === 'error'
                ? 'border-red-200 bg-red-50 text-red-900'
                : 'border-border-medium bg-surface-primary text-text-primary';

          return (
            <div
              key={item.id}
              className={`pointer-events-auto flex items-start gap-2 rounded-md border px-3 py-2.5 shadow-soft text-sm ${colors}`}
              role="status"
            >
              <Icon className="mt-0.5 shrink-0" size={16} />
              <p className="flex-1 leading-snug">{item.message}</p>
              <button
                type="button"
                onClick={() => dismiss(item.id)}
                className="shrink-0 p-0.5 opacity-70 hover:opacity-100"
                aria-label="Dismiss"
              >
                <FiX size={14} />
              </button>
            </div>
          );
        })}
      </div>
    </ToastContext.Provider>
  );
}
