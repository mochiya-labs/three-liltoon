export class ShaderVariantCache<T> {
	readonly #entries = new Map<string, T>();

	getOrCreate(key: string, factory: () => T): T {
		const existing = this.#entries.get(key);
		if (existing !== undefined) return existing;
		const value = factory();
		this.#entries.set(key, value);
		return value;
	}

	clear(dispose?: (value: T) => void): void {
		if (dispose) this.#entries.forEach(dispose);
		this.#entries.clear();
	}

	get size(): number {
		return this.#entries.size;
	}
}
