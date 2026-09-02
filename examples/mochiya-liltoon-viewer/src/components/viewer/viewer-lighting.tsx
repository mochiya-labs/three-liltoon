"use client";

export function ViewerLighting() {
  return (
    <>
      {/*
        Keep indirect light deliberately below the main light. lilToon uses it
        with each material's _ShadowEnvStrength; a full-strength ambient rig
        fills the authored toon shadow colors back toward the base color.
      */}
      <ambientLight intensity={0.18} color="#ffffff" />
      <hemisphereLight
        intensity={0.22}
        color="#ffffff"
        groundColor="#ffffff"
        position={[0, 6, 0]}
      />
      {/* Fixed in world space, matching Unity's directional-light behavior. */}
      <directionalLight
        castShadow
        color="#ffffff"
        intensity={1}
        position={[0, 2, -2]}
        shadow-bias={-0.0002}
        shadow-normalBias={0.015}
        shadow-mapSize-width={2048}
        shadow-mapSize-height={2048}
        shadow-camera-near={0.1}
        shadow-camera-far={20}
        shadow-camera-left={-4}
        shadow-camera-right={4}
        shadow-camera-top={4}
        shadow-camera-bottom={-4}
      />
    </>
  );
}
