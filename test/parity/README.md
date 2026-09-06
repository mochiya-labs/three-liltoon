# Visual parity fixtures

The runner compares fixed Unity/lilToon PNGs in `unity-reference/` with matching Three.js PNGs in `three-output/` and writes diffs to `diff/`.

Use identical mesh, textures, material values, camera, light, resolution, and color-management settings in both renderers. Name pairs identically, for example `010-main-shadow.png`. Optional thresholds live in `scenes/010-main-shadow.json`:

```json
{
	"maxDiffRatio": 0.05,
	"maxRms": 0.08,
	"pixelThreshold": 0.1
}
```

Run `npm run test:parity` while authoring fixtures. Release CI uses `npm run test:parity:required`, which also fails when no approved Unity references are installed. Reference images must use assets with redistribution permission.
