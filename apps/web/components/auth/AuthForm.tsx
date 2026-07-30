'use client'

import { useState } from 'react'
import { supabase } from '@/lib/supabaseClient'
import { useRouter } from 'next/navigation'
import { Button } from '@/components/ui/Button'
import { Input } from '@/components/ui/Input'
import { useAuthStore } from '@/lib/store'
import { hasCompletedProductOnboarding, isProfileComplete } from '@/lib/profile'

interface AuthFormProps {
  view: 'sign-in' | 'sign-up'
}

export function AuthForm({ view }: AuthFormProps) {
  const router = useRouter()
  const [email, setEmail] = useState('')
  const [password, setPassword] = useState('')
  const [error, setError] = useState<string | null>(null)
  const [loading, setLoading] = useState(false)

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault()
    setError(null)
    setLoading(true)

    try {
      if (view === 'sign-up') {
        const { error: signUpError } = await supabase.auth.signUp({
          email,
          password
        })
        if (signUpError) throw signUpError
        router.push('/profile-setup')
      } else {
        const { error: signInError } = await supabase.auth.signInWithPassword({
          email,
          password
        })
        if (signInError) throw signInError

        let tries = 0
        while (!useAuthStore.getState().hasAttemptedProfileFetch && tries < 30) {
          await new Promise((res) => setTimeout(res, 100))
          tries++
        }

        const { profile } = useAuthStore.getState()
        if (!isProfileComplete(profile)) {
          router.replace('/profile-setup')
        } else if (!hasCompletedProductOnboarding()) {
          router.replace('/onboarding/welcome')
        } else {
          router.replace('/dashboard')
        }
      }
    } catch (err) {
      setError(err instanceof Error ? err.message : 'An error occurred')
    } finally {
      setLoading(false)
    }
  }

  return (
    <form onSubmit={handleSubmit} className="space-y-4">
      {error && (
        <div className="bg-red-50 text-red-500 p-3 rounded-md">{error}</div>
      )}
      <div>
        <Input
          type="email"
          placeholder="Email"
          value={email}
          onChange={(e) => setEmail(e.target.value)}
          required
        />
      </div>
      <div>
        <Input
          type="password"
          placeholder="Password"
          value={password}
          onChange={(e) => setPassword(e.target.value)}
          required
        />
      </div>
      <Button type="submit" disabled={loading} className="w-full">
        {loading ? 'Loading...' : view === 'sign-up' ? 'Sign Up' : 'Sign In'}
      </Button>
    </form>
  )
} 