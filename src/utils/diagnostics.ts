export class UnsupportedFeatureError extends Error {
	constructor(message: string) {
		super(`[three-liltoon] ${message}`);
		this.name = "UnsupportedFeatureError";
	}
}

export function warnLilToon(message: string): void {
	console.warn(`[three-liltoon] ${message}`);
}
