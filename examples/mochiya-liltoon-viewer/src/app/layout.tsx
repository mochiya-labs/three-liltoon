import type { Metadata } from "next";
import type { ReactNode } from "react";
import { IBM_Plex_Sans, JetBrains_Mono, Space_Grotesk } from "next/font/google";

import { ThemeProvider } from "@/components/theme-provider";
import { cn } from "@/lib/utils";

import "./globals.css";

const bodyFont = IBM_Plex_Sans({
	subsets: ["latin"],
	variable: "--font-body-loaded",
});

const headingFont = Space_Grotesk({
	subsets: ["latin"],
	variable: "--font-heading-loaded",
});

const monoFont = JetBrains_Mono({
	subsets: ["latin"],
	variable: "--font-mono-loaded",
});

export const metadata: Metadata = {
	title: "lilToon model viewer — Mochiya",
	icons: { icon: "/mochiya-icon-192.png" },
	description:
		"Inspect and render Mochiya lilToon GLB and VRM files in Three.js.",
};

export default function RootLayout({ children }: { children: ReactNode }) {
	return (
		<html
			lang="en"
			suppressHydrationWarning
			className={cn(
				"h-full antialiased",
				bodyFont.variable,
				headingFont.variable,
				monoFont.variable,
			)}
		>
			<body className="min-h-full">
				<ThemeProvider>{children}</ThemeProvider>
			</body>
		</html>
	);
}
