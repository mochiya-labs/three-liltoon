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
				intensity={1}
				color="#ffffff"
				groundColor="#ffffff"
				position={[0, 6, 0]}
			/>
			{/* Fixed world-space light; Three's default target stays at the origin. */}
			<directionalLight color="#ffffff" intensity={0.4} position={[0, 3, 3]} />
		</>
	);
}
