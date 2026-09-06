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

const source = readFileSync(resolve(LILTOON_SHADER, "lts.shader"), "utf8");
const parsed = parseShaderLab(source);
const properties = [
	...new Map(
		parsed.properties.map((property) => [property.name, property]),
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
	`${banner}export const LILTOON_DEFAULTS = ${JSON.stringify(defaults, null, 2)} as const;\n`,
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
