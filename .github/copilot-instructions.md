# copilot-instructions.md

- Always ask which Radius environment to deploy to.
- Only use the Radius MCP server for Radius operations. If the operation that you want to do is not exposed via the MCP server's tools, tell the user which CLI commands to run. Never run the `rad` CLI yourself.
- When adding new resource types to Bicep files, always ensure that you include the appropriate extension namespace at the top of the Bicep file.
- Always run the `pre-edit-bicep` MCP tool before making changes to Bicep files.
