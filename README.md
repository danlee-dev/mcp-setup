# MCP Setup for Claude Code

Configuration files and scripts for connecting Model Context Protocol (MCP) servers to Claude Code CLI.

## Overview

This repository provides a comprehensive setup for MCP servers that enhance Claude Code's capabilities with external integrations including file systems, databases, design tools, and AI services.

## Quick Start

```bash
git clone https://github.com/danlee-dev/mcp-setup.git
cd mcp-setup
./setup.sh
```

## Included Files

- `mcp-settings.json` - MCP server configuration file
- `setup.sh` - Automated installation script
- `docs/` - Detailed documentation for each MCP server

## Supported MCP Servers

| Server | Description | Documentation |
|--------|-------------|---------------|
| [Filesystem](docs/filesystem.md) | Secure file system operations | File operations, directory management |
| [Memory](docs/memory.md) | Knowledge graph-based persistent memory | Data storage, knowledge management |
| [GitHub](docs/github.md) | Repository, issues, and PR management | Git operations, collaboration |
| [Notion](docs/notion.md) | Workspace integration | Note management, collaboration |
| [Puppeteer](docs/puppeteer.md) | Web browser automation and scraping | Web automation, testing |
| [Sequential Thinking](docs/sequential-thinking.md) | Structured problem-solving | Complex reasoning, planning |
| [Context7](docs/context7.md) | Real-time library documentation | Code documentation, references |
| [Figma](docs/figma.md) | Design-to-code conversion | Design systems, code generation |
| [Magic](docs/magic.md) | AI-powered UI component generation | Component creation, prototyping |

## Installation

### Prerequisites

- Node.js and npm
- Claude Code CLI
- macOS/Linux (Windows requires WSL)

### Manual Installation

1. Install MCP server packages:
```bash
npm install -g @modelcontextprotocol/server-filesystem
npm install -g @modelcontextprotocol/server-memory
npm install -g @modelcontextprotocol/server-github
```

2. Add servers to Claude Code:
```bash
claude mcp add filesystem npx @modelcontextprotocol/server-filesystem $HOME
claude mcp add memory npx @modelcontextprotocol/server-memory
claude mcp add github npx @modelcontextprotocol/server-github
```

## Configuration

### Environment Variables

Required environment variables for API-dependent servers:

```bash
# Notion integration
export NOTION_API_KEY=your_notion_token_here

# Figma integration
export FIGMA_ACCESS_TOKEN=figd_your_token_here

# Magic UI generation
export TWENTY_FIRST_API_KEY=your_magic_api_key_here
```

### Verification

Check server status:
```bash
claude mcp list
```

## Usage

Once configured, MCP tools are automatically available in Claude Code:
```bash
claude
```

## Documentation

Each MCP server has detailed documentation in the `docs/` folder:

- **Setup guides** - Step-by-step installation instructions
- **Configuration** - API keys, environment variables, permissions
- **Usage examples** - Common use cases and commands
- **Troubleshooting** - Common issues and solutions

## Troubleshooting

### Connection Issues

1. Verify server status: `claude mcp list`
2. Check configuration: Review `~/.claude.json`
3. Restart Claude Code
4. Verify API keys and permissions

### Common Problems

- **Server failed to connect**: Check API keys and network connectivity
- **Permission denied**: Verify file permissions and API scopes
- **Package not found**: Ensure all dependencies are installed

## Contributing

1. Fork the repository
2. Create a feature branch
3. Add your MCP server configuration
4. Update documentation
5. Submit a pull request

## License

MIT License - see [LICENSE](LICENSE) file for details.