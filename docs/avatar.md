# Avatar pipeline (Need Tower)

This document summarizes the workflow, tools, and commands we use for avatar models and animations.

## Files and directories

- Source GLB models: `apps/web/public/avatars/male.glb`, `apps/web/public/avatars/female.glb`
- Draco-compressed: `apps/web/public/avatars/male.draco.glb`, `apps/web/public/avatars/female.draco.glb`
- Conversion script: `scripts/glb_to_fbx.py`
- Frontend usage: `apps/web/app/register/page.tsx`

## Tooling overview

- Blender (GUI or headless): best fidelity/control for GLB↔FBX, rig options, transforms.
- Assimp (CLI `assimp export`): quick GLB→FBX conversion (good for mesh-only Mixamo uploads).
- FBX2glTF (CLI `fbx2gltf`): converts FBX → GLB/GLTF without Blender.
- glTF-Transform (CLI `gltf-transform`): validation, optimization, Draco, KTX2, inspection.
- Mixamo (web): auto-rig + animation clips (Idle, Wave, etc.).
- <model-viewer> (web component): renders GLB in the app, supports Draco, Meshopt.

## Typical pipelines

### 1) Prepare models for Mixamo (GLB → FBX)

Option A (recommended if Blender available):
- Headless script (mesh-only FBX for stable Mixamo auto-rig):
  ```bash
  blender -b -P scripts/glb_to_fbx.py -- apps/web/public/avatars/male.glb   apps/web/public/avatars/male.mixamo.meshonly.fbx --mesh-only
  blender -b -P scripts/glb_to_fbx.py -- apps/web/public/avatars/female.glb apps/web/public/avatars/female.mixamo.meshonly.fbx --mesh-only
  ```

Option B (no Blender):
- Assimp quick export:
  ```bash
  sudo apt install -y assimp-utils
  assimp export apps/web/public/avatars/male.glb   apps/web/public/avatars/male.mixamo.fbx   -f fbx
  assimp export apps/web/public/avatars/female.glb apps/web/public/avatars/female.mixamo.fbx -f fbx
  ```

Notes:
- Mesh-only is ideal for Mixamo auto-rig.
- If you keep an existing rig, Mixamo may re-target or reject — mesh-only avoids this.

### 2) Mixamo steps (web)

1. Upload the FBX (mesh-only recommended).
2. Auto-rig wizard (chin, wrists, elbows, knees, groin markers) → Next.
3. Pick animations:
   - Idle (looping), Wave (non-loop, In Place on).
4. Download each clip as FBX (With Skin), 30 fps.

### 3) FBX → GLB (per-clip)

```bash
npx -y fbx2gltf -i male_idle.fbx -o male_idle.glb --binary
npx -y fbx2gltf -i male_wave.fbx -o male_wave.glb --binary
```

### 4) Merge multiple clips into one GLB

Goal: `male_animated.glb` containing `Idle` and `Wave` animations.

Approach:
- Use glTF-Transform (scripted) to combine animations referencing the same armature/mesh, or do it in Blender and export once. (We keep scripts handy when clips share skeleton.)

### 5) Compress geometry with Draco

```bash
npx -y @gltf-transform/cli draco male_animated.glb apps/web/public/avatars/male_animated.draco.glb --encode-speed 5 --decode-speed 5
```

Draco reduces network size; <model-viewer> decodes it client-side.

### 6) Optional: Texture compression with KTX2 (BasisU)

If the model uses textures, compress them to KTX2 for faster loads:
- With glTF-Transform: `gltf-transform etc1s|uastc` followed by `optimize`.

## Frontend usage (<model-viewer>)

- Avatar preview (register page):
  ```html
  <model-viewer
    src="/avatars/male.draco.glb"
    camera-controls
    auto-rotate
    autoplay
    exposure="1"
    interaction-prompt="none"
    disable-pan
    style="width: 280px; height: 360px;"
    min-camera-orbit="auto 90deg auto"
    max-camera-orbit="auto 90deg auto"
  ></model-viewer>
  ```

- Animation control example:
  ```js
  // Default
  mv.animationName = 'Idle';
  // On button click
  mv.animationName = 'Wave';
  mv.addEventListener('finished', () => mv.animationName = 'Idle');
  ```

- Audio (Hello):
  ```js
  new Audio('/hello.mp3').play(); // requires user gesture in browsers
  // or Web Speech API:
  speechSynthesis.speak(new SpeechSynthesisUtterance('Hello!'));
  ```

## Validation & troubleshooting

- Validate/inspect GLB:
  ```bash
  npx -y @gltf-transform/cli inspect path/to/model.glb
  npx -y @gltf-transform/cli validate path/to/model.glb
  ```
- If Meshopt-compressed models fail to render, ensure Meshopt decoder is available. Prefer Draco for simpler setup.
- If avatar is invisible:
  - Check console/network for decoder errors.
  - Verify `200 OK` and `model/gltf-binary` content-type.
  - Ensure reasonable camera orbit and scale.

## Blender vs Assimp conversion (GLB→FBX)

- Blender:
  - Pros: highest fidelity, control over axes, scale, armature, smoothing, ability to fix issues before export.
  - Cons: heavier dependency; scripting/CLI setup needed for headless.
- Assimp:
  - Pros: fast, no GUI; good for mesh-only FBX to feed Mixamo.
  - Cons: less control, potential differences in materials/armature fidelity.

Recommendation: Use Blender (headless script) when possible; use Assimp for quick mesh-only conversions.
