#!/usr/bin/env python3
"""
Headless Blender script to convert GLB/GLTF to FBX for Mixamo upload.

Usage:
  blender -b -P scripts/glb_to_fbx.py -- <input.glb> <output.fbx> [--mesh-only]

Notes:
- Applies transforms and exports with -Z Forward / Y Up (Mixamo friendly).
- Disables leaf bones. Optionally exports mesh-only (no armature) for reliable auto-rig.
"""
import bpy
import sys


def parse_args():
    argv = sys.argv
    if "--" not in argv:
        print("Usage: blender -b -P scripts/glb_to_fbx.py -- <input.glb> <output.fbx> [--mesh-only]")
        sys.exit(1)
    args = argv[argv.index("--") + 1 :]
    mesh_only = False
    if len(args) < 2:
        print("Usage: blender -b -P scripts/glb_to_fbx.py -- <input.glb> <output.fbx> [--mesh-only]")
        sys.exit(1)
    inp = args[0]
    outp = args[1]
    if len(args) > 2 and args[2] == "--mesh-only":
        mesh_only = True
    return inp, outp, mesh_only


def reset_scene():
    bpy.ops.wm.read_factory_settings(use_empty=True)


def import_glb(path: str):
    # Import GLB/GLTF
    bpy.ops.import_scene.gltf(filepath=path)


def select_all():
    for obj in bpy.data.objects:
        obj.select_set(True)


def deselect_all():
    for obj in bpy.data.objects:
        obj.select_set(False)


def select_mesh_only():
    deselect_all()
    for obj in bpy.data.objects:
        if obj.type == 'MESH':
            obj.select_set(True)


def main():
    inp, outp, mesh_only = parse_args()
    print(f"[glb_to_fbx] Input: {inp}\n[glb_to_fbx] Output: {outp}\n[glb_to_fbx] Mesh-only: {mesh_only}")

    reset_scene()
    import_glb(inp)

    if mesh_only:
        select_mesh_only()
    else:
        select_all()

    # FBX export settings tuned for Mixamo
    bpy.ops.export_scene.fbx(
        filepath=outp,
        use_selection=True,
        apply_unit_scale=True,
        apply_scale_options='FBX_SCALE_UNITS',
        axis_forward='-Z',
        axis_up='Y',
        add_leaf_bones=False,
        use_armature_deform_only=True,
        mesh_smooth_type='FACE',
        bake_anim=False,  # We're not baking here; Mixamo will provide anims later
    )
    print("[glb_to_fbx] Exported:", outp)


if __name__ == "__main__":
    main()
