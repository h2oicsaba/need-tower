#!/usr/bin/env python3
"""
Headless Blender script to convert FBX to GLB/GLTF (binary .glb).

Usage:
  blender -b -P scripts/fbx_to_glb.py -- <input.fbx> <output.glb>

Notes:
- Sets axis to -Z Forward / Y Up for consistency.
- Exports binary glTF (.glb).
"""
import bpy
import sys


def parse_args():
    argv = sys.argv
    if "--" not in argv:
        print("Usage: blender -b -P scripts/fbx_to_glb.py -- <input.fbx> <output.glb>")
        sys.exit(1)
    args = argv[argv.index("--") + 1 :]
    if len(args) < 2:
        print("Usage: blender -b -P scripts/fbx_to_glb.py -- <input.fbx> <output.glb>")
        sys.exit(1)
    return args[0], args[1]


def reset_scene():
    bpy.ops.wm.read_factory_settings(use_empty=True)


def import_fbx(path: str):
    bpy.ops.import_scene.fbx(filepath=path, automatic_bone_orientation=True)


def select_all():
    for obj in bpy.data.objects:
        obj.select_set(True)


def main():
    inp, outp = parse_args()
    print(f"[fbx_to_glb] Input: {inp}\n[fbx_to_glb] Output: {outp}")

    reset_scene()
    import_fbx(inp)
    select_all()

    # Export glTF 2.0 binary (.glb)
    bpy.ops.export_scene.gltf(
        filepath=outp,
        export_format='GLB',
        export_animations=True,
        export_skins=True,
        export_nla_strips=False,
        export_morph=True,
        export_texcoords=True,
        export_normals=True,
        export_materials='EXPORT',
        export_yup=True,
        export_current_frame=False,
    )
    print("[fbx_to_glb] Exported:", outp)


if __name__ == "__main__":
    main()
