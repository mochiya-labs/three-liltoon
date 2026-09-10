"use client";

import {
	DesktopIcon,
	GithubLogoIcon,
	GlobeIcon,
	MoonIcon,
	SunIcon,
} from "@phosphor-icons/react";
import { useTheme } from "next-themes";
import { Button } from "@/components/ui/button";
import {
	DropdownMenu,
	DropdownMenuContent,
	DropdownMenuLabel,
	DropdownMenuRadioGroup,
	DropdownMenuRadioItem,
	DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import Image from "next/image";
import type { Labels, Locale } from "@/lib/i18n";

export function ViewerHeader({
	title,
	locale,
	onLocaleChange,
	t,
}: {
	title: string;
	locale: Locale;
	onLocaleChange(locale: Locale): void;
	t: Labels;
}) {
	const { theme, setTheme } = useTheme();
	return (
		<header className="sticky top-0 z-40 h-14 shrink-0 border-b bg-background/95 backdrop-blur">
			<div className="flex h-full items-center gap-2 px-2 sm:gap-5 sm:px-6">
				<a
					href="https://mochiya.org"
					aria-label={t.home}
					className="flex shrink-0 items-center gap-2 rounded-md font-heading text-sm font-semibold outline-none focus-visible:ring-2 focus-visible:ring-ring"
				>
					<Image
						src="/mochiya-icon-192.png"
						alt=""
						width={28}
						height={28}
						className="size-7 object-contain"
						priority
					/>
					<span className="hidden sm:inline">Mochiya</span>
				</a>
				<span className="h-4 w-px shrink-0 bg-border" aria-hidden="true" />
				<h1
					className="min-w-0 truncate text-xs font-medium sm:text-sm"
					title={title}
				>
					{title}
				</h1>
				<nav
					aria-label={t.navigation}
					className="ml-auto flex shrink-0 items-center gap-1 sm:gap-2"
				>
					<Button asChild variant="ghost" size="icon">
						<a
							href="https://github.com/mochiya-labs/three-liltoon"
							target="_blank"
							rel="noopener noreferrer"
							aria-label={t.github}
							title={t.github}
						>
							<GithubLogoIcon aria-hidden="true" />
						</a>
					</Button>
					<DropdownMenu>
						<DropdownMenuTrigger asChild>
							<Button
								variant="ghost"
								size="icon"
								aria-label={t.language}
								title={t.language}
							>
								<GlobeIcon aria-hidden="true" />
							</Button>
						</DropdownMenuTrigger>
						<DropdownMenuContent
							align="end"
							className="w-40 motion-reduce:animate-none"
						>
							<DropdownMenuLabel>{t.language}</DropdownMenuLabel>
							<DropdownMenuRadioGroup
								value={locale}
								onValueChange={(value) => {
									if (value === "en" || value === "ja") onLocaleChange(value);
								}}
							>
								<DropdownMenuRadioItem value="en">
									English
								</DropdownMenuRadioItem>
								<DropdownMenuRadioItem value="ja">日本語</DropdownMenuRadioItem>
							</DropdownMenuRadioGroup>
						</DropdownMenuContent>
					</DropdownMenu>
					<DropdownMenu>
						<DropdownMenuTrigger asChild>
							<Button
								variant="ghost"
								size="icon"
								className="relative"
								aria-label={t.selectTheme}
								title={t.selectTheme}
							>
								<SunIcon
									aria-hidden="true"
									className="scale-100 rotate-0 transition-transform motion-reduce:transition-none dark:scale-0 dark:-rotate-90"
								/>
								<MoonIcon
									aria-hidden="true"
									className="absolute scale-0 rotate-90 transition-transform motion-reduce:transition-none dark:scale-100 dark:rotate-0"
								/>
							</Button>
						</DropdownMenuTrigger>
						<DropdownMenuContent
							align="end"
							className="w-40 motion-reduce:animate-none"
						>
							<DropdownMenuLabel>{t.appearance}</DropdownMenuLabel>
							<DropdownMenuRadioGroup value={theme} onValueChange={setTheme}>
								<DropdownMenuRadioItem value="light">
									<SunIcon aria-hidden="true" />
									{t.lightTheme}
								</DropdownMenuRadioItem>
								<DropdownMenuRadioItem value="dark">
									<MoonIcon aria-hidden="true" />
									{t.darkTheme}
								</DropdownMenuRadioItem>
								<DropdownMenuRadioItem value="system">
									<DesktopIcon aria-hidden="true" />
									{t.systemTheme}
								</DropdownMenuRadioItem>
							</DropdownMenuRadioGroup>
						</DropdownMenuContent>
					</DropdownMenu>
				</nav>
			</div>
		</header>
	);
}
