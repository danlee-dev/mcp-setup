# Puppeteer MCP Server

Web browser automation and scraping using headless Chrome for testing, data extraction, and web interactions.

## Description

The Puppeteer MCP server provides browser automation capabilities through headless Chrome, enabling web scraping, automated testing, PDF generation, and complex web interactions directly from Claude Code.

## Setup

### Installation

```bash
npm install -g @modelcontextprotocol/server-puppeteer
```

### Configuration

Add to your MCP configuration:

```json
{
  "puppeteer": {
    "command": "npx",
    "args": [
      "-y",
      "@modelcontextprotocol/server-puppeteer"
    ]
  }
}
```

### Prerequisites

- Node.js 14+ (automatically installs Chromium)
- Sufficient memory for browser operations
- Network access for web requests

## Usage Examples

### Web Automation

- **Navigate pages**: Visit and interact with websites
- **Fill forms**: Automate form submissions
- **Click elements**: Interact with buttons, links, and controls  
- **Take screenshots**: Capture page visuals
- **Generate PDFs**: Convert web pages to documents

### Data Extraction

- **Scrape content**: Extract text, links, and data
- **Monitor changes**: Track website updates
- **Collect metrics**: Gather performance data
- **Extract images**: Download page media

### Testing and QA

- **Functional testing**: Verify user workflows
- **Performance testing**: Measure page load times
- **Cross-browser testing**: Test compatibility
- **Regression testing**: Detect UI changes

### Common Use Cases

1. **Web scraping projects**
   ```
   Extract product information from e-commerce sites
   Monitor competitor pricing
   Collect news articles or research data
   Gather social media insights
   ```

2. **Automated testing**
   ```
   Test user registration flows
   Verify checkout processes
   Monitor site uptime and functionality
   Generate test reports
   ```

3. **Content generation**
   ```
   Create PDF reports from web data
   Generate screenshots for documentation
   Archive web content
   Create visual comparisons
   ```

### Example Workflows

#### E-commerce Price Monitoring

1. Navigate to product pages
2. Extract pricing information
3. Store data in structured format
4. Compare with historical data
5. Generate price change alerts

#### Automated Form Testing

1. Load form page
2. Fill required fields with test data
3. Submit form and verify response
4. Check for error messages
5. Validate success confirmation

#### Website Performance Audit

1. Navigate to target pages
2. Measure loading times
3. Analyze network requests
4. Generate performance screenshots
5. Create comprehensive report

## Browser Capabilities

### Page Operations
- **Navigation**: Go to URLs, handle redirects
- **Interaction**: Click, type, scroll, hover
- **Forms**: Fill inputs, select options, submit
- **Screenshots**: Full page or element capture
- **PDF generation**: Create documents from pages

### Data Extraction
- **Text content**: Get visible and hidden text
- **Element attributes**: Extract HTML properties
- **Network data**: Monitor requests and responses
- **JavaScript execution**: Run custom scripts
- **Cookie management**: Handle session data

### Advanced Features
- **Mobile emulation**: Test responsive designs
- **Geolocation**: Simulate different locations
- **Network throttling**: Test slow connections
- **Request interception**: Modify or block requests
- **JavaScript injection**: Add custom functionality

## Performance Considerations

### Resource Management
- Browser instances consume significant memory
- Close pages and browsers when finished
- Use headless mode for better performance
- Limit concurrent browser instances

### Optimization Tips
1. **Disable images**: For text-only scraping
2. **Block ads**: Improve loading speed
3. **Use page pools**: Reuse browser instances
4. **Set timeouts**: Prevent hanging operations
5. **Minimize DOM queries**: Cache selectors

## Security and Ethics

### Responsible Scraping
- Respect robots.txt files
- Implement rate limiting
- Avoid overwhelming servers
- Handle errors gracefully

### Legal Considerations
- Review website terms of service
- Respect copyright and privacy laws  
- Consider data protection regulations
- Get permission for sensitive data

### Security Practices
- Validate all user inputs
- Sanitize scraped data
- Use secure connections (HTTPS)
- Protect sensitive information

## Troubleshooting

### Browser Issues
- **Launch failures**: Check Node.js version and permissions
- **Memory errors**: Increase heap size or reduce concurrency
- **Timeout problems**: Adjust wait conditions and timeouts
- **Crashes**: Monitor resource usage and browser stability

### Network Problems
- **Connection failures**: Verify internet access and proxy settings
- **Blocked requests**: Check for anti-bot measures
- **SSL errors**: Handle certificate issues appropriately
- **CORS issues**: Use appropriate request headers

### Element Selection
- **Missing elements**: Wait for dynamic content loading
- **Stale references**: Re-query DOM elements as needed
- **Iframe content**: Handle frame switching correctly
- **Shadow DOM**: Use appropriate selection strategies

### Common Error Patterns
- **Navigation timeout**: Page takes too long to load
- **Element not found**: Selector doesn't match any elements
- **Protocol error**: Browser communication issues
- **Execution context destroyed**: Page changed during operation

## Best Practices

### Code Organization
1. **Modular functions**: Break complex operations into smaller functions
2. **Error handling**: Implement comprehensive error catching
3. **Resource cleanup**: Always close pages and browsers
4. **Configuration management**: Centralize browser settings

### Performance Optimization
1. **Headless mode**: Use for better performance
2. **Page reuse**: Avoid unnecessary page creation
3. **Selective loading**: Disable unnecessary resources
4. **Parallel execution**: Run independent operations concurrently

### Debugging Strategies
1. **Visual debugging**: Use non-headless mode for development
2. **Screenshot capture**: Take screenshots at key points
3. **Console logging**: Monitor browser console messages
4. **Network monitoring**: Track request/response patterns

## Integration Examples

### Data Pipeline
```
1. Navigate to data source
2. Extract relevant information
3. Transform data format
4. Store in database or file
5. Schedule regular updates
```

### Testing Workflow
```  
1. Load application under test
2. Execute test scenarios
3. Capture results and screenshots
4. Generate test reports
5. Send notifications on failures
```

### Content Monitoring
```
1. Visit target websites
2. Extract content of interest
3. Compare with previous versions
4. Detect changes or updates
5. Alert stakeholders of changes
```