import { resolve } from "node:path";
import { LILTOON_TEXTURE_SEMANTICS } from "../../src/generated/textureSemantics.js";
import { PROJECT_ROOT } from "../paths.js";
import type { ShaderVariantRecipe } from "./types.js";

/** Full ordinary forward surface. No texture-budget profiles or priority omissions. */
export const CORE_FEATURE_DEFINES = [
	"LIL_WEB_DEFORMATION",
	"LIL_WEB_SKINNING",
	"LIL_USE_SHADOW",
	...[
		"ANIMATE_MAIN_UV",
		"MAIN_TONE_CORRECTION",
		"MAIN_GRADATION_MAP",
		"MAIN2ND",
		"MAIN3RD",
		"DECAL",
		"ANIMATE_DECAL",
		"LAYER_DISSOLVE",
		"ALPHAMASK",
		"DITHER",
		"SHADOW",
		"RECEIVE_SHADOW",
		"SHADOW_3RD",
		"SHADOW_LUT",
		"RIMSHADE",
		"EMISSION_1ST",
		"EMISSION_2ND",
		"EMISSION_GRADATION",
		"ANIMATE_EMISSION_UV",
		"ANIMATE_EMISSION_MASK_UV",
		"NORMAL_1ST",
		"NORMAL_2ND",
		"ANISOTROPY",
		"REFLECTION",
		"MATCAP",
		"MATCAP_2ND",
		"RIMLIGHT",
		"RIMLIGHT_DIRECTION",
		"BACKLIGHT",
		"GLITTER",
		"PARALLAX",
		"POM",
		"DISTANCE_FADE",
		"DISSOLVE",
		"OUTLINE_TONE_CORRECTION",
		"OUTLINE_RECEIVE_SHADOW",
		"ANIMATE_OUTLINE_UV",
	].map((name) => `LIL_FEATURE_${name}`),
	...Object.keys(LILTOON_TEXTURE_SEMANTICS)
		.filter((name) => !/^_(Audio|Fur|Base|Tri)/.test(name))
		.map((name) => `LIL_FEATURE${name}`),
];
const entry = (name: string) =>
	resolve(PROJECT_ROOT, `shader/entry/${name}.hlsl`);
export const SHADER_VARIANTS: ShaderVariantRecipe[] = [
	...(
		[
			[
				"standard-refraction-blur",
				"refraction-blur",
				"refraction",
				["LIL_RENDER=2", "LIL_REFRACTION_BLUR2"],
			],
			[
				"refraction-blur-pre",
				"refraction-blur",
				"refraction",
				["LIL_RENDER=2", "LIL_REFRACTION_BLUR2", "LIL_WEB_REFBLUR_PRE"],
			],
			[
				"transparent-pre",
				"transparent",
				"forward",
				["LIL_RENDER=2", "LIL_TRANSPARENT_PRE"],
			],
			[
				"standard-fur-cutout",
				"fur-cutout",
				"forward",
				["LIL_RENDER=1", "LIL_FUR"],
			],
			[
				"standard-fur-two-pass",
				"fur-two-pass",
				"forward",
				["LIL_RENDER=2", "LIL_FUR"],
			],
			["outline-cutout", "outline", "outline", ["LIL_RENDER=1"]],
			["outline-transparent", "outline", "outline", ["LIL_RENDER=2"]],
		] as const
	).map(([key, renderMode, source, defines]) => ({
		key,
		renderMode,
		sources: { vertex: entry(source), fragment: entry(source) },
		entries: { vertex: "vert", fragment: "frag" },
		defines: [...defines, ...CORE_FEATURE_DEFINES],
	})),
	...(["fur-cutout", "fur-pre"] as const).map((key) => ({
		key,
		renderMode: "fur" as const,
		sources: { vertex: entry("fur"), fragment: entry("fur") },
		entries: { vertex: "webVert", fragment: "frag" },
		defines: [
			key === "fur-cutout" ? "LIL_RENDER=1" : "LIL_RENDER=2",
			...(key === "fur-pre" ? ["LIL_FUR_PRE"] : []),
			...CORE_FEATURE_DEFINES.filter((d) => !d.startsWith("LIL_WEB_")),
			...["FurVectorTex", "FurLengthMask", "FurMask", "FurNoiseMask"].map(
				(p) => `LIL_FEATURE_${p}`,
			),
		],
	})),
	{
		key: "smoke",
		renderMode: "smoke",
		sources: { vertex: entry("trivial.vert"), fragment: entry("trivial.frag") },
		entries: { vertex: "main", fragment: "main" },
		defines: [],
	},
	...(["refraction", "gem"] as const).map((mode) => ({
		key: `standard-${mode}`,
		renderMode: mode,
		sources: { vertex: entry(mode), fragment: entry(mode) },
		entries: { vertex: "vert", fragment: "frag" },
		defines: ["LIL_RENDER=2", ...CORE_FEATURE_DEFINES],
	})),
	{
		key: "standard-fur",
		renderMode: "fur",
		sources: { vertex: entry("forward"), fragment: entry("forward") },
		entries: { vertex: "vert", fragment: "frag" },
		defines: ["LIL_RENDER=2", ...CORE_FEATURE_DEFINES],
	},
	{
		key: "fur",
		renderMode: "fur",
		sources: { vertex: entry("fur"), fragment: entry("fur") },
		entries: { vertex: "webVert", fragment: "frag" },
		defines: [
			"LIL_RENDER=2",
			...CORE_FEATURE_DEFINES.filter((d) => !d.startsWith("LIL_WEB_")),
			...["FurVectorTex", "FurLengthMask", "FurMask", "FurNoiseMask"].map(
				(p) => `LIL_FEATURE_${p}`,
			),
		],
	},
	...(["opaque", "cutout", "transparent"] as const).map(
		(renderMode, index) => ({
			key: `standard-${renderMode}`,
			renderMode,
			sources: { vertex: entry("forward"), fragment: entry("forward") },
			entries: { vertex: "vert", fragment: "frag" },
			defines: [`LIL_RENDER=${index}`, ...CORE_FEATURE_DEFINES],
		}),
	),
	{
		key: "outline",
		renderMode: "outline",
		sources: { vertex: entry("outline"), fragment: entry("outline") },
		entries: { vertex: "vert", fragment: "frag" },
		defines: ["LIL_RENDER=0", ...CORE_FEATURE_DEFINES],
	},
];
