"use client";

import { useEffect, useState } from "react";

const SOURCES = {
  male: "/avatars/male.comp.glb",
  female: "/avatars/female.comp.glb",
} as const;

type Sex = keyof typeof SOURCES;

export default function PreviewAvatarPage() {
  const [sex, setSex] = useState<Sex>("male");
  const [avatarSrc, setAvatarSrc] = useState<string | null>(null);

  // Load the web component only on the client
  useEffect(() => {
    // Dynamically import the model-viewer script (no SSR)
    const el = document.createElement("script");
    el.type = "module";
    el.src = "https://unpkg.com/@google/model-viewer/dist/model-viewer.min.js";
    document.head.appendChild(el);
    return () => {
      document.head.removeChild(el);
    };
  }, []);

  // Resolve avatar source with fallback
  useEffect(() => {
    let cancelled = false;
    async function resolve() {
      const base = sex;
      const tryUrls = [
        `/avatars/${base}.comp.glb`,
        `/avatars/${base}.glb`,
      ];
      for (const url of tryUrls) {
        try {
          const res = await fetch(url, { method: "HEAD" });
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
  }, [sex]);

  return (
    <div className="flex min-h-screen flex-col items-center justify-center gap-4 p-4">
      <h1 className="text-xl font-semibold">Avatar Preview</h1>

      <div className="flex items-center gap-2">
        <label className="text-sm">Válassz avatart:</label>
        <select
          className="border p-2"
          value={sex}
          onChange={(e) => setSex(e.target.value as Sex)}
        >
          <option value="male">Férfi</option>
          <option value="female">Nő</option>
        </select>
      </div>
      <div className="w-full max-w-3xl rounded border bg-black/5">
        <div
          className="relative w-full touch-none overscroll-contain"
          style={{ aspectRatio: "16 / 9" }}
        >
          {avatarSrc ? (
            <model-viewer
              src={avatarSrc}
              camera-controls
              auto-rotate
              autoplay
              exposure="1"
              style={{ width: "100%", height: "100%" }}
              interaction-prompt="none"
              /* Lock polar angle to 90deg so rotation is only around Y axis */
              min-camera-orbit="auto 90deg auto"
              max-camera-orbit="auto 90deg auto"
              ar
            />
          ) : (
            <div className="absolute inset-0 flex items-center justify-center text-sm text-gray-500">
              Avatar fájl nem található.
            </div>
          )}
        </div>
      </div>

      <div className="text-xs text-gray-500">
        Tipp: nagyíts rá, majd húzd két ujjal vagy jobb egérgombbal felfelé/lefelé a
        pannoláshoz (arc/láb nézet).
      </div>

      <p className="text-xs text-gray-500">
        Tippek: egérrel/ujjal forgatható, a GLB-ket tedd a {" "}
        <code>/apps/web/public/avatars/</code> alá.
      </p>
    </div>
  );
}
