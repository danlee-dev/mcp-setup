# Filesystem MCP Server

Secure file system operations within specified directories.

## Description

The Filesystem MCP server provides safe access to file system operations including reading, writing, editing, and searching files within explicitly allowed directories. It enforces security boundaries to prevent unauthorized access to sensitive system areas.

## Setup

### Installation

```bash
npm install -g @modelcontextprotocol/server-filesystem
```

### Configuration

Add to your MCP configuration:

```json
{
  "filesystem": {
    "command": "npx",
    "args": [
      "-y",
      "@modelcontextprotocol/server-filesystem",
      "${HOME}"
    ]
  }
}
```

The last argument specifies the root directory that the server can access.

## Usage Examples

### File Operations

- **Read files**: Access any text file within the allowed directory
- **Write files**: Create or overwrite files with new content
- **Edit files**: Make specific line-based changes to existing files
- **Directory listing**: View contents of directories
- **Search files**: Find files matching patterns

### Common Use Cases

1. **Code analysis and editing**
   ```
   Read source files to understand codebase structure
   Edit configuration files
   Search for specific functions or patterns
   ```

2. **Documentation management**
   ```
   Read and update README files
   Manage project documentation
   Create new documentation files
   ```

3. **Configuration management**
   ```
   Update JSON/YAML configuration files
   Manage environment files
   Edit build scripts
   ```

## Security Features

- **Directory boundaries**: Access restricted to specified root directory
- **Path validation**: Prevents directory traversal attacks
- **Safe operations**: All operations are validated before execution

## Troubleshooting

### Permission Issues
- Ensure the specified directory exists and is readable
- Check file permissions on target files
- Verify the user has write permissions for the directory

### Path Not Found
- Confirm the root directory path is correct
- Use absolute paths in configuration
- Check for typos in directory names

## Advanced Configuration

### Multiple Root Directories

```json
{
  "filesystem": {
    "command": "npx",
    "args": [
      "-y",
      "@modelcontextprotocol/server-filesystem",
      "/home/user/projects",
      "/home/user/documents"
    ]
  }
}
```

### Read-only Access

For read-only access, consider using file permissions or a custom wrapper script that limits write operations.