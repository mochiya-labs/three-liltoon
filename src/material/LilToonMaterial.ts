import {
  BackSide,
  Color,
  GLSL3,
  Matrix4,
  RawShaderMaterial,
  Vector2,
  Vector3,
  Vector4,
  type BufferGeometry,
  type Camera,
  type Group,
  type IUniform,
  type Mesh,
  type Object3D,
  type Scene,
  type Texture,
  type WebGLRenderer,
} from "three";
import { LILTOON_DEFAULTS } from "../generated/defaults.js";
import { LILTOON_UPSTREAM_DESCRIPTION } from "../generated/compatibility.js";
import {
  createGlobalUniforms,
  setGlobalProperty,
  updateObjectCameraUniforms,
  type LilToonGlobalUniforms,
} from "../renderer/LilToonUniformBinder.js";
import type { LilToonRendererAdapter } from "../renderer/LilToonRendererAdapter.js";
import { LilToonMorphAdapter } from "../renderer/LilToonMorphAdapter.js";
import { getLilToonShaderProgram, getOutlineShaderProgram } from "../shader/ShaderProgramLibrary.js";
import { assertSupportedMaterial } from "../utils/diagnostics.js";
import { applyLilToonRenderState } from "../utils/renderState.js";
import { getNeutralTexture, normalizeLilToonTexture } from "../utils/texture.js";
import { warnLilToon } from "../utils/diagnostics.js";
import { detectLilToonFeatures, type LilToonFeatureSet } from "./LilToonFeatureSet.js";
import type {
  LilToonMaterialParameters,
  LilToonRenderMode,
  LilToonScalarOrVector,
} from "./LilToonMaterialParameters.js";
import type { SerializedLilToonMaterial } from "./LilToonMaterialState.js";
import { LILTOON_GLTF_SPEC_VERSION } from "../loaders/types.js";

function copyValue(value: LilToonScalarOrVector): LilToonScalarOrVector {
  if (Array.isArray(value)) return [...value];
  if (value instanceof Color || value instanceof Vector2 || value instanceof Vector3 || value instanceof Vector4) {
    return value.clone();
  }
  return value;
}

function propertyDefaults(): Record<string, LilToonScalarOrVector> {
  const defaults: Record<string, LilToonScalarOrVector> = {};
  for (const [name, value] of Object.entries(LILTOON_DEFAULTS)) {
    if (typeof value === "number" || Array.isArray(value)) defaults[name] = Array.isArray(value) ? [...value] : value;
  }
  return defaults;
}

function textureDefault(property: string): string {
  const value = (LILTOON_DEFAULTS as Record<string, unknown>)[property];
  if (typeof value === "object" && value && "texture" in value) return String((value as { texture: string }).texture);
  return "white";
}

const morphAdapter = new LilToonMorphAdapter();

export class LilToonMaterial extends RawShaderMaterial {
  readonly isLilToonMaterial = true;
  readonly lilToonProperties: Record<string, LilToonScalarOrVector>;
  readonly lilToonTextures: Record<string, Texture | null> = {};
  globalUniforms: LilToonGlobalUniforms;
  renderMode: LilToonRenderMode;
  pass: "forward" | "outline";
  featureSet: LilToonFeatureSet;
  rendererAdapter?: LilToonRendererAdapter;
  readonly #samplerBindings: Map<string, string>;
  readonly #cubeSamplers: Set<string>;
  readonly #startedAt = performance.now();

