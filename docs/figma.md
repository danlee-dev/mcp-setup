# Figma MCP Server

Design-to-code conversion and Figma integration for automated UI component generation.

## Description

The Figma MCP server provides seamless integration with Figma's design platform, enabling automated extraction of design specifications, asset generation, and design-to-code conversion workflows directly from Claude Code.

## Setup

### Installation

```bash
npm install -g figma-developer-mcp
```

### Configuration

Add to your MCP configuration with API key:

```json
{
  "figma-framelink": {
    "command": "npx",
    "args": [
      "figma-developer-mcp",
      "--figma-api-key",
      "${FIGMA_ACCESS_TOKEN}",
      "--stdio"
    ]
  }
}
```

### Getting API Keys

1. Go to [Figma Settings](https://www.figma.com/settings)
2. Navigate to "Account" tab
3. Scroll to "Personal access tokens"
4. Click "Create new token"
5. Name your token and set expiration
6. Copy the token: `figd_your_token_here`
7. Set environment variable: `export FIGMA_ACCESS_TOKEN=figd_your_token_here`

### Granting Permissions

Ensure your Figma account has access to:
- Files you want to process
- Team projects (if applicable)
- Design system libraries
- Component libraries

## Usage Examples

### Design Asset Extraction

- **Export images**: Generate PNG, JPG, SVG from designs
- **Extract specifications**: Get spacing, colors, typography
- **Component analysis**: Understand design system structure
- **Asset optimization**: Generate responsive image sets

### Code Generation

- **React components**: Generate JSX from Figma components
- **CSS styles**: Extract styling information
- **Design tokens**: Create design system variables
- **Responsive layouts**: Generate flexible grid systems

### Design System Management

- **Component synchronization**: Keep code and design in sync
- **Style guide generation**: Create automated documentation
- **Token extraction**: Export design tokens
- **Version tracking**: Monitor design changes

### Common Use Cases

1. **Design-to-code workflow**
   ```
   Extract Figma components
   Generate React/Vue components
   Apply styling and responsive behavior
   Test component functionality
   ```

2. **Design system implementation**
   ```
   Extract design tokens (colors, typography, spacing)
   Generate CSS custom properties
   Create component library structure
   Document usage guidelines
   ```

3. **Asset pipeline automation**
   ```
   Export optimized images for web
   Generate different size variants
   Create icon libraries
   Optimize for performance
   ```

### Example Workflows

#### Component Generation Process

1. **Select Figma component**: Identify design to convert
2. **Extract specifications**: Get dimensions, colors, typography
3. **Generate code structure**: Create component boilerplate
4. **Apply styling**: Convert design to CSS/styled-components
5. **Add interactivity**: Implement user interactions
6. **Test and refine**: Validate component behavior

#### Design Token Extraction

1. **Identify design system**: Locate color and typography styles
2. **Extract token values**: Get hex codes, font sizes, spacing
3. **Generate token files**: Create JSON/CSS custom properties
4. **Integrate with build**: Import tokens into project
5. **Validate consistency**: Ensure design-code alignment

#### Asset Export Pipeline

1. **Select design frames**: Choose elements for export
2. **Configure export settings**: Set formats and dimensions
3. **Batch export**: Generate multiple asset variants
4. **Optimize assets**: Compress and optimize for web
5. **Deploy to CDN**: Upload to asset hosting service

## Supported Export Formats

### Image Formats
- **PNG**: High-quality raster graphics with transparency
- **JPG**: Compressed photos and complex images
- **SVG**: Scalable vector graphics for icons and illustrations
- **WebP**: Modern web-optimized image format

### Code Formats
- **React/JSX**: Component-based UI library
- **Vue**: Progressive frontend framework
- **HTML/CSS**: Standard web technologies
- **React Native**: Mobile app development
- **Flutter**: Cross-platform mobile framework

### Design Tokens
- **JSON**: Machine-readable token format
- **CSS Custom Properties**: Native CSS variables
- **SCSS/Less variables**: Preprocessor formats
- **JavaScript/TypeScript**: Programmatic token access

## API Capabilities

### File Operations
- **Get file information**: Retrieve file metadata and structure
- **Access components**: Read component definitions and properties
- **Extract styles**: Get text styles, color styles, effects
- **Navigate frames**: Access artboards and page structure

### Asset Generation
- **Image rendering**: Generate raster images from vector designs
- **Format conversion**: Convert between different file formats
- **Size optimization**: Create multiple resolution variants
- **Bulk operations**: Process multiple assets simultaneously

### Design System Access
- **Component libraries**: Access shared component sets
- **Style libraries**: Get centralized style definitions
- **Team assets**: Access organization design resources
- **Version history**: Track design evolution over time

## Configuration Options

### Export Settings
```json
{
  "figma-framelink": {
    "command": "npx",
    "args": [
      "figma-developer-mcp",
      "--figma-api-key", "${FIGMA_ACCESS_TOKEN}",
      "--format", "react",
      "--export-format", "svg,png@2x",
      "--stdio"
    ]
  }
}
```

### Quality Settings
- **Image quality**: Set compression levels for raster exports
- **Scale factors**: Define export resolutions (1x, 2x, 3x)
- **Color profiles**: Specify color space for exports
- **Optimization**: Enable/disable automatic optimization

## Troubleshooting

### Authentication Issues
- **Invalid token**: Verify API key is correct and not expired
- **Insufficient permissions**: Ensure token has required scopes
- **Team access**: Confirm access to team files and assets

### File Access Problems
- **File not found**: Verify file URL or ID is correct
- **Permission denied**: Check file sharing settings
- **Version conflicts**: Ensure working with latest file version

### Export Failures
- **Large file sizes**: Break down complex exports into smaller batches
- **Format limitations**: Check if format supports specific features
- **Rate limiting**: Respect API rate limits for bulk operations

### Code Generation Issues
- **Complex layouts**: Manual adjustment may be needed for intricate designs
- **Custom interactions**: Add custom logic for complex behaviors
- **Browser compatibility**: Test generated code across target browsers

## Best Practices

### Design Preparation
1. **Organized structure**: Use clear naming and grouping in Figma
2. **Component consistency**: Maintain consistent component architecture
3. **Design tokens**: Use Figma styles for colors, typography, effects
4. **Responsive design**: Design with multiple screen sizes in mind

### Code Integration
1. **Component architecture**: Align code structure with design components
2. **Style consistency**: Use design tokens throughout codebase
3. **Accessibility**: Ensure generated components meet accessibility standards
4. **Performance**: Optimize generated assets and code for performance

### Workflow Optimization
1. **Automated pipelines**: Set up CI/CD for design-to-code workflows
2. **Version control**: Track both design and code changes
3. **Team collaboration**: Establish clear handoff processes
4. **Quality assurance**: Test generated components thoroughly

## Integration Examples

### React Component Pipeline
```jsx
// Generated React component from Figma
import { Button } from './generated/Button';
import { designTokens } from './tokens/figma-tokens';

export function App() {
  return (
    <Button 
      variant="primary"
      size="large"
      style={{ color: designTokens.colors.primary }}
    >
      Click me
    </Button>
  );
}
```

### Design Token Integration
```css
/* Generated CSS custom properties */
:root {
  --color-primary: #007AFF;
  --color-secondary: #5856D6;
  --font-size-body: 16px;
  --spacing-md: 16px;
}
```

### Build System Integration
```javascript
// Automated asset generation in build process
const figmaAssets = await generateAssetsFromFigma({
  fileId: 'your-figma-file-id',
  components: ['Button', 'Card', 'Modal'],
  formats: ['png@2x', 'svg'],
  outputDir: './src/assets'
});
```