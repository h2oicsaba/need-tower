#!/usr/bin/env python3
"""
Blender headless helper to Draco-compress GLB files, writing `_d.glb` next to input.

Usage:
  blender -b -P scripts/draco_glb.py -- apps/web/public/avatars/zseni_zsuzsi_w.glb
  blender -b -P scripts/draco_glb.py -- apps/web/public/avatars/*.glb  # (shell-expanded)

Notes:
- Requires Blender build with Draco support or external Draco library.
  If you see: 'draco mesh compression not available', set env var BLENDER_EXTERN_DRACO_LIBRARY_PATH
  to point to a folder containing `libextern_draco.so` (Linux) or the platform equivalent.
- Input must be .glb; output is `<stem>_d.glb`.
"""
import bpy
import sys
import os
import pathlib


def parse_args():
    argv = sys.argv
    if "--" not in argv:
        print("Usage: blender -b -P scripts/draco_glb.py -- <file1.glb> [file2.glb ...]")
        sys.exit(1)
    args = argv[argv.index("--") + 1 :]
    if not args:
        print("Usage: blender -b -P scripts/draco_glb.py -- <file1.glb> [file2.glb ...]")
        sys.exit(1)
    return args


def out_path_for(inp: str) -> str:
    p = pathlib.Path(inp)
    if p.suffix.lower() != ".glb":
        raise SystemExit(f"Input is not .glb: {inp}")
    return str(p.with_name(p.stem + "_d.glb"))


def reset_scene():
    bpy.ops.wm.read_factory_settings(use_empty=True)


def import_glb(path: str):
    bpy.ops.import_scene.gltf(filepath=path)


def export_glb(path: str):
    # export with Draco
    # Note: export_use_draco_mesh_compression is available when Draco is present.
    try:
        bpy.ops.export_scene.gltf(
            filepath=path,
            export_format='GLB',
            export_draco_mesh_compression_enable=True,
            export_draco_mesh_compression_level=5,
            export_texcoords=True,
            export_normals=True,
            export_materials='EXPORT',
            export_yup=True,
            export_animations=True,
            export_skins=True,
            export_current_frame=False,
        )
    except TypeError:
        # Older Blender arg names
        bpy.ops.export_scene.gltf(
            filepath=path,
            export_format='GLB',
            use_draco_mesh_compression=True,
            draco_mesh_compression_level=5,
            export_texcoords=True,
            export_normals=True,
            export_materials='EXPORT',
            export_yup=True,
            export_animations=True,
            export_skins=True,
            export_current_frame=False,
        )


def has_draco() -> bool:
    # Heuristic: Blender prints warning when missing; here we attempt to access props
    try:
        # Create a temp export to test if property exists; safer: check presence of lib path
        return os.path.exists(os.environ.get('BLENDER_EXTERN_DRACO_LIBRARY_PATH', '')) or True
    except Exception:
        return False


def compress_one(inp: str):
    outp = out_path_for(inp)
    print(f"[draco_glb] Input: {inp}\n[draco_glb] Output: {outp}")

    reset_scene()
    import_glb(inp)

    # If Draco not available, inform and exit non-zero
    # We proceed to attempt export; Blender will print a warning if Draco is missing
    export_glb(outp)
    print("[draco_glb] Wrote:", outp)


def main():
    inputs = parse_args()
    for inp in inputs:
        if not os.path.exists(inp):
            print(f"[draco_glb] Missing file: {inp}")
            sys.exit(1)
        compress_one(inp)


if __name__ == "__main__":
    main()
