import type { NextConfig } from "next";

const nextConfig: NextConfig = {
	agentRules: false,
	transpilePackages: ["@mochiya/three-liltoon"],
	turbopack: {
		root: process.cwd(),
	},
};

export default nextConfig;
