# MCP EDA Implementation Guide

## Overview

This project implements a complete MCP (Model Context Protocol) EDA server and client, providing a complete digital design flow from RTL to GDSII.

## Architecture Design

### Server Architecture
- **FastMCP Framework**: Uses the officially recommended FastMCP framework to simplify MCP server development
- **Microservice Architecture**: Each EDA stage runs independently in separate microservices
- **Tool-based Design**: Each EDA function is encapsulated as an independent MCP tool

### Client Architecture
- **Asynchronous Design**: Uses asyncio for asynchronous communication
- **Type Safety**: Complete type annotations and error handling
- **Clean API**: Provides intuitive tool calling interface

## File Structure

```
server/mcp/
├── mcp_eda_server.py      # Main MCP server file
├── start_mcp_server.sh    # Server startup script
└── claude_desktop_config.json  # Claude Desktop configuration

mcp_eda_client.py          # MCP client
test_new_mcp.py           # Test script
MCP_IMPLEMENTATION.md     # This document
```

## Available Tools

### 1. synthesis_setup
- **Function**: Setup synthesis environment
- **Parameters**: design, tech, version_idx, force
- **Returns**: Synthesis setup results

### 2. synthesis_compile
- **Function**: Execute RTL synthesis
- **Parameters**: design, tech, version_idx, force
- **Returns**: Synthesis compilation results

### 3. floor_planning
- **Function**: Execute floorplanning
- **Parameters**: design, top_module, tech, syn_ver, g_idx, p_idx, force, restore_enc
- **Returns**: Floorplanning results

### 4. power_planning
- **Function**: Execute power planning
- **Parameters**: design, top_module, restore_enc, tech, impl_ver, force, g_idx
- **Returns**: Power planning results

### 5. placement
- **Function**: Execute cell placement
- **Parameters**: design, top_module, restore_enc, tech, impl_ver, force, g_idx, p_idx
- **Returns**: Placement results

### 6. clock_tree_synthesis
- **Function**: Execute clock tree synthesis
- **Parameters**: design, top_module, restore_enc, tech, impl_ver, force, g_idx, c_idx
- **Returns**: Clock tree synthesis results

### 7. routing
- **Function**: Execute routing
- **Parameters**: design, top_module, restore_enc, tech, impl_ver, force, g_idx, p_idx, c_idx
- **Returns**: Routing results

### 8. save_design
- **Function**: Save design results
- **Parameters**: design, top_module, tech, impl_ver, archive, force
- **Returns**: Save results

### 9. run_complete_flow
- **Function**: Run complete RTL to GDSII flow
- **Parameters**: design, top_module, tech, force
- **Returns**: Complete flow execution results

## Installation and Configuration

### 1. Install Dependencies
```bash
pip install mcp[cli] fastmcp requests
```

### 2. Start Server
```bash
cd server/mcp
python3 mcp_eda_server.py
```

### 3. Configure Claude Desktop
Add the following configuration to your Claude Desktop configuration file:

```json
{
  "mcpServers": {
    "eda-mcp": {
      "command": "python3",
      "args": [
        "/path/to/your/project/server/mcp/mcp_eda_server.py"
      ],
      "env": {
        "PYTHONPATH": "/path/to/your/project",
        "MCP_SERVER_HOST": "http://localhost"
      }
    }
  }
}
```

### 4. Test Connection
```bash
python3 test_new_mcp.py
```

## Usage Examples

### Using Client API
```python
from mcp_eda_client import MCPEDAClient

async def main():
    client = MCPEDAClient()
    
    # Connect to server
    await client.connect()
    
    # Run synthesis setup
    result = await client.run_synthesis_setup("my_design", "FreePDK45")
    print(result)
    
    # Run complete flow
    result = await client.run_complete_flow("my_design", "top_module")
    print(result)
    
    # Disconnect
    await client.disconnect()

asyncio.run(main())
```

### Using Claude Desktop
In Claude Desktop, you can directly use natural language to call tools:

```
Please run the complete RTL to GDSII flow for design "my_design" with top module "top_module"
```

## Technical Features

### 1. Reference Project Advantages
- **Clean Architecture**: Learns from the reference project's clean design approach
- **Tool-based**: Each function is an independent MCP tool
- **Type Safety**: Complete parameter type definitions and validation

### 2. Improvements
- **English Support**: Complete error messages and documentation in English
- **Auto-detection**: Automatically detect synthesis versions and implementation versions
- **Complete Flow**: Provides tools for one-click complete design flow execution
- **Error Handling**: Comprehensive error handling and user-friendly error messages

### 3. Compatibility
- **MCP Protocol**: Strictly follows official MCP protocol specifications
- **FastMCP**: Uses the officially recommended FastMCP framework
- **Async Support**: Complete asynchronous operation support

## Troubleshooting

### Common Issues

1. **Import Errors**
   - Ensure all dependencies are installed: `pip install mcp[cli] fastmcp`
   - Check Python path settings

2. **Connection Failures**
   - Ensure server is running
   - Check server file path
   - Verify environment variable settings

3. **Tool Call Failures**
   - Check if EDA microservices are running
   - Verify network connection and port configuration
   - Check server logs

### Debugging Methods

1. **View Server Logs**
   ```bash
   cd server/mcp
   python3 mcp_eda_server.py
   ```

2. **Run Test Script**
   ```bash
   python3 test_new_mcp.py
   ```

3. **Check Dependencies**
   ```bash
   python3 -c "import mcp.server.fastmcp; print('FastMCP OK')"
   ```

## Development Guide

### Adding New Tools
1. Add new `@mcp.tool()` decorated function in `mcp_eda_server.py`
2. Add corresponding client method in `mcp_eda_client.py`
3. Update documentation and test scripts

### Modifying Existing Tools
1. Modify the server-side tool function
2. Update client method signatures
3. Update documentation and tests

### Testing New Features
1. Run `test_new_mcp.py` for basic testing
2. Test actual usage scenarios in Claude Desktop
3. Verify integration with EDA microservices

## Summary

This new MCP implementation, based on the best practices from the reference project, provides:

- Clean and clear architectural design
- Complete EDA toolset
- Type-safe client API
- Comprehensive error handling
- Detailed English documentation
- Easy to extend and maintain

Through this implementation, users can easily control the complete EDA design flow using natural language in Claude Desktop, greatly improving hardware design efficiency. 