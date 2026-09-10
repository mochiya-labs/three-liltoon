"use client";

import { useCallback, useEffect, useRef, useState } from "react";

import type { ModelSource } from "@/lib/model/types";

const SUPPORTED_EXTENSIONS = new Set(["glb", "vrm"]);
export type UploadError = "unsupportedFile" | "emptyFile";

function extensionOf(fileName: string) {
	return fileName.split(".").pop()?.toLowerCase() ?? "";
}

export function useModelUpload() {
	const [source, setSource] = useState<ModelSource | null>(null);
	const [error, setError] = useState<UploadError | null>(null);
	const objectUrlRef = useRef<string | null>(null);

	const selectFile = useCallback((file: File) => {
		const extension = extensionOf(file.name);
		if (!SUPPORTED_EXTENSIONS.has(extension)) {
			setError("unsupportedFile");
			return false;
		}
		if (file.size === 0) {
			setError("emptyFile");
			return false;
		}

		const previousUrl = objectUrlRef.current;
		const url = URL.createObjectURL(file);
		objectUrlRef.current = url;
		setError(null);
		setSource({
			id: `${file.name}-${file.size}-${file.lastModified}`,
			fileName: file.name,
			fileSize: file.size,
			url,
		});
		if (previousUrl) URL.revokeObjectURL(previousUrl);
		return true;
	}, []);

	useEffect(
		() => () => {
			if (objectUrlRef.current) URL.revokeObjectURL(objectUrlRef.current);
		},
		[],
	);

	return { source, error, selectFile };
}
