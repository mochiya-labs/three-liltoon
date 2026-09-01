// Generated from vendor/lilToon/Assets/lilToon/Shader/lts.shader. Do not edit.
export const LILTOON_PROPERTIES = [
  {
    "name": "_DummyProperty",
    "displayName": "",
    "type": "Float",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_Invisible",
    "displayName": "sInvisible",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_AsUnlit",
    "displayName": "sAsUnlit",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_Cutoff",
    "displayName": "sCutoff",
    "type": "Range",
    "range": [
      -0.001,
      1.001
    ],
    "defaultValue": 0.5,
    "attributes": []
  },
  {
    "name": "_SubpassCutoff",
    "displayName": "sSubpassCutoff",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.5,
    "attributes": []
  },
  {
    "name": "_FlipNormal",
    "displayName": "sFlipBackfaceNormal",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_ShiftBackfaceUV",
    "displayName": "sShiftBackfaceUV",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_BackfaceForceShadow",
    "displayName": "sBackfaceForceShadow",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_BackfaceColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_VertexLightStrength",
    "displayName": "sVertexLightStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_LightMinLimit",
    "displayName": "sLightMinLimit",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.05,
    "attributes": []
  },
  {
    "name": "_LightMaxLimit",
    "displayName": "sLightMaxLimit",
    "type": "Range",
    "range": [
      0,
      10
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_BeforeExposureLimit",
    "displayName": "sBeforeExposureLimit",
    "type": "Float",
    "defaultValue": 10000,
    "attributes": []
  },
  {
    "name": "_MonochromeLighting",
    "displayName": "sMonochromeLighting",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_AlphaBoostFA",
    "displayName": "sAlphaBoostFA",
    "type": "Range",
    "range": [
      1,
      100
    ],
    "defaultValue": 10,
    "attributes": []
  },
  {
    "name": "_lilDirectionalLightStrength",
    "displayName": "sDirectionalLightStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_LightDirectionOverride",
    "displayName": "sLightDirectionOverrides",
    "type": "Vector",
    "defaultValue": [
      0.001,
      0.002,
      0.001,
      0
    ],
    "attributes": [
      "lilVec3B"
    ]
  },
  {
    "name": "_AAStrength",
    "displayName": "sAAShading",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_UseDither",
    "displayName": "sDither",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_DitherTex",
    "displayName": "Dither",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_DitherMaxValue",
    "displayName": "Max Value",
    "type": "Float",
    "defaultValue": 255,
    "attributes": []
  },
  {
    "name": "_EnvRimBorder",
    "displayName": "[VRCLV] Rim Border",
    "type": "Range",
    "range": [
      0,
      3
    ],
    "defaultValue": 3,
    "attributes": []
  },
  {
    "name": "_EnvRimBlur",
    "displayName": "[VRCLV] Rim Blur",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.35,
    "attributes": []
  },
  {
    "name": "_Color",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "lilHDR",
      "MainColor"
    ]
  },
  {
    "name": "_MainTex",
    "displayName": "Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "MainTexture"
    ]
  },
  {
    "name": "_MainTex_ScrollRotate",
    "displayName": "sScrollRotates",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilUVAnim"
    ]
  },
  {
    "name": "_MainTexHSVG",
    "displayName": "sHSVGs",
    "type": "Vector",
    "defaultValue": [
      0,
      1,
      1,
      1
    ],
    "attributes": [
      "lilHSVG"
    ]
  },
  {
    "name": "_MainGradationStrength",
    "displayName": "Gradation Strength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_MainGradationTex",
    "displayName": "Gradation Map",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_MainColorAdjustMask",
    "displayName": "Adjust Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_UseMain2ndTex",
    "displayName": "sMainColor2nd",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_Color2nd",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_Main2ndTex",
    "displayName": "Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_Main2ndTexAngle",
    "displayName": "sAngle",
    "type": "Float",
    "defaultValue": 0,
    "attributes": [
      "lilAngle"
    ]
  },
  {
    "name": "_Main2ndTex_ScrollRotate",
    "displayName": "sScrollRotates",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilUVAnim"
    ]
  },
  {
    "name": "_Main2ndTex_UVMode",
    "displayName": "UV Mode|UV0|UV1|UV2|UV3|MatCap",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_Main2ndTex_Cull",
    "displayName": "sCullModes",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_Main2ndTexDecalAnimation",
    "displayName": "sDecalAnimations",
    "type": "Vector",
    "defaultValue": [
      1,
      1,
      1,
      30
    ],
    "attributes": [
      "lilDecalAnim"
    ]
  },
  {
    "name": "_Main2ndTexDecalSubParam",
    "displayName": "sDecalSubParams",
    "type": "Vector",
    "defaultValue": [
      1,
      1,
      0,
      1
    ],
    "attributes": [
      "lilDecalSub"
    ]
  },
  {
    "name": "_Main2ndTexIsDecal",
    "displayName": "sAsDecal",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Main2ndTexIsLeftOnly",
    "displayName": "Left Only",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Main2ndTexIsRightOnly",
    "displayName": "Right Only",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Main2ndTexShouldCopy",
    "displayName": "Copy",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Main2ndTexShouldFlipMirror",
    "displayName": "Flip Mirror",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Main2ndTexShouldFlipCopy",
    "displayName": "Flip Copy",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Main2ndTexIsMSDF",
    "displayName": "sAsMSDF",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Main2ndBlendMask",
    "displayName": "Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_Main2ndTexBlendMode",
    "displayName": "sBlendModes",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_Main2ndTexAlphaMode",
    "displayName": "sAlphaModes",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_Main2ndEnableLighting",
    "displayName": "sEnableLighting",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_Main2ndDissolveMask",
    "displayName": "Dissolve Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_Main2ndDissolveNoiseMask",
    "displayName": "Dissolve Noise Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "gray"
    },
    "attributes": []
  },
  {
    "name": "_Main2ndDissolveNoiseMask_ScrollRotate",
    "displayName": "Scroll",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilUVAnim"
    ]
  },
  {
    "name": "_Main2ndDissolveNoiseStrength",
    "displayName": "Dissolve Noise Strength",
    "type": "Float",
    "defaultValue": 0.1,
    "attributes": []
  },
  {
    "name": "_Main2ndDissolveColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_Main2ndDissolveParams",
    "displayName": "sDissolveParams",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0.5,
      0.1
    ],
    "attributes": [
      "lilDissolve"
    ]
  },
  {
    "name": "_Main2ndDissolvePos",
    "displayName": "Dissolve Position",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilDissolveP"
    ]
  },
  {
    "name": "_Main2ndDistanceFade",
    "displayName": "sDistanceFadeSettings",
    "type": "Vector",
    "defaultValue": [
      0.1,
      0.01,
      0,
      0
    ],
    "attributes": [
      "lilFFFB"
    ]
  },
  {
    "name": "_UseMain3rdTex",
    "displayName": "sMainColor3rd",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_Color3rd",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_Main3rdTex",
    "displayName": "Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_Main3rdTexAngle",
    "displayName": "sAngle",
    "type": "Float",
    "defaultValue": 0,
    "attributes": [
      "lilAngle"
    ]
  },
  {
    "name": "_Main3rdTex_ScrollRotate",
    "displayName": "sScrollRotates",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilUVAnim"
    ]
  },
  {
    "name": "_Main3rdTex_UVMode",
    "displayName": "UV Mode|UV0|UV1|UV2|UV3|MatCap",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_Main3rdTex_Cull",
    "displayName": "sCullModes",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_Main3rdTexDecalAnimation",
    "displayName": "sDecalAnimations",
    "type": "Vector",
    "defaultValue": [
      1,
      1,
      1,
      30
    ],
    "attributes": [
      "lilDecalAnim"
    ]
  },
  {
    "name": "_Main3rdTexDecalSubParam",
    "displayName": "sDecalSubParams",
    "type": "Vector",
    "defaultValue": [
      1,
      1,
      0,
      1
    ],
    "attributes": [
      "lilDecalSub"
    ]
  },
  {
    "name": "_Main3rdTexIsDecal",
    "displayName": "sAsDecal",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Main3rdTexIsLeftOnly",
    "displayName": "Left Only",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Main3rdTexIsRightOnly",
    "displayName": "Right Only",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Main3rdTexShouldCopy",
    "displayName": "Copy",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Main3rdTexShouldFlipMirror",
    "displayName": "Flip Mirror",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Main3rdTexShouldFlipCopy",
    "displayName": "Flip Copy",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Main3rdTexIsMSDF",
    "displayName": "sAsMSDF",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Main3rdBlendMask",
    "displayName": "Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_Main3rdTexBlendMode",
    "displayName": "sBlendModes",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_Main3rdTexAlphaMode",
    "displayName": "sAlphaModes",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_Main3rdEnableLighting",
    "displayName": "sEnableLighting",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_Main3rdDissolveMask",
    "displayName": "Dissolve Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_Main3rdDissolveNoiseMask",
    "displayName": "Dissolve Noise Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "gray"
    },
    "attributes": []
  },
  {
    "name": "_Main3rdDissolveNoiseMask_ScrollRotate",
    "displayName": "Scroll",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilUVAnim"
    ]
  },
  {
    "name": "_Main3rdDissolveNoiseStrength",
    "displayName": "Dissolve Noise Strength",
    "type": "Float",
    "defaultValue": 0.1,
    "attributes": []
  },
  {
    "name": "_Main3rdDissolveColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_Main3rdDissolveParams",
    "displayName": "sDissolveParams",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0.5,
      0.1
    ],
    "attributes": [
      "lilDissolve"
    ]
  },
  {
    "name": "_Main3rdDissolvePos",
    "displayName": "Dissolve Position",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilDissolveP"
    ]
  },
  {
    "name": "_Main3rdDistanceFade",
    "displayName": "sDistanceFadeSettings",
    "type": "Vector",
    "defaultValue": [
      0.1,
      0.01,
      0,
      0
    ],
    "attributes": [
      "lilFFFB"
    ]
  },
  {
    "name": "_AlphaMaskMode",
    "displayName": "sAlphaMaskModes",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnumLabel"
    ]
  },
  {
    "name": "_AlphaMask",
    "displayName": "AlphaMask",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_AlphaMaskScale",
    "displayName": "Scale",
    "type": "Float",
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_AlphaMaskValue",
    "displayName": "Offset",
    "type": "Float",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_UseBumpMap",
    "displayName": "sNormalMap",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_BumpMap",
    "displayName": "Normal Map",
    "type": "2D",
    "defaultValue": {
      "texture": "bump"
    },
    "attributes": [
      "Normal"
    ]
  },
  {
    "name": "_BumpScale",
    "displayName": "Scale",
    "type": "Range",
    "range": [
      -10,
      10
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_UseBump2ndMap",
    "displayName": "sNormalMap2nd",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_Bump2ndMap",
    "displayName": "Normal Map",
    "type": "2D",
    "defaultValue": {
      "texture": "bump"
    },
    "attributes": [
      "Normal"
    ]
  },
  {
    "name": "_Bump2ndMap_UVMode",
    "displayName": "UV Mode|UV0|UV1|UV2|UV3",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_Bump2ndScale",
    "displayName": "Scale",
    "type": "Range",
    "range": [
      -10,
      10
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_Bump2ndScaleMask",
    "displayName": "Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_UseAnisotropy",
    "displayName": "sAnisotropy",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_AnisotropyTangentMap",
    "displayName": "Tangent Map",
    "type": "2D",
    "defaultValue": {
      "texture": "bump"
    },
    "attributes": [
      "Normal"
    ]
  },
  {
    "name": "_AnisotropyScale",
    "displayName": "Scale",
    "type": "Range",
    "range": [
      -1,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_AnisotropyScaleMask",
    "displayName": "Scale Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_AnisotropyTangentWidth",
    "displayName": "sTangentWidth",
    "type": "Range",
    "range": [
      0,
      10
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_AnisotropyBitangentWidth",
    "displayName": "sBitangentWidth",
    "type": "Range",
    "range": [
      0,
      10
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_AnisotropyShift",
    "displayName": "sOffset",
    "type": "Range",
    "range": [
      -10,
      10
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_AnisotropyShiftNoiseScale",
    "displayName": "sNoiseStrength",
    "type": "Range",
    "range": [
      -1,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_AnisotropySpecularStrength",
    "displayName": "sStrength",
    "type": "Range",
    "range": [
      0,
      10
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_Anisotropy2ndTangentWidth",
    "displayName": "sTangentWidth",
    "type": "Range",
    "range": [
      0,
      10
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_Anisotropy2ndBitangentWidth",
    "displayName": "sBitangentWidth",
    "type": "Range",
    "range": [
      0,
      10
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_Anisotropy2ndShift",
    "displayName": "sOffset",
    "type": "Range",
    "range": [
      -10,
      10
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_Anisotropy2ndShiftNoiseScale",
    "displayName": "sNoiseStrength",
    "type": "Range",
    "range": [
      -1,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_Anisotropy2ndSpecularStrength",
    "displayName": "sStrength",
    "type": "Range",
    "range": [
      0,
      10
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_AnisotropyShiftNoiseMask",
    "displayName": "sNoise",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_Anisotropy2Reflection",
    "displayName": "sReflection",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Anisotropy2MatCap",
    "displayName": "sMatCap",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Anisotropy2MatCap2nd",
    "displayName": "sMatCap2nd",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UseBacklight",
    "displayName": "sBacklight",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_BacklightColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      0.85,
      0.8,
      0.7,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_BacklightColorTex",
    "displayName": "Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_BacklightMainStrength",
    "displayName": "sMainColorPower",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_BacklightNormalStrength",
    "displayName": "sNormalStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_BacklightBorder",
    "displayName": "Border",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.35,
    "attributes": []
  },
  {
    "name": "_BacklightBlur",
    "displayName": "sBlur",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.05,
    "attributes": []
  },
  {
    "name": "_BacklightDirectivity",
    "displayName": "sDirectivity",
    "type": "Float",
    "defaultValue": 5,
    "attributes": []
  },
  {
    "name": "_BacklightViewStrength",
    "displayName": "sViewDirectionStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_BacklightReceiveShadow",
    "displayName": "sReceiveShadow",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_BacklightBackfaceMask",
    "displayName": "sBackfaceMask",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UseShadow",
    "displayName": "sShadow",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_ShadowStrength",
    "displayName": "sStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_ShadowStrengthMask",
    "displayName": "sStrength",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_ShadowStrengthMaskLOD",
    "displayName": "LOD",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": [
      "lilLOD"
    ]
  },
  {
    "name": "_ShadowBorderMask",
    "displayName": "sBorder",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_ShadowBorderMaskLOD",
    "displayName": "LOD",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": [
      "lilLOD"
    ]
  },
  {
    "name": "_ShadowBlurMask",
    "displayName": "sBlur",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_ShadowBlurMaskLOD",
    "displayName": "LOD",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": [
      "lilLOD"
    ]
  },
  {
    "name": "_ShadowAOShift",
    "displayName": "1st Scale|1st Offset|2nd Scale|2nd Offset",
    "type": "Vector",
    "defaultValue": [
      1,
      0,
      1,
      0
    ],
    "attributes": [
      "lilFFFF"
    ]
  },
  {
    "name": "_ShadowAOShift2",
    "displayName": "3rd Scale|3rd Offset",
    "type": "Vector",
    "defaultValue": [
      1,
      0,
      1,
      0
    ],
    "attributes": [
      "lilFF"
    ]
  },
  {
    "name": "_ShadowPostAO",
    "displayName": "sIgnoreBorderProperties",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_ShadowColorType",
    "displayName": "sShadowColorTypes",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_ShadowColor",
    "displayName": "Shadow Color",
    "type": "Color",
    "defaultValue": [
      0.82,
      0.76,
      0.85,
      1
    ],
    "attributes": []
  },
  {
    "name": "_ShadowColorTex",
    "displayName": "Shadow Color",
    "type": "2D",
    "defaultValue": {
      "texture": "black"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_ShadowNormalStrength",
    "displayName": "sNormalStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_ShadowBorder",
    "displayName": "sBorder",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.5,
    "attributes": []
  },
  {
    "name": "_ShadowBlur",
    "displayName": "sBlur",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.1,
    "attributes": []
  },
  {
    "name": "_ShadowReceive",
    "displayName": "sReceiveShadow",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_Shadow2ndColor",
    "displayName": "2nd Color",
    "type": "Color",
    "defaultValue": [
      0.68,
      0.66,
      0.79,
      1
    ],
    "attributes": []
  },
  {
    "name": "_Shadow2ndColorTex",
    "displayName": "2nd Color",
    "type": "2D",
    "defaultValue": {
      "texture": "black"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_Shadow2ndNormalStrength",
    "displayName": "sNormalStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_Shadow2ndBorder",
    "displayName": "sBorder",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.15,
    "attributes": []
  },
  {
    "name": "_Shadow2ndBlur",
    "displayName": "sBlur",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.1,
    "attributes": []
  },
  {
    "name": "_Shadow2ndReceive",
    "displayName": "sReceiveShadow",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_Shadow3rdColor",
    "displayName": "3rd Color",
    "type": "Color",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": []
  },
  {
    "name": "_Shadow3rdColorTex",
    "displayName": "3rd Color",
    "type": "2D",
    "defaultValue": {
      "texture": "black"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_Shadow3rdNormalStrength",
    "displayName": "sNormalStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_Shadow3rdBorder",
    "displayName": "sBorder",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.25,
    "attributes": []
  },
  {
    "name": "_Shadow3rdBlur",
    "displayName": "sBlur",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.1,
    "attributes": []
  },
  {
    "name": "_Shadow3rdReceive",
    "displayName": "sReceiveShadow",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_ShadowBorderColor",
    "displayName": "sShadowBorderColor",
    "type": "Color",
    "defaultValue": [
      1,
      0.1,
      0,
      1
    ],
    "attributes": []
  },
  {
    "name": "_ShadowBorderRange",
    "displayName": "sShadowBorderRange",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.08,
    "attributes": []
  },
  {
    "name": "_ShadowMainStrength",
    "displayName": "sContrast",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_ShadowEnvStrength",
    "displayName": "sShadowEnvStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_ShadowMaskType",
    "displayName": "sShadowMaskTypes",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_ShadowFlatBorder",
    "displayName": "sBorder",
    "type": "Range",
    "range": [
      -2,
      2
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_ShadowFlatBlur",
    "displayName": "sBlur",
    "type": "Range",
    "range": [
      0.001,
      2
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_UseRimShade",
    "displayName": "RimShade",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_RimShadeColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      0.5,
      0.5,
      0.5,
      1
    ],
    "attributes": []
  },
  {
    "name": "_RimShadeMask",
    "displayName": "Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_RimShadeNormalStrength",
    "displayName": "sNormalStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_RimShadeBorder",
    "displayName": "sBorder",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.5,
    "attributes": []
  },
  {
    "name": "_RimShadeBlur",
    "displayName": "sBlur",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_RimShadeFresnelPower",
    "displayName": "sFresnelPower",
    "type": "Range",
    "range": [
      0.01,
      50
    ],
    "defaultValue": 1,
    "attributes": [
      "PowerSlider(3.0)"
    ]
  },
  {
    "name": "_UseReflection",
    "displayName": "sReflection",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_Smoothness",
    "displayName": "Smoothness",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_SmoothnessTex",
    "displayName": "Smoothness",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_Metallic",
    "displayName": "Metallic",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": [
      "Gamma"
    ]
  },
  {
    "name": "_MetallicGlossMap",
    "displayName": "Metallic",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_Reflectance",
    "displayName": "sReflectance",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.04,
    "attributes": [
      "Gamma"
    ]
  },
  {
    "name": "_GSAAStrength",
    "displayName": "GSAA",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_ApplySpecular",
    "displayName": "Apply Specular",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_ApplySpecularFA",
    "displayName": "sMultiLightSpecular",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_SpecularToon",
    "displayName": "Specular Toon",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_SpecularNormalStrength",
    "displayName": "sNormalStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_SpecularBorder",
    "displayName": "sBorder",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.5,
    "attributes": []
  },
  {
    "name": "_SpecularBlur",
    "displayName": "sBlur",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_ApplyReflection",
    "displayName": "sApplyReflection",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_ReflectionNormalStrength",
    "displayName": "sNormalStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_ReflectionColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_ReflectionColorTex",
    "displayName": "sColor",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_ReflectionApplyTransparency",
    "displayName": "sApplyTransparency",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_ReflectionCubeTex",
    "displayName": "Cubemap Fallback",
    "type": "Cube",
    "defaultValue": {
      "texture": "black"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_ReflectionCubeColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      0,
      0,
      0,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_ReflectionCubeOverride",
    "displayName": "Override",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_ReflectionCubeEnableLighting",
    "displayName": "sEnableLighting+ (Fallback)",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_ReflectionBlendMode",
    "displayName": "sBlendModes",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_UseMatCap",
    "displayName": "sMatCap",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_MatCapColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_MatCapTex",
    "displayName": "Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_MatCapMainStrength",
    "displayName": "sMainColorPower",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_MatCapBlendUV1",
    "displayName": "sBlendUV1",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilVec2R"
    ]
  },
  {
    "name": "_MatCapZRotCancel",
    "displayName": "sMatCapZRotCancel",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_MatCapPerspective",
    "displayName": "sFixPerspective",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_MatCapVRParallaxStrength",
    "displayName": "sVRParallaxStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_MatCapBlend",
    "displayName": "Blend",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_MatCapBlendMask",
    "displayName": "Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_MatCapEnableLighting",
    "displayName": "sEnableLighting",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_MatCapShadowMask",
    "displayName": "sShadowMask",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_MatCapBackfaceMask",
    "displayName": "sBackfaceMask",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_MatCapLod",
    "displayName": "sBlur",
    "type": "Range",
    "range": [
      0,
      10
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_MatCapBlendMode",
    "displayName": "sBlendModes",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_MatCapApplyTransparency",
    "displayName": "sApplyTransparency",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_MatCapNormalStrength",
    "displayName": "sNormalStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_MatCapCustomNormal",
    "displayName": "sMatCapCustomNormal",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_MatCapBumpMap",
    "displayName": "Normal Map",
    "type": "2D",
    "defaultValue": {
      "texture": "bump"
    },
    "attributes": [
      "Normal"
    ]
  },
  {
    "name": "_MatCapBumpScale",
    "displayName": "Scale",
    "type": "Range",
    "range": [
      -10,
      10
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_UseMatCap2nd",
    "displayName": "sMatCap2nd",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_MatCap2ndColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_MatCap2ndTex",
    "displayName": "Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_MatCap2ndMainStrength",
    "displayName": "sMainColorPower",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_MatCap2ndBlendUV1",
    "displayName": "sBlendUV1",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilVec2R"
    ]
  },
  {
    "name": "_MatCap2ndZRotCancel",
    "displayName": "sMatCapZRotCancel",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_MatCap2ndPerspective",
    "displayName": "sFixPerspective",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_MatCap2ndVRParallaxStrength",
    "displayName": "sVRParallaxStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_MatCap2ndBlend",
    "displayName": "Blend",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_MatCap2ndBlendMask",
    "displayName": "Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_MatCap2ndEnableLighting",
    "displayName": "sEnableLighting",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_MatCap2ndShadowMask",
    "displayName": "sShadowMask",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_MatCap2ndBackfaceMask",
    "displayName": "sBackfaceMask",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_MatCap2ndLod",
    "displayName": "sBlur",
    "type": "Range",
    "range": [
      0,
      10
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_MatCap2ndBlendMode",
    "displayName": "sBlendModes",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_MatCap2ndApplyTransparency",
    "displayName": "sApplyTransparency",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_MatCap2ndNormalStrength",
    "displayName": "sNormalStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_MatCap2ndCustomNormal",
    "displayName": "sMatCapCustomNormal",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_MatCap2ndBumpMap",
    "displayName": "Normal Map",
    "type": "2D",
    "defaultValue": {
      "texture": "bump"
    },
    "attributes": [
      "Normal"
    ]
  },
  {
    "name": "_MatCap2ndBumpScale",
    "displayName": "Scale",
    "type": "Range",
    "range": [
      -10,
      10
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_UseRim",
    "displayName": "sRimLight",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_RimColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      0.66,
      0.5,
      0.48,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_RimColorTex",
    "displayName": "Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_RimMainStrength",
    "displayName": "sMainColorPower",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_RimNormalStrength",
    "displayName": "sNormalStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_RimBorder",
    "displayName": "sBorder",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.5,
    "attributes": []
  },
  {
    "name": "_RimBlur",
    "displayName": "sBlur",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.65,
    "attributes": []
  },
  {
    "name": "_RimFresnelPower",
    "displayName": "sFresnelPower",
    "type": "Range",
    "range": [
      0.01,
      50
    ],
    "defaultValue": 3.5,
    "attributes": [
      "PowerSlider(3.0)"
    ]
  },
  {
    "name": "_RimEnableLighting",
    "displayName": "sEnableLighting",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_RimShadowMask",
    "displayName": "sShadowMask",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.5,
    "attributes": []
  },
  {
    "name": "_RimBackfaceMask",
    "displayName": "sBackfaceMask",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_RimVRParallaxStrength",
    "displayName": "sVRParallaxStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_RimApplyTransparency",
    "displayName": "sApplyTransparency",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_RimDirStrength",
    "displayName": "sRimLightDirection",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_RimDirRange",
    "displayName": "sRimDirectionRange",
    "type": "Range",
    "range": [
      -1,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_RimIndirRange",
    "displayName": "sRimIndirectionRange",
    "type": "Range",
    "range": [
      -1,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_RimIndirColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_RimIndirBorder",
    "displayName": "sBorder",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.5,
    "attributes": []
  },
  {
    "name": "_RimIndirBlur",
    "displayName": "sBlur",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.1,
    "attributes": []
  },
  {
    "name": "_RimBlendMode",
    "displayName": "sBlendModes",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_UseGlitter",
    "displayName": "sGlitter",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_GlitterUVMode",
    "displayName": "UV Mode|UV0|UV1",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_GlitterColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_GlitterColorTex",
    "displayName": "Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_GlitterColorTex_UVMode",
    "displayName": "UV Mode|UV0|UV1|UV2|UV3",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_GlitterMainStrength",
    "displayName": "sMainColorPower",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_GlitterNormalStrength",
    "displayName": "sNormalStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_GlitterScaleRandomize",
    "displayName": "sRandomize+ (Size)",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_GlitterApplyShape",
    "displayName": "Shape",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_GlitterShapeTex",
    "displayName": "Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_GlitterAtras",
    "displayName": "Atras",
    "type": "Vector",
    "defaultValue": [
      1,
      1,
      0,
      0
    ],
    "attributes": [
      "lilVec2"
    ]
  },
  {
    "name": "_GlitterAngleRandomize",
    "displayName": "sRandomize+ (+sAngle+)",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_GlitterParams1",
    "displayName": "Tiling|Particle Size|Contrast",
    "type": "Vector",
    "defaultValue": [
      256,
      256,
      0.16,
      50
    ],
    "attributes": [
      "lilGlitParam1"
    ]
  },
  {
    "name": "_GlitterParams2",
    "displayName": "sGlitterParams2",
    "type": "Vector",
    "defaultValue": [
      0.25,
      0,
      0,
      0
    ],
    "attributes": [
      "lilGlitParam2"
    ]
  },
  {
    "name": "_GlitterPostContrast",
    "displayName": "sPostContrast",
    "type": "Float",
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_GlitterSensitivity",
    "displayName": "Sensitivity",
    "type": "Float",
    "defaultValue": 0.25,
    "attributes": []
  },
  {
    "name": "_GlitterEnableLighting",
    "displayName": "sEnableLighting",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_GlitterShadowMask",
    "displayName": "sShadowMask",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_GlitterBackfaceMask",
    "displayName": "sBackfaceMask",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_GlitterApplyTransparency",
    "displayName": "sApplyTransparency",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_GlitterVRParallaxStrength",
    "displayName": "sVRParallaxStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_UseEmission",
    "displayName": "sEmission",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_EmissionColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "HDR",
      "lilHDR"
    ]
  },
  {
    "name": "_EmissionMap",
    "displayName": "Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_EmissionMap_ScrollRotate",
    "displayName": "sScrollRotates",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilUVAnim"
    ]
  },
  {
    "name": "_EmissionMap_UVMode",
    "displayName": "UV Mode|UV0|UV1|UV2|UV3|Rim",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_EmissionMainStrength",
    "displayName": "sMainColorPower",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_EmissionBlend",
    "displayName": "Blend",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_EmissionBlendMask",
    "displayName": "Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_EmissionBlendMask_ScrollRotate",
    "displayName": "sScrollRotates",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilUVAnim"
    ]
  },
  {
    "name": "_EmissionBlendMode",
    "displayName": "sBlendModes",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_EmissionBlink",
    "displayName": "sBlinkSettings",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      3.141593,
      0
    ],
    "attributes": [
      "lilBlink"
    ]
  },
  {
    "name": "_EmissionUseGrad",
    "displayName": "sGradation",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_EmissionGradTex",
    "displayName": "Gradation Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_EmissionGradSpeed",
    "displayName": "Gradation Speed",
    "type": "Float",
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_EmissionParallaxDepth",
    "displayName": "sParallaxDepth",
    "type": "Float",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_EmissionFluorescence",
    "displayName": "sFluorescence",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_egci",
    "displayName": "",
    "type": "Int",
    "defaultValue": 2,
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_egai",
    "displayName": "",
    "type": "Int",
    "defaultValue": 2,
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_egc0",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_egc1",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_egc2",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_egc3",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_egc4",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_egc5",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_egc6",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_egc7",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_ega0",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_ega1",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      1
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_ega2",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_ega3",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_ega4",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_ega5",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_ega6",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_ega7",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_UseEmission2nd",
    "displayName": "sEmission2nd",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_Emission2ndColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "HDR",
      "lilHDR"
    ]
  },
  {
    "name": "_Emission2ndMap",
    "displayName": "Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_Emission2ndMap_ScrollRotate",
    "displayName": "sScrollRotates",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilUVAnim"
    ]
  },
  {
    "name": "_Emission2ndMap_UVMode",
    "displayName": "UV Mode|UV0|UV1|UV2|UV3|Rim",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_Emission2ndMainStrength",
    "displayName": "sMainColorPower",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_Emission2ndBlend",
    "displayName": "Blend",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_Emission2ndBlendMask",
    "displayName": "Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_Emission2ndBlendMask_ScrollRotate",
    "displayName": "sScrollRotates",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilUVAnim"
    ]
  },
  {
    "name": "_Emission2ndBlendMode",
    "displayName": "sBlendModes",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_Emission2ndBlink",
    "displayName": "sBlinkSettings",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      3.141593,
      0
    ],
    "attributes": [
      "lilBlink"
    ]
  },
  {
    "name": "_Emission2ndUseGrad",
    "displayName": "sGradation",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Emission2ndGradTex",
    "displayName": "Gradation Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_Emission2ndGradSpeed",
    "displayName": "Gradation Speed",
    "type": "Float",
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_Emission2ndParallaxDepth",
    "displayName": "sParallaxDepth",
    "type": "Float",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_Emission2ndFluorescence",
    "displayName": "sFluorescence",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_e2gci",
    "displayName": "",
    "type": "Int",
    "defaultValue": 2,
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2gai",
    "displayName": "",
    "type": "Int",
    "defaultValue": 2,
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2gc0",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2gc1",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2gc2",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2gc3",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2gc4",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2gc5",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2gc6",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2gc7",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2ga0",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2ga1",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      1
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2ga2",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2ga3",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2ga4",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2ga5",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2ga6",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2ga7",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_UseParallax",
    "displayName": "sParallax",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_UsePOM",
    "displayName": "sPOM",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_ParallaxMap",
    "displayName": "Parallax Map",
    "type": "2D",
    "defaultValue": {
      "texture": "gray"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_Parallax",
    "displayName": "Parallax Scale",
    "type": "Float",
    "defaultValue": 0.02,
    "attributes": []
  },
  {
    "name": "_ParallaxOffset",
    "displayName": "sParallaxOffset",
    "type": "Float",
    "defaultValue": 0.5,
    "attributes": []
  },
  {
    "name": "_DistanceFadeColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      0,
      0,
      0,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_DistanceFade",
    "displayName": "sDistanceFadeSettings",
    "type": "Vector",
    "defaultValue": [
      0.1,
      0.01,
      0,
      0
    ],
    "attributes": [
      "lilFFFB"
    ]
  },
  {
    "name": "_DistanceFadeMode",
    "displayName": "sDistanceFadeModes",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_DistanceFadeRimColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_DistanceFadeRimFresnelPower",
    "displayName": "sFresnelPower",
    "type": "Range",
    "range": [
      0.01,
      50
    ],
    "defaultValue": 5,
    "attributes": [
      "PowerSlider(3.0)"
    ]
  },
  {
    "name": "_UseAudioLink",
    "displayName": "sAudioLink",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_AudioLinkDefaultValue",
    "displayName": "Strength|Blink Strength|Blink Speed|Blink Threshold",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      2,
      0.75
    ],
    "attributes": [
      "lilFRFR"
    ]
  },
  {
    "name": "_AudioLinkUVMode",
    "displayName": "sAudioLinkUVModes",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_AudioLinkUVParams",
    "displayName": "Scale|Offset|sAngle|Band|Bass|Low Mid|High Mid|Treble",
    "type": "Vector",
    "defaultValue": [
      0.25,
      0,
      0,
      0.125
    ],
    "attributes": [
      "lilALUVParams"
    ]
  },
  {
    "name": "_AudioLinkStart",
    "displayName": "sAudioLinkStartPosition",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilVec3"
    ]
  },
  {
    "name": "_AudioLinkMask",
    "displayName": "Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "blue"
    },
    "attributes": []
  },
  {
    "name": "_AudioLinkMask_ScrollRotate",
    "displayName": "sScrollRotates",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilUVAnim"
    ]
  },
  {
    "name": "_AudioLinkMask_UVMode",
    "displayName": "UV Mode|UV0|UV1|UV2|UV3",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_AudioLink2Main2nd",
    "displayName": "sMainColor2nd",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_AudioLink2Main3rd",
    "displayName": "sMainColor3rd",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_AudioLink2Emission",
    "displayName": "sEmission",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_AudioLink2EmissionGrad",
    "displayName": "sEmission+sGradation",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_AudioLink2Emission2nd",
    "displayName": "sEmission2nd",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_AudioLink2Emission2ndGrad",
    "displayName": "sEmission2nd+sGradation",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_AudioLink2Vertex",
    "displayName": "sVertex",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_AudioLinkVertexUVMode",
    "displayName": "sAudioLinkVertexUVModes",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_AudioLinkVertexUVParams",
    "displayName": "Scale|Offset|sAngle|Band|Bass|Low Mid|High Mid|Treble",
    "type": "Vector",
    "defaultValue": [
      0.25,
      0,
      0,
      0.125
    ],
    "attributes": [
      "lilALUVParams"
    ]
  },
  {
    "name": "_AudioLinkVertexStart",
    "displayName": "sAudioLinkStartPosition",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilVec3"
    ]
  },
  {
    "name": "_AudioLinkVertexStrength",
    "displayName": "sAudioLinkVertexStrengths",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      1
    ],
    "attributes": [
      "lilVec3Float"
    ]
  },
  {
    "name": "_AudioLinkAsLocal",
    "displayName": "sAudioLinkAsLocal",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_AudioLinkLocalMap",
    "displayName": "Local Map",
    "type": "2D",
    "defaultValue": {
      "texture": "black"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_AudioLinkLocalMapParams",
    "displayName": "sAudioLinkLocalMapParams",
    "type": "Vector",
    "defaultValue": [
      120,
      1,
      0,
      0
    ],
    "attributes": [
      "lilALLocal"
    ]
  },
  {
    "name": "_DissolveMask",
    "displayName": "Dissolve Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_DissolveNoiseMask",
    "displayName": "Dissolve Noise Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "gray"
    },
    "attributes": []
  },
  {
    "name": "_DissolveNoiseMask_ScrollRotate",
    "displayName": "Scroll",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilUVAnim"
    ]
  },
  {
    "name": "_DissolveNoiseStrength",
    "displayName": "Dissolve Noise Strength",
    "type": "Float",
    "defaultValue": 0.1,
    "attributes": []
  },
  {
    "name": "_DissolveColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_DissolveParams",
    "displayName": "sDissolveParamsModes",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0.5,
      0.1
    ],
    "attributes": [
      "lilDissolve"
    ]
  },
  {
    "name": "_DissolvePos",
    "displayName": "Dissolve Position",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilDissolveP"
    ]
  },
  {
    "name": "_IDMaskCompile",
    "displayName": "_IDMaskCompile",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMaskFrom",
    "displayName": "_IDMaskFrom|0: UV0|1: UV1|2: UV2|3: UV3|4: UV4|5: UV5|6: UV6|7: UV7|8: VertexID",
    "type": "Int",
    "defaultValue": 8,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_IDMask1",
    "displayName": "_IDMask1",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMask2",
    "displayName": "_IDMask2",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMask3",
    "displayName": "_IDMask3",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMask4",
    "displayName": "_IDMask4",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMask5",
    "displayName": "_IDMask5",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMask6",
    "displayName": "_IDMask6",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMask7",
    "displayName": "_IDMask7",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMask8",
    "displayName": "_IDMask8",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMaskIsBitmap",
    "displayName": "_IDMaskIsBitmap",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMaskIndex1",
    "displayName": "_IDMaskIndex1",
    "type": "Int",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_IDMaskIndex2",
    "displayName": "_IDMaskIndex2",
    "type": "Int",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_IDMaskIndex3",
    "displayName": "_IDMaskIndex3",
    "type": "Int",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_IDMaskIndex4",
    "displayName": "_IDMaskIndex4",
    "type": "Int",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_IDMaskIndex5",
    "displayName": "_IDMaskIndex5",
    "type": "Int",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_IDMaskIndex6",
    "displayName": "_IDMaskIndex6",
    "type": "Int",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_IDMaskIndex7",
    "displayName": "_IDMaskIndex7",
    "type": "Int",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_IDMaskIndex8",
    "displayName": "_IDMaskIndex8",
    "type": "Int",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_IDMaskControlsDissolve",
    "displayName": "_IDMaskControlsDissolve",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMaskPrior1",
    "displayName": "_IDMaskPrior1",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMaskPrior2",
    "displayName": "_IDMaskPrior2",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMaskPrior3",
    "displayName": "_IDMaskPrior3",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMaskPrior4",
    "displayName": "_IDMaskPrior4",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMaskPrior5",
    "displayName": "_IDMaskPrior5",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMaskPrior6",
    "displayName": "_IDMaskPrior6",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMaskPrior7",
    "displayName": "_IDMaskPrior7",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMaskPrior8",
    "displayName": "_IDMaskPrior8",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_UDIMDiscardCompile",
    "displayName": "sUDIMDiscard",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_UDIMDiscardUV",
    "displayName": "sUDIMDiscardUV|0: UV0|1: UV1|2: UV2|3: UV3",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_UDIMDiscardMode",
    "displayName": "sUDIMDiscardMode|0: Vertex|1: Pixel (slower)",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_UDIMDiscardRow3_3",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UDIMDiscardRow3_2",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UDIMDiscardRow3_1",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UDIMDiscardRow3_0",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UDIMDiscardRow2_3",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UDIMDiscardRow2_2",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UDIMDiscardRow2_1",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UDIMDiscardRow2_0",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UDIMDiscardRow1_3",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UDIMDiscardRow1_2",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UDIMDiscardRow1_1",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UDIMDiscardRow1_0",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UDIMDiscardRow0_3",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UDIMDiscardRow0_2",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UDIMDiscardRow0_1",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UDIMDiscardRow0_0",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_OutlineColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      0.6,
      0.56,
      0.73,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_OutlineTex",
    "displayName": "Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_OutlineTex_ScrollRotate",
    "displayName": "sScrollRotates",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilUVAnim"
    ]
  },
  {
    "name": "_OutlineTexHSVG",
    "displayName": "sHSVGs",
    "type": "Vector",
    "defaultValue": [
      0,
      1,
      1,
      1
    ],
    "attributes": [
      "lilHSVG"
    ]
  },
  {
    "name": "_OutlineLitColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      1,
      0.2,
      0,
      0
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_OutlineLitApplyTex",
    "displayName": "sColorFromMain",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_OutlineLitScale",
    "displayName": "Scale",
    "type": "Float",
    "defaultValue": 10,
    "attributes": []
  },
  {
    "name": "_OutlineLitOffset",
    "displayName": "Offset",
    "type": "Float",
    "defaultValue": -8,
    "attributes": []
  },
  {
    "name": "_OutlineLitShadowReceive",
    "displayName": "sReceiveShadow",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_OutlineWidth",
    "displayName": "Width",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.08,
    "attributes": [
      "lilOLWidth"
    ]
  },
  {
    "name": "_OutlineWidthMask",
    "displayName": "Width",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_OutlineFixWidth",
    "displayName": "sFixWidth",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.5,
    "attributes": []
  },
  {
    "name": "_OutlineVertexR2Width",
    "displayName": "sOutlineVertexColorUsages",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_OutlineDeleteMesh",
    "displayName": "sDeleteMesh0",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_OutlineVectorTex",
    "displayName": "Vector",
    "type": "2D",
    "defaultValue": {
      "texture": "bump"
    },
    "attributes": [
      "NoScaleOffset",
      "Normal"
    ]
  },
  {
    "name": "_OutlineVectorUVMode",
    "displayName": "UV Mode|UV0|UV1|UV2|UV3",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_OutlineVectorScale",
    "displayName": "Vector scale",
    "type": "Range",
    "range": [
      -10,
      10
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_OutlineEnableLighting",
    "displayName": "sEnableLighting",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_OutlineZBias",
    "displayName": "Z Bias",
    "type": "Float",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_OutlineDisableInVR",
    "displayName": "sDisableInVR",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_TessEdge",
    "displayName": "sTessellationEdge",
    "type": "Range",
    "range": [
      1,
      100
    ],
    "defaultValue": 10,
    "attributes": []
  },
  {
    "name": "_TessStrength",
    "displayName": "sStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.5,
    "attributes": []
  },
  {
    "name": "_TessShrink",
    "displayName": "sTessellationShrink",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_TessFactorMax",
    "displayName": "sTessellationFactor",
    "type": "Range",
    "range": [
      1,
      8
    ],
    "defaultValue": 3,
    "attributes": [
      "IntRange"
    ]
  },
  {
    "name": "_UseOutline",
    "displayName": "Use Outline",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_TransparentMode",
    "displayName": "Rendering Mode|Opaque|Cutout|Transparent|Refraction|Fur|FurCutout|Gem",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_UseClippingCanceller",
    "displayName": "sSettingClippingCanceller",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_AsOverlay",
    "displayName": "sAsOverlay",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_BaseColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_BaseMap",
    "displayName": "Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_BaseColorMap",
    "displayName": "Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_lilToonVersion",
    "displayName": "Version",
    "type": "Int",
    "defaultValue": 45,
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_Ramp",
    "displayName": "Shadow Ramp",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_Cull",
    "displayName": "sCullModes",
    "type": "Int",
    "defaultValue": 2,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_SrcBlend",
    "displayName": "sSrcBlendRGB",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_DstBlend",
    "displayName": "sDstBlendRGB",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_SrcBlendAlpha",
    "displayName": "sSrcBlendAlpha",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_DstBlendAlpha",
    "displayName": "sDstBlendAlpha",
    "type": "Int",
    "defaultValue": 10,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_BlendOp",
    "displayName": "sBlendOpRGB",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendOp)"
    ]
  },
  {
    "name": "_BlendOpAlpha",
    "displayName": "sBlendOpAlpha",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendOp)"
    ]
  },
  {
    "name": "_SrcBlendFA",
    "displayName": "sSrcBlendRGB",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_DstBlendFA",
    "displayName": "sDstBlendRGB",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_SrcBlendAlphaFA",
    "displayName": "sSrcBlendAlpha",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_DstBlendAlphaFA",
    "displayName": "sDstBlendAlpha",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_BlendOpFA",
    "displayName": "sBlendOpRGB",
    "type": "Int",
    "defaultValue": 4,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendOp)"
    ]
  },
  {
    "name": "_BlendOpAlphaFA",
    "displayName": "sBlendOpAlpha",
    "type": "Int",
    "defaultValue": 4,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendOp)"
    ]
  },
  {
    "name": "_ZClip",
    "displayName": "sZClip",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_ZWrite",
    "displayName": "sZWrite",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_ZTest",
    "displayName": "sZTest",
    "type": "Int",
    "defaultValue": 4,
    "attributes": [
      "Enum(UnityEngine.Rendering.CompareFunction)"
    ]
  },
  {
    "name": "_StencilRef",
    "displayName": "Ref",
    "type": "Range",
    "range": [
      0,
      255
    ],
    "defaultValue": 0,
    "attributes": [
      "IntRange"
    ]
  },
  {
    "name": "_StencilReadMask",
    "displayName": "ReadMask",
    "type": "Range",
    "range": [
      0,
      255
    ],
    "defaultValue": 255,
    "attributes": [
      "IntRange"
    ]
  },
  {
    "name": "_StencilWriteMask",
    "displayName": "WriteMask",
    "type": "Range",
    "range": [
      0,
      255
    ],
    "defaultValue": 255,
    "attributes": [
      "IntRange"
    ]
  },
  {
    "name": "_StencilComp",
    "displayName": "Comp",
    "type": "Float",
    "defaultValue": 8,
    "attributes": [
      "Enum(UnityEngine.Rendering.CompareFunction)"
    ]
  },
  {
    "name": "_StencilPass",
    "displayName": "Pass",
    "type": "Float",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.StencilOp)"
    ]
  },
  {
    "name": "_StencilFail",
    "displayName": "Fail",
    "type": "Float",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.StencilOp)"
    ]
  },
  {
    "name": "_StencilZFail",
    "displayName": "ZFail",
    "type": "Float",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.StencilOp)"
    ]
  },
  {
    "name": "_OffsetFactor",
    "displayName": "sOffsetFactor",
    "type": "Float",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_OffsetUnits",
    "displayName": "sOffsetUnits",
    "type": "Float",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_ColorMask",
    "displayName": "sColorMask",
    "type": "Int",
    "defaultValue": 15,
    "attributes": [
      "lilColorMask"
    ]
  },
  {
    "name": "_AlphaToMask",
    "displayName": "sAlphaToMask",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_lilShadowCasterBias",
    "displayName": "Shadow Caster Bias",
    "type": "Float",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_OutlineCull",
    "displayName": "sCullModes",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_OutlineSrcBlend",
    "displayName": "sSrcBlendRGB",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_OutlineDstBlend",
    "displayName": "sDstBlendRGB",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_OutlineSrcBlendAlpha",
    "displayName": "sSrcBlendAlpha",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_OutlineDstBlendAlpha",
    "displayName": "sDstBlendAlpha",
    "type": "Int",
    "defaultValue": 10,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_OutlineBlendOp",
    "displayName": "sBlendOpRGB",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendOp)"
    ]
  },
  {
    "name": "_OutlineBlendOpAlpha",
    "displayName": "sBlendOpAlpha",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendOp)"
    ]
  },
  {
    "name": "_OutlineSrcBlendFA",
    "displayName": "sSrcBlendRGB",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_OutlineDstBlendFA",
    "displayName": "sDstBlendRGB",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_OutlineSrcBlendAlphaFA",
    "displayName": "sSrcBlendAlpha",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_OutlineDstBlendAlphaFA",
    "displayName": "sDstBlendAlpha",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_OutlineBlendOpFA",
    "displayName": "sBlendOpRGB",
    "type": "Int",
    "defaultValue": 4,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendOp)"
    ]
  },
  {
    "name": "_OutlineBlendOpAlphaFA",
    "displayName": "sBlendOpAlpha",
    "type": "Int",
    "defaultValue": 4,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendOp)"
    ]
  },
  {
    "name": "_OutlineZClip",
    "displayName": "sZClip",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_OutlineZWrite",
    "displayName": "sZWrite",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_OutlineZTest",
    "displayName": "sZTest",
    "type": "Int",
    "defaultValue": 2,
    "attributes": [
      "Enum(UnityEngine.Rendering.CompareFunction)"
    ]
  },
  {
    "name": "_OutlineStencilRef",
    "displayName": "Ref",
    "type": "Range",
    "range": [
      0,
      255
    ],
    "defaultValue": 0,
    "attributes": [
      "IntRange"
    ]
  },
  {
    "name": "_OutlineStencilReadMask",
    "displayName": "ReadMask",
    "type": "Range",
    "range": [
      0,
      255
    ],
    "defaultValue": 255,
    "attributes": [
      "IntRange"
    ]
  },
  {
    "name": "_OutlineStencilWriteMask",
    "displayName": "WriteMask",
    "type": "Range",
    "range": [
      0,
      255
    ],
    "defaultValue": 255,
    "attributes": [
      "IntRange"
    ]
  },
  {
    "name": "_OutlineStencilComp",
    "displayName": "Comp",
    "type": "Float",
    "defaultValue": 8,
    "attributes": [
      "Enum(UnityEngine.Rendering.CompareFunction)"
    ]
  },
  {
    "name": "_OutlineStencilPass",
    "displayName": "Pass",
    "type": "Float",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.StencilOp)"
    ]
  },
  {
    "name": "_OutlineStencilFail",
    "displayName": "Fail",
    "type": "Float",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.StencilOp)"
    ]
  },
  {
    "name": "_OutlineStencilZFail",
    "displayName": "ZFail",
    "type": "Float",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.StencilOp)"
    ]
  },
  {
    "name": "_OutlineOffsetFactor",
    "displayName": "sOffsetFactor",
    "type": "Float",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_OutlineOffsetUnits",
    "displayName": "sOffsetUnits",
    "type": "Float",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_OutlineColorMask",
    "displayName": "sColorMask",
    "type": "Int",
    "defaultValue": 15,
    "attributes": [
      "lilColorMask"
    ]
  },
  {
    "name": "_OutlineAlphaToMask",
    "displayName": "sAlphaToMask",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  }
] as const;

export type LilToonPropertyName = typeof LILTOON_PROPERTIES[number]["name"];
