import { LILTOON_SHADERS, type ShaderResource } from "../generated/shaders.js";
import { LILTOON_DEFAULTS } from "../generated/defaults.js";
import type { Texture } from "three";
import type { LilToonRenderMode } from "../material/LilToonMaterialParameters.js";
import {
	SPECIALIZATION_PROPERTIES,
	firstComponent,
	textureIsUsed,
} from "./features.js";
import { textureBindingKey } from "../utils/TextureViews.js";
import { specializeResources } from "./specialize.js";

export interface LilToonShaderProgram {
	key: string;
	vertexShader: string;
	fragmentShader: string;
	samplerBindings: Map<string, string>;
	resources: readonly ShaderResource[];
}
const cache = new Map<string, LilToonShaderProgram>();

/** Diagnostic helper; production bindings come from SPIR-V reflection. */
export function parseSamplerBindings(source: string): Map<string, string> {
	const resources = Object.values(LILTOON_SHADERS).flatMap((s) => s.resources);
	return new Map(
		[
			...source.matchAll(
				/uniform\s+(?:(?:lowp|mediump|highp)\s+)?sampler\w+\s+(\w+)\s*;/g,
			),
		].map((m) => [
			m[1]!,
			resources.find((r) => r.uniform === m[1])?.property ??
				`__unknown:${m[1]}`,
		]),
	);
}

export function getLilToonShaderProgram(
	mode: LilToonRenderMode,
	properties: Record<string, unknown> = LILTOON_DEFAULTS,
	textures: Record<string, Texture | null> = {},
	pass:
		| boolean
		| "fur"
		| "fur-pre"
		| "transparent-pre"
		| "refraction-blur-pre" = false,
): LilToonShaderProgram {
	const outline = pass === true;
	const base = (
		pass === "fur"
			? mode === "fur-cutout"
				? "fur-cutout"
				: "fur"
			: pass === "fur-pre"
				? "fur-pre"
				: pass === "transparent-pre"
					? "transparent-pre"
					: pass === "refraction-blur-pre"
						? "refraction-blur-pre"
						: outline
							? mode === "transparent"
								? "outline-transparent"
								: mode === "cutout"
									? "outline-cutout"
									: "outline"
							: `standard-${mode}`
	) as keyof typeof LILTOON_SHADERS;
	const template = LILTOON_SHADERS[base];
	const requiredTexture: Record<string, string> = {
		_UseBumpMap: "_BumpMap",
		_UseBump2ndMap: "_Bump2ndMap",
		_MatCapCustomNormal: "_MatCapBumpMap",
		_MatCap2ndCustomNormal: "_MatCap2ndBumpMap",
	};
	const flags = SPECIALIZATION_PROPERTIES.map(
		(p) =>
			firstComponent(properties[p]) !== 0 &&
			(!requiredTexture[p] || Boolean(textures[requiredTexture[p]!])),
	);
	const active = template.resources.filter((r) => {
		if (r.property === "__environment" && mode !== "gem")
			return (
				firstComponent(properties._UseReflection) !== 0 &&
				firstComponent(properties._ApplyReflection) !== 0
			);
		if (r.property === "__shadow")
			return outline
				? firstComponent(properties._OutlineLitShadowReceive) !== 0
				: firstComponent(properties._UseShadow) !== 0 ||
						firstComponent(properties._UseReflection) !== 0 ||
						(firstComponent(properties._UseBacklight) !== 0 &&
							firstComponent(properties._BacklightReceiveShadow) !== 0);
		if (r.property.startsWith("__")) return true;
		if (
			!textures[r.property] ||
			!textureIsUsed(r.property, properties, mode, outline)
		)
			return false;
		if (/^_Shadow(?:2nd|3rd)?ColorTex$/.test(r.property))
			return (
				(r.sampler === "lil_sampler_linear_clamp") ===
				(firstComponent(properties._ShadowColorType) === 1)
			);
		return true;
	});
	const aliases = new Map<string, string>();
	const pairs = new Map<string, string>();
	for (const r of active) {
		if (r.property.startsWith("__")) continue;
		const stages = active
			.filter((other) => other.uniform === r.uniform)
			.map((other) => other.stage)
			.sort()
			.join("+");
		const pair = `${stages}:${r.type}:${textureBindingKey(r, textures)}`;
		const first = pairs.get(pair);
		if (first && first !== r.uniform) aliases.set(r.uniform, first);
		else pairs.set(pair, r.uniform);
	}
	const mask = flags
		.reduce((bits, on, index) => bits | (Number(on) << index), 0)
		.toString(36);
	const resourceKey = active
		.map((r) => {
			const index = template.resources.indexOf(r).toString(36);
			const alias = aliases.get(r.uniform);
			return alias
				? `${index}=${template.resources.findIndex((other) => other.uniform === alias).toString(36)}`
				: index;
		})
		.join(".");
	const key = `${base}:${mask}:${resourceKey}`;
	const hit = cache.get(key);
	if (hit) return { ...hit, samplerBindings: new Map(hit.samplerBindings) };
	const omitted = template.resources.filter((r) => !active.includes(r));
	const defines = flags
		.map((on, id) => `#define SPIRV_CROSS_CONSTANT_ID_${id} ${on}`)
		.join("\n");
	const specialize = (source: string, stage: string) =>
		specializeResources(
			source,
			omitted.filter((r) => r.stage === stage),
			new Map(
				[...aliases].filter(([name]) =>
					active.some((r) => r.uniform === name && r.stage === stage),
				),
			),
		)
			.replace(
				/\b_Globals\._MainGradationStrength\b/g,
				textures._MainGradationTex ? "$&" : "0.0",
			)
			.replace(
				/\b_Globals\._GlitterApplyShape\b/g,
				textures._GlitterShapeTex ? "$&" : "0u",
			)
			.replace(/^(#version 300 es)/, `$1\n${defines}`);
	const result: LilToonShaderProgram = {
		key,
		vertexShader: specialize(template.vertex, "vertex"),
		fragmentShader: specialize(template.fragment, "fragment"),
		samplerBindings: new Map(
			active.map((r) => [aliases.get(r.uniform) ?? r.uniform, r.property]),
		),
		resources: active.map((r) => ({
			...r,
			uniform: aliases.get(r.uniform) ?? r.uniform,
		})),
	};
	if (cache.size >= 128) cache.delete(cache.keys().next().value!);
	cache.set(key, result);
	return { ...result, samplerBindings: new Map(result.samplerBindings) };
}
export function getOutlineShaderProgram(
	properties: Record<string, unknown> = LILTOON_DEFAULTS,
	textures: Record<string, Texture | null> = {},
	mode: LilToonRenderMode = "opaque",
): LilToonShaderProgram {
	return getLilToonShaderProgram(mode, properties, textures, true);
}
