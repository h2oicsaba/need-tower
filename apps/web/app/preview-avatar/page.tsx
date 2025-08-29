"use client";

import { useEffect, useState } from "react";

const SOURCES = {
  male: "/avatars/male.comp.glb",
  female: "/avatars/female.comp.glb",
} as const;

type Sex = keyof typeof SOURCES;

export default function PreviewAvatarPage() {
  const [sex, setSex] = useState<Sex>("male");

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

      <model-viewer
        src={SOURCES[sex]}
        camera-controls
        auto-rotate
        autoplay
        exposure="1"
        style={{ width: 320, height: 420 }}
        interaction-prompt="none"
        ar
      />

      <p className="text-xs text-gray-500">
        Tippek: egérrel/ujjal forgatható, a GLB-ket tedd a {" "}
        <code>/apps/web/public/avatars/</code> alá.
      </p>
    </div>
  );
}
