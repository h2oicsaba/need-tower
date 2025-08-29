'use client';

import { useState, FormEvent, useEffect } from 'react';
import Link from 'next/link';
import { supabase } from '@/lib/supabaseClient';

export default function RegisterPage() {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [showPassword, setShowPassword] = useState(false);
  const [firstName, setFirstName] = useState('');
  const [lastName, setLastName] = useState('');
  const [address, setAddress] = useState('');
  const [city, setCity] = useState('');
  const [postalCode, setPostalCode] = useState('');
  const country = 'Hungary';
  const [avatarName, setAvatarName] = useState('');
  const [avatarGender, setAvatarGender] = useState<'boy' | 'girl' | ''>('');
  const [message, setMessage] = useState('');
  const [avatarSrc, setAvatarSrc] = useState<string | null>(null);

  // Load <model-viewer> web component only on client for avatar preview
  useEffect(() => {
    const el = document.createElement('script');
    el.type = 'module';
    el.src = 'https://unpkg.com/@google/model-viewer/dist/model-viewer.min.js';
    document.head.appendChild(el);
    return () => {
      try { document.head.removeChild(el); } catch {}
    };
  }, []);

  // Resolve avatar source with fallback: prefer .comp.glb, then .glb
  useEffect(() => {
    let cancelled = false;
    async function resolve() {
      if (!avatarGender) {
        setAvatarSrc(null);
        return;
      }
      const base = avatarGender === 'boy' ? 'male' : 'female';
      const tryUrls = [`/avatars/${base}.comp.glb`, `/avatars/${base}.glb`];
      for (const url of tryUrls) {
        try {
          const res = await fetch(url, { method: 'HEAD' });
          if (!cancelled && res.ok) {
            setAvatarSrc(url);
            return;
          }
        } catch {}
      }
      if (!cancelled) setAvatarSrc(null);
    }
    resolve();
    return () => { cancelled = true; };
  }, [avatarGender]);

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
      address: address || null,
      city: city || null,
      postal_code: postalCode || null,
      country: country,
      avatar_name: avatarName || null,
      avatar_gender: avatarGender || null,
    } as const;

    if (session?.user) {
      const { error: upsertErr } = await supabase
        .from('profiles')
        .upsert({ user_id: session.user.id, ...profilePayload });
      if (upsertErr) {
        setMessage(upsertErr.message);
        return;
      }
      // Generate unique avatar_handle if avatarName provided
      if (avatarName && avatarName.trim()) {
        await supabase.rpc('generate_avatar_handle', {
          p_user_id: session.user.id,
          p_avatar_name: avatarName.trim(),
        });
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
    <div className="flex min-h-screen items-start justify-center p-4">
      <div className="flex w-full max-w-5xl flex-col gap-6 md:flex-row">
        {/* Bal oszlop: űrlap */}
        <form onSubmit={handleSubmit} className="w-full md:max-w-sm" autoComplete="off">
          <h1 className="mb-4 text-2xl font-bold">Register</h1>
          {message && <p className="mb-2 text-red-500">{message}</p>}

          <div className="mb-2 flex gap-2">
            <input
              className="w-1/2 border p-2"
              type="text"
              placeholder="Vezetéknév*"
              value={lastName}
              onChange={(e) => setLastName(e.target.value)}
              required
            />
            <input
              className="w-1/2 border p-2"
              type="text"
              placeholder="Keresztnév*"
              value={firstName}
              onChange={(e) => setFirstName(e.target.value)}
              required
            />
          </div>

          <label className="mb-1 block text-sm font-medium">Cím*</label>
          <input
            className="mb-2 w-full border p-2"
            type="text"
            placeholder="Utca, házszám"
            value={address}
            onChange={(e) => setAddress(e.target.value)}
            required
          />

          <label className="mb-1 block text-sm font-medium">Város*</label>
          <input
            className="mb-2 w-full border p-2"
            type="text"
            placeholder="Település"
            value={city}
            onChange={(e) => setCity(e.target.value)}
            required
          />

          <label className="mb-1 block text-sm font-medium">Irányítószám*</label>
          <input
            className="mb-2 w-full border p-2"
            type="text"
            placeholder="4 számjegy"
            value={postalCode}
            onChange={(e) => setPostalCode(e.target.value.replace(/[^0-9]/g, '').slice(0, 4))}
            inputMode="numeric"
            pattern="[0-9]{4}"
            required
          />

          <label className="mb-1 block text-sm font-medium">Ország*</label>
          <select
            className="mb-2 w-full border p-2 bg-gray-100 text-gray-700"
            value={country}
            disabled
          >
            <option value="Hungary">Magyarország</option>
          </select>

          <label className="mb-1 block text-sm font-medium">Avatar név</label>
          <input
            className="mb-2 w-full border p-2"
            type="text"
            placeholder="Megjelenített név"
            value={avatarName}
            onChange={(e) => setAvatarName(e.target.value)}
          />

          <label className="mb-1 block text-sm font-medium">Avatar nem</label>
          <select
            className="mb-4 w-full border p-2"
            value={avatarGender}
            onChange={(e) => setAvatarGender(e.target.value as 'boy' | 'girl')}
          >
            <option value="">Válassz avatar nemet</option>
            <option value="boy">Fiú</option>
            <option value="girl">Lány</option>
          </select>

          <label className="mb-1 block text-sm font-medium">Email*</label>
          <input
            className="mb-2 w-full border p-2"
            type="email"
            placeholder="Email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            name="email"
            autoComplete="email"
            required
          />

          <label className="mb-1 block text-sm font-medium">Jelszó*</label>
          <div className="mb-4 flex items-center gap-2">
            <input
              className="w-full border p-2"
              type={showPassword ? 'text' : 'password'}
              placeholder="Password"
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              name="new-password"
              autoComplete="new-password"
              required
            />
            <button
              type="button"
              className="shrink-0 rounded border px-2 py-1 text-sm"
              onClick={() => setShowPassword((v) => !v)}
              aria-label={showPassword ? 'Jelszó elrejtése' : 'Jelszó megjelenítése'}
              title={showPassword ? 'Jelszó elrejtése' : 'Jelszó megjelenítése'}
            >
              {showPassword ? 'Elrejt' : 'Mutat'}
            </button>
          </div>

          <button className="w-full bg-blue-500 p-2 text-white" type="submit">Register</button>
          <p className="mt-4 text-center">
            Already have an account? <Link href="/login" className="text-blue-500">Login</Link>
          </p>
        </form>

        {/* Jobb oszlop: 16:9 avatar előnézet */}
        <div className="flex w-full flex-1 flex-col">
          <div className="mb-2 text-sm text-gray-600">Avatar előnézet</div>
          <div className="w-full rounded border bg-black/5">
            <div
              className="relative w-full touch-none overscroll-contain"
              style={{ aspectRatio: '9 / 16' }}
            >
              {avatarGender ? (
                <model-viewer
                  src={avatarSrc ?? ''}
                  camera-controls
                  auto-rotate
                  autoplay
                  exposure="1"
                  interaction-prompt="none"
                  style={{ width: '100%', height: '100%' }}
                  /* Y-tengelyes forgatás: polar szög rögzítése vízszintes nézetre */
                  min-camera-orbit="auto 90deg auto"
                  max-camera-orbit="auto 90deg auto"
                  /* Pan engedélyezett (alapértelmezés), hogy fejre/cipőre rá lehessen mozdulni zoom után */
                />
              ) : (
                <div className="flex h-full w-full items-center justify-center text-sm text-gray-500">
                  Válassz avatar nemet a bal oldalon…
                </div>
              )}
            </div>
          </div>
          <div className="mt-2 text-xs text-gray-500">
            Tipp: nagyíts rá, majd húzd két ujjal vagy jobb egérgombbal felfelé/lefelé a
            pannoláshoz (arc/láb nézet).
          </div>
        </div>
      </div>
    </div>
  );
}
