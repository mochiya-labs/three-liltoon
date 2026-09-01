import {
  AddEquation,
  AlwaysDepth,
  AlwaysStencilFunc,
  BackSide,
  CustomBlending,
  DecrementStencilOp,
  DecrementWrapStencilOp,
  DstAlphaFactor,
  DstColorFactor,
  DoubleSide,
  EqualDepth,
  EqualStencilFunc,
  FrontSide,
  GreaterDepth,
  GreaterEqualDepth,
  GreaterEqualStencilFunc,
  GreaterStencilFunc,
  IncrementStencilOp,
  IncrementWrapStencilOp,
  InvertStencilOp,
  KeepStencilOp,
  LessDepth,
  LessEqualDepth,
  LessEqualStencilFunc,
  LessStencilFunc,
  MaxEquation,
  MinEquation,
  NeverDepth,
  NeverStencilFunc,
  NotEqualDepth,
  NotEqualStencilFunc,
  OneFactor,
  OneMinusDstAlphaFactor,
  OneMinusDstColorFactor,
  OneMinusSrcAlphaFactor,
  OneMinusSrcColorFactor,
  ReplaceStencilOp,
  ReverseSubtractEquation,
  SrcAlphaFactor,
  SrcAlphaSaturateFactor,
  SrcColorFactor,
  SubtractEquation,
  ZeroFactor,
  ZeroStencilOp,
  type Material,
} from "three";
import type { LilToonRenderMode } from "../material/LilToonMaterialParameters.js";
import { warnLilToon } from "./diagnostics.js";

const cullMap = { 0: DoubleSide, 1: BackSide, 2: FrontSide, Off: DoubleSide, Front: BackSide, Back: FrontSide } as const;
const depthMap = {
  1: NeverDepth, 2: LessDepth, 3: EqualDepth, 4: LessEqualDepth,
  5: GreaterDepth, 6: NotEqualDepth, 7: GreaterEqualDepth, 8: AlwaysDepth,
  Never: NeverDepth, Less: LessDepth, Equal: EqualDepth, LEqual: LessEqualDepth,
  Greater: GreaterDepth, NotEqual: NotEqualDepth, GEqual: GreaterEqualDepth, Always: AlwaysDepth,
} as const;
const blendFactorMap = {
  0: ZeroFactor, 1: OneFactor, 2: DstColorFactor, 3: SrcColorFactor,
  4: OneMinusDstColorFactor, 5: SrcAlphaFactor, 6: OneMinusSrcColorFactor,
  7: DstAlphaFactor, 8: OneMinusDstAlphaFactor, 9: SrcAlphaSaturateFactor,
  10: OneMinusSrcAlphaFactor,
  Zero: ZeroFactor, One: OneFactor, DstColor: DstColorFactor, SrcColor: SrcColorFactor,
  OneMinusDstColor: OneMinusDstColorFactor, SrcAlpha: SrcAlphaFactor,
  OneMinusSrcColor: OneMinusSrcColorFactor, DstAlpha: DstAlphaFactor,
  OneMinusDstAlpha: OneMinusDstAlphaFactor, SrcAlphaSaturate: SrcAlphaSaturateFactor,
  OneMinusSrcAlpha: OneMinusSrcAlphaFactor,
} as const;
const equationMap = {
  0: AddEquation, 1: SubtractEquation, 2: ReverseSubtractEquation, 3: MinEquation, 4: MaxEquation,
  Add: AddEquation, Sub: SubtractEquation, RevSub: ReverseSubtractEquation,
  Min: MinEquation, Max: MaxEquation,
} as const;
const stencilFunctionMap = {
  1: NeverStencilFunc, 2: LessStencilFunc, 3: EqualStencilFunc, 4: LessEqualStencilFunc,
  5: GreaterStencilFunc, 6: NotEqualStencilFunc, 7: GreaterEqualStencilFunc, 8: AlwaysStencilFunc,
  Never: NeverStencilFunc, Less: LessStencilFunc, Equal: EqualStencilFunc, LEqual: LessEqualStencilFunc,
  Greater: GreaterStencilFunc, NotEqual: NotEqualStencilFunc, GEqual: GreaterEqualStencilFunc,
  Always: AlwaysStencilFunc,
} as const;
const stencilOperationMap = {
  0: KeepStencilOp, 1: ZeroStencilOp, 2: ReplaceStencilOp, 3: IncrementStencilOp,
  4: DecrementStencilOp, 5: InvertStencilOp, 6: IncrementWrapStencilOp, 7: DecrementWrapStencilOp,
  Keep: KeepStencilOp, Zero: ZeroStencilOp, Replace: ReplaceStencilOp,
  IncrSat: IncrementStencilOp, DecrSat: DecrementStencilOp, Invert: InvertStencilOp,
  IncrWrap: IncrementWrapStencilOp, DecrWrap: DecrementWrapStencilOp,
} as const;

