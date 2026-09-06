"use client";

import Image from "next/image";
import { useCallback, useEffect, useRef, useState } from "react";
import { FileArrowUpIcon, MoonIcon, SunIcon } from "@phosphor-icons/react";
import { useTheme } from "next-themes";

import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import {
	Select,
	SelectContent,
	SelectItem,
	SelectTrigger,
	SelectValue,
} from "@/components/ui/select";
import { useModelUpload } from "@/hooks/use-model-upload";
import { messages, type Locale } from "@/lib/i18n";
import type { LoadStatus, ModelInspection } from "@/lib/model/types";

import { MaterialInspector } from "./material-inspector";
import { ViewerViewport } from "./viewer-viewport";

export default function ViewerApp() {
	const fileInputRef = useRef<HTMLInputElement>(null);
	const { resolvedTheme, setTheme } = useTheme();
	const [locale, setLocale] = useState<Locale>("en");
	const { source, error: uploadError, selectFile } = useModelUpload();
	const [inspection, setInspection] = useState<ModelInspection | null>(null);
	const [status, setStatus] = useState<LoadStatus>({ phase: "idle" });
	const t = messages[locale];
	const dark = resolvedTheme === "dark";

	const openFilePicker = useCallback(() => fileInputRef.current?.click(), []);
	const handleInspectionChange = useCallback((next: ModelInspection | null) => {
		setInspection(next);
	}, []);
	const handleStatusChange = useCallback(
		(next: LoadStatus) => setStatus(next),
		[],
	);

	useEffect(() => {
		document.documentElement.lang = locale;
	}, [locale]);

	return (
		<div className="viewer-shell bg-background text-foreground" lang={locale}>
			<header className="flex h-14 shrink-0 items-center justify-between gap-3 border-b bg-background px-4 sm:px-5">
				<div className="flex min-w-0 items-center gap-3">
					<Image
						src="/mochiya-icon.png"
						alt=""
						width={28}
						height={28}
						className="size-7 shrink-0 object-contain"
						priority
					/>
					<div className="min-w-0">
						<div className="truncate font-heading text-sm font-medium">
							{t.viewerTitle}
						</div>
						<div className="hidden text-[0.6875rem] text-muted-foreground sm:block">
							{t.subtitle}
						</div>
					</div>
					{inspection?.hasMochiyaLilToon ? (
						<Badge className="hidden sm:inline-flex">{t.extensionLoaded}</Badge>
					) : null}
				</div>

				<div className="flex shrink-0 items-center gap-1.5">
					<Select
						value={locale}
						onValueChange={(value) => setLocale(value as Locale)}
					>
						<SelectTrigger className="w-20" aria-label={t.language}>
							<SelectValue />
						</SelectTrigger>
						<SelectContent>
							<SelectItem value="en">EN</SelectItem>
							<SelectItem value="ja">日本語</SelectItem>
						</SelectContent>
					</Select>
					<Button variant="outline" size="lg" onClick={openFilePicker}>
						<FileArrowUpIcon />
						<span className="hidden sm:inline">
							{source ? t.replaceModel : t.openModel}
						</span>
						<span className="sm:hidden">{t.openShort}</span>
					</Button>
					<Button
						variant="ghost"
						size="icon-lg"
						aria-label={t.toggleTheme}
						onClick={() => setTheme(dark ? "light" : "dark")}
					>
						{dark ? <SunIcon /> : <MoonIcon />}
					</Button>
				</div>
			</header>

			<input
				ref={fileInputRef}
				type="file"
				accept=".glb,.vrm,model/gltf-binary,application/octet-stream"
				hidden
				onChange={(event) => {
					const file = event.currentTarget.files?.[0];
					if (file) selectFile(file);
					event.currentTarget.value = "";
				}}
			/>

			<main className="viewer-workspace">
				<ViewerViewport
					source={source}
					inspection={inspection}
					status={status}
					uploadError={uploadError}
					onChooseFile={openFilePicker}
					onFile={selectFile}
					onInspectionChange={handleInspectionChange}
					onStatusChange={handleStatusChange}
					dark={dark}
					t={t}
				/>
				<MaterialInspector inspection={inspection} t={t} />
			</main>
		</div>
	);
}
