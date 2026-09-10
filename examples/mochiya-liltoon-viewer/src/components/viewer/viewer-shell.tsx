"use client";

import dynamic from "next/dynamic";
import { useViewerLocale } from "@/hooks/use-viewer-locale";
import { messages } from "@/lib/i18n";

function ViewerLoading() {
	const { locale } = useViewerLocale();
	const t = messages[locale];
	return (
		<main
			className="grid min-h-svh place-items-center bg-background px-6"
			lang={locale}
		>
			<div className="text-center" role="status">
				<div className="font-heading text-sm font-medium">
					{t.preparingViewer}
				</div>
				<p className="mt-1 text-xs text-muted-foreground">
					{t.loadingWorkspace}
				</p>
			</div>
		</main>
	);
}

const ViewerApp = dynamic(() => import("./viewer-app"), {
	ssr: false,
	loading: ViewerLoading,
});

export function ViewerShell() {
	return <ViewerApp />;
}
