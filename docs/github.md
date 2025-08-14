# GitHub MCP Server

Complete GitHub integration for repository management, issues, pull requests, and collaboration.

## Description

The GitHub MCP server provides comprehensive access to GitHub's API, enabling repository operations, issue tracking, pull request management, and collaborative workflows directly from Claude Code.

## Setup

### Installation

```bash
npm install -g @modelcontextprotocol/server-github
```

### Configuration

Add to your MCP configuration:

```json
{
  "github": {
    "command": "npx",
    "args": [
      "-y",
      "@modelcontextprotocol/server-github"
    ]
  }
}
```

### Authentication

The server uses GitHub's authentication mechanisms:

1. **GitHub CLI** (recommended): Install and authenticate with `gh auth login`
2. **Personal Access Token**: Set `GITHUB_TOKEN` environment variable
3. **OAuth**: Browser-based authentication flow

## Usage Examples

### Repository Operations

- **Create repositories**: Set up new public or private repositories
- **Fork repositories**: Create personal copies of existing repositories
- **Get file contents**: Read files from any accessible repository
- **Push files**: Upload multiple files in a single commit
- **Create branches**: Set up feature or development branches

### Issue Management

- **Create issues**: Report bugs or request features
- **List issues**: View and filter repository issues
- **Update issues**: Modify title, body, labels, or status
- **Add comments**: Participate in issue discussions
- **Search issues**: Find specific issues across repositories

### Pull Request Workflows

- **Create pull requests**: Propose code changes
- **Review pull requests**: Add comments and reviews
- **Merge pull requests**: Complete the integration process
- **Get PR status**: Check CI/CD and review status
- **List pull requests**: View and filter PRs

### Common Use Cases

1. **Code collaboration**
   ```
   Create feature branches
   Push code changes
   Open pull requests
   Review team member's code
   ```

2. **Project management**
   ```
   Create and assign issues
   Track bug reports
   Manage feature requests
   Update project status
   ```

3. **Repository maintenance**
   ```
   Update documentation
   Manage releases
   Sync with upstream repositories
   Maintain contributor guidelines
   ```

## Example Workflows

### Creating a Feature Branch

1. Fork the repository (if needed)
2. Create a new branch: `feature/new-functionality`
3. Make code changes
4. Push files to the branch
5. Create a pull request to the main branch

### Bug Report Process

1. Search existing issues to avoid duplicates
2. Create a new issue with detailed description
3. Add appropriate labels (bug, priority, etc.)
4. Assign to team member if known
5. Track progress through comments

### Code Review Workflow

1. List open pull requests
2. Get PR details and changed files
3. Review code and add comments
4. Approve or request changes
5. Merge when ready

## API Limits and Best Practices

### Rate Limits
- GitHub API has rate limits based on authentication method
- Authenticated requests: 5,000 per hour
- Use efficiently by batching operations when possible

### Best Practices
1. **Use descriptive commit messages**: Follow conventional commit format
2. **Leverage labels**: Organize issues and PRs with meaningful labels
3. **Write detailed PR descriptions**: Include context and testing information
4. **Review thoroughly**: Use inline comments for specific feedback
5. **Keep branches focused**: One feature or fix per branch

## Troubleshooting

### Authentication Issues
- Ensure GitHub CLI is installed and authenticated: `gh auth status`
- Check personal access token permissions if using tokens
- Verify repository access permissions

### Permission Errors
- Check if you have write access to the repository
- Confirm organization permissions for private repositories
- Ensure token scopes include necessary permissions

### Network Issues
- Verify internet connectivity
- Check if GitHub services are operational
- Try authenticating again if persistent issues

### Common Error Codes
- **401 Unauthorized**: Authentication problem
- **403 Forbidden**: Permission or rate limit issue  
- **404 Not Found**: Repository or resource doesn't exist
- **422 Unprocessable**: Invalid request data

## Advanced Features

### Search Capabilities
- **Code search**: Find specific code patterns across repositories
- **Issue search**: Advanced filtering with GitHub query syntax
- **User search**: Find GitHub users and organizations

### Webhook Integration
- Set up webhooks for automated workflows
- Receive notifications for repository events
- Integrate with CI/CD pipelines

### Organization Management
- Manage organization repositories
- Handle team permissions
- Coordinate large-scale projects