"use client";

import { useState, type DragEvent } from "react";
import {
	CheckCircleIcon,
	CircleNotchIcon,
	CubeIcon,
	FileArrowUpIcon,
	WarningCircleIcon,
} from "@phosphor-icons/react";

import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { Progress } from "@/components/ui/progress";
import type {
	LoadStatus,
	ModelInspection,
	ModelSource,
} from "@/lib/model/types";
import { cn } from "@/lib/utils";

import { ModelCanvas } from "./model-canvas";

type ViewerViewportProps = {
	source: ModelSource | null;
	inspection: ModelInspection | null;
	status: LoadStatus;
	uploadError: string | null;
	onChooseFile: () => void;
	onFile: (file: File) => void;
	onInspectionChange: (inspection: ModelInspection | null) => void;
	onStatusChange: (status: LoadStatus) => void;
};

function formatBytes(bytes: number) {
	if (bytes < 1024) return `${bytes} B`;
	if (bytes < 1024 ** 2) return `${(bytes / 1024).toFixed(1)} KB`;
	return `${(bytes / 1024 ** 2).toFixed(1)} MB`;
}

export function ViewerViewport({
	source,
	inspection,
	status,
	uploadError,
	onChooseFile,
	onFile,
	onInspectionChange,
	onStatusChange,
}: ViewerViewportProps) {
	const [dragging, setDragging] = useState(false);
	const error =
		uploadError ?? (status.phase === "error" ? status.message : null);

	function handleDrop(event: DragEvent<HTMLDivElement>) {
		event.preventDefault();
		setDragging(false);
		const file = event.dataTransfer.files[0];
		if (file) onFile(file);
	}

	return (
		<Card
			className={cn(
				"relative min-h-[32rem] overflow-hidden bg-[#20221b] lg:h-[calc(100svh-4.5rem)] lg:min-h-0",
				dragging && "ring-2 ring-primary",
			)}
			onDragEnter={(event) => {
				event.preventDefault();
				setDragging(true);
			}}
			onDragOver={(event) => event.preventDefault()}
			onDragLeave={(event) => {
				if (!event.currentTarget.contains(event.relatedTarget as Node | null))
					setDragging(false);
			}}
			onDrop={handleDrop}
		>
			{source ? (
				<ModelCanvas
					key={source.id}
					source={source}
					onInspectionChange={onInspectionChange}
					onStatusChange={onStatusChange}
				/>
			) : (
				<div className="absolute inset-0 bg-[radial-gradient(circle_at_50%_38%,#34372c_0%,#20221b_62%)]" />
			)}

			<div className="pointer-events-none absolute inset-x-0 top-0 flex items-start justify-between gap-3 p-3">
				<div className="flex min-w-0 flex-wrap gap-1.5">
					{inspection ? (
						<>
							<Badge>{inspection.format}</Badge>
							<Badge
								variant={inspection.hasMochiyaLilToon ? "default" : "outline"}
							>
								{inspection.hasMochiyaLilToon
									? "Mochiya lilToon"
									: "Standard materials"}
							</Badge>
							<Badge
								variant="outline"
								className="border-white/15 bg-black/25 text-white"
							>
								{inspection.meshCount} meshes
							</Badge>
						</>
					) : source ? (
						<Badge
							variant="outline"
							className="border-white/15 bg-black/25 text-white"
						>
							{source.fileName}
						</Badge>
					) : null}
				</div>
				{status.phase === "ready" && (
					<Badge className="shrink-0" role="status">
						{inspection?.warnings.length ? (
							<WarningCircleIcon />
						) : (
							<CheckCircleIcon />
						)}
						Ready
						{inspection?.warnings.length
							? ` · ${inspection.warnings.length} warnings`
							: ""}
					</Badge>
				)}
			</div>

			{!source && (
				<div className="absolute inset-0 grid place-items-center p-6 text-center text-white">
					<div className="max-w-sm">
						<div className="mx-auto grid size-12 place-items-center rounded-xl bg-white/8 ring-1 ring-white/12">
							<CubeIcon className="size-6 text-[#d0f56d]" />
						</div>
						<h2 className="mt-4 font-heading text-base font-medium">
							Open a model
						</h2>
						<p className="mt-1 text-xs/relaxed text-white/55">
							Drop a Mochiya-exported VRM or binary glTF here. One model is
							shown at a time.
						</p>
						<Button
							className="pointer-events-auto mt-4"
							size="lg"
							onClick={onChooseFile}
						>
							<FileArrowUpIcon /> Choose GLB or VRM
						</Button>
					</div>
				</div>
			)}

			{source && status.phase === "loading" && (
				<div className="absolute inset-0 grid place-items-center bg-black/25 p-6 backdrop-blur-[2px]">
					<div className="w-full max-w-xs rounded-lg bg-card p-4 text-card-foreground shadow-xl ring-1 ring-white/10">
						<div className="flex items-center gap-2 font-heading text-sm font-medium">
							<CircleNotchIcon className="size-4 animate-spin text-primary" />{" "}
							Loading model
						</div>
						<p className="mt-1 truncate text-xs text-muted-foreground">
							{source.fileName}
						</p>
						<Progress className="mt-3" value={status.progress ?? 12} />
					</div>
				</div>
			)}

			{error && (
				<div className="absolute inset-x-3 bottom-3 rounded-lg bg-card p-3 text-card-foreground shadow-xl ring-1 ring-destructive/30">
					<div className="flex items-start gap-2">
						<WarningCircleIcon className="mt-0.5 size-4 shrink-0 text-destructive" />
						<div className="min-w-0 flex-1">
							<div className="font-heading text-xs font-medium">
								Could not open this model
							</div>
							<p className="mt-0.5 break-words text-xs text-muted-foreground">
								{error}
							</p>
						</div>
						<Button variant="outline" size="sm" onClick={onChooseFile}>
							Replace
						</Button>
					</div>
				</div>
			)}

			{source && status.phase === "ready" && (
				<div className="pointer-events-none absolute inset-x-0 bottom-0 flex items-end justify-between gap-3 bg-gradient-to-t from-black/45 to-transparent p-3 pt-12 text-white">
					<div className="min-w-0">
						<div className="truncate text-xs font-medium">
							{source.fileName}
						</div>
						<div className="text-[0.6875rem] text-white/55">
							{formatBytes(source.fileSize)}
						</div>
					</div>
					<div className="text-right text-[0.6875rem] text-white/55">
						Drag to orbit · Scroll to zoom
					</div>
				</div>
			)}

			{dragging && (
				<div className="pointer-events-none absolute inset-3 grid place-items-center rounded-lg border border-dashed border-primary bg-primary/10 text-center text-white backdrop-blur-sm">
					<div>
						<FileArrowUpIcon className="mx-auto mb-2 size-6 text-[#d0f56d]" />
						Drop to replace the model
					</div>
				</div>
			)}
		</Card>
	);
}
