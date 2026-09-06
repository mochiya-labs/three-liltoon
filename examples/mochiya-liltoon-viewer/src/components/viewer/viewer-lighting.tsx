"use client";

export function ViewerLighting() {
	return (
		<>
			<hemisphereLight args={["#e0faff", "#fff0db", 0.5]} />
			{/* Fixed world-space light; Three's default target stays at the origin. */}
			<directionalLight
				position={[-0.5, 3, 2]}
				intensity={1.75}
				castShadow
				shadow-mapSize={[2048, 2048]}
				shadow-camera-left={-3}
				shadow-camera-right={3}
				shadow-camera-top={3}
				shadow-camera-bottom={-3}
				shadow-bias={-0.0001}
			/>
		</>
	);
}
