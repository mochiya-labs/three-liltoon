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
import { Progress } from "@/components/ui/progress";
import type { Labels } from "@/lib/i18n";
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
	dark: boolean;
	t: Labels;
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
	dark,
	t,
	onChooseFile,
	onFile,
	onInspectionChange,
	onStatusChange,
}: ViewerViewportProps) {
	const [dragging, setDragging] = useState(false);
	const error =
		uploadError ?? (status.phase === "error" ? status.message : null);

	function handleDrop(event: DragEvent<HTMLElement>) {
		event.preventDefault();
		setDragging(false);
		const file = event.dataTransfer.files[0];
		if (file) onFile(file);
	}

	return (
		<section
			className={cn(
				"viewer-main relative flex min-h-0 min-w-0 flex-col bg-background",
				dragging && "ring-2 ring-inset ring-primary",
			)}
			aria-label={t.preview}
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
			<header className="flex h-12 shrink-0 items-center justify-between border-b px-3">
				<div className="flex items-center gap-2 text-xs font-medium">
					<span className="inline-block size-1.5 rounded-full bg-primary" />
					{t.preview}
				</div>
				{status.phase === "ready" ? (
					<Badge className="shrink-0" role="status">
						{inspection?.warnings.length ? (
							<WarningCircleIcon />
						) : (
							<CheckCircleIcon />
						)}
						{t.ready}
						{inspection?.warnings.length
							? ` · ${inspection.warnings.length} ${t.warnings}`
							: ""}
					</Badge>
				) : null}
			</header>

			<div className="relative min-h-64 flex-1">
				<ModelCanvas
					source={source}
					dark={dark}
					loadFailureMessage={t.loadError}
					onInspectionChange={onInspectionChange}
					onStatusChange={onStatusChange}
				/>

				<div className="pointer-events-none absolute inset-x-0 top-0 flex items-start justify-between gap-3 p-3">
					<div className="flex min-w-0 flex-wrap gap-1.5">
						{inspection ? (
							<>
								<Badge>{inspection.format}</Badge>
								<Badge
									variant={inspection.hasMochiyaLilToon ? "default" : "outline"}
								>
									{inspection.hasMochiyaLilToon
										? t.mochiyaLilToon
										: t.standardMaterials}
								</Badge>
								<Badge variant="outline">
									{inspection.meshCount} {t.meshes}
								</Badge>
							</>
						) : source ? (
							<Badge variant="outline">{source.fileName}</Badge>
						) : null}
					</div>
				</div>

				{!source ? (
					<div className="pointer-events-none absolute inset-0 grid place-items-center p-6 text-center">
						<div className="pointer-events-auto max-w-sm border bg-background/95 p-6 shadow-sm">
							<div className="mx-auto grid size-12 place-items-center border bg-primary/15 text-primary-foreground">
								<CubeIcon className="size-6" />
							</div>
							<h2 className="mt-4 font-heading text-base font-medium">
								{t.openPrompt}
							</h2>
							<p className="mt-1 text-xs/relaxed text-muted-foreground">
								{t.emptyHint}
							</p>
							<Button className="mt-4" size="lg" onClick={onChooseFile}>
								<FileArrowUpIcon /> {t.chooseFile}
							</Button>
						</div>
					</div>
				) : null}

				{source && status.phase === "loading" ? (
					<div className="absolute inset-0 grid place-items-center bg-black/25 p-6 backdrop-blur-[2px]">
						<div className="w-full max-w-xs border bg-card p-4 text-card-foreground shadow-xl">
							<div className="flex items-center gap-2 font-heading text-sm font-medium">
								<CircleNotchIcon className="size-4 animate-spin text-primary" />
								{t.loadingModel}
							</div>
							<p className="mt-1 truncate text-xs text-muted-foreground">
								{source.fileName}
							</p>
							<Progress className="mt-3" value={status.progress ?? 12} />
						</div>
					</div>
				) : null}

				{error ? (
					<div className="absolute inset-x-3 bottom-3 border border-destructive/30 bg-card p-3 text-card-foreground shadow-xl">
						<div className="flex items-start gap-2">
							<WarningCircleIcon className="mt-0.5 size-4 shrink-0 text-destructive" />
							<div className="min-w-0 flex-1">
								<div className="font-heading text-xs font-medium">
									{t.loadError}
								</div>
								<p className="mt-0.5 break-words text-xs text-muted-foreground">
									{error}
								</p>
							</div>
							<Button variant="outline" size="sm" onClick={onChooseFile}>
								{t.replace}
							</Button>
						</div>
					</div>
				) : null}

				{source && status.phase === "ready" ? (
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
							{t.orbitHint}
						</div>
					</div>
				) : null}

				{dragging ? (
					<div className="pointer-events-none absolute inset-3 grid place-items-center border border-dashed border-primary bg-primary/10 text-center backdrop-blur-sm">
						<div>
							<FileArrowUpIcon className="mx-auto mb-2 size-6 text-primary" />
							{t.dropToReplace}
						</div>
					</div>
				) : null}
			</div>
		</section>
	);
}
