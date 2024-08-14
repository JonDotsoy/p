install:
	bun install

preparepkg:
	cat package.json | jq -r '.version | @json | "export const pkg = " + . + " as const;"' > pkg.ts | bunx prettier -w pkg.ts

build:
	bun build --compile index.ts --outfile dist/q
