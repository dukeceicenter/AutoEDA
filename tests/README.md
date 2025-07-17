# MCP-EDA-Server Test Suite

This directory contains comprehensive tests for the MCP-EDA-Server project, covering unit tests, API tests, integration tests, MCP protocol tests, and experimental framework tests.

## Test Structure

```
tests/
├── __init__.py                 # Test package initialization
├── test_config.py             # Configuration file tests
├── test_designs.py            # Design file tests
├── test_api_endpoints.py      # API endpoint tests
├── test_integration.py        # Integration workflow tests
├── test_mcp_agent_client.py   # MCP Agent client tests
├── run_tests.py               # Test runner script
└── README.md                  # This file
```

## Test Categories

### 1. Unit Tests
- **Configuration Tests** (`test_config.py`): Validate CSV configuration files and TCL configurations
- **Design File Tests** (`test_designs.py`): Check RTL files, design configurations, and design structure

### 2. API Tests
- **API Endpoint Tests** (`test_api_endpoints.py`): Test microservice API interfaces
- Server health checks and status endpoints
- Endpoint functionality validation
- Error handling and parameter validation
- Response format verification

### 3. Integration Tests
- **Integration Workflow Tests** (`test_integration.py`): Test complete design workflows
- End-to-end design flow validation
- Multi-configuration testing
- Cross-stage data flow verification

### 4. MCP Protocol Tests
- **MCP Agent Client Tests** (`test_mcp_agent_client.py`): Test natural language processing
- Tool selection and parameter extraction
- Response format verification
- Error handling and edge cases
- Natural language query processing

## Running Tests

### Prerequisites
- Python 3.7+
- Required packages: `requests`, `unittest`, `pytest` (optional)
- MCP servers running (for API and integration tests)
- MCP Agent client running (for Agent tests)
- MCP EDA server running (for MCP protocol tests)

### Test Execution

#### Run All Tests
```bash
# From project root
python tests/run_tests.py

# Or from tests directory
cd tests
python run_tests.py
```

#### Run Specific Test Categories
```bash
# Unit tests only
python tests/run_tests.py unit

# API tests only
python tests/run_tests.py api

# Integration tests only
python tests/run_tests.py integration

# MCP Agent client tests only
python tests/run_tests.py agent

# All tests
python tests/run_tests.py all
```

#### Run Individual Test Files
```bash
# Run specific test file
python tests/run_tests.py test_config
python tests/run_tests.py test_designs
python tests/run_tests.py test_api_endpoints
python tests/run_tests.py test_integration
python tests/run_tests.py test_mcp_agent_client
```

#### Run with pytest (if installed)
```bash
# Run all tests with pytest
pytest tests/

# Run specific test file
pytest tests/test_config.py

# Run with verbose output
pytest tests/ -v

# Run with coverage
pytest tests/ --cov=. --cov-report=html
```

### Test Output

Tests provide detailed output including:
- Test execution status and progress
- Pass/fail indicators with detailed error messages
- Service availability checks
- Summary of results with statistics
- Debugging information for failed tests

## Test Features

### Non-Intrusive Testing
- Tests do not modify existing MCP server code or configurations
- Compatible with different configuration formats and versions
- Handles various design file structures and formats
- Preserves existing design implementations

### Robust Error Handling
- Graceful handling of missing or unavailable services
- Skip tests when dependencies are not available
- Comprehensive error reporting with context
- Timeout handling for long-running operations

### Configuration Compatibility
- Supports both `clock_period` and `clk_period` field names
- Compatible with `TOP_MODULE` and `TOP_NAME` configurations
- Handles different RTL file formats (Verilog, VHDL)
- Validates CSV configuration file formats

### Design File Validation
- Verifies RTL file syntax and structure
- Checks module/entity declarations and port definitions
- Validates configuration consistency across files
- Skips non-standard files (packages, includes, etc.)
- Supports multiple design types and architectures

### MCP Protocol Testing
- Tests natural language query processing
- Validates tool selection and parameter extraction
- Verifies response format and content
- Tests error handling for invalid requests
- Validates MCP server communication

## Test Dependencies

