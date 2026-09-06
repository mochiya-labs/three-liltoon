import type { NextConfig } from "next";

const nextConfig: NextConfig = {
	transpilePackages: ["three-liltoon"],
	turbopack: {
		root: process.cwd(),
	},
};

export default nextConfig;
