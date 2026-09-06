# Repository workflow

After creating or editing code in this repository, including examples, tests and tools, run `npm run format` from the repository root. Run `npm run format:check` after the final edit and resolve formatting failures before completing the task. Use `npm.cmd` on PowerShell if needed.

Use the checked-in `.prettierrc`; do not substitute personal editor settings. VS Code uses the Prettier extension and formats on save.

Respect `.prettierignore`: upstream `vendor/`, generated shaders/schema/notices, build output, lockfiles and local verification assets remain managed by their existing tools. Change generators when generated output needs to change; do not hand-format their output. Prettier handles its supported source formats; HLSL remains under the shader tooling.
