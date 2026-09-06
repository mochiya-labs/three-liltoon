import type {
	PropertyReference,
	ShaderRenderState,
	ShaderStateValue,
	ShaderStencilState,
} from "./types.js";

export function parseStateValue(value: string): ShaderStateValue {
	const clean = value.trim().replace(/,$/, "");
	const property = /^\[([_A-Za-z][_A-Za-z0-9]*)\]$/.exec(clean);
	if (property) return { property: property[1]! } satisfies PropertyReference;
	if (/^(On|True)$/i.test(clean)) return true;
	if (/^(Off|False)$/i.test(clean)) return false;
	const numeric = Number(clean);
	return Number.isFinite(numeric) ? numeric : clean;
}

export function splitStateValues(value: string): ShaderStateValue[] {
	return value
		.replace(/,/g, " ")
		.trim()
		.split(/\s+/)
		.filter(Boolean)
		.map(parseStateValue);
}

export function parseStencil(source: string): ShaderStencilState {
	const state: ShaderStencilState = {};
	const keys: Record<string, keyof ShaderStencilState> = {
		Ref: "ref",
		ReadMask: "readMask",
		WriteMask: "writeMask",
		Comp: "comp",
		Pass: "pass",
		Fail: "fail",
		ZFail: "zFail",
	};
	for (const line of source.split(/\r?\n/)) {
		const match =
			/^\s*(Ref|ReadMask|WriteMask|Comp|Pass|Fail|ZFail)\s+(.+?)\s*$/.exec(
				line,
			);
		if (match) state[keys[match[1]!]!] = parseStateValue(match[2]!);
	}
	return state;
}

export function parseFlatRenderStates(source: string): ShaderRenderState {
	const state: ShaderRenderState = {};
	const stripped = source.replace(/\bHLSLPROGRAM\b[\s\S]*?\bENDHLSL\b/g, "");
	for (const line of stripped.split(/\r?\n/)) {
		const match =
			/^\s*(Cull|ZWrite|ZTest|BlendOp|Blend|Offset|ColorMask|AlphaToMask)\s+(.+?)\s*$/.exec(
				line,
			);
		if (!match) continue;
		const [, key, value] = match;
		switch (key) {
			case "Cull":
				state.cull = parseStateValue(value!);
				break;
			case "ZWrite":
				state.zWrite = parseStateValue(value!);
				break;
			case "ZTest":
				state.zTest = parseStateValue(value!);
				break;
			case "Blend":
				state.blend = splitStateValues(value!);
				break;
			case "BlendOp":
				state.blendOp = splitStateValues(value!);
				break;
			case "Offset":
				state.offset = splitStateValues(value!);
				break;
			case "ColorMask":
				state.colorMask = parseStateValue(value!);
				break;
			case "AlphaToMask":
				state.alphaToMask = parseStateValue(value!);
				break;
		}
	}
	return state;
}
