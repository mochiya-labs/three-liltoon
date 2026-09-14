import { execFileSync } from "node:child_process";
import { mkdirSync, readFileSync, writeFileSync } from "node:fs";
import { resolve } from "node:path";
import {
	GENERATED_SOURCE_ROOT,
	LILTOON_ROOT,
	LILTOON_SHADER,
} from "../paths.js";
import { parseShaderLab } from "../shaderlab/parser.js";
import type { ShaderProperty } from "../shaderlab/types.js";

const parsed = parseShaderLab(
	readFileSync(resolve(LILTOON_SHADER, "lts.shader"), "utf8"),
);
const extra = [
	"lts_ref.shader",
	"lts_ref_blur.shader",
	"lts_fur.shader",
	"lts_fur_cutout.shader",
	"lts_fur_two.shader",
	"lts_gem.shader",
].flatMap(
	(file) =>
		parseShaderLab(readFileSync(resolve(LILTOON_SHADER, file), "utf8"))
			.properties,
);
const properties = [
	...new Map(
		[...extra, ...parsed.properties].map((property) => [
			property.name,
			property,
		]),
	).values(),
];

function srgbToLinear(value: number): number {
	return value <= 0.04045 ? value / 12.92 : ((value + 0.055) / 1.055) ** 2.4;
}

const defaults = Object.fromEntries(
	properties.map((property) => {
		const gamma = property.attributes.some((attribute) =>
			/^Gamma\b/i.test(attribute),
		);
		const value =
			gamma && typeof property.defaultValue === "number"
				? srgbToLinear(property.defaultValue)
				: property.defaultValue;
		return [property.name, value];
	}),
);
const modeDefaults = Object.fromEntries(
	[
		["transparent", "lts_trans.shader"],
		["refraction-blur", "lts_ref_blur.shader"],
		["fur-cutout", "lts_fur_cutout.shader"],
		["fur-two-pass", "lts_fur_two.shader"],
		["refraction", "lts_ref.shader"],
		["fur", "lts_fur.shader"],
		["gem", "lts_gem.shader"],
	].map(([mode, file]) => [
		mode,
		Object.fromEntries(
			parseShaderLab(readFileSync(resolve(LILTOON_SHADER, file!), "utf8"))
				.properties.map((p) => {
					const value =
						typeof p.defaultValue === "number" &&
						p.attributes.some((a) => /^Gamma\b/i.test(a))
							? srgbToLinear(p.defaultValue)
							: p.defaultValue;
					return [p.name, value];
				})
				.filter(
					([name, value]) =>
						JSON.stringify(value) !== JSON.stringify(defaults[name as string]),
				),
		),
	]),
);

function classifyTexture(
	property: ShaderProperty,
): "color" | "normal" | "data" | undefined {
	if (!/^(2D|3D|Cube)$/i.test(property.type)) return undefined;
	if (property.attributes.some((attribute) => /^Normal\b/i.test(attribute)))
		return "normal";
	if (
		/(_Mask|Mask$|Normal|Bump|Dither|Parallax|Noise|UDIM|AudioLink|Metallic|Smoothness)/i.test(
			property.name,
		)
	)
		return "data";
	return "color";
}

const textureSemantics = Object.fromEntries(
	properties
		.map((property) => [property.name, classifyTexture(property)] as const)
		.filter(
			(entry): entry is [string, "color" | "normal" | "data"] =>
				entry[1] !== undefined,
		),
);
const commit = execFileSync("git", ["rev-parse", "HEAD"], {
	cwd: LILTOON_ROOT,
	encoding: "utf8",
}).trim();
const description = execFileSync("git", ["describe", "--tags", "--always"], {
	cwd: LILTOON_ROOT,
	encoding: "utf8",
}).trim();
const versionFile = JSON.parse(
	readFileSync(resolve(LILTOON_ROOT, "version.json"), "utf8"),
) as Record<string, unknown>;
const version = String(versionFile.latest_vertion_name ?? description);

const banner =
	"// Generated from vendor/lilToon/Assets/lilToon/Shader/lts.shader. Do not edit.\n";
mkdirSync(GENERATED_SOURCE_ROOT, { recursive: true });
writeFileSync(
	resolve(GENERATED_SOURCE_ROOT, "properties.ts"),
	`${banner}export const LILTOON_PROPERTIES = ${JSON.stringify(properties, null, 2)} as const;\n\nexport type LilToonPropertyName = typeof LILTOON_PROPERTIES[number]["name"];\n`,
);
writeFileSync(
	resolve(GENERATED_SOURCE_ROOT, "defaults.ts"),
	`${banner}export const LILTOON_DEFAULTS = ${JSON.stringify(defaults, null, 2)} as const;\nexport const LILTOON_MODE_DEFAULTS: Readonly<Record<string, Record<string, unknown>>> = ${JSON.stringify(modeDefaults, null, 2)};\n`,
);
writeFileSync(
	resolve(GENERATED_SOURCE_ROOT, "textureSemantics.ts"),
	`${banner}export type LilToonTextureSemantic = "color" | "normal" | "data";\nexport const LILTOON_TEXTURE_SEMANTICS = ${JSON.stringify(textureSemantics, null, 2)} as const satisfies Record<string, LilToonTextureSemantic>;\n`,
);
writeFileSync(
	resolve(GENERATED_SOURCE_ROOT, "compatibility.ts"),
	`${banner}export const LILTOON_UPSTREAM_COMMIT = ${JSON.stringify(commit)};\nexport const LILTOON_UPSTREAM_VERSION = ${JSON.stringify(version)};\nexport const LILTOON_UPSTREAM_DESCRIPTION = ${JSON.stringify(description)};\nexport const THREE_VERSION_RANGE = ">=0.180.0 <0.190.0";\n`,
);

process.stdout.write(
	`Generated ${properties.length} lilToon material properties from ${description}.\n`,
);
