"use client";

import { useMemo, useState } from "react";
import NextImage from "next/image";
import {
	ImageIcon,
	InfoIcon,
	MagnifyingGlassIcon,
	SlidersHorizontalIcon,
	WarningCircleIcon,
} from "@phosphor-icons/react";

import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { ScrollArea } from "@/components/ui/scroll-area";
import {
	Select,
	SelectContent,
	SelectItem,
	SelectTrigger,
	SelectValue,
} from "@/components/ui/select";
import { Separator } from "@/components/ui/separator";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import type { Labels } from "@/lib/i18n";
import type {
	InspectorEntry,
	MaterialInspection,
	ModelInspection,
	TextureInspection,
} from "@/lib/model/types";

function PropertyRows({
	entries,
	query,
	t,
}: {
	entries: InspectorEntry[];
	query: string;
	t: Labels;
}) {
	const filtered = useMemo(() => {
		const normalized = query.trim().toLowerCase();
		if (!normalized) return entries;
		return entries.filter((entry) =>
			`${entry.name} ${entry.value}`.toLowerCase().includes(normalized),
		);
	}, [entries, query]);

	if (filtered.length === 0) {
		return (
			<div className="grid h-32 place-items-center px-6 text-center text-xs text-muted-foreground">
				{t.noMatchingProperties}
			</div>
		);
	}

	return (
		<div className="divide-y divide-border/70">
			{filtered.map((entry) => {
				const label = entry.labelKey ? t[entry.labelKey] : entry.name;
				const value = entry.valueKey ? t[entry.valueKey] : entry.value;
				return (
					<div
						key={entry.name}
						className="grid min-h-8 grid-cols-[minmax(0,1fr)_minmax(5rem,42%)] items-center gap-3 px-3 py-1.5 [contain-intrinsic-size:auto_32px] [content-visibility:auto]"
					>
						<dt
							className="truncate font-mono text-[0.6875rem] font-medium text-foreground"
							title={label}
						>
							{label}
						</dt>
						<dd
							className="truncate text-right font-mono text-[0.6875rem] text-muted-foreground tabular-nums"
							title={value}
						>
							{value}
						</dd>
					</div>
				);
			})}
		</div>
	);
}

function TextureRows({
	textures,
	t,
}: {
	textures: TextureInspection[];
	t: Labels;
}) {
	if (textures.length === 0) {
		return (
			<div className="grid h-40 place-items-center px-6 text-center">
				<div>
					<ImageIcon className="mx-auto mb-2 size-5 text-muted-foreground" />
					<p className="text-xs text-muted-foreground">{t.noTextures}</p>
				</div>
			</div>
		);
	}

	return (
		<div className="divide-y divide-border/70">
			{textures.map((texture) => (
				<div
					key={texture.id}
					className="grid grid-cols-[5rem_minmax(0,1fr)] gap-3 px-3 py-3"
				>
					<div className="relative aspect-square overflow-hidden rounded-md border bg-muted">
						{texture.previewUrl ? (
							<NextImage
								src={texture.previewUrl}
								alt={`${texture.name || t.unnamedTexture} ${t.texturePreview}`}
								fill
								sizes="80px"
								className="object-contain"
								unoptimized
							/>
						) : (
							<div className="grid size-full place-items-center text-muted-foreground">
								<ImageIcon className="size-5" />
								<span className="sr-only">{t.previewUnavailable}</span>
							</div>
						)}
					</div>
					<div className="min-w-0">
						<div
							className="truncate font-mono text-[0.6875rem] font-medium"
							title={texture.slot}
						>
							{texture.slot}
						</div>
						<div
							className="mt-0.5 truncate text-[0.6875rem] text-muted-foreground"
							title={texture.name || t.unnamedTexture}
						>
							{texture.name || t.unnamedTexture}
						</div>
						<dl className="mt-2 space-y-1 text-[0.6875rem]">
							{[
								[t.size, texture.size || t.unknown],
								[t.colorSpace, texture.colorSpace || t.noColorSpace],
								[t.flipY, texture.flipY ? t.yes : t.no],
								[t.wrap, texture.wrap],
								[t.filter, texture.filter],
							].map(([label, value]) => (
								<div
									key={label}
									className="grid grid-cols-[minmax(0,1fr)_auto] gap-2"
								>
									<dt className="truncate text-muted-foreground">{label}</dt>
									<dd
										className="max-w-32 truncate text-right tabular-nums"
										title={value}
									>
										{value}
									</dd>
								</div>
							))}
						</dl>
					</div>
				</div>
			))}
		</div>
	);
}

function InspectorBody({
	material,
	t,
}: {
	material: MaterialInspection;
	t: Labels;
}) {
	const [query, setQuery] = useState("");

	return (
		<Tabs defaultValue="properties" className="min-h-0 flex-1">
			<TabsList className="mx-4 grid w-[calc(100%-2rem)] grid-cols-3">
				<TabsTrigger value="properties">
					<SlidersHorizontalIcon /> {t.properties}
				</TabsTrigger>
				<TabsTrigger value="textures">
					<ImageIcon /> {t.textures}
				</TabsTrigger>
				<TabsTrigger value="details">
					<InfoIcon /> {t.details}
				</TabsTrigger>
			</TabsList>

			<TabsContent value="properties" className="flex min-h-0 flex-col">
				<div className="relative px-4 pb-2">
					<MagnifyingGlassIcon className="pointer-events-none absolute top-1.5 left-6 size-3.5 text-muted-foreground" />
					<Input
						value={query}
						onChange={(event) => setQuery(event.target.value)}
						placeholder={`${t.searchProperties} (${material.properties.length})`}
						className="pl-7"
						aria-label={t.searchProperties}
					/>
				</div>
				<ScrollArea className="min-h-0 flex-1 border-t">
					<PropertyRows entries={material.properties} query={query} t={t} />
				</ScrollArea>
			</TabsContent>

			<TabsContent value="textures" className="min-h-0">
				<ScrollArea className="h-full border-t">
					<TextureRows textures={material.textures} t={t} />
				</ScrollArea>
			</TabsContent>

			<TabsContent value="details" className="min-h-0">
				<ScrollArea className="h-full border-t">
					{material.warnings.length > 0 && (
						<div
							className="space-y-2 border-b p-3 text-xs"
							aria-label={t.selectedMaterialWarnings}
						>
							<p className="font-medium">{t.renderingWarnings}</p>
							{material.warnings.map((warning) => (
								<p
									key={`${warning.code}:${warning.property}`}
									className="break-words text-muted-foreground"
								>
									{warning.message}
								</p>
							))}
						</div>
					)}
					<PropertyRows entries={material.details} query="" t={t} />
				</ScrollArea>
			</TabsContent>
		</Tabs>
	);
}

export function MaterialInspector({
	inspection,
	t,
}: {
	inspection: ModelInspection | null;
	t: Labels;
}) {
	const [requestedMaterialId, setRequestedMaterialId] = useState<string | null>(
		null,
	);
	const materials = inspection?.materials ?? [];
	const selected =
		materials.find((material) => material.id === requestedMaterialId) ??
		materials[0];

	return (
		<aside
			className="inspector-sidebar flex flex-col border-l bg-background max-[880px]:border-t max-[880px]:border-l-0"
			aria-label={t.materialInspector}
		>
			<div className="shrink-0 border-b">
				<header className="flex h-12 items-center justify-between gap-3 px-4">
					<h2 className="text-xs font-medium">{t.materialInspector}</h2>
					{materials.length > 0 && (
						<Badge variant="outline">{materials.length}</Badge>
					)}
				</header>
				<div className="space-y-3 border-t px-4 py-3">
					<p className="text-[11px] leading-relaxed text-muted-foreground">
						{t.readOnlyDescription}
					</p>
					{inspection && inspection.warnings.length > 0 && (
						<details className="min-w-0 overflow-hidden rounded-md border bg-muted/20 p-2.5 text-xs">
							<summary className="cursor-pointer font-medium">
								<WarningCircleIcon className="mr-1 inline size-3.5" />
								{inspection.warnings.length} {t.renderingWarnings}
							</summary>
							<p className="mt-2 text-muted-foreground">
								{t.warningDescription}
							</p>
							<ul
								className="mt-2 max-h-48 space-y-3 overflow-y-auto"
								aria-label={t.renderingWarnings}
							>
								{inspection.warnings.map((warning) => (
									<li
										key={`${warning.materialIndex}:${warning.code}:${warning.property}`}
										className="min-w-0 break-words"
									>
										<Button
											variant="ghost"
											size="sm"
											className="h-auto max-w-full justify-start whitespace-normal p-0 text-left text-xs underline underline-offset-2"
											onClick={() =>
												setRequestedMaterialId(
													`material-${warning.materialIndex}`,
												)
											}
										>
											{warning.materialName}
										</Button>
										<p className="mt-0.5 text-muted-foreground">
											{warning.message}
										</p>
										<p className="mt-1 break-all font-mono text-[0.625rem] text-muted-foreground">
											{warning.shaderKey} · {warning.code}
										</p>
									</li>
								))}
							</ul>
						</details>
					)}
				</div>
			</div>

			{!selected ? (
				<div className="p-4 text-[11px] leading-relaxed text-muted-foreground">
					<p>{t.noMaterialHint}</p>
				</div>
			) : (
				<div className="flex min-h-0 flex-1 flex-col">
					<div className="space-y-3 px-4 py-3">
						<Select value={selected.id} onValueChange={setRequestedMaterialId}>
							<SelectTrigger aria-label={t.selectMaterial}>
								<SelectValue />
							</SelectTrigger>
							<SelectContent>
								{materials.map((material) => (
									<SelectItem key={material.id} value={material.id}>
										{material.name ||
											`${t.unnamedMaterial} (${material.sourceMaterialIndex ?? t.generated})`}
										{material.warnings.length > 0 &&
											` (${material.warnings.length} ${t.warnings})`}
									</SelectItem>
								))}
							</SelectContent>
						</Select>
						<div className="flex flex-wrap items-center gap-1.5">
							<Badge variant={selected.isLilToon ? "default" : "secondary"}>
								{selected.type}
							</Badge>
							<Badge variant="outline">
								{selected.properties.length} {t.propertiesCount}
							</Badge>
							<Badge variant="outline">
								{selected.textures.length} {t.texturesCount}
							</Badge>
							{selected.warnings.length > 0 && (
								<Badge variant="outline">
									<WarningCircleIcon />
									{selected.warnings.length} {t.warnings}
								</Badge>
							)}
						</div>
					</div>
					<Separator />
					<InspectorBody key={selected.id} material={selected} t={t} />
				</div>
			)}
		</aside>
	);
}
