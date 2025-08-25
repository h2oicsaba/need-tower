'use client';

import { useState, FormEvent } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabaseClient';

export default function LoginPage() {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [message, setMessage] = useState('');
  const router = useRouter();

  const handleSubmit = async (e: FormEvent) => {
    e.preventDefault();
    const { error } = await supabase.auth.signInWithPassword({ email, password });
    if (error) {
      setMessage(error.message);
      return;
    }
    setMessage('Logged in');

    // After login, try to upsert any pending profile stored at registration time
    try {
      const raw = localStorage.getItem('pendingProfile');
      if (raw) {
        const payload = JSON.parse(raw);
        const session = (await supabase.auth.getSession()).data.session;
        const userId = session?.user?.id;
        if (userId) {
          await supabase.from('profiles').upsert({ user_id: userId, ...payload });
        }
        localStorage.removeItem('pendingProfile');
      }
    } catch {}

    // Redirect to home (or dashboard)
    router.push('/');
  };

  return (
    <div className="flex h-screen items-center justify-center">
      <form onSubmit={handleSubmit} className="w-full max-w-xs">
        <h1 className="mb-4 text-2xl font-bold">Login</h1>
        {message && <p className="mb-2 text-red-500">{message}</p>}
        <input
          className="mb-2 w-full border p-2"
          type="email"
          placeholder="Email"
          value={email}
          onChange={(e) => setEmail(e.target.value)}
        />
        <input
          className="mb-4 w-full border p-2"
          type="password"
          placeholder="Password"
          value={password}
          onChange={(e) => setPassword(e.target.value)}
        />
        <button className="w-full bg-blue-500 p-2 text-white" type="submit">Login</button>
        <p className="mt-4 text-center">
          No account? <Link href="/register" className="text-blue-500">Register</Link>
        </p>
      </form>
    </div>
  );
}
