"use client";

import { useEffect, useMemo, useState } from "react";
import { Bounds, Grid, OrbitControls } from "@react-three/drei";
import { Canvas, useFrame, useThree } from "@react-three/fiber";
import { AnimationMixer, NeutralToneMapping, SRGBColorSpace } from "three";
import { enableLilToon } from "@mochiya/three-liltoon";

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
	source: ModelSource | null;
	dark: boolean;
	loadFailureMessage: string;
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

type ModelLoaderProps = Omit<ModelCanvasProps, "source" | "dark"> & {
	source: ModelSource;
};

function ModelLoader({
	source,
	loadFailureMessage,
	onInspectionChange,
	onStatusChange,
}: ModelLoaderProps) {
	const renderer = useThree((state) => state.gl);
	useEffect(() => enableLilToon(renderer), [renderer]);
	const [model, setModel] = useState<LoadedModel | null>(null);

	useEffect(() => {
		let active = true;
		let loadedModel: LoadedModel | null = null;
		onInspectionChange(null);
		onStatusChange({ phase: "loading" });

		loadModel(source.url, (progress) => {
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
					error instanceof Error ? error.message : loadFailureMessage;
				onStatusChange({ phase: "error", message });
			});

		return () => {
			active = false;
			if (loadedModel) disposeModel(loadedModel);
		};
	}, [loadFailureMessage, onInspectionChange, onStatusChange, source]);

	return model ? <AnimatedModel model={model} /> : null;
}

export function ModelCanvas(props: ModelCanvasProps) {
	return (
		<Canvas
			shadows
			dpr={[1, 2]}
			camera={{ position: [0, 1.4, 5.5], fov: 26, near: 0.01, far: 300 }}
			gl={{
				antialias: true,
				toneMapping: NeutralToneMapping,
				outputColorSpace: SRGBColorSpace,
			}}
		>
			<color attach="background" args={[props.dark ? "#23251f" : "#f3f4ed"]} />
			<ViewerLighting />
			{props.source ? (
				<ModelLoader
					key={props.source.url}
					source={props.source}
					loadFailureMessage={props.loadFailureMessage}
					onInspectionChange={props.onInspectionChange}
					onStatusChange={props.onStatusChange}
				/>
			) : null}
			<mesh
				rotation={[-Math.PI / 2, 0, 0]}
				position={[0, -0.005, 0]}
				receiveShadow
			>
				<planeGeometry args={[200, 200]} />
				<shadowMaterial opacity={0.12} />
			</mesh>
			<Grid
				args={[30, 30]}
				position={[0, -0.004, 0]}
				cellSize={0.25}
				sectionSize={1}
				cellColor={props.dark ? "#42463a" : "#d6dbcd"}
				sectionColor={props.dark ? "#5b604f" : "#b8c1aa"}
				fadeDistance={15}
				infiniteGrid
			/>
			<OrbitControls makeDefault minDistance={0.4} maxDistance={20} />
		</Canvas>
	);
}
