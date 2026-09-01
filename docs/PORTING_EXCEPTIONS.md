# Porting exceptions

The upstream submodule is unchanged. All exceptions below live in maintained compatibility code or deterministic generated output.

1. **Web vertex fields.** `tools/shader-build/generate-web-appdata.ts` copies upstream `lil_common_appdata.hlsl` into a generated build artifact and injects Three-compatible `skinIndex` and `skinWeight` fields. `skinIndex` is a float attribute because Three supplies integer component buffers through its normal float attribute path; the compatibility function converts it to `uint4` before bone lookup.
2. **Scene-light mutation.** Upstream `LIL_FORCE_SCENE_LIGHT` can assign material globals, which Vulkan uniform blocks forbid. Wrappers replace that macro with a no-op and `LilToonRendererAdapter` applies the equivalent force-scene-light values before upload.
3. **Matrix convention.** Cross-compiled GLSL retains HLSL row-vector expressions. Runtime object, camera, bind, light-shadow matrices are transposed during upload. This is an ABI rule, not a vendor edit.
4. **WebGL varying names.** SPIRV-Cross names separate stage interfaces `out_var_*` and `in_var_*`. ESSL 3.00 links varyings by name, so the generator deterministically renames fragment inputs to their vertex output names. A compiler test verifies every pair.
5. **GLSL version placement.** Standalone generated files keep `#version 300 es` for glslang. Three prepends material defines, so `LilToonMaterial` removes that first directive and sets `glslVersion = GLSL3`, allowing Three to place it first.
6. **Shadow ABI.** Unity shadow macros are replaced by one Three directional-light matrix and RGBA-packed shadow texture with 2×2 PCF. Cascades, VSM, shadow radius/intensity, and normal-bias parity are not reproduced.
7. **Lighting ABI.** Unity/URP/HDRP lighting is represented by the first visible Three `DirectionalLight` plus ambient/hemisphere color and a simple SH constant term. Additional lights, lightmaps, probes, and Unity attenuation modes use neutral fallbacks.
8. **Environment ABI.** A public `THREE.CubeTexture` is sampled directly. The adapter does not access private PMREM/equirect renderer state and therefore cannot reproduce Unity reflection-probe blending.
9. **Texture safety.** Absent 2D resources receive semantic neutral pixels. Cube samplers receive Three's neutral cube binding; a non-`CubeTexture` supplied to a cube lilToon property is rejected with a warning to avoid a WebGL `INVALID_OPERATION`.
10. **Deformation.** Bone matrices use Three's public bone texture and bind matrices. Morph attributes are packed into a generated `DataArrayTexture`; only positions/normals and 64 targets are supported.
11. **Pass architecture.** Outlines are a package-owned child draw and shadow casting uses Three depth/distance materials. Refraction, fur, and gem are diagnosed as unsupported instead of approximated inside the forward pass.
12. **Unsupported platform facilities.** Instancing, stereo/WebXR, VRC Light Volumes, AudioLink, tessellation, Unity grab passes, and pipeline-specific editor facilities are not emulated.

`shader/patches/` remains free of vendor patches. If a future upgrade appears to require one, first determine whether a wrapper, compatibility definition, or generated transform can express the change, then document the exception and add a regression test.
