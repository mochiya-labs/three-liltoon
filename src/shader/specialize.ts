import { LILTOON_DEFAULTS } from "../generated/defaults.js";
import { LILTOON_TEXTURE_SEMANTICS } from "../generated/textureSemantics.js";
import type { ShaderResource } from "../generated/shaders.js";

/** Upstream no-map neutral values, then ShaderLab defaults in linear space. */
export function defaultSample(property: string): string {
	if (property === "__shadow") return "vec4(1.0)";
	if (/^_Shadow(?:2nd|3rd)?ColorTex$/.test(property)) return "vec4(0.0)";
	if (/^_MatCap(?:2nd)?Tex$/.test(property)) return "vec4(1.0)";
	const name =
		(LILTOON_DEFAULTS as unknown as Record<string, { texture?: string }>)[
			property
		]?.texture ?? "black";
	let value = (
		{
			white: [1, 1, 1, 1],
			black: [0, 0, 0, 1],
			gray: [0.5, 0.5, 0.5, 1],
			bump: [0.5, 0.5, 1, 0.5],
			red: [1, 0, 0, 1],
		} as Record<string, number[]>
	)[name] ?? [0, 0, 0, 0];
	if (
		(LILTOON_TEXTURE_SEMANTICS as Record<string, string>)[property] === "color"
	)
		value = value.map((v, i) =>
			i === 3 ? v : v <= 0.04045 ? v / 12.92 : ((v + 0.055) / 1.055) ** 2.4,
		);
	return `vec4(${value.map((v) => (Number.isInteger(v) ? `${v}.0` : `${v}`)).join(", ")})`;
}

/** Balanced calls, not expression regexes: gradients/UV expressions may contain nested calls. */
export function specializeResources(
	source: string,
	omitted: readonly ShaderResource[],
	aliases: ReadonlyMap<string, string>,
): string {
	const missing = new Map(omitted.map((r) => [r.uniform, r]));
	const edits: { start: number; end: number; text: string }[] = [];
	const calls =
		/\b(texture|textureLod|textureGrad|textureProj|textureOffset|texelFetch|textureSize|textureQueryLevels)\s*\(\s*(\w+)\s*[,)]/g;
	for (const match of source.matchAll(calls)) {
		const resource = missing.get(match[2]!);
		if (!resource) continue;
		let end = source.indexOf("(", match.index!),
			depth = 0;
		for (; end < source.length; end++) {
			if (source[end] === "(") depth++;
			if (source[end] === ")" && --depth === 0) break;
		}
		if (end === source.length)
			throw new Error("Unbalanced generated texture expression");
		const replacement =
			match[1] === "textureSize"
				? resource.type.includes("Array")
					? "ivec3(1)"
					: "ivec2(1)"
				: match[1] === "textureQueryLevels"
					? "1"
					: defaultSample(resource.property);
		edits.push({ start: match.index!, end: end + 1, text: replacement });
	}
	// Outer replaced expressions subsume any inner texture queries.
	let end = -1;
	const disjoint = edits
		.sort((a, b) => a.start - b.start)
		.filter((e) => {
			if (e.start < end) return false;
			end = e.end;
			return true;
		});
	for (const edit of disjoint.reverse())
		source = source.slice(0, edit.start) + edit.text + source.slice(edit.end);
	for (const [uniform] of missing) {
		source = source.replace(
			new RegExp(
				`^uniform\\s+(?:(?:lowp|mediump|highp)\\s+)?sampler\\w+\\s+${uniform}\\s*;\\r?\\n?`,
				"m",
			),
			"",
		);
		if (new RegExp(`\\b${uniform}\\b`).test(source))
			throw new Error(`Unresolved generated sampler use: ${uniform}`);
	}
	for (const [uniform, target] of aliases) {
		source = source.replace(
			new RegExp(
				`^uniform\\s+(?:(?:lowp|mediump|highp)\\s+)?sampler\\w+\\s+${uniform}\\s*;\\r?\\n?`,
				"m",
			),
			"",
		);
		source = source.replace(new RegExp(`\\b${uniform}\\b`, "g"), target);
	}
	return source;
}