  constructor(parameters: LilToonMaterialParameters = {}) {
    const renderMode = parameters.renderMode ?? "opaque";
    const pass = parameters.pass ?? "forward";
    const program = pass === "outline" ? getOutlineShaderProgram() : getLilToonShaderProgram(renderMode);
    const globalUniforms = createGlobalUniforms(program.vertexShader, program.fragmentShader);
    const uniforms: Record<string, IUniform> = { _Globals: { value: globalUniforms } };
    const cubeSamplers = new Set(
      [...`${program.vertexShader}\n${program.fragmentShader}`.matchAll(/uniform\s+(?:\w+\s+)?samplerCube\s+([A-Za-z_][A-Za-z0-9_]*)\s*;/g)]
        .map((match) => match[1]!),
    );
    for (const [uniformName, property] of program.samplerBindings) {
      uniforms[uniformName] = {
        value: property.startsWith("__") || cubeSamplers.has(uniformName)
          ? null
          : getNeutralTexture(textureDefault(property)),
      };
    }
    super({
      name: parameters.name ?? `lilToon ${pass} ${renderMode}`,
      // Three owns the final #version placement because it prepends material
      // defines even for RawShaderMaterial. Generated artifacts retain their
      // standalone directive for offline validation.
      vertexShader: program.vertexShader.replace(/^#version 300 es\s*/, ""),
      fragmentShader: program.fragmentShader.replace(/^#version 300 es\s*/, ""),
      glslVersion: GLSL3,
      uniforms,
      lights: false,
      fog: false,
    });
    this.renderMode = renderMode;
    this.pass = pass;
    this.globalUniforms = globalUniforms;
    this.#samplerBindings = program.samplerBindings;
    this.#cubeSamplers = cubeSamplers;
    this.lilToonProperties = propertyDefaults();
    if (renderMode === "transparent") {
      this.lilToonProperties._ZWrite = 0;
      this.lilToonProperties._SrcBlend = 5;
      this.lilToonProperties._DstBlend = 10;
      this.lilToonProperties._SrcBlendAlpha = 1;
      this.lilToonProperties._DstBlendAlpha = 10;
    }
    for (const [name, value] of Object.entries(parameters.properties ?? {})) {
      this.lilToonProperties[name] = copyValue(value);
      setGlobalProperty(this.globalUniforms, name, value);
    }
    for (const [name, value] of Object.entries(parameters.textures ?? {})) this.setTexture(name, value);
    assertSupportedMaterial(this.lilToonProperties);
    this.featureSet = detectLilToonFeatures(this.lilToonProperties);
    applyLilToonRenderState(this, renderMode, this.lilToonProperties);
    if (pass === "outline") {
      this.side = BackSide;
      this.transparent = false;
      this.depthWrite = true;
    }
    this.defaultAttributeValues = {
      ...this.defaultAttributeValues,
      uv1: [0, 0],
      uv2: [0, 0],
      uv3: [0, 0],
      tangent: [1, 0, 0, 1],
      skinIndex: [0, 0, 0, 0],
      skinWeight: [1, 0, 0, 0],
    } as typeof this.defaultAttributeValues;
    this.onBeforeRender = (
      renderer: WebGLRenderer,
      scene: Scene,
      camera: Camera,
      _geometry: BufferGeometry,
      object: Object3D,
      _group: Group,
    ) => {
      const elapsed = (performance.now() - this.#startedAt) / 1000;
      updateObjectCameraUniforms(this.globalUniforms, renderer, camera, object, elapsed);
      this.rendererAdapter?.prepareMaterial(this, renderer, scene, camera, object, elapsed);
      this.updateDeformationUniforms(object, renderer);
    };
  }

  setProperty(name: string, value: LilToonScalarOrVector): this {
    this.lilToonProperties[name] = copyValue(value);
    setGlobalProperty(this.globalUniforms, name, value);
    this.featureSet = detectLilToonFeatures(this.lilToonProperties);
    if (/(_Cull|_ZWrite|_ZTest|_Blend|_Stencil|_Offset|_ColorMask|_AlphaToMask)/.test(name)) {
      applyLilToonRenderState(this, this.renderMode, this.lilToonProperties);
    }
    return this;
  }

  getProperty<T extends LilToonScalarOrVector = LilToonScalarOrVector>(name: string): T | undefined {
    return this.lilToonProperties[name] as T | undefined;
  }

  toLilToonJSON(
    resolveTexture: (texture: Texture, property: string) => string | number | null = () => null,
  ): SerializedLilToonMaterial {
    const properties = Object.fromEntries(
      Object.entries(this.lilToonProperties).map(([name, value]) => [name, copyValue(value)]),
    );
    const textures = Object.fromEntries(
      Object.entries(this.lilToonTextures).map(([name, texture]) => [
        name,
        texture ? resolveTexture(texture, name) : null,
      ]),
    );
    return {
      specVersion: LILTOON_GLTF_SPEC_VERSION,
      lilToonVersion: LILTOON_UPSTREAM_DESCRIPTION,
      renderMode: this.renderMode,
      properties,
      textures,
    };
  }

  setTexture(name: string, texture: Texture | null): this {
    const normalized = texture ? normalizeLilToonTexture(name, texture) : null;
    this.lilToonTextures[name] = normalized;
    for (const [uniformName, property] of this.#samplerBindings) {
      if (property !== name) continue;
      if (this.#cubeSamplers.has(uniformName)) {
        if (normalized && !(normalized as Texture & { isCubeTexture?: boolean }).isCubeTexture) {
          warnLilToon(`${name} requires a THREE.CubeTexture; the incompatible texture was ignored.`);
        }
        this.uniforms[uniformName]!.value = (normalized as Texture & { isCubeTexture?: boolean })?.isCubeTexture
          ? normalized
          : null;
      } else {
        this.uniforms[uniformName]!.value = normalized ?? getNeutralTexture(textureDefault(name));
      }
    }
    return this;
  }

  setRendererAdapter(adapter: LilToonRendererAdapter | undefined): this {
    this.rendererAdapter = adapter;
    return this;
  }

  override copy(source: LilToonMaterial): this {
    super.copy(source);
    this.renderMode = source.renderMode;
    this.pass = source.pass;

    this.globalUniforms = createGlobalUniforms(source.vertexShader, source.fragmentShader);
    this.uniforms._Globals = { value: this.globalUniforms };

    for (const name of Object.keys(this.lilToonProperties)) delete this.lilToonProperties[name];
    for (const [name, value] of Object.entries(source.lilToonProperties)) {
      this.lilToonProperties[name] = copyValue(value);
      setGlobalProperty(this.globalUniforms, name, value);
    }

    for (const name of Object.keys(this.lilToonTextures)) delete this.lilToonTextures[name];
    Object.assign(this.lilToonTextures, source.lilToonTextures);

    this.#samplerBindings.clear();
    for (const [uniformName, property] of source.#samplerBindings) {
      this.#samplerBindings.set(uniformName, property);
    }
    this.#cubeSamplers.clear();
    for (const uniformName of source.#cubeSamplers) this.#cubeSamplers.add(uniformName);

    this.featureSet = { ...source.featureSet };
    this.rendererAdapter = source.rendererAdapter;
    return this;
  }

  /** @internal Renderer ABI texture binding. */
  setSystemTexture(binding: "__environment" | "__shadow" | "__bones" | "__morphs", texture: Texture | null): void {
    for (const [uniformName, property] of this.#samplerBindings) {
      if (property === binding) this.uniforms[uniformName]!.value = texture;
    }
  }

  updateDeformationUniforms(object: Object3D, renderer: WebGLRenderer): void {
    const skinned = object as Object3D & {
      isSkinnedMesh?: boolean;
      bindMatrix?: Matrix4;
      bindMatrixInverse?: Matrix4;
      skeleton?: { boneTexture: Texture | null; computeBoneTexture(): unknown };
    };
    this.globalUniforms.uSkinningEnabled = Number(Boolean(skinned.isSkinnedMesh && skinned.skeleton));
    if (skinned.isSkinnedMesh && skinned.skeleton) {
      if (!skinned.skeleton.boneTexture) skinned.skeleton.computeBoneTexture();
      this.setSystemTexture("__bones", skinned.skeleton.boneTexture);
      const boneSize = this.globalUniforms.uBoneTextureSize;
      const image = skinned.skeleton.boneTexture?.image as { width?: number; height?: number } | undefined;
      if (boneSize instanceof Vector4) {
        const width = image?.width ?? 1;
        const height = image?.height ?? 1;
        boneSize.set(width, height, 1 / width, 1 / height);
      }
    } else {
      this.setSystemTexture("__bones", null);
    }
    const bindMatrix = this.globalUniforms.uBindMatrix;
    if (bindMatrix instanceof Matrix4 && skinned.bindMatrix) bindMatrix.copy(skinned.bindMatrix).transpose();
    const bindMatrixInverse = this.globalUniforms.uBindMatrixInverse;
    if (bindMatrixInverse instanceof Matrix4 && skinned.bindMatrixInverse) bindMatrixInverse.copy(skinned.bindMatrixInverse).transpose();
    if ((object as { isMesh?: boolean }).isMesh) morphAdapter.update(object as Mesh, this, renderer);
  }
}
