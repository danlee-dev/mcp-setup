# Magic MCP Server

AI-powered UI component generation and prototyping for rapid development workflows.

## Description

Magic MCP server provides AI-powered UI component generation, enabling rapid prototyping, automated code generation, and intelligent design-to-code conversion using advanced machine learning models from 21st.dev.

## Setup

### Installation

```bash
npm install -g @21st-dev/magic
```

### Configuration

Add to your MCP configuration with API key:

```json
{
  "magic": {
    "command": "npx",
    "args": [
      "-y",
      "@21st-dev/magic"
    ],
    "env": {
      "TWENTY_FIRST_API_KEY": "${TWENTY_FIRST_API_KEY}"
    }
  }
}
```

### Getting API Keys

1. Visit [21st.dev](https://21st.dev) and create an account
2. Navigate to API settings or dashboard
3. Generate a new API key
4. Copy the key (format: `1ba23a0add4c748a2fc363b969fedfa5a186d647aefb2f013bc5d6e2db7164cf`)
5. Set environment variable: `export TWENTY_FIRST_API_KEY=your_api_key_here`

Alternative setup via CLI:
```bash
npx -y @21st-dev/cli@latest install cline --api-key "your_api_key_here"
```

## Usage Examples

### AI Component Generation

- **Create components from descriptions**: Generate UI components using natural language
- **Style generation**: Automatically apply appropriate styling
- **Responsive design**: Create components that adapt to different screen sizes
- **Accessibility features**: Generate components with built-in accessibility support

### Rapid Prototyping

- **Mockup generation**: Create functional prototypes quickly
- **Layout creation**: Generate complex layouts from simple descriptions
- **Interactive elements**: Add user interactions and state management
- **Design iteration**: Rapidly test and refine design concepts

### Code Enhancement

- **Code optimization**: Improve existing component code
- **Pattern implementation**: Apply design patterns and best practices
- **Framework conversion**: Convert components between frameworks
- **Performance optimization**: Generate optimized, performant code

### Common Use Cases

1. **Rapid prototyping**
   ```
   Generate landing page components
   Create dashboard layouts
   Build form interfaces
   Design mobile app screens
   ```

2. **Component library development**
   ```
   Create consistent design system components
   Generate variations of existing components
   Build accessible UI elements
   Implement responsive patterns
   ```

3. **Design-to-code acceleration**
   ```
   Convert design mockups to functional code
   Generate component variations
   Implement interactive behaviors
   Create responsive adaptations
   ```

### Example Workflows

#### Component Creation Process

1. **Describe requirements**: Provide natural language description
2. **Specify framework**: Choose React, Vue, Angular, or other
3. **Set constraints**: Define styling, accessibility, responsive needs
4. **Generate component**: AI creates initial implementation
5. **Review and refine**: Iterate on generated code
6. **Integrate**: Add component to project

#### Prototype Development

1. **Define application concept**: Describe app functionality and layout
2. **Generate base structure**: Create main layout and navigation
3. **Add feature components**: Generate specific functionality modules
4. **Apply theming**: Implement consistent design system
5. **Test interactions**: Validate user flows and behaviors
6. **Export production code**: Convert prototype to production-ready code

#### Design System Implementation

1. **Define design principles**: Establish visual and interaction guidelines
2. **Generate base components**: Create foundational UI elements
3. **Create component variations**: Generate different states and sizes
4. **Build composite components**: Combine base elements into complex UIs
5. **Document usage**: Generate component documentation
6. **Validate consistency**: Ensure adherence to design system rules

## Supported Technologies

### Frontend Frameworks
- **React**: JSX components with hooks and modern patterns
- **Vue**: Single-file components with composition API
- **Angular**: TypeScript components with modern Angular features
- **Svelte**: Lightweight components with reactive patterns
- **Solid**: High-performance reactive components

### Styling Solutions
- **CSS Modules**: Scoped CSS with modern features
- **Styled Components**: CSS-in-JS with dynamic theming
- **Tailwind CSS**: Utility-first styling approach
- **SCSS/Sass**: Advanced CSS preprocessing
- **CSS-in-JS**: Various CSS-in-JS solutions

### Development Tools
- **TypeScript**: Fully typed component generation
- **JavaScript**: Modern ES6+ syntax and patterns
- **Build tools**: Integration with Vite, Webpack, Parcel
- **Testing**: Component tests and accessibility testing
- **Documentation**: Automated component documentation

## AI Capabilities

### Natural Language Processing
- **Intent recognition**: Understand component requirements from descriptions
- **Context awareness**: Generate appropriate components for specific use cases
- **Style interpretation**: Apply appropriate visual styling based on context
- **Accessibility inference**: Include accessibility features automatically

### Code Generation Features
- **Framework adaptation**: Generate code for specific frontend frameworks
- **Pattern recognition**: Apply established coding patterns and best practices
- **Optimization**: Generate performant, optimized code
- **Responsive design**: Create components that work across devices

### Learning and Adaptation
- **Usage patterns**: Learn from successful component implementations
- **Feedback integration**: Improve generation based on user feedback
- **Trend awareness**: Stay current with frontend development trends
- **Best practices**: Apply current industry standards and practices

## Configuration Options

### Generation Settings
```json
{
  "magic": {
    "command": "npx",
    "args": [
      "-y",
      "@21st-dev/magic",
      "--framework", "react",
      "--typescript", "true",
      "--styling", "tailwind"
    ],
    "env": {
      "TWENTY_FIRST_API_KEY": "${TWENTY_FIRST_API_KEY}"
    }
  }
}
```

### Quality Controls
- **Code quality**: Set standards for generated code
- **Accessibility level**: Choose WCAG compliance level
- **Browser support**: Specify target browser compatibility
- **Performance targets**: Set performance optimization goals

## Best Practices

### Effective Prompting
1. **Be specific**: Provide detailed component requirements
2. **Include context**: Describe where and how component will be used
3. **Specify constraints**: Mention accessibility, performance, or styling needs
4. **Provide examples**: Reference similar components or patterns

### Code Integration
1. **Review generated code**: Always examine AI-generated code before use
2. **Test thoroughly**: Validate functionality and edge cases
3. **Follow project conventions**: Adapt generated code to project standards
4. **Document customizations**: Record changes made to generated components

### Iterative Development
1. **Start simple**: Begin with basic components and add complexity
2. **Refine incrementally**: Make small improvements in iterations
3. **Validate early**: Test components with real users quickly
4. **Gather feedback**: Use feedback to improve subsequent generations

## Troubleshooting

### API Issues
- **Authentication failures**: Verify API key is correct and active
- **Rate limiting**: Monitor API usage and respect limits
- **Service availability**: Check 21st.dev service status
- **Request formatting**: Ensure requests follow API specifications

### Code Generation Problems
- **Unexpected output**: Refine prompts and provide more context
- **Framework errors**: Verify framework compatibility and versions
- **Styling issues**: Check styling framework integration
- **Performance problems**: Review generated code for optimization opportunities

### Integration Challenges
- **Build system conflicts**: Ensure compatibility with existing build tools
- **Dependency issues**: Verify all required packages are installed
- **Version compatibility**: Check framework and library version alignment
- **Environment setup**: Ensure development environment is properly configured

## Advanced Features

### Custom Templates
- Create reusable component templates
- Define organization-specific patterns
- Build domain-specific component libraries
- Implement consistent branding and styling

### Workflow Automation
- Integrate with CI/CD pipelines
- Automate component testing and validation
- Generate documentation automatically
- Set up continuous component optimization

### Team Collaboration
- Share generated components across team
- Maintain component version history
- Implement component approval workflows
- Track component usage and performance

## Integration Examples

### React Project Integration
```jsx
// AI-generated React component
import React, { useState } from 'react';
import './Button.styles.css';

interface ButtonProps {
  variant: 'primary' | 'secondary' | 'danger';
  size: 'small' | 'medium' | 'large';
  onClick: () => void;
  children: React.ReactNode;
}

export const Button: React.FC<ButtonProps> = ({
  variant = 'primary',
  size = 'medium',
  onClick,
  children
}) => {
  const [isLoading, setIsLoading] = useState(false);
  
  return (
    <button
      className={`btn btn--${variant} btn--${size}`}
      onClick={onClick}
      disabled={isLoading}
      aria-label={typeof children === 'string' ? children : undefined}
    >
      {isLoading ? 'Loading...' : children}
    </button>
  );
};
```

### Build Pipeline Integration
```javascript
// Automated component generation in build process
const generateComponents = async () => {
  const components = await magic.generateFromSpecs({
    components: [
      { name: 'Card', description: 'Product card with image and details' },
      { name: 'Modal', description: 'Accessible modal dialog' }
    ],
    framework: 'react',
    styling: 'tailwind',
    typescript: true
  });
  
  // Write generated components to source directory
  components.forEach(component => {
    fs.writeFileSync(
      `./src/components/${component.name}.tsx`, 
      component.code
    );
  });
};
```

### Design System Generation
```typescript
// Generate complete design system
const designSystem = await magic.generateDesignSystem({
  theme: {
    colors: ['#007AFF', '#5856D6', '#FF3B30'],
    typography: ['Inter', 'SF Pro Display'],
    spacing: [8, 16, 24, 32, 48, 64]
  },
  components: ['Button', 'Input', 'Card', 'Modal', 'Table'],
  framework: 'react',
  accessibility: 'WCAG-AA'
});
```