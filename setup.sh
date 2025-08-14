#!/bin/bash

# MCP Setup Script for Claude Code
# This script installs and configures MCP servers for Claude Code CLI

echo "Starting MCP Setup for Claude Code..."

# Install MCP server packages globally
echo "Installing MCP server packages..."
npm install -g @modelcontextprotocol/server-filesystem @modelcontextprotocol/server-memory @modelcontextprotocol/server-github

# Create Claude Code config directory if it doesn't exist
echo "Creating configuration directory..."
mkdir -p ~/.config/claude-code

# Copy MCP settings
echo "Copying MCP settings..."
cp mcp-settings.json ~/.config/claude-code/

# Add MCP servers to Claude Code
echo "Configuring Claude Code MCP servers..."
claude mcp add filesystem npx @modelcontextprotocol/server-filesystem "$HOME"
claude mcp add memory npx @modelcontextprotocol/server-memory
claude mcp add github npx @modelcontextprotocol/server-github

# List configured servers
echo "Setup complete! Here are your configured MCP servers:"
claude mcp list

echo "
MCP Setup Complete!
You can now use MCP servers with Claude Code CLI.
To test: Run 'claude' and the MCP tools will be available automatically.
"