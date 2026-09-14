import { TextureViews } from "../utils/TextureViews.js";
import { checkTextureLimits } from "../renderer/textureLimits.js";
import {
	BackSide,
	Color,
	GLSL3,
	Matrix4,
	RawShaderMaterial,
	SRGBColorSpace,
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
import {
	LILTOON_DEFAULTS,
	LILTOON_MODE_DEFAULTS,
} from "../generated/defaults.js";
import { LILTOON_UPSTREAM_DESCRIPTION } from "../generated/compatibility.js";
import {
	createGlobalUniforms,
	setGlobalProperty,
	updateObjectCameraUniforms,
	type LilToonGlobalUniforms,
} from "../renderer/LilToonUniformBinder.js";
import { rendererContext } from "../renderer/rendererContext.js";
import {
	updateThreeMorphDefines,
	withThreeMorphTargets,
} from "../renderer/threeMorphTargets.js";
import {
	getLilToonShaderProgram,
	getOutlineShaderProgram,
	type LilToonShaderProgram,
} from "../shader/ShaderProgramLibrary.js";
import {
	collectMaterialWarnings,
	shaderPropertyReferences,
	type LilToonWarning,
} from "../utils/materialWarnings.js";
import { applyLilToonPassState } from "../utils/renderState.js";
import { getNeutralTexture } from "../utils/texture.js";
import {
	detectLilToonFeatures,
	type LilToonFeatureSet,
} from "./LilToonFeatureSet.js";
import type {
	LilToonMaterialParameters,
	LilToonRenderMode,
	LilToonTransparencyMode,
	LilToonPass,
	LilToonScalarOrVector,
} from "./LilToonMaterialParameters.js";
import type { SerializedLilToonMaterial } from "./LilToonMaterialState.js";
import { LILTOON_GLTF_SPEC_VERSION } from "../loaders/types.js";

function copyValue(value: LilToonScalarOrVector): LilToonScalarOrVector {
	if (Array.isArray(value)) return [...value];
	if (
		value instanceof Color ||
		value instanceof Vector2 ||
		value instanceof Vector3 ||
		value instanceof Vector4
	) {
		return value.clone();
	}
	return value;
}

function propertyDefaults(
	mode = "opaque",
): Record<string, LilToonScalarOrVector> {
	const defaults: Record<string, LilToonScalarOrVector> = {};
	for (const [name, value] of Object.entries({
		...LILTOON_DEFAULTS,
		...LILTOON_MODE_DEFAULTS[mode],
	})) {
		if (typeof value === "number" || Array.isArray(value))
			defaults[name] = Array.isArray(value) ? [...value] : value;
	}
	return defaults;
}

function textureDefault(property: string): string {
	const value = (LILTOON_DEFAULTS as Record<string, unknown>)[property];
	if (typeof value === "object" && value && "texture" in value)
		return String((value as { texture: string }).texture);
	return "white";
}

const OUTPUT_SRGB_UNIFORM = "uLilToonOutputSrgb";

function addOutputColorSpaceConversion(fragmentShader: string): string {
	const globalsIndex = fragmentShader.indexOf("struct type_Globals");
	const mainEnd = fragmentShader.lastIndexOf("\n}");
	if (globalsIndex < 0 || mainEnd < 0) return fragmentShader;

	const withUniform =
		`${fragmentShader.slice(0, globalsIndex)}uniform uint ${OUTPUT_SRGB_UNIFORM};\n\n` +
		fragmentShader.slice(globalsIndex);
	const adjustedMainEnd =
		mainEnd + `uniform uint ${OUTPUT_SRGB_UNIFORM};\n\n`.length;
	const conversion = `
    if (${OUTPUT_SRGB_UNIFORM} != 0u)
    {
        highp vec3 linearColor = max(out_var_SV_Target.rgb, vec3(0.0));
        out_var_SV_Target.rgb = mix(
            pow(linearColor, vec3(0.41666)) * 1.055 - vec3(0.055),
            linearColor * 12.92,
            lessThanEqual(linearColor, vec3(0.0031308))
        );
    }
`;
	return `${withUniform.slice(0, adjustedMainEnd)}${conversion}${withUniform.slice(adjustedMainEnd)}`;
}

export class LilToonMaterial extends RawShaderMaterial {
	color = new Color(1, 1, 1);
	readonly isLilToonMaterial = true;
	readonly lilToonProperties: Record<string, LilToonScalarOrVector>;
	readonly lilToonTextures: Record<string, Texture | null> = {};
	globalUniforms: LilToonGlobalUniforms;
	renderMode: LilToonRenderMode;
	pass: LilToonPass;
	transparencyMode: LilToonTransparencyMode;
	featureSet: LilToonFeatureSet;
	readonly #samplerBindings: Map<string, string>;
	readonly #cubeSamplers: Set<string>;
	#shaderKey: string;
	#program: LilToonShaderProgram;
	readonly #textureViews = new TextureViews();
	#usedProperties: ReadonlySet<string>;
	readonly #startedAt = performance.now();

	constructor(parameters: LilToonMaterialParameters = {}) {
		const renderMode = parameters.renderMode ?? "opaque";
		const pass = parameters.pass ?? "forward";
		const program =
			pass === "outline"
				? getOutlineShaderProgram(
						{ ...propertyDefaults(renderMode), ...parameters.properties },
						parameters.textures,
						renderMode,
					)
				: getLilToonShaderProgram(
						renderMode,
						{ ...propertyDefaults(renderMode), ...parameters.properties },
						parameters.textures,
						pass === "forward" ? false : pass,
					);
		const globalUniforms = createGlobalUniforms(
			program.vertexShader,
			program.fragmentShader,
		);
		const uniforms: Record<string, IUniform> = {
			_Globals: { value: globalUniforms },
			[OUTPUT_SRGB_UNIFORM]: { value: 1 },
		};
		const cubeSamplers = new Set(
			[
				...`${program.vertexShader}\n${program.fragmentShader}`.matchAll(
					/uniform\s+(?:\w+\s+)?samplerCube\s+([A-Za-z_][A-Za-z0-9_]*)\s*;/g,
				),
			].map((match) => match[1]!),
		);
		for (const [uniformName, property] of program.samplerBindings) {
			uniforms[uniformName] = {
				value:
					property === "__shadow"
						? getNeutralTexture("white")
						: property.startsWith("__") || cubeSamplers.has(uniformName)
							? null
							: getNeutralTexture(textureDefault(property)),
			};
		}
		super({
			name: parameters.name ?? `lilToon ${pass} ${renderMode}`,
			// Three owns the final #version placement because it prepends material
			// defines even for RawShaderMaterial. Generated artifacts retain their
			// standalone directive for offline validation.
			vertexShader: (pass === "fur" || pass === "fur-pre"
				? program.vertexShader
				: withThreeMorphTargets(program.vertexShader)
			).replace(/^#version 300 es\s*/, ""),
			fragmentShader: addOutputColorSpaceConversion(
				program.fragmentShader,
			).replace(/^#version 300 es\s*/, ""),
			glslVersion: GLSL3,
			uniforms,
			lights: false,
			fog: false,
		});
		this.renderMode = renderMode;
		this.pass = pass;
		this.transparencyMode = parameters.transparencyMode ?? "normal";
		this.forceSinglePass = true;
		this.globalUniforms = globalUniforms;
		this.#samplerBindings = program.samplerBindings;
		this.#cubeSamplers = cubeSamplers;
		this.#shaderKey = program.key;
		this.#program = program;
		this.#usedProperties = shaderPropertyReferences(
			program.vertexShader,
			program.fragmentShader,
		);
		this.lilToonProperties = propertyDefaults(renderMode);
		Object.defineProperty(this, "opacity", {
			configurable: true,
			enumerable: true,
			get: () => {
				const c = this.lilToonProperties._Color;
				return Array.isArray(c) ? (c[3] ?? 1) : c instanceof Vector4 ? c.w : 1;
			},
			set: (alpha: number) => {
				this.syncColor();
				const c = this.lilToonProperties._Color as number[];
				this.setProperty("_Color", [c[0]!, c[1]!, c[2]!, alpha]);
			},
		});
		Object.defineProperty(this, "alphaTest", {
			configurable: true,
			enumerable: true,
			get: () =>
				this.renderMode === "cutout" || this.renderMode === "fur-cutout"
					? Number(this.lilToonProperties._Cutoff ?? 0.5)
					: 0,
			set: (cutoff: number) => {
				if (!["opaque", "cutout", "transparent"].includes(this.renderMode)) {
					this.setProperty("_Cutoff", cutoff);
					return;
				}
				this.renderMode =
					cutoff > 0
						? "cutout"
						: this.renderMode === "transparent" || this.transparent
							? "transparent"
							: "opaque";
				this.transparent = this.renderMode === "transparent";
				this.setProperty("_Cutoff", cutoff);
				this.refreshProgram();
			},
		});

		if (
			renderMode.startsWith("refraction") ||
			renderMode === "gem" ||
			renderMode.startsWith("fur")
		) {
			this.lilToonProperties._UseOutline = 0;
		}
		for (const [name, value] of Object.entries({
			...this.lilToonProperties,
			...parameters.properties,
		})) {
			this.lilToonProperties[name] = copyValue(value);
			setGlobalProperty(this.globalUniforms, name, value);
		}
		for (const [name, value] of Object.entries(parameters.textures ?? {}))
			this.setTexture(name, value);
		this.readColor();
		if (parameters.color !== undefined) {
			this.color.set(parameters.color);
			this.syncColor();
		}
		if (parameters.opacity !== undefined) this.opacity = parameters.opacity;
		if (parameters.map !== undefined) this.map = parameters.map;
		if (parameters.alphaTest !== undefined)
			this.alphaTest = parameters.alphaTest;
		this.featureSet = detectLilToonFeatures(this.lilToonProperties);
		applyLilToonPassState(
			this,
			this.renderMode,
			this.lilToonProperties,
			this.pass,
		);
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
			this.refreshProgram();
			this.bindTextureViews();
			const elapsed = (performance.now() - this.#startedAt) / 1000;
			updateObjectCameraUniforms(
				this.globalUniforms,
				renderer,
				camera,
				object,
				elapsed,
			);
			this.syncColor();
			rendererContext(renderer).prepareMaterial(this, scene);
			this.updateDeformationUniforms(object, renderer);
			checkTextureLimits(
				renderer,
				this.name,
				this.#program.resources,
				Boolean(
					this.defines.USE_MORPHTARGETS && this.defines.MORPHTARGETS_COUNT,
				),
			);
			const outputColorSpace =
				renderer.getRenderTarget()?.texture.colorSpace ??
				renderer.outputColorSpace;
			this.uniforms[OUTPUT_SRGB_UNIFORM]!.value = Number(
				outputColorSpace === SRGBColorSpace,
			);

			// The glTF loader intentionally shares one material instance between meshes.
			// These globals include per-object model, skinning, and morph data, so Three
			// must upload them for every draw even when the material/program did not
			// change. This is especially important for transparent meshes because their
			// draw order changes as the camera moves.
			this.uniformsNeedUpdate = true;
		};
	}

	/** The actual compiled program, reselected when texture requirements change. */
	get shaderKey(): string {
		return this.#shaderKey;
	}

	/** Recheck active forward features and textures without logging or changing the material. */
	getWarnings(): LilToonWarning[] {
		if (this.pass !== "forward") return [];
		const fur = this.renderMode.startsWith("fur")
			? getLilToonShaderProgram(
					this.renderMode,
					this.lilToonProperties,
					this.lilToonTextures,
					"fur",
				)
			: undefined;
		return collectMaterialWarnings({
			materialName: this.name,
			shaderKey: this.shaderKey,
			renderMode: this.renderMode,
			representedTextures: new Set(
				[...this.#program.resources, ...(fur?.resources ?? [])].map(
					(r) => r.property,
				),
			),
			properties: this.lilToonProperties,
			textures: this.lilToonTextures,
			usedProperties: this.#usedProperties,
			samplerBindings: this.#samplerBindings,
			cubeSamplers: this.#cubeSamplers,
		});
	}

	setProperty(name: string, value: LilToonScalarOrVector): this {
		this.lilToonProperties[name] = copyValue(value);
		setGlobalProperty(this.globalUniforms, name, value);
		if (name === "_Color") this.readColor();
		this.featureSet = detectLilToonFeatures(this.lilToonProperties);
		if (
			/(_Cull|_ZWrite|_ZTest|_Blend|_Stencil|_Offset|_ColorMask|_AlphaToMask)/.test(
				name,
			)
		) {
			applyLilToonPassState(
				this,
				this.renderMode,
				this.lilToonProperties,
				this.pass,
			);
		}
		this.refreshProgram();
		return this;
	}

	getProperty<T extends LilToonScalarOrVector = LilToonScalarOrVector>(
		name: string,
	): T | undefined {
		if (name === "_Color") this.syncColor();
		return this.lilToonProperties[name] as T | undefined;
	}

	toLilToonJSON(
		resolveTexture: (
			texture: Texture,
			property: string,
		) => string | number | null = () => null,
	): SerializedLilToonMaterial {
		this.syncColor();
		const properties = Object.fromEntries(
			Object.entries(this.lilToonProperties).map(([name, value]) => [
				name,
				copyValue(value),
			]),
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
			transparencyMode: this.transparencyMode,
			textures,
		};
	}

	setTexture(name: string, texture: Texture | null): this {
		this.lilToonTextures[name] = texture;
		this.refreshProgram();
		this.bindTextureViews();
		return this;
	}

	private bindTextureViews(): void {
		this.#textureViews.retain(this.#program.resources);
		for (const resource of this.#program.resources) {
			if (resource.property.startsWith("__")) continue;
			const texture = this.#textureViews.get(resource, this.lilToonTextures);
			const isCube = Boolean(
				(texture as (Texture & { isCubeTexture?: boolean }) | null)
					?.isCubeTexture,
			);
			this.uniforms[resource.uniform]!.value =
				this.#cubeSamplers.has(resource.uniform) === isCube ? texture : null;
		}
	}

	override dispose(): void {
		this.#textureViews.dispose();
		super.dispose();
	}

	override copy(source: LilToonMaterial): this {
		source.syncColor();
		const uniforms = this.uniforms;
		super.copy(source);
		const copiedUniforms = this.uniforms;
		for (const key of Object.keys(uniforms)) delete uniforms[key];
		Object.assign(uniforms, copiedUniforms);
		this.uniforms = uniforms;
		this.renderMode = source.renderMode;
		this.pass = source.pass;
		this.transparencyMode = source.transparencyMode;
		this.#shaderKey = source.#shaderKey;
		this.#program = source.#program;
		this.#textureViews.dispose();
		this.#usedProperties = source.#usedProperties;

		this.globalUniforms = createGlobalUniforms(
			source.vertexShader,
			source.fragmentShader,
		);
		this.uniforms._Globals = { value: this.globalUniforms };

		for (const name of Object.keys(this.lilToonProperties))
			delete this.lilToonProperties[name];
		for (const [name, value] of Object.entries(source.lilToonProperties)) {
			this.lilToonProperties[name] = copyValue(value);
			setGlobalProperty(this.globalUniforms, name, value);
		}

		for (const name of Object.keys(this.lilToonTextures))
			delete this.lilToonTextures[name];
		Object.assign(this.lilToonTextures, source.lilToonTextures);

		this.#samplerBindings.clear();
		for (const [uniformName, property] of source.#samplerBindings) {
			this.#samplerBindings.set(uniformName, property);
		}
		this.#cubeSamplers.clear();
		for (const uniformName of source.#cubeSamplers)
			this.#cubeSamplers.add(uniformName);

		this.bindTextureViews();
		this.featureSet = { ...source.featureSet };
		this.readColor();
		this.needsUpdate = true;
		return this;
	}

	get map(): Texture | null {
		return this.lilToonTextures._MainTex ?? null;
	}
	set map(texture: Texture | null) {
		this.setTexture("_MainTex", texture);
	}

	private readColor(): void {
		const value = this.lilToonProperties._Color;
		if (Array.isArray(value))
			this.color.setRGB(value[0]!, value[1]!, value[2]!);
		else if (value instanceof Color) this.color.copy(value);
		else if (value instanceof Vector4)
			this.color.setRGB(value.x, value.y, value.z);
	}
	private syncColor(): void {
		const current = this.lilToonProperties._Color;
		const alpha = Array.isArray(current)
			? (current[3] ?? 1)
			: current instanceof Vector4
				? current.w
				: 1;
		const value = [this.color.r, this.color.g, this.color.b, alpha];
		this.lilToonProperties._Color = value;
		setGlobalProperty(this.globalUniforms, "_Color", value);
	}
	private refreshProgram(): void {
		const program =
			this.pass === "outline"
				? getOutlineShaderProgram(
						this.lilToonProperties,
						this.lilToonTextures,
						this.renderMode,
					)
				: getLilToonShaderProgram(
						this.renderMode,
						this.lilToonProperties,
						this.lilToonTextures,
						this.pass === "forward" ? false : this.pass,
					);
		if (program.key === this.#shaderKey) return;
		this.#program = program;
		this.#shaderKey = program.key;
		this.#usedProperties = shaderPropertyReferences(
			program.vertexShader,
			program.fragmentShader,
		);
		this.vertexShader = (
			this.pass === "fur" || this.pass === "fur-pre"
				? program.vertexShader
				: withThreeMorphTargets(program.vertexShader)
		).replace(/^#version 300 es\s*/, "");
		this.fragmentShader = addOutputColorSpaceConversion(
			program.fragmentShader,
		).replace(/^#version 300 es\s*/, "");
		this.globalUniforms = createGlobalUniforms(
			program.vertexShader,
			program.fragmentShader,
		);
		// Three caches this dictionary on a material's first program compilation.
		// Preserve its identity when revisiting a previously compiled variant.
		for (const name of Object.keys(this.uniforms)) delete this.uniforms[name];
		this.uniforms._Globals = { value: this.globalUniforms };
		this.uniforms[OUTPUT_SRGB_UNIFORM] = { value: 1 };
		this.#samplerBindings.clear();
		this.#cubeSamplers.clear();
		for (const match of `${program.vertexShader}\n${program.fragmentShader}`.matchAll(
			/uniform\s+(?:\w+\s+)?samplerCube\s+([A-Za-z_][A-Za-z0-9_]*)\s*;/g,
		))
			this.#cubeSamplers.add(match[1]!);
		for (const [uniform, property] of program.samplerBindings) {
			this.#samplerBindings.set(uniform, property);
			this.uniforms[uniform] = {
				value:
					property === "__shadow"
						? getNeutralTexture("white")
						: property.startsWith("__") || this.#cubeSamplers.has(uniform)
							? null
							: getNeutralTexture(textureDefault(property)),
			};
		}
		for (const [key, value] of Object.entries(this.lilToonProperties))
			setGlobalProperty(this.globalUniforms, key, value);
		this.bindTextureViews();
		this.needsUpdate = true;
	}

	/** @internal Renderer ABI texture binding. */
	setSystemTexture(
		binding:
			| "__environment"
			| "__shadow"
			| "__bones"
			| "__background"
			| "__grab"
			| "__furVertices",
		texture: Texture | null,
	): void {
		this.refreshProgram();
		// An empty packed-depth sampler must mean far depth, not Three's zero-depth
		// null fallback. Leave other system samplers' fallback semantics unchanged.
		const value =
			binding === "__shadow" && !texture ? getNeutralTexture("white") : texture;
		for (const [uniformName, property] of this.#samplerBindings) {
			if (property === binding) this.uniforms[uniformName]!.value = value;
		}
	}

	updateDeformationUniforms(object: Object3D, renderer: WebGLRenderer): void {
		const skinned = object as Object3D & {
			isSkinnedMesh?: boolean;
			bindMatrix?: Matrix4;
			bindMatrixInverse?: Matrix4;
			skeleton?: { boneTexture: Texture | null; computeBoneTexture(): unknown };
		};
		this.globalUniforms.uSkinningEnabled = Number(
			Boolean(skinned.isSkinnedMesh && skinned.skeleton),
		);
		if (skinned.isSkinnedMesh && skinned.skeleton) {
			if (!skinned.skeleton.boneTexture) skinned.skeleton.computeBoneTexture();
			this.setSystemTexture("__bones", skinned.skeleton.boneTexture);
			const boneSize = this.globalUniforms.uBoneTextureSize;
			const image = skinned.skeleton.boneTexture?.image as
				{ width?: number; height?: number } | undefined;
			if (boneSize instanceof Vector4) {
				const width = image?.width ?? 1;
				const height = image?.height ?? 1;
				boneSize.set(width, height, 1 / width, 1 / height);
			}
		} else {
			this.setSystemTexture("__bones", null);
		}
		const bindMatrix = this.globalUniforms.uBindMatrix;
		if (bindMatrix instanceof Matrix4 && skinned.bindMatrix)
			bindMatrix.copy(skinned.bindMatrix).transpose();
		const bindMatrixInverse = this.globalUniforms.uBindMatrixInverse;
		if (bindMatrixInverse instanceof Matrix4 && skinned.bindMatrixInverse)
			bindMatrixInverse.copy(skinned.bindMatrixInverse).transpose();
		if ((object as { isMesh?: boolean }).isMesh)
			updateThreeMorphDefines(this, (object as Mesh).geometry);
	}
}
