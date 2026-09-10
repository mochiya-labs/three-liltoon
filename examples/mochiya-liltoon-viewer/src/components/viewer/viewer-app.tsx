"use client";

import { useCallback, useRef, useState } from "react";
import { useTheme } from "next-themes";

import { useViewerLocale } from "@/hooks/use-viewer-locale";
import { useModelUpload } from "@/hooks/use-model-upload";
import { messages } from "@/lib/i18n";
import type { LoadStatus, ModelInspection } from "@/lib/model/types";

import { MaterialInspector } from "./material-inspector";
import { ViewerViewport } from "./viewer-viewport";
import { ViewerHeader } from "./viewer-header";

export default function ViewerApp() {
	const fileInputRef = useRef<HTMLInputElement>(null);
	const { resolvedTheme } = useTheme();
	const { locale, setLocale } = useViewerLocale();
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

	return (
		<div className="viewer-shell bg-background text-foreground" lang={locale}>
			<ViewerHeader
				title={t.viewerTitle}
				locale={locale}
				onLocaleChange={setLocale}
				t={t}
			/>

			<input
				ref={fileInputRef}
				type="file"
				aria-label={t.modelFile}
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
