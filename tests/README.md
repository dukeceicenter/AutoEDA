# MCP-EDA-Server Test Suite

This directory contains comprehensive tests for the MCP-EDA-Server project, covering unit tests, API tests, integration tests, and Agent client tests.

## Test Structure

```
tests/
├── __init__.py                 # Test package initialization
├── test_config.py             # Configuration file tests
├── test_designs.py            # Design file tests
├── test_api_endpoints.py      # API endpoint tests
├── test_integration.py        # Integration workflow tests
├── test_mcp_agent_client.py   # Agent client tests
├── run_tests.py               # Test runner script
└── README.md                  # This file
```

## Test Categories

### 1. Unit Tests
- **Configuration Tests** (`test_config.py`): Validate CSV configuration files
- **Design File Tests** (`test_designs.py`): Check RTL files and design configurations

### 2. API Tests
- **API Endpoint Tests** (`test_api_endpoints.py`): Test microservice API interfaces
- Server health checks
- Endpoint functionality validation
- Error handling tests

### 3. Integration Tests
- **Integration Workflow Tests** (`test_integration.py`): Test complete design workflows
- End-to-end design flow validation
- Multi-configuration testing

### 4. Agent Client Tests
- **Agent Client Tests** (`test_mcp_agent_client.py`): Test natural language processing
- Tool selection validation
- Response format verification

## Running Tests

### Prerequisites
- Python 3.7+
- Required packages: `requests`, `unittest`
- MCP servers running (for API and integration tests)
- MCP Agent client running (for Agent tests)

### Test Execution

#### Run All Tests
```bash
python tests/run_tests.py
```

#### Run Specific Test Categories
```bash
# Unit tests only
python tests/run_tests.py unit

# API tests only
python tests/run_tests.py api

# Integration tests only
python tests/run_tests.py integration

# Agent client tests only
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

### Test Output

Tests provide detailed output including:
- Test execution status
- Pass/fail indicators
- Error messages and debugging information
- Summary of results

## Test Features

### Non-Intrusive Testing
- Tests do not modify existing MCP server code
- Compatible with different configuration formats
- Handles various design file structures

### Robust Error Handling
- Graceful handling of missing servers
- Skip tests when dependencies unavailable
- Comprehensive error reporting

### Configuration Compatibility
- Supports both `clock_period` and `clk_period` field names
- Compatible with `TOP_MODULE` and `TOP_NAME` configurations
- Handles different RTL file formats

### Design File Validation
- Verifies RTL file syntax
- Checks module/entity declarations
- Validates configuration consistency
- Skips non-standard files (packages, includes, etc.)

## Test Dependencies

### Required Services
- **MCP Servers**: Ports 13333-13339, 13440
- **Agent Client**: Port 8000

### Optional Dependencies
- Design files in `designs/` directory
- Configuration files in `config/` directory
- RTL files in design subdirectories

## Troubleshooting

### Common Issues

1. **Servers Not Running**
   - Tests will skip API and integration tests
   - Start servers with `./restart_servers.sh`

2. **Agent Client Not Running**
   - Tests will skip Agent client tests
   - Start with `python mcp_agent_client.py`

3. **Missing Dependencies**
   - Install required packages: `pip install requests`
   - Ensure Python 3.7+ is used

4. **Permission Issues**
   - Ensure test runner has execute permissions
   - Check file access permissions

### Debug Mode
For detailed debugging, run individual test files:
```bash
python -m unittest tests.test_config -v
python -m unittest tests.test_designs -v
```

## Contributing

When adding new tests:
1. Follow existing naming conventions
2. Include comprehensive docstrings
3. Add appropriate error handling
4. Update this README if needed
5. Ensure tests are non-intrusive

## Test Coverage

The test suite covers:
- Configuration file validation
- Design file structure verification
- API endpoint functionality
- Integration workflow testing
- Agent client natural language processing
- Error handling and edge cases
- Response format validation

## Future Enhancements

Potential improvements:
- Performance benchmarking tests
- Load testing for concurrent requests
- Automated test report generation
- CI/CD integration
- Coverage reporting
- Mock server implementations 