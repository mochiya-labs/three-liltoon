export type ShaderPropertyType =
	| "Float"
	| "Int"
	| "Range"
	| "Color"
	| "Vector"
	| "2D"
	| "3D"
	| "Cube"
	| string;

export interface TextureDefault {
	texture: string;
}

export type ShaderPropertyDefault = number | number[] | string | TextureDefault;

export interface ShaderProperty {
	name: string;
	displayName?: string;
	type: ShaderPropertyType;
	range?: [number, number];
	defaultValue: ShaderPropertyDefault;
	attributes: string[];
}

export interface PropertyReference {
	property: string;
}

export type ShaderStateValue = number | string | boolean | PropertyReference;

export interface ShaderStencilState {
	ref?: ShaderStateValue;
	readMask?: ShaderStateValue;
	writeMask?: ShaderStateValue;
	comp?: ShaderStateValue;
	pass?: ShaderStateValue;
	fail?: ShaderStateValue;
	zFail?: ShaderStateValue;
}

export interface ShaderRenderState {
	cull?: ShaderStateValue;
	zWrite?: ShaderStateValue;
	zTest?: ShaderStateValue;
	blend?: ShaderStateValue[];
	blendOp?: ShaderStateValue[];
	stencil?: ShaderStencilState;
	offset?: ShaderStateValue[];
	colorMask?: ShaderStateValue;
	alphaToMask?: ShaderStateValue;
}

export interface ShaderLabPass {
	name?: string;
	tags: Record<string, string>;
	renderState: ShaderRenderState;
	defines: Record<string, string | boolean>;
	pragmas: string[];
	includes: string[];
	hlsl: string;
}

export interface ShaderLabSubShader {
	tags: Record<string, string>;
	renderState: ShaderRenderState;
	passes: ShaderLabPass[];
	usePasses: string[];
}

export interface ShaderLabShader {
	name: string;
	properties: ShaderProperty[];
	subShaders: ShaderLabSubShader[];
}

export interface SourceBlock {
	keyword: string;
	body: string;
	start: number;
	end: number;
}
