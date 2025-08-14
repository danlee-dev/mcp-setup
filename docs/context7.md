# Context7 MCP Server

Real-time library documentation and code context provider for enhanced development workflows.

## Description

Context7 MCP server provides intelligent code context and documentation assistance, offering real-time access to library documentation, API references, and contextual code suggestions to improve development productivity.

## Setup

### Installation

```bash
npm install -g @upstash/context7-mcp
```

### Configuration

Add to your MCP configuration:

```json
{
  "context7": {
    "command": "npx",
    "args": [
      "-y",
      "@upstash/context7-mcp"
    ]
  }
}
```

## Usage Examples

### Documentation Access

- **API references**: Get real-time documentation for libraries and frameworks
- **Code examples**: Access practical usage examples
- **Best practices**: Receive contextual coding recommendations
- **Error explanations**: Understand common errors and solutions

### Code Context

- **Library integration**: Get guidance on integrating new libraries
- **Version compatibility**: Check compatibility between different versions
- **Migration guides**: Access upgrade and migration documentation
- **Performance tips**: Receive optimization suggestions

### Common Use Cases

1. **Learning new libraries**
   ```
   Get quick documentation for React hooks
   Understand Node.js API methods
   Learn TypeScript features and syntax
   Explore Python library functions
   ```

2. **Code troubleshooting**
   ```
   Understand error messages and solutions
   Find working code examples
   Get debugging suggestions
   Access community solutions
   ```

3. **Development workflow optimization**
   ```
   Get real-time coding suggestions
   Access relevant documentation while coding
   Find alternative approaches to problems
   Learn from community best practices
   ```

### Example Workflows

#### Integrating a New Library

1. **Research library**: Get overview and capabilities
2. **Installation guide**: Follow setup instructions
3. **Basic usage**: Review simple examples
4. **Advanced features**: Explore complex use cases
5. **Best practices**: Learn optimization techniques
6. **Troubleshooting**: Address common issues

#### API Integration Process

1. **API documentation**: Review endpoints and parameters
2. **Authentication**: Understand security requirements
3. **Request examples**: See practical implementation
4. **Response handling**: Learn data processing
5. **Error handling**: Implement robust error management
6. **Rate limiting**: Understand usage constraints

## Supported Languages and Frameworks

### Programming Languages
- **JavaScript/TypeScript**: Node.js, browser APIs, modern frameworks
- **Python**: Standard library, popular packages, data science tools
- **Java**: JDK documentation, Spring framework, Maven ecosystem
- **Go**: Standard library, popular modules, deployment patterns
- **Rust**: Core library, cargo ecosystem, system programming

### Frameworks and Libraries
- **Frontend**: React, Vue, Angular, Svelte
- **Backend**: Express, FastAPI, Spring Boot, Django
- **Mobile**: React Native, Flutter, native development
- **DevOps**: Docker, Kubernetes, CI/CD tools
- **Database**: SQL/NoSQL databases, ORMs, query builders

### Development Tools
- **Build systems**: Webpack, Vite, Rollup, Parcel
- **Testing**: Jest, Pytest, JUnit, Cypress
- **Linting**: ESLint, Prettier, Black, Clippy
- **Package managers**: npm, pip, Maven, Cargo

## Features

### Real-time Updates
- **Latest documentation**: Always current information
- **Version tracking**: Support for multiple library versions
- **Change notifications**: Updates on API changes
- **Deprecation warnings**: Alerts for outdated practices

### Contextual Intelligence
- **Smart suggestions**: Context-aware recommendations
- **Related concepts**: Connected documentation topics
- **Usage patterns**: Common implementation approaches
- **Community insights**: Popular solutions and patterns

### Integration Capabilities
- **IDE integration**: Works with popular development environments
- **CLI support**: Command-line documentation access
- **API access**: Programmatic documentation retrieval
- **Offline caching**: Local storage for frequently used docs

## Configuration Options

### Custom Sources
```json
{
  "context7": {
    "command": "npx",
    "args": [
      "-y", 
      "@upstash/context7-mcp",
      "--sources", "react,nodejs,typescript"
    ]
  }
}
```

### Language Preferences
```json
{
  "context7": {
    "command": "npx",
    "args": [
      "-y",
      "@upstash/context7-mcp", 
      "--language", "javascript",
      "--framework", "react"
    ]
  }
}
```

## Best Practices

### Efficient Usage
1. **Specific queries**: Use precise search terms for better results
2. **Context awareness**: Provide relevant code context when asking
3. **Version specification**: Mention library versions when relevant
4. **Progressive learning**: Start with basics, advance to complex topics

### Integration Workflow
1. **Setup preferences**: Configure for your primary technologies
2. **Regular usage**: Integrate into daily development routine
3. **Bookmark favorites**: Save frequently needed documentation
4. **Share knowledge**: Document learnings for team reference

## Troubleshooting

### Connection Issues
- **Network connectivity**: Verify internet access for real-time updates
- **Service availability**: Check Context7 service status
- **Authentication**: Ensure proper API key configuration if required

### Documentation Quality
- **Outdated information**: Report and verify against official sources
- **Missing documentation**: Request additional coverage for libraries
- **Accuracy issues**: Cross-reference with official documentation

### Performance Optimization
- **Cache management**: Clear cache if experiencing stale data
- **Query optimization**: Use specific terms to reduce response time
- **Bandwidth usage**: Monitor data consumption for large queries

## Advanced Features

### Team Integration
- **Shared knowledge**: Team-wide documentation access
- **Custom documentation**: Add organization-specific docs
- **Usage analytics**: Track team documentation usage patterns

### Automation
- **CI/CD integration**: Include documentation checks in pipelines
- **Code generation**: Generate boilerplate from documentation
- **Automated updates**: Keep project documentation current

### Customization
- **Personal preferences**: Tailor results to coding style
- **Project-specific context**: Configure for current project needs
- **Learning paths**: Create structured learning sequences

## Integration Examples

### With Development Tools
```bash
# IDE integration for real-time documentation
# Code completion with contextual examples  
# Error resolution with suggested fixes
```

### With Other MCP Servers
```bash
# Memory server: Store frequently accessed documentation
# GitHub server: Link documentation to code repositories
# Notion server: Create documentation summaries and notes
```

### Workflow Automation
```bash
# Automatic documentation lookup during code reviews
# Integration with testing frameworks for usage examples
# Documentation validation in CI/CD pipelines
```