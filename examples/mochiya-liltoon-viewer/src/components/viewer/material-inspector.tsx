"use client";

import { useMemo, useState } from "react";
import NextImage from "next/image";
import {
  CubeIcon,
  ImageIcon,
  InfoIcon,
  MagnifyingGlassIcon,
  SlidersHorizontalIcon,
} from "@phosphor-icons/react";

import { Badge } from "@/components/ui/badge";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
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
import type {
  InspectorEntry,
  MaterialInspection,
  ModelInspection,
  TextureInspection,
} from "@/lib/model/types";

function PropertyRows({ entries, query }: { entries: InspectorEntry[]; query: string }) {
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
        No properties match this search.
      </div>
    );
  }

  return (
    <div className="divide-y divide-border/70">
      {filtered.map((entry) => (
        <div
          key={entry.name}
          className="grid min-h-8 grid-cols-[minmax(0,1fr)_minmax(5rem,42%)] items-center gap-3 px-3 py-1.5 [contain-intrinsic-size:auto_32px] [content-visibility:auto]"
        >
          <dt
            className="truncate font-mono text-[0.6875rem] font-medium text-foreground"
            title={entry.name}
          >
            {entry.name}
          </dt>
          <dd
            className="truncate text-right font-mono text-[0.6875rem] text-muted-foreground tabular-nums"
            title={entry.value}
          >
            {entry.value}
          </dd>
        </div>
      ))}
    </div>
  );
}

function TextureRows({ textures }: { textures: TextureInspection[] }) {
  if (textures.length === 0) {
    return (
      <div className="grid h-40 place-items-center px-6 text-center">
        <div>
          <ImageIcon className="mx-auto mb-2 size-5 text-muted-foreground" />
          <p className="text-xs text-muted-foreground">No textures are assigned to this material.</p>
        </div>
      </div>
    );
  }

  return (
    <div className="divide-y divide-border/70">
      {textures.map((texture) => (
        <div key={texture.id} className="grid grid-cols-[5rem_minmax(0,1fr)] gap-3 px-3 py-3">
          <div className="relative aspect-square overflow-hidden rounded-md border bg-muted">
            {texture.previewUrl ? (
              <NextImage
                src={texture.previewUrl}
                alt={`${texture.name} texture preview`}
                fill
                sizes="80px"
                className="object-contain"
                unoptimized
              />
            ) : (
              <div className="grid size-full place-items-center text-muted-foreground">
                <ImageIcon className="size-5" />
                <span className="sr-only">Preview unavailable</span>
              </div>
            )}
          </div>
          <div className="min-w-0">
            <div className="truncate font-mono text-[0.6875rem] font-medium" title={texture.slot}>
              {texture.slot}
            </div>
            <div className="mt-0.5 truncate text-[0.6875rem] text-muted-foreground" title={texture.name}>
              {texture.name}
            </div>
            <dl className="mt-2 space-y-1 text-[0.6875rem]">
              {[
                ["Size", texture.size],
                ["Color space", texture.colorSpace],
                ["Flip Y", texture.flipY],
                ["Wrap S / T", texture.wrap],
                ["Min / mag", texture.filter],
              ].map(([label, value]) => (
                <div key={label} className="grid grid-cols-[minmax(0,1fr)_auto] gap-2">
                  <dt className="truncate text-muted-foreground">{label}</dt>
                  <dd className="max-w-32 truncate text-right tabular-nums" title={value}>{value}</dd>
                </div>
              ))}
            </dl>
          </div>
        </div>
      ))}
    </div>
  );
}

function InspectorBody({ material }: { material: MaterialInspection }) {
  const [query, setQuery] = useState("");

  return (
    <Tabs defaultValue="properties" className="min-h-0 flex-1">
      <TabsList className="mx-4 grid w-[calc(100%-2rem)] grid-cols-3">
        <TabsTrigger value="properties">
          <SlidersHorizontalIcon /> Properties
        </TabsTrigger>
        <TabsTrigger value="textures">
          <ImageIcon /> Textures
        </TabsTrigger>
        <TabsTrigger value="details">
          <InfoIcon /> Details
        </TabsTrigger>
      </TabsList>

      <TabsContent value="properties" className="flex min-h-0 flex-col">
        <div className="relative px-4 pb-2">
          <MagnifyingGlassIcon className="pointer-events-none absolute top-1.5 left-6 size-3.5 text-muted-foreground" />
          <Input
            value={query}
            onChange={(event) => setQuery(event.target.value)}
            placeholder={`Search ${material.properties.length} properties`}
            className="pl-7"
            aria-label="Search material properties"
          />
        </div>
        <ScrollArea className="min-h-0 flex-1 border-t">
          <PropertyRows entries={material.properties} query={query} />
        </ScrollArea>
      </TabsContent>

      <TabsContent value="textures" className="min-h-0">
        <ScrollArea className="h-full border-t">
          <TextureRows textures={material.textures} />
        </ScrollArea>
      </TabsContent>

      <TabsContent value="details" className="min-h-0">
        <ScrollArea className="h-full border-t">
          <PropertyRows entries={material.details} query="" />
        </ScrollArea>
      </TabsContent>
    </Tabs>
  );
}

export function MaterialInspector({ inspection }: { inspection: ModelInspection | null }) {
  const [requestedMaterialId, setRequestedMaterialId] = useState<string | null>(null);
  const materials = inspection?.materials ?? [];
  const selected =
    materials.find((material) => material.id === requestedMaterialId) ?? materials[0];

  return (
    <Card className="min-h-[36rem] lg:h-[calc(100svh-4.5rem)] lg:min-h-0">
      <CardHeader className="shrink-0">
        <div className="flex items-start justify-between gap-3">
          <div>
            <CardTitle>Material inspector</CardTitle>
            <CardDescription>Read-only runtime properties from the loaded model.</CardDescription>
          </div>
          {materials.length > 0 && <Badge variant="outline">{materials.length}</Badge>}
        </div>
      </CardHeader>

      {!selected ? (
        <CardContent className="grid flex-1 place-items-center px-8 text-center">
          <div>
            <CubeIcon className="mx-auto mb-3 size-6 text-muted-foreground" />
            <div className="font-heading text-sm font-medium">No material to inspect</div>
            <p className="mt-1 max-w-64 text-xs text-muted-foreground">
              Load a GLB or VRM file to see every available material property.
            </p>
          </div>
        </CardContent>
      ) : (
        <div className="flex min-h-0 flex-1 flex-col">
          <div className="space-y-3 px-4 pb-3">
            <Select value={selected.id} onValueChange={setRequestedMaterialId}>
              <SelectTrigger aria-label="Select a material">
                <SelectValue />
              </SelectTrigger>
              <SelectContent>
                {materials.map((material) => (
                  <SelectItem key={material.id} value={material.id}>
                    {material.name}
                  </SelectItem>
                ))}
              </SelectContent>
            </Select>
            <div className="flex flex-wrap items-center gap-1.5">
              <Badge variant={selected.isLilToon ? "default" : "secondary"}>{selected.type}</Badge>
              <Badge variant="outline">{selected.properties.length} properties</Badge>
              <Badge variant="outline">{selected.textures.length} textures</Badge>
            </div>
          </div>
          <Separator />
          <InspectorBody key={selected.id} material={selected} />
        </div>
      )}
    </Card>
  );
}
