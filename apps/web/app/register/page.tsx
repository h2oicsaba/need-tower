'use client';

import { useState, FormEvent, useEffect, useRef } from 'react';
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
  // Új: karakter választás (4 fix opció)
  type CharacterKey = '' | 'okos_toni' | 'bolcs_elemer' | 'zseni_zsuzsi' | 'tudos_tundi';
  const [character, setCharacter] = useState<CharacterKey>('');
  // Info overlay
  const [showInfo, setShowInfo] = useState(false);
  const [message, setMessage] = useState('');
  const modelViewerRef = useRef<any>(null);
  const [girlSrc, setGirlSrc] = useState<string>('/avatars/female.glb');

  const playWave = () => {
    const mv = modelViewerRef.current as any;
    if (!mv) return;
    try {
      if (avatarGender === 'girl') {
        // Swap to waving clip source, then play and revert when finished
        const onLoaded = () => {
          // play once (disable looping)
          try { mv.animationLoop = false; } catch {}
          try { mv.currentTime = 0; } catch {}
          try { mv.play?.(); } catch {}
        };
        const onFinished = () => {
          setGirlSrc('/avatars/female.glb');
          try { mv.animationLoop = true; } catch {}
          try {
            mv.removeEventListener?.('finished', onFinished);
          } catch {}
        };
        setGirlSrc('/avatars/female_waving.glb');
        // Attach listeners once the new src loads
        mv.addEventListener?.('load', onLoaded, { once: true });
        mv.addEventListener?.('finished', onFinished, { once: true });
      } else {
        // Boy: just ensure restart
        if (typeof mv.pause === 'function') mv.pause();
        try { mv.currentTime = 0; } catch {}
        if (typeof mv.play === 'function') mv.play();
      }
    } catch {}
  };

  // Ensure girl does not autoplay: pause once the model loads/changes
  useEffect(() => {
    const mv = modelViewerRef.current as any;
    if (!mv) return;
    if (avatarGender === 'girl') {
      // When element upgrades/loads, pause to avoid any default playback
      const pauseNow = () => { try { mv.pause?.(); } catch {} };
      pauseNow();
      mv.addEventListener?.('load', pauseNow, { once: true });
      return () => {
        try { mv.removeEventListener?.('load', pauseNow); } catch {}
      };
    }
  }, [avatarGender]);

  // Reset girl's default src when gender changes to girl
  useEffect(() => {
    if (avatarGender === 'girl') setGirlSrc('/avatars/female.glb');
  }, [avatarGender]);

  // Karakter -> avatarGender származtatás (csak megjelenítéshez és payloadhoz)
  useEffect(() => {
    if (!character) {
      setAvatarGender('');
      return;
    }
    const female = character === 'zseni_zsuzsi' || character === 'tudos_tundi';
    setAvatarGender(female ? 'girl' : 'boy');
  }, [character]);

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
      character_key: character || null,
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
    <div className="flex min-h-screen items-center justify-center p-4">
      <form onSubmit={handleSubmit} className="w-full max-w-3xl" autoComplete="off">
        <div className="mb-4 flex items-center justify-between">
          <h1 className="text-2xl font-bold">Regisztráció</h1>
          <button
            type="button"
            className="text-sm text-blue-600 hover:underline"
            onClick={() => setShowInfo(true)}
          >
            Magyarázat a regisztrációhoz
          </button>
        </div>
        {message && <p className="mb-4 text-red-500">{message}</p>}
        <div className="grid grid-cols-1 gap-6 md:grid-cols-2">
          {/* Bal oszlop: Neved a játékban, karakter választás, előnézet */}
          <div>
            <label className="mb-1 block text-sm font-medium">Neved a játékban*</label>
            <input
              className="mb-2 w-full border p-2"
              type="text"
              placeholder="Megjelenített név"
              value={avatarName}
              onChange={(e) => setAvatarName(e.target.value)}
              required
            />
            <label className="mb-1 block text-sm font-medium">Válassz karaktert*</label>
            <select
              className="mb-2 w-full border p-2"
              value={character}
              onChange={(e) => setCharacter(e.target.value as CharacterKey)}
              required
            >
              <option value="">-- Válassz --</option>
              <option value="okos_toni">„Okos Tóni”</option>
              <option value="bolcs_elemer">„Bölcs Elemér”</option>
              <option value="zseni_zsuzsi">„Zseni Zsuzsi”</option>
              <option value="tudos_tundi">„Tudós Tündi”</option>
            </select>
            {avatarGender && (
              <div className="mt-3">
                <div className="flex flex-col items-center gap-2">
                  <model-viewer
                    ref={modelViewerRef}
                    src={character ? `/avatars/${character}.glb` : (avatarGender === 'boy' ? '/avatars/male.draco.glb' : girlSrc)}
                    camera-controls
                    auto-rotate
                    // Base character GLBs: no autoplay by default
                    exposure="1"
                    interaction-prompt="none"
                    disable-pan
                    style={{ width: 280, height: 360 }}
                    /* Lock polar angle to 90deg so it only yaws (Y-axis), no tilting */
                    min-camera-orbit="auto 90deg auto"
                    max-camera-orbit="auto 90deg auto"
                  />
                  {avatarGender === 'girl' && (
                    <button
                      type="button"
                      onClick={playWave}
                      className="rounded bg-emerald-600 px-3 py-1 text-white hover:bg-emerald-700"
                      aria-label="Helló animáció lejátszása"
                      title="Helló"
                    >
                      Helló
                    </button>
                  )}
                </div>
              </div>
            )}
          </div>

          {/* Jobb oszlop: kötelező személyes mezők + belépési adatok */}
          <div>
            <label className="mb-1 block text-sm font-medium">Név</label>
            <div className="mb-2 flex gap-2">
              <input
                className="w-1/2 border p-2"
                type="text"
                placeholder="Vezetéknév"
                value={lastName}
                onChange={(e) => setLastName(e.target.value)}
              />
              <input
                className="w-1/2 border p-2"
                type="text"
                placeholder="Keresztnév"
                value={firstName}
                onChange={(e) => setFirstName(e.target.value)}
              />
            </div>
            <label className="mb-1 block text-sm font-medium">Cím</label>
            <input
              className="mb-2 w-full border p-2"
              type="text"
              placeholder="Utca, házszám"
              value={address}
              onChange={(e) => setAddress(e.target.value)}
            />
            <label className="mb-1 block text-sm font-medium">Település*</label>
            <input
              className="mb-2 w-full border p-2"
              type="text"
              placeholder="Város – község – falu"
              value={city}
              onChange={(e) => setCity(e.target.value)}
              required
            />
            <label className="mb-1 block text-sm font-medium">Irányítószám</label>
            <input
              className="mb-2 w-full border p-2"
              type="text"
              placeholder="4 számjegy"
              value={postalCode}
              onChange={(e) => setPostalCode(e.target.value.replace(/[^0-9]/g, '').slice(0, 4))}
              inputMode="numeric"
              pattern="[0-9]{4}"
            />
            <label className="mb-1 block text-sm font-medium">Ország*</label>
            <select
              className="mb-2 w-full border p-2 bg-gray-100 text-gray-700"
              value={country}
              disabled
            >
              <option value="Hungary">Magyarország</option>
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
          </div>
        </div>
        <button className="mt-2 w-full bg-blue-500 p-2 text-white" type="submit">Regisztráció</button>
        <p className="mt-4 text-center">
          Már van fiókod? <Link href="/login" className="text-blue-500">Bejelentkezés</Link>
        </p>
        {showInfo && (
          <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/40 backdrop-blur-sm p-4">
            <div className="max-h-[80vh] w-full max-w-2xl overflow-auto rounded-lg bg-white p-5 shadow-xl">
              <div className="mb-3 flex items-center justify-between">
                <h2 className="text-lg font-semibold">Magyarázat a regisztrációhoz</h2>
                <button
                  type="button"
                  className="rounded px-2 py-1 text-sm text-gray-600 hover:bg-gray-100"
                  onClick={() => setShowInfo(false)}
                  aria-label="Bezárás"
                >
                  Bezár
                </button>
              </div>
              <div className="space-y-3 text-sm leading-6 text-gray-800">
                <div>
                  <strong>1. Kötelező adatok</strong>
                  <p>
                    Az egyszerű regisztráció érdekében csak egy becenevet, az email címedet/jelszavadat kell megadnod, majd egy karaktert kell választanod–
                    a település is fontos, hogy barátokra találj, mert ezt követjük a felületen. Egyértelművé tesszük, hogy nem adatgyűjtés történik
                    (cím és teljes név), ezeket majd csak akkor kell megadnod, ha sikerült elsőként feljutnod a toronyba és postáznunk kell neked a terméket.
                    Addig anonim maradhatsz. A GDPR törvényeket tiszteletben tartva később nyilatkozhatsz, hogy szeretnél-e megjelenni egy fotóval az átvett
                    nyereménnyel. Ez azért fontos, hogy mindenki lássa: nem kamu az oldal; bárki, aki ügyes stratégiát választ és elsőként jut fel a toronyba,
                    megilleti az értékes nyeremény. A családneved ekkor is titkos marad. Példa: A. Károly (karcsi_4), Bajáról, 2025. dec. 13-án megnyert egy iPhone 14-et.
                    A részvétel a nyertesek listájában nem kötelező, de további 30 NEED-del honoráljuk.
                  </p>
                </div>
                <div>
                  <strong>2. Bankkártya adatok</strong>
                  <p>
                    Nem gyűjtünk és nem tárolunk kártyaadatokat. Modern banki technológiát használunk (pl. QR-kódos vagy linkes jóváhagyás),
                    ahol a felhasználó a saját, publikusnak tekinthető bankszámlaszámára küldött beszedési megbízást fogadja el vagy utasítja el.
                    Így a befizetésről a felhasználó dönt, anélkül hogy érzékeny adatot adna meg.
                  </p>
                </div>
                <div>
                  <strong>Név egybeesés</strong>
                  <p>
                    Előre is megértést kérünk minden „Okos Tamás”, „Bölcs Elemér”,
                    „Zseni Zsuzsa” vagy „Tudós Tünde” nevű játékosunktól. A karakterek nevét idézőjelbe tettük, mert nem célunk valódi nevekkel viccelődni.
                    Egy esetleges névegyezés miatti kellemetlenséget a rendszer figyel és további kompenzációt nyújt nyeremény esetén. 30 NEED-et ajándékozunk.
                  </p>
                </div>
              </div>
            </div>
          </div>
        )}
      </form>
    </div>
  );
}
