'use client';

import { useState, FormEvent } from 'react';
import Link from 'next/link';
import { supabase } from '@/lib/supabaseClient';

export default function RegisterPage() {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [firstName, setFirstName] = useState('');
  const [lastName, setLastName] = useState('');
  const [username, setUsername] = useState('');
  const [address, setAddress] = useState('');
  const [city, setCity] = useState('');
  const [message, setMessage] = useState('');

  const handleSubmit = async (e: FormEvent) => {
    e.preventDefault();
    const { data, error } = await supabase.auth.signUp({ email, password });
    if (error) {
      setMessage(error.message);
      return;
    }

    // If we already have a session (depends on email confirmation settings), upsert profile now
    const session = (await supabase.auth.getSession()).data.session;
    const profilePayload = {
      first_name: firstName || null,
      last_name: lastName || null,
      username: username || null,
      address: address || null,
      city: city || null,
    } as const;

    if (session?.user) {
      const { error: upsertErr } = await supabase
        .from('profiles')
        .upsert({ user_id: session.user.id, ...profilePayload });
      if (upsertErr) {
        setMessage(`Registered, but profile save failed: ${upsertErr.message}`);
        return;
      }
      setMessage('Registered and profile saved. You can continue.');
    } else {
      // Store pending profile data to complete after first login
      try {
        localStorage.setItem('pendingProfile', JSON.stringify(profilePayload));
      } catch {}
      setMessage('Regisztráció sikeres. Erősítsd meg az e-mailt, majd bejelentkezés után mentjük a profilod.');
    }
  };

  return (
    <div className="flex h-screen items-center justify-center">
      <form onSubmit={handleSubmit} className="w-full max-w-xs">
        <h1 className="mb-4 text-2xl font-bold">Register</h1>
        {message && <p className="mb-2 text-red-500">{message}</p>}
        <div className="mb-2 flex gap-2">
          <input
            className="w-1/2 border p-2"
            type="text"
            placeholder="Keresztnév"
            value={firstName}
            onChange={(e) => setFirstName(e.target.value)}
          />
          <input
            className="w-1/2 border p-2"
            type="text"
            placeholder="Vezetéknév"
            value={lastName}
            onChange={(e) => setLastName(e.target.value)}
          />
        </div>
        <input
          className="mb-2 w-full border p-2"
          type="text"
          placeholder="Felhasználónév"
          value={username}
          onChange={(e) => setUsername(e.target.value)}
        />
        <input
          className="mb-2 w-full border p-2"
          type="text"
          placeholder="Cím"
          value={address}
          onChange={(e) => setAddress(e.target.value)}
        />
        <input
          className="mb-2 w-full border p-2"
          type="text"
          placeholder="Város"
          value={city}
          onChange={(e) => setCity(e.target.value)}
        />
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
        <button className="w-full bg-blue-500 p-2 text-white" type="submit">Register</button>
        <p className="mt-4 text-center">
          Already have an account? <Link href="/login" className="text-blue-500">Login</Link>
        </p>
      </form>
    </div>
  );
}