type Mappable = string | number | boolean | undefined;
function mapped<T>(map: Record<string | number, T>, value: Mappable, fallback: T): T {
  return map[value as string | number] ?? map[String(value)] ?? fallback;
}
function numeric(properties: Record<string, unknown>, name: string, fallback: number): number {
  const value = properties[name];
  return typeof value === "boolean" ? Number(value) : typeof value === "number" ? value : fallback;
}

export function applyLilToonRenderState(
  material: Material,
  renderMode: LilToonRenderMode,
  properties: Record<string, unknown>,
): void {
  const cull = properties._Cull as Mappable ?? 2;
  material.side = mapped(cullMap as Record<string | number, Material["side"]>, cull, FrontSide);
  material.depthWrite = numeric(properties, "_ZWrite", renderMode === "transparent" ? 0 : 1) !== 0;
  material.depthTest = true;
  material.depthFunc = mapped(depthMap as Record<string | number, Material["depthFunc"]>, properties._ZTest as Mappable ?? 4, LessEqualDepth);
  material.transparent = renderMode === "transparent";
  if (material.transparent) {
    material.blending = CustomBlending;
    material.blendSrc = mapped(blendFactorMap as Record<string | number, Material["blendSrc"]>, properties._SrcBlend as Mappable ?? 5, SrcAlphaFactor);
    material.blendDst = mapped(blendFactorMap as unknown as Record<string | number, Material["blendDst"]>, properties._DstBlend as Mappable ?? 10, OneMinusSrcAlphaFactor);
    material.blendEquation = mapped(equationMap as Record<string | number, Material["blendEquation"]>, properties._BlendOp as Mappable ?? 0, AddEquation);
    material.blendSrcAlpha = mapped(blendFactorMap as Record<string | number, NonNullable<Material["blendSrcAlpha"]>>, properties._SrcBlendAlpha as Mappable ?? 1, OneFactor);
    material.blendDstAlpha = mapped(blendFactorMap as unknown as Record<string | number, NonNullable<Material["blendDstAlpha"]>>, properties._DstBlendAlpha as Mappable ?? 10, OneMinusSrcAlphaFactor);
    material.blendEquationAlpha = mapped(equationMap as Record<string | number, NonNullable<Material["blendEquationAlpha"]>>, properties._BlendOpAlpha as Mappable ?? 0, AddEquation);
  }
  material.stencilWrite = numeric(properties, "_StencilRef", 0) !== 0 || numeric(properties, "_StencilWriteMask", 255) !== 255;
  material.stencilRef = numeric(properties, "_StencilRef", 0);
  material.stencilFuncMask = numeric(properties, "_StencilReadMask", 255);
  material.stencilWriteMask = numeric(properties, "_StencilWriteMask", 255);
  material.stencilFunc = mapped(stencilFunctionMap as Record<string | number, Material["stencilFunc"]>, properties._StencilComp as Mappable ?? 8, AlwaysStencilFunc);
  material.stencilFail = mapped(stencilOperationMap as Record<string | number, Material["stencilFail"]>, properties._StencilFail as Mappable ?? 0, KeepStencilOp);
  material.stencilZFail = mapped(stencilOperationMap as Record<string | number, Material["stencilZFail"]>, properties._StencilZFail as Mappable ?? 0, KeepStencilOp);
  material.stencilZPass = mapped(stencilOperationMap as Record<string | number, Material["stencilZPass"]>, properties._StencilPass as Mappable ?? 0, KeepStencilOp);
  material.polygonOffsetFactor = numeric(properties, "_OffsetFactor", 0);
  material.polygonOffsetUnits = numeric(properties, "_OffsetUnits", 0);
  material.polygonOffset = material.polygonOffsetFactor !== 0 || material.polygonOffsetUnits !== 0;
  const colorMask = numeric(properties, "_ColorMask", 15);
  material.colorWrite = colorMask !== 0;
  if (colorMask !== 0 && colorMask !== 15) {
    warnLilToon(`Per-channel ColorMask ${colorMask} is approximated as all channels enabled.`);
  }
  material.alphaToCoverage = numeric(properties, "_AlphaToMask", 0) !== 0;
  material.needsUpdate = true;
}

export const renderStateMappings = {
  cullMap,
  depthMap,
  blendFactorMap,
  equationMap,
  stencilFunctionMap,
  stencilOperationMap,
};
