import { readFileSync, writeFileSync } from "node:fs";
import { resolve } from "node:path";
import { LILTOON_ASSETS, LILTOON_ROOT, PROJECT_ROOT } from "../paths.js";

const license = readFileSync(resolve(LILTOON_ROOT, "LICENSE"), "utf8").trim();
const notices = readFileSync(
	resolve(LILTOON_ASSETS, "Third Party Notices.md"),
	"utf8",
).trim();
writeFileSync(
	resolve(PROJECT_ROOT, "THIRD_PARTY_NOTICES.md"),
	`# Third-party notices\n\n## lilToon\n\nThis package is an unofficial integration. lilToon is distributed under the following license:\n\n\`\`\`text\n${license}\n\`\`\`\n\n## Notices carried by lilToon\n\n${notices}\n`,
);
process.stdout.write("Generated THIRD_PARTY_NOTICES.md.\n");