### Required Services
- **MCP Servers**: Ports 13333-13339, 13440 (for API and integration tests)
- **MCP Agent Client**: Port 8000 (for Agent client tests)
- **MCP EDA Server**: MCP protocol server (for MCP protocol tests)

### Optional Dependencies
- Design files in `designs/` directory
- Configuration files in `config/` directory
- RTL files in design subdirectories
- EDA tool licenses (for full integration tests)

### Python Dependencies
```bash
pip install requests unittest2 pytest pytest-cov
```

## Test Configuration

### Environment Variables
```bash
# Test configuration
export TEST_TIMEOUT=30
export TEST_RETRIES=3
export TEST_VERBOSE=true

# Service URLs (defaults to localhost)
export MCP_AGENT_URL=http://localhost:8000
export MCP_SERVER_URL=http://localhost:13333
```

### Test Data
Tests use the following design configurations:
- **b14**: VHDL design with clock port "clock"
- **des**: Verilog design with clock port "clk"
- **leon2**: Verilog design with clock port "clk"

## Troubleshooting

### Common Issues

1. **Servers Not Running**
   - Tests will skip API and integration tests
   - Start servers with `./restart_servers.sh`
   - Check server logs for errors

2. **MCP Agent Client Not Running**
   - Tests will skip Agent client tests
   - Start with `python mcp_agent_client.py`
   - Verify port 8000 is available

3. **MCP EDA Server Not Running**
   - Tests will skip MCP protocol tests
   - Start with `python server/mcp/mcp_eda_server.py`
   - Check MCP server configuration

4. **Missing Dependencies**
   - Install required packages: `pip install requests`
   - Ensure Python 3.7+ is used
   - Check EDA tool licenses

5. **Permission Issues**
   - Ensure test runner has execute permissions
   - Check file access permissions
   - Verify network access to localhost

6. **Timeout Issues**
   - Increase timeout values for slow systems
   - Check system resources and load
   - Verify network connectivity

### Debug Mode
For detailed debugging, run individual test files:
```bash
# Verbose unittest output
python -m unittest tests.test_config -v
python -m unittest tests.test_designs -v

# With pytest
pytest tests/test_config.py -v -s
pytest tests/test_api_endpoints.py -v -s
```

### Log Analysis
```bash
# Check test logs
tail -f logs/test_*.log

# Check server logs
tail -f logs/*.log

# Check MCP server logs
tail -f logs/mcp_*.log
```

## Contributing

When adding new tests:
1. Follow existing naming conventions and structure
2. Include comprehensive docstrings and comments
3. Add appropriate error handling and cleanup
4. Update this README if needed
5. Ensure tests are non-intrusive and idempotent
6. Add test data and fixtures as needed
7. Include both positive and negative test cases

### Test Writing Guidelines
- Use descriptive test method names
- Include setup and teardown methods
- Handle exceptions gracefully
- Provide meaningful error messages
- Use appropriate assertions
- Clean up resources after tests

## Test Coverage

The test suite covers:
- Configuration file validation and parsing
- Design file structure and syntax verification
- API endpoint functionality and error handling
- Integration workflow testing across stages
- MCP Agent client natural language processing
- MCP protocol communication and tool calling
- Error handling and edge cases
- Response format and content validation
- Service availability and health checks
- Cross-stage data flow and consistency

## Performance Testing

### Load Testing
```bash
# Run concurrent API tests
python tests/load_test.py --concurrent 10 --duration 60

# Test MCP server performance
python tests/mcp_performance_test.py --requests 100
```

### Benchmarking
```bash
# Benchmark API response times
python tests/benchmark_api.py

# Benchmark MCP tool execution
python tests/benchmark_mcp.py
```

## Future Enhancements

Potential improvements and additions:
- Performance benchmarking tests
- Load testing for concurrent requests
- Automated test report generation
- CI/CD integration with GitHub Actions
- Coverage reporting and analysis
- Mock server implementations for unit testing
- Docker-based test environments
- Cross-platform compatibility tests
- Security and vulnerability testing
- API version compatibility tests
- Experimental framework testing
- Design regression testing 