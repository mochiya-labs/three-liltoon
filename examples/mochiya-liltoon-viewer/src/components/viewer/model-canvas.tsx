"use client";

import { useEffect, useMemo, useState } from "react";
import { Bounds, Grid, OrbitControls } from "@react-three/drei";
import { Canvas, useFrame, useThree } from "@react-three/fiber";
import { AnimationMixer } from "three";

import { disposeModel } from "@/lib/model/dispose-model";
import { loadModel } from "@/lib/model/load-model";
import type {
	LoadedModel,
	LoadStatus,
	ModelInspection,
	ModelSource,
} from "@/lib/model/types";
import { ViewerLighting } from "./viewer-lighting";

type ModelCanvasProps = {
	source: ModelSource;
	onInspectionChange: (inspection: ModelInspection | null) => void;
	onStatusChange: (status: LoadStatus) => void;
};

function AnimatedModel({ model }: { model: LoadedModel }) {
	const mixer = useMemo(
		() =>
			model.animations.length > 0 ? new AnimationMixer(model.scene) : null,
		[model],
	);

	useEffect(() => {
		if (!mixer || !model.animations[0]) return;
		const action = mixer.clipAction(model.animations[0]);
		action.play();
		return () => {
			action.stop();
			mixer.stopAllAction();
			mixer.uncacheRoot(model.scene);
		};
	}, [mixer, model]);

	useFrame((_, delta) => {
		mixer?.update(delta);
		model.vrm?.update(delta);
	});

	return (
		<Bounds fit clip observe margin={1.15}>
			<primitive object={model.scene} dispose={null} />
		</Bounds>
	);
}

function ModelLoader({
	source,
	onInspectionChange,
	onStatusChange,
}: ModelCanvasProps) {
	const renderer = useThree((state) => state.gl);
	const [model, setModel] = useState<LoadedModel | null>(null);

	useEffect(() => {
		let active = true;
		let loadedModel: LoadedModel | null = null;
		onInspectionChange(null);
		onStatusChange({ phase: "loading" });

		loadModel(source.url, renderer, (progress) => {
			if (active) onStatusChange({ phase: "loading", progress });
		})
			.then((nextModel) => {
				loadedModel = nextModel;
				if (!active) {
					disposeModel(nextModel);
					return;
				}
				setModel(nextModel);
				onInspectionChange(nextModel.inspection);
				onStatusChange({ phase: "ready" });
			})
			.catch((error: unknown) => {
				if (!active) return;
				const message =
					error instanceof Error
						? error.message
						: "The model could not be loaded.";
				onStatusChange({ phase: "error", message });
			});

		return () => {
			active = false;
			if (loadedModel) disposeModel(loadedModel);
		};
	}, [onInspectionChange, onStatusChange, renderer, source.url]);

	return model ? <AnimatedModel model={model} /> : null;
}

export function ModelCanvas(props: ModelCanvasProps) {
	return (
		<Canvas
			shadows="percentage"
			dpr={[1, 2]}
			camera={{ position: [2.8, 1.8, 4.6], fov: 34, near: 0.01, far: 500 }}
			gl={{
				antialias: true,
				alpha: false,
				powerPreference: "high-performance",
			}}
		>
			<color attach="background" args={["#20221b"]} />
			<ViewerLighting />
			<ModelLoader key={props.source.url} {...props} />
			<Grid
				position={[0, -0.01, 0]}
				args={[20, 20]}
				cellSize={0.5}
				cellThickness={0.6}
				cellColor="#5f6254"
				sectionSize={2}
				sectionThickness={1}
				sectionColor="#858a72"
				fadeDistance={18}
				fadeStrength={1.5}
				infiniteGrid
			/>
			<OrbitControls
				makeDefault
				enableDamping
				minDistance={0.2}
				maxDistance={30}
				target={[0, 0.9, 0]}
			/>
		</Canvas>
	);
}
