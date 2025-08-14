# Notion MCP Server

Complete Notion workspace integration for page management, database operations, and content collaboration.

## Description

The Notion MCP server provides comprehensive access to Notion workspaces, enabling page creation, database queries, content management, and collaborative workflows directly from Claude Code.

## Setup

### Installation

```bash
npm install -g @notionhq/notion-mcp-server
```

### Configuration

Add to your MCP configuration with API key:

```json
{
  "notion": {
    "command": "npx",
    "args": [
      "-y",
      "@notionhq/notion-mcp-server"
    ],
    "env": {
      "NOTION_API_KEY": "${NOTION_API_KEY}"
    }
  }
}
```

### Getting API Keys

1. Go to [Notion Developers](https://developers.notion.com/)
2. Create a new integration
3. Copy the Internal Integration Token
4. Set environment variable: `export NOTION_API_KEY=ntn_your_token_here`

### Granting Permissions

After creating the integration:
1. Open the Notion page/database you want to access
2. Click "Share" → "Invite"  
3. Search for your integration name
4. Grant appropriate permissions (read, write, comment)

## Usage Examples

### Page Operations

- **Create pages**: Add new pages to workspaces or databases
- **Read pages**: Access page content and metadata
- **Update pages**: Modify existing page content
- **Search pages**: Find pages by title or content
- **Archive pages**: Remove pages from active workspace

### Database Management

- **Query databases**: Filter and sort database entries
- **Create database entries**: Add new records with properties
- **Update records**: Modify existing database entries
- **Retrieve database schema**: Understand database structure

### Common Use Cases

1. **Project management**
   ```
   Create project pages with tasks and timelines
   Track project status in databases
   Generate project reports
   Collaborate with team members
   ```

2. **Documentation management**
   ```
   Create and update technical documentation
   Maintain knowledge bases
   Share meeting notes and decisions
   Track documentation versions
   ```

3. **Content creation**
   ```
   Write and organize blog posts
   Create content calendars
   Manage editorial workflows
   Track content performance
   ```

### Example Workflows

#### Creating a Project Dashboard

1. Create a new page: "Q4 Project Dashboard"
2. Add a database for task tracking
3. Create linked pages for each project phase
4. Set up automated status updates

#### Meeting Notes Management

1. Create a template page for meeting notes
2. Set up a database to track all meetings
3. Link meeting pages to project pages
4. Add action items with assignees

#### Knowledge Base Setup

1. Create a hierarchical page structure
2. Set up databases for different content types
3. Create templates for consistent formatting
4. Implement search and tagging systems

## Supported Content Types

### Text Content
- **Rich text**: Formatted text with styles
- **Code blocks**: Syntax-highlighted code
- **Lists**: Bulleted and numbered lists
- **Quotes**: Block quotes and callouts

### Media Content
- **Images**: Upload and embed images
- **Files**: Attach documents and files
- **Embeds**: External content integration
- **Videos**: Video embedding and playback

### Interactive Elements
- **Databases**: Structured data tables
- **Formulas**: Calculated properties
- **Relations**: Links between database records
- **Rollups**: Aggregated data from related records

## Database Properties

### Supported Property Types
- **Title**: Primary identifier
- **Text**: Rich text content
- **Number**: Numeric values with formatting
- **Select**: Single-choice dropdown
- **Multi-select**: Multiple-choice options
- **Date**: Date and time values
- **People**: User assignments
- **Files**: File attachments
- **Checkbox**: Boolean values
- **URL**: Web links
- **Email**: Email addresses
- **Phone**: Phone numbers
- **Formula**: Calculated values
- **Relation**: Links to other databases
- **Rollup**: Aggregated data

## API Limitations

### Rate Limits
- 3 requests per second per integration
- Respect rate limits to avoid service interruption
- Use bulk operations when possible

### Content Limits
- Page content: 2MB maximum
- Database query results: 100 items per request
- File uploads: 5MB maximum per file

## Troubleshooting

### Authentication Issues
- Verify API key is correct and active
- Check integration permissions in Notion
- Ensure environment variable is set correctly

### Permission Errors
- Confirm integration has access to specific pages/databases
- Check workspace permissions
- Verify user has necessary access rights

### Connection Problems
- Test API key with simple requests first
- Check internet connectivity
- Verify Notion service status

### Common Errors
- **401 Unauthorized**: Invalid or expired API key
- **403 Forbidden**: Insufficient permissions
- **404 Not Found**: Page or database doesn't exist
- **429 Too Many Requests**: Rate limit exceeded

## Best Practices

### Organization
1. **Use templates**: Create consistent page structures
2. **Implement tagging**: Organize content with tags
3. **Set up relations**: Link related content effectively
4. **Use properties**: Structure database content properly

### Collaboration
1. **Set clear permissions**: Control access appropriately
2. **Use comments**: Facilitate team discussions
3. **Track changes**: Monitor content modifications
4. **Assign tasks**: Use people properties for accountability

### Performance
1. **Batch operations**: Group API calls when possible
2. **Use filters**: Limit query results to necessary data
3. **Cache results**: Avoid repeated identical queries
4. **Optimize queries**: Use specific property selections

## Integration Examples

### Task Management System
```
Database: Tasks
Properties: Title, Status, Assignee, Due Date, Priority
Filters: Status = "In Progress", Assignee = Current User
```

### Content Calendar
```
Database: Content
Properties: Title, Type, Publish Date, Author, Status
Views: Editorial Calendar, Author Assignments, Content Pipeline
```

### Project Tracker
```
Database: Projects  
Properties: Name, Status, Owner, Budget, Timeline
Relations: Link to Tasks database for detailed tracking
```