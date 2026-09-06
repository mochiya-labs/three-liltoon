"use client";

import * as React from "react";
import { CaretDownIcon, CaretUpIcon, CheckIcon } from "@phosphor-icons/react";
import { Select as SelectPrimitive } from "radix-ui";

import { cn } from "@/lib/utils";

function Select(props: React.ComponentProps<typeof SelectPrimitive.Root>) {
	return <SelectPrimitive.Root data-slot="select" {...props} />;
}

function SelectValue(
	props: React.ComponentProps<typeof SelectPrimitive.Value>,
) {
	return <SelectPrimitive.Value data-slot="select-value" {...props} />;
}

function SelectTrigger({
	className,
	children,
	...props
}: React.ComponentProps<typeof SelectPrimitive.Trigger>) {
	return (
		<SelectPrimitive.Trigger
			data-slot="select-trigger"
			className={cn(
				"flex h-7 w-full items-center justify-between gap-1.5 rounded-md border border-input bg-input/20 px-2 py-1 text-xs/relaxed whitespace-nowrap transition-colors outline-none data-placeholder:text-muted-foreground focus-visible:border-ring focus-visible:ring-2 focus-visible:ring-ring/30 disabled:opacity-50 dark:bg-input/30 [&_svg]:shrink-0 [&_svg:not([class*='size-'])]:size-3.5",
				className,
			)}
			{...props}
		>
			{children}
			<SelectPrimitive.Icon asChild>
				<CaretDownIcon className="text-muted-foreground" />
			</SelectPrimitive.Icon>
		</SelectPrimitive.Trigger>
	);
}

function SelectContent({
	className,
	children,
	position = "popper",
	...props
}: React.ComponentProps<typeof SelectPrimitive.Content>) {
	return (
		<SelectPrimitive.Portal>
			<SelectPrimitive.Content
				data-slot="select-content"
				position={position}
				className={cn(
					"relative z-50 max-h-72 min-w-(--radix-select-trigger-width) origin-(--radix-select-content-transform-origin) overflow-hidden rounded-lg bg-popover text-popover-foreground shadow-md ring-1 ring-foreground/10 data-open:animate-in data-open:fade-in-0 data-open:zoom-in-95 data-closed:animate-out data-closed:fade-out-0 data-closed:zoom-out-95",
					className,
				)}
				{...props}
			>
				<SelectScrollUpButton />
				<SelectPrimitive.Viewport className="p-1">
					{children}
				</SelectPrimitive.Viewport>
				<SelectScrollDownButton />
			</SelectPrimitive.Content>
		</SelectPrimitive.Portal>
	);
}

function SelectItem({
	className,
	children,
	...props
}: React.ComponentProps<typeof SelectPrimitive.Item>) {
	return (
		<SelectPrimitive.Item
			data-slot="select-item"
			className={cn(
				"relative flex min-h-7 w-full cursor-default items-center rounded-md px-2 py-1 pr-7 text-xs/relaxed outline-none select-none focus:bg-accent focus:text-accent-foreground data-disabled:pointer-events-none data-disabled:opacity-50",
				className,
			)}
			{...props}
		>
			<SelectPrimitive.ItemText>{children}</SelectPrimitive.ItemText>
			<span className="absolute right-2 flex items-center justify-center">
				<SelectPrimitive.ItemIndicator>
					<CheckIcon />
				</SelectPrimitive.ItemIndicator>
			</span>
		</SelectPrimitive.Item>
	);
}

function SelectScrollUpButton(
	props: React.ComponentProps<typeof SelectPrimitive.ScrollUpButton>,
) {
	return (
		<SelectPrimitive.ScrollUpButton
			className="flex cursor-default items-center justify-center bg-popover py-1"
			{...props}
		>
			<CaretUpIcon className="size-3.5" />
		</SelectPrimitive.ScrollUpButton>
	);
}

function SelectScrollDownButton(
	props: React.ComponentProps<typeof SelectPrimitive.ScrollDownButton>,
) {
	return (
		<SelectPrimitive.ScrollDownButton
			className="flex cursor-default items-center justify-center bg-popover py-1"
			{...props}
		>
			<CaretDownIcon className="size-3.5" />
		</SelectPrimitive.ScrollDownButton>
	);
}

export { Select, SelectContent, SelectItem, SelectTrigger, SelectValue };
