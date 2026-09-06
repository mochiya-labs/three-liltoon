"use client";

import { useCallback, useRef, useState } from "react";
import {
	CubeTransparentIcon,
	FileArrowUpIcon,
	MoonIcon,
	SunIcon,
} from "@phosphor-icons/react";
import { useTheme } from "next-themes";

import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { useModelUpload } from "@/hooks/use-model-upload";
import type { LoadStatus, ModelInspection } from "@/lib/model/types";

import { MaterialInspector } from "./material-inspector";
import { ViewerViewport } from "./viewer-viewport";

export default function ViewerApp() {
	const fileInputRef = useRef<HTMLInputElement>(null);
	const { resolvedTheme, setTheme } = useTheme();
	const { source, error: uploadError, selectFile } = useModelUpload();
	const [inspection, setInspection] = useState<ModelInspection | null>(null);
	const [status, setStatus] = useState<LoadStatus>({ phase: "idle" });

	const openFilePicker = useCallback(() => fileInputRef.current?.click(), []);
	const handleInspectionChange = useCallback((next: ModelInspection | null) => {
		setInspection(next);
	}, []);
	const handleStatusChange = useCallback(
		(next: LoadStatus) => setStatus(next),
		[],
	);

	return (
		<div className="flex min-h-svh flex-col bg-muted/30">
			<header className="flex h-12 shrink-0 items-center justify-between gap-3 border-b bg-background px-3 sm:px-4">
				<div className="flex min-w-0 items-center gap-2.5">
					<div className="grid size-7 shrink-0 place-items-center rounded-md bg-primary text-primary-foreground">
						<CubeTransparentIcon className="size-4" weight="fill" />
					</div>
					<div className="min-w-0">
						<div className="truncate font-heading text-sm font-medium">
							lilToon model viewer
						</div>
						<div className="hidden text-[0.6875rem] text-muted-foreground sm:block">
							Three.js · VRM · Mochiya material inspection
						</div>
					</div>
					{inspection?.hasMochiyaLilToon && (
						<Badge className="hidden sm:inline-flex">Extension loaded</Badge>
					)}
				</div>

				<div className="flex shrink-0 items-center gap-1.5">
					<Button variant="outline" size="lg" onClick={openFilePicker}>
						<FileArrowUpIcon />
						<span className="hidden sm:inline">
							{source ? "Replace model" : "Open model"}
						</span>
						<span className="sm:hidden">Open</span>
					</Button>
					<Button
						variant="ghost"
						size="icon-lg"
						aria-label="Toggle color theme"
						onClick={() =>
							setTheme(resolvedTheme === "dark" ? "light" : "dark")
						}
					>
						{resolvedTheme === "dark" ? <SunIcon /> : <MoonIcon />}
					</Button>
				</div>
			</header>

			<input
				ref={fileInputRef}
				type="file"
				accept=".glb,.vrm,model/gltf-binary,application/octet-stream"
				className="sr-only"
				onChange={(event) => {
					const file = event.currentTarget.files?.[0];
					if (file) selectFile(file);
					event.currentTarget.value = "";
				}}
			/>

			<main className="grid flex-1 gap-3 p-3 lg:grid-cols-[minmax(0,1fr)_23rem]">
				<ViewerViewport
					source={source}
					inspection={inspection}
					status={status}
					uploadError={uploadError}
					onChooseFile={openFilePicker}
					onFile={selectFile}
					onInspectionChange={handleInspectionChange}
					onStatusChange={handleStatusChange}
				/>
				<MaterialInspector inspection={inspection} />
			</main>
		</div>
	);
}
