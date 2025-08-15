"""
MCP EDA Server Test Suite

Comprehensive test suite for the MCP EDA Server project, covering:
- Server components (base_server, executor, individual servers)
- MCP integration and protocol testing
- AI agent client with local LLM integration
- CodeBLEU TCL evaluation toolkit
- TCL script templates and generation
- End-to-end EDA flow integration

Test Categories:
- Unit Tests: Individual component testing
- Integration Tests: Multi-component interaction testing
- API Tests: Server endpoint and protocol testing
- MCP Tests: MCP protocol and tool testing
- Performance Tests: Load and benchmark testing
"""

__version__ = "2.0.0"
__author__ = "MCP EDA Team"

# Test configuration
TEST_CONFIG = {
    "servers": {
        "synthesis": {"port": 18001, "endpoint": "/docs"},
        "placement": {"port": 18002, "endpoint": "/docs"},
        "cts": {"port": 18003, "endpoint": "/docs"},
        "routing": {"port": 18004, "endpoint": "/docs"}
    },
    "timeouts": {
        "server_check": 5,
        "api_call": 30,
        "integration_test": 120
    },
    "test_designs": ["des", "b14"],
    "tech_library": "FreePDK45"
}