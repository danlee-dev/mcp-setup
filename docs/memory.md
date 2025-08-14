# Memory MCP Server

Persistent knowledge graph-based memory system for storing and retrieving information.

## Description

The Memory MCP server provides a knowledge graph-based storage system that allows Claude to remember information across conversations. It stores entities, relationships, and observations in a structured format that can be queried and updated.

## Setup

### Installation

```bash
npm install -g @modelcontextprotocol/server-memory
```

### Configuration

Add to your MCP configuration:

```json
{
  "memory": {
    "command": "npx",
    "args": [
      "-y",
      "@modelcontextprotocol/server-memory"
    ]
  }
}
```

## Usage Examples

### Entity Management

- **Create entities**: Store people, projects, concepts, or any named items
- **Add observations**: Record facts, notes, or details about entities
- **Create relationships**: Link entities together with meaningful connections
- **Search nodes**: Find entities by name, type, or content

### Common Use Cases

1. **Project tracking**
   ```
   Store project information, team members, and progress updates
   Track relationships between different projects
   Remember important dates and milestones
   ```

2. **Contact management**
   ```
   Store information about people you work with
   Remember preferences, skills, and contact details
   Track relationships between team members
   ```

3. **Knowledge management**
   ```
   Store research findings and insights
   Create connections between different concepts
   Build a personal knowledge base
   ```

### Example Workflow

1. Create entities for a new project:
   ```
   Entity: "Mobile App Project"
   Type: "project"
   Observations: ["Started in January 2024", "React Native framework"]
   ```

2. Add team members:
   ```
   Entity: "John Smith"
   Type: "person" 
   Observations: ["Lead developer", "Expert in React Native"]
   ```

3. Create relationships:
   ```
   Relation: "John Smith" -> "works on" -> "Mobile App Project"
   ```

## Data Structure

### Entities
- **Name**: Unique identifier
- **Type**: Category (person, project, concept, etc.)
- **Observations**: Array of facts or notes

### Relations
- **From**: Source entity
- **To**: Target entity  
- **Relation Type**: Description of the relationship

## Troubleshooting

### Storage Issues
- Memory data is stored locally in Claude Code's data directory
- Restart Claude Code if memory operations seem unresponsive
- Check available disk space

### Search Problems
- Use specific keywords when searching
- Try partial matches if exact searches fail
- Consider searching by entity type

### Relationship Errors
- Ensure both entities exist before creating relationships
- Use consistent entity names
- Verify relationship types are meaningful

## Best Practices

1. **Consistent naming**: Use clear, consistent names for entities
2. **Meaningful types**: Choose descriptive entity types
3. **Detailed observations**: Add comprehensive notes and facts
4. **Logical relationships**: Create relationships that make semantic sense
5. **Regular cleanup**: Remove outdated or duplicate information

## Data Persistence

- All memory data persists between Claude Code sessions
- Data is stored locally on your machine
- No data is sent to external servers
- Consider backing up important memory data regularly