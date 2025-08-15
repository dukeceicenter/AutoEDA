# MCP EDA Server Test Suite v2.0

Comprehensive test suite for the MCP EDA Server project with 4-server architecture support.

## Overview

This test suite provides comprehensive coverage for the MCP EDA Server project, including:

- **Server Components**: Testing of base server, executor, and individual EDA servers
- **MCP Integration**: MCP protocol, tool registration, and communication testing
- **AI Agent Client**: Local LLM integration and natural language processing
- **CodeBLEU TCL**: TCL code evaluation and similarity metrics
- **Script Templates**: Jinja2 template rendering and parameter substitution
- **Integration Flow**: End-to-end EDA workflow testing

## Test Structure

```
tests/
├── __init__.py                    # Test configuration and constants
├── run_tests.py                   # Main test runner (v2.0)
├── README.md                      # This documentation
│
├── test_server_components.py      # Server class and functionality tests
├── test_mcp_integration.py        # MCP protocol and tool tests
├── test_agent_client.py           # AI agent and LLM integration tests
├── test_codebleu_tcl.py          # CodeBLEU TCL evaluation tests
├── test_scripts_templates.py      # TCL script template tests
└── test_integration_flow.py       # End-to-end flow tests
```

## Test Categories

### 1. Unit Tests
- **Server Components** (`test_server_components.py`)
  - BaseServer class functionality
  - Individual server initialization (synthesis, placement, cts, routing)
  - Executor script testing
  - Request model validation
  - TCL configuration testing

- **Script Templates** (`test_scripts_templates.py`)
  - Template file existence and syntax
  - Jinja2 rendering functionality
  - Parameter substitution
  - Technology-specific scripts

- **CodeBLEU TCL** (`test_codebleu_tcl.py`)
  - TCL code similarity evaluation
  - BLEU score calculation
  - Syntax and dataflow matching
  - Batch evaluation functionality

### 2. Integration Tests
- **MCP Integration** (`test_mcp_integration.py`)
  - MCP server startup and configuration
  - Tool registration and parameter validation
  - Protocol compliance testing
  - Error handling and response formatting

- **Agent Client** (`test_agent_client.py`)
  - Local LLM integration (Qwen model)
  - Natural language query processing
  - Tool selection and parameter extraction
  - Multi-stage workflow orchestration

- **Integration Flow** (`test_integration_flow.py`)
  - Server availability and health checks
  - Single-stage execution testing
  - Multi-stage workflow validation
  - Checkpoint handling between stages
  - Error handling and recovery

### 3. Performance Tests
- **Response Time Validation**
- **Concurrent Request Handling**
- **Load Testing**
- **Memory and Resource Usage**

## Running Tests

### Prerequisites

**Required Python Packages:**
```bash
pip install requests unittest pathlib json
```

**Optional Packages (for full functionality):**
```bash
pip install jinja2 transformers torch
```

**EDA Servers:**
- Synthesis Server (port 18001)
- Placement Server (port 18002)
- CTS Server (port 18003)
- Routing Server (port 18004)

### Quick Start

```bash
# Run all tests
python tests/run_tests.py

# Run specific test category
python tests/run_tests.py unit
python tests/run_tests.py integration
python tests/run_tests.py performance

# Run with verbose output
python tests/run_tests.py --verbose

# Run unit tests in parallel
python tests/run_tests.py unit --parallel

# Check dependencies
python tests/run_tests.py --deps

# List available tests
python tests/run_tests.py --list
```

### Advanced Usage

```bash
# Run specific test module
python tests/run_tests.py test_server_components

# Run with custom timeout
python tests/run_tests.py --timeout 300

# Test with specific design
python tests/run_tests.py --design des

# Run from project root
cd /path/to/mcp-eda-example
python tests/run_tests.py all --verbose
```

### Test Options

| Option | Description |
|--------|-------------|
| `--verbose, -v` | Enable verbose output with detailed test information |
| `--parallel, -p` | Run unit tests in parallel for faster execution |
| `--timeout SECS` | Set timeout for individual tests (default: 120s) |
| `--design NAME` | Use specific design for testing (default: "des") |
| `--deps` | Check dependencies and server availability |
| `--list, -l` | List available test categories and modules |

## Test Configuration

Test configuration is centralized in `tests/__init__.py`:

```python
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
```

## Test Output and Results

### Success Output
```
[10:30:15] INFO: MCP EDA Server Test Suite v2.0
[10:30:15] INFO: Checking dependencies...
[10:30:15] INFO: Python Dependencies:
[10:30:15] INFO:   ✓ requests
[10:30:15] INFO:   ✓ unittest
[10:30:15] INFO: EDA Servers:
[10:30:15] INFO:   ✓ synthesis (port 18001)
[10:30:15] INFO:   ✓ placement (port 18002)
[10:30:16] INFO: Running Unit Tests
[10:30:16] INFO: Running test_server_components tests...
[10:30:17] INFO: test_server_components tests: PASSED (12 tests, 0 failures, 0 errors)

✓ test_server_components        PASSED   1.23s    - 12 tests
✓ test_mcp_integration         PASSED   2.45s    - 8 tests
✓ test_integration_flow        PASSED   5.67s    - 15 tests

Total: 3, Passed: 3, Failed: 0, Errors: 0, Skipped: 0
Total execution time: 9.35 seconds
Server availability: 4/4
```

### Failure Output
```
✗ test_server_components        FAILED   1.23s    - 2 failures, 1 errors
~ test_mcp_integration         SKIPPED  0.01s    - 8 skipped
! test_agent_client            ERROR    0.05s    - Import error

Total: 3, Passed: 0, Failed: 1, Errors: 1, Skipped: 1
```

## Test Features

### Intelligent Dependency Handling
- **Graceful Skipping**: Tests automatically skip when dependencies are unavailable
- **Server Detection**: Automatic detection of running EDA servers
- **Optional Dependencies**: Tests continue even when optional packages are missing
- **Clear Error Messages**: Detailed information about missing dependencies

### Robust Error Handling
- **Timeout Protection**: All tests have configurable timeouts
- **Connection Handling**: Graceful handling of server connection failures
- **Resource Cleanup**: Automatic cleanup of temporary files and resources
- **Parallel Safety**: Thread-safe execution for parallel tests

### Comprehensive Coverage
- **Unit Tests**: Individual component testing with mocking where appropriate
- **Integration Tests**: Multi-component interaction testing
- **End-to-End Tests**: Complete workflow validation
- **Performance Tests**: Response time and load testing

### Modern Testing Practices
- **Type Hints**: Full type annotation for better code quality
- **Structured Results**: Detailed test result tracking and reporting
- **Parallel Execution**: Optional parallel test execution for speed
- **Configurable**: Flexible configuration through command-line options

## Design Testing

The test suite supports multiple designs for comprehensive validation:

- **des**: Primary test design (Verilog)
- **b14**: Secondary test design (VHDL)
- **Custom**: User-specified designs via `--design` option

### Design Requirements
- RTL files must exist in `designs/{design}/rtl/`
- Design must be compatible with FreePDK45 technology
- Design must have valid synthesis and implementation configurations

## Integration with EDA Servers

### Server Health Checks
Tests automatically check server availability before execution:

```python
def check_server_health(self, port, endpoint="/docs"):
    """Check if a server is running and healthy"""
    try:
        response = requests.get(f"http://localhost:{port}{endpoint}", timeout=2)
        return response.status_code == 200
    except Exception:
        return False
```

### API Testing
Direct API testing with proper error handling:

```python
def call_server(self, server_name, payload):
    """Call a specific server with payload"""
    response = requests.post(f"http://localhost:{port}/run", json=payload)
    if response.status_code == 200:
        return response.json()
    else:
        return {"status": "error", "message": f"Server returned {response.status_code}"}
```

## Troubleshooting

### Common Issues

1. **No Servers Available**
   - Start EDA servers: `python src/run_server.py --server all`
   - Check server logs in `logs/` directory
   - Verify ports 18001-18004 are not in use

2. **Import Errors**
   - Ensure you're running from project root
   - Check Python path includes `src/` directory
   - Install required packages: `pip install requests`

3. **Test Timeouts**
   - Increase timeout: `--timeout 300`
   - Check system resources and load
   - Verify network connectivity to localhost

4. **Permission Issues**
   - Ensure test runner has execute permissions
   - Check file access permissions in `tests/` directory
   - Verify write access to `logs/` directory

### Debug Mode

For detailed debugging:

```bash
# Run individual test with maximum verbosity
python -m unittest tests.test_server_components -v

# Run specific test class
python -m unittest tests.test_server_components.TestBaseServer -v

# Run with Python debugger
python -m pdb tests/run_tests.py unit
```

### Log Analysis

Test logs are automatically created in the `logs/` directory:

```bash
# Check test logs
tail -f logs/test_*.log

# Check server logs
tail -f logs/synthesis_server.log
tail -f logs/placement_server.log
```

## Contributing

### Adding New Tests

1. **Create Test Module**: Add new `.py` file in `tests/` directory
2. **Follow Naming Convention**: Use `test_` prefix for modules and test methods
3. **Include Documentation**: Add comprehensive docstrings
4. **Handle Dependencies**: Gracefully skip tests when dependencies unavailable
5. **Update Test Runner**: Add module to appropriate test category in `run_tests.py`

### Test Writing Guidelines

```python
class TestNewFeature(unittest.TestCase):
    """Test new feature functionality"""
    
    def setUp(self):
        """Set up test environment"""
        self.test_dir = Path(tempfile.mkdtemp())
        
    def tearDown(self):
        """Clean up test environment"""
        shutil.rmtree(self.test_dir, ignore_errors=True)
    
    def test_feature_basic(self):
        """Test basic feature functionality"""
        # Test implementation
        self.assertTrue(condition)
        
    @unittest.skipIf(condition, "Reason for skipping")
    def test_feature_advanced(self):
        """Test advanced feature functionality"""
        # Advanced test implementation
        pass
```

### Code Quality Standards

- **Type Hints**: Use type annotations for all function signatures
- **Error Handling**: Include comprehensive error handling with meaningful messages
- **Resource Management**: Ensure proper cleanup of temporary resources
- **Documentation**: Include detailed docstrings and inline comments
- **Testing**: Write tests for new test utilities and helper functions

## Performance Considerations

### Test Execution Speed
- **Parallel Execution**: Unit tests can run in parallel with `--parallel`
- **Smart Skipping**: Tests skip automatically when dependencies unavailable
- **Efficient Cleanup**: Minimal resource usage with proper cleanup
- **Timeout Management**: Configurable timeouts prevent hanging tests

### Resource Usage
- **Memory Management**: Proper cleanup of temporary files and objects
- **Network Efficiency**: Minimal server requests with intelligent caching
- **Process Management**: Proper handling of subprocesses and threads

## Future Enhancements

### Planned Features
- **CI/CD Integration**: GitHub Actions workflow for automated testing
- **Coverage Reporting**: Code coverage analysis and reporting
- **Performance Benchmarking**: Automated performance regression detection
- **Test Result Database**: Historical test result tracking
- **Docker Integration**: Containerized test execution environment

### Test Expansion
- **Security Testing**: Vulnerability and penetration testing
- **Stress Testing**: High-load and resource exhaustion testing
- **Compatibility Testing**: Multi-platform and multi-version testing
- **Regression Testing**: Automated detection of functionality regressions

## Version History

### v2.0.0 (Current)
- Complete rewrite for src/ directory structure
- Support for 4-server architecture
- Enhanced MCP integration testing
- Local LLM testing support
- Parallel test execution
- Comprehensive error handling

### v1.0.0 (Legacy)
- Initial test suite
- Basic server testing
- Simple integration tests
- Manual test execution

---

For more information about the MCP EDA Server project, see the main project documentation in `MCP_IMPLEMENTATION.md`.
