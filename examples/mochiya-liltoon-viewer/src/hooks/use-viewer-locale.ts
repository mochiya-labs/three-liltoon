"use client";

import { useEffect, useSyncExternalStore } from "react";
import { messages, type Locale } from "@/lib/i18n";

const storageKey = "mochiya-viewer-locale";
const changeEvent = "mochiya-viewer-locale-change";
let memoryLocale: Locale | undefined;

function getLocale(): Locale {
	if (memoryLocale) return memoryLocale;
	try {
		return localStorage.getItem(storageKey) === "ja" ? "ja" : "en";
	} catch {
		return "en";
	}
}

function subscribe(onChange: () => void) {
	function onStorage(event: StorageEvent) {
		if (event.key !== null && event.key !== storageKey) return;
		memoryLocale = undefined;
		onChange();
	}
	window.addEventListener("storage", onStorage);
	window.addEventListener(changeEvent, onChange);
	return () => {
		window.removeEventListener("storage", onStorage);
		window.removeEventListener(changeEvent, onChange);
	};
}

function setLocale(locale: Locale) {
	memoryLocale = locale;
	try {
		localStorage.setItem(storageKey, locale);
	} catch {
		// Keep the selected language usable when storage is unavailable.
	}
	window.dispatchEvent(new Event(changeEvent));
}

export function useViewerLocale() {
	const locale = useSyncExternalStore(
		subscribe,
		getLocale,
		() => "en" as const,
	);
	const title = messages[locale].viewerTitle;
	useEffect(() => {
		document.documentElement.lang = locale;
		document.title = title + " — Mochiya";
	}, [locale, title]);
	return { locale, setLocale };
}
