"use client";

import dynamic from "next/dynamic";

const ViewerApp = dynamic(() => import("./viewer-app"), {
  ssr: false,
  loading: () => (
    <main className="grid min-h-svh place-items-center bg-muted/30 px-6">
      <div className="text-center">
        <div className="font-heading text-sm font-medium">Preparing the viewer</div>
        <p className="mt-1 text-xs text-muted-foreground">Loading the WebGL workspace…</p>
      </div>
    </main>
  ),
});

export function ViewerShell() {
  return <ViewerApp />;
}
