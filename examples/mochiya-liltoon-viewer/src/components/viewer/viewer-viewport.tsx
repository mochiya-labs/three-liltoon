"use client";

import { useState, type DragEvent } from "react";
import {
	CircleNotchIcon,
	CubeIcon,
	FileArrowUpIcon,
	WarningCircleIcon,
} from "@phosphor-icons/react";

import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Progress } from "@/components/ui/progress";
import type { UploadError } from "@/hooks/use-model-upload";
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
	uploadError: UploadError | null;
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
	const error = uploadError
		? t[uploadError]
		: status.phase === "error"
			? (status.message ?? t.loadError)
			: null;

	function handleDrop(event: DragEvent<HTMLElement>) {
		event.preventDefault();
		setDragging(false);
		const file = event.dataTransfer.files[0];
		if (file) onFile(file);
	}

	return (
		<section
			className={cn(
				"viewer-main relative flex min-w-0 flex-col bg-background",
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
				<div className="flex shrink-0 items-center gap-2 whitespace-nowrap text-xs">
					<span className="inline-block size-1.5 rounded-full bg-primary" />
					{t.preview}
					<Badge variant="secondary">{inspection ? 1 : 0}</Badge>
				</div>
				<div className="flex items-center gap-2">
					<Button variant="outline" onClick={onChooseFile}>
						<FileArrowUpIcon aria-hidden="true" />
						{source ? t.replaceModel : t.openModel}
					</Button>
				</div>
			</header>

			<div className="relative min-h-64 flex-1" data-testid="viewport">
				<ModelCanvas
					source={source}
					dark={dark}
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
						<div className="pointer-events-auto max-w-80 rounded-xl border bg-background/95 p-6 text-center shadow-sm">
							<div className="mx-auto mb-4 grid size-12 place-items-center rounded-xl bg-primary/15 text-primary-foreground">
								<CubeIcon size={25} aria-hidden="true" />
							</div>
							<h2 className="text-base font-semibold">{t.openPrompt}</h2>
							<p className="mt-2 text-xs leading-relaxed text-muted-foreground">
								{t.emptyHint}
							</p>
							<Button className="mt-5 w-full" size="lg" onClick={onChooseFile}>
								<FileArrowUpIcon /> {t.chooseFile}
							</Button>
						</div>
					</div>
				) : null}

				{source && status.phase === "loading" ? (
					<div className="absolute inset-x-4 top-4 flex justify-center">
						<div className="w-full max-w-xs rounded-lg border bg-background p-4 text-foreground shadow-sm">
							<div className="flex items-center gap-2 text-xs font-medium">
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
					<div
						role="alert"
						className="absolute inset-x-4 bottom-4 rounded-lg border border-destructive/30 bg-background p-3 text-xs"
					>
						<div className="flex items-start gap-2">
							<WarningCircleIcon className="mt-0.5 size-4 shrink-0 text-destructive" />
							<div className="min-w-0 flex-1">
								<div className="text-xs font-medium text-destructive">
									{t.loadError}
								</div>
								<p className="mt-1 break-words text-xs leading-relaxed text-muted-foreground">
									{error}
								</p>
							</div>
							<Button variant="outline" size="sm" onClick={onChooseFile}>
								{t.replace}
							</Button>
						</div>
					</div>
				) : null}

				<div className="pointer-events-none absolute bottom-3 left-3 text-[10px] text-muted-foreground">
					{t.orbitHint}
				</div>

				{dragging ? (
					<div className="pointer-events-none absolute inset-3 grid place-items-center rounded-xl border border-dashed border-primary bg-primary/10 text-center text-xs backdrop-blur-sm">
						<div>
							<FileArrowUpIcon className="mx-auto mb-2 size-6 text-primary" />
							{t.dropToReplace}
						</div>
					</div>
				) : null}
			</div>
			<div className="flex min-h-12 shrink-0 items-center justify-between gap-2 border-t px-3 py-2">
				<div className="flex min-w-0 items-center gap-2">
					<CubeIcon
						className="size-3.5 shrink-0 text-muted-foreground"
						aria-hidden="true"
					/>
					<div className="min-w-0">
						<p className="text-[10px] text-muted-foreground">{t.modelFile}</p>
						<p className="truncate text-xs" title={source?.fileName}>
							{source?.fileName ?? t.noModel}
						</p>
					</div>
				</div>
				{source ? (
					<span className="shrink-0 text-[10px] text-muted-foreground">
						{formatBytes(source.fileSize)}
					</span>
				) : null}
			</div>
		</section>
	);
}
