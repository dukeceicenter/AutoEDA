# MCP-EDA-Server Docker Deployment

This directory contains Docker configuration files for deploying the complete MCP-EDA-Server stack.

## Overview

The Docker setup provides containerized deployment of all MCP-EDA-Server components:

- **MCP Agent Client**: HTTP API interface (port 8000)
- **MCP EDA Server**: MCP protocol server (port 8001)
- **MCP Servers**: Microservices for each design stage (ports 13333-13440)
- **Experiment Runner**: TCL accuracy evaluation framework
- **Test Runner**: Comprehensive test suite

## Quick Start

### 1. Prerequisites

- Docker and Docker Compose installed
- EDA tools accessible from host (Synopsys Design Compiler, Cadence Innovus)
- Valid license files for EDA tools

### 2. Configuration

Copy the environment template and configure it:

```bash
cp docker/env.example .env
# Edit .env with your configuration
```

Key configuration items:
- `OPENAI_API_KEY`: Your OpenAI API key
- `EDA_TOOLS_HOST`: Host where EDA tools are running
- `SNPSLMD_LICENSE_FILE`: Path to Synopsys license file
- `CDS_LIC_FILE`: Path to Cadence license file

### 3. Deployment

Use the deployment script for easy management:

```bash
# Build and start all services
./docker/deploy.sh build
./docker/deploy.sh start

# Check status
./docker/deploy.sh status

# View logs
./docker/deploy.sh logs mcp-agent-client
```

## Services

### Core Services

#### MCP Agent Client
- **Port**: 8000 (8001 in development)
- **Purpose**: HTTP API interface for natural language EDA operations
- **Health Check**: `http://localhost:8000/health`

#### MCP EDA Server
- **Port**: 8001 (8002 in development)
- **Purpose**: MCP protocol server for Claude Desktop integration
- **Health Check**: MCP protocol health check

#### MCP Servers
- **Ports**: 13333-13440 (14333-14440 in development)
- **Purpose**: Individual microservices for each design stage
- **Health Check**: Comprehensive health check script

### Optional Services (Profiles)

#### Experiment Runner
- **Profile**: `experiment`
- **Purpose**: Run TCL accuracy evaluation experiments
- **Usage**: `./docker/deploy.sh start experiment`

#### Test Runner
- **Profile**: `test`
- **Purpose**: Run comprehensive test suite
- **Usage**: `./docker/deploy.sh start test`

## Docker Compose Files

### docker-compose.yml
Main configuration file with all services and production settings.

### docker-compose.override.yml
Development overrides with:
- Different ports to avoid conflicts
- Debug mode enabled
- Volume mounts for development
- Hot reload for agent client

## Deployment Script

The `deploy.sh` script provides easy management of the Docker stack:

### Commands

```bash
# Build images
./docker/deploy.sh build

# Start services
./docker/deploy.sh start                    # All services
./docker/deploy.sh start experiment         # With experiment profile
./docker/deploy.sh start test              # With test profile

# Stop services
./docker/deploy.sh stop

# Restart services
./docker/deploy.sh restart

# Check status
./docker/deploy.sh status

# View logs
./docker/deploy.sh logs                    # All logs
./docker/deploy.sh logs mcp-agent-client   # Specific service

# Run experiments
./docker/deploy.sh experiment

# Run tests
./docker/deploy.sh test                    # All tests
./docker/deploy.sh test unit               # Specific test type

# Cleanup
./docker/deploy.sh cleanup
```

## Dockerfiles

### Dockerfile.agent
- Base: Python 3.9-slim
- Purpose: MCP Agent Client
- Features: Health checks, volume mounts, environment configuration

### Dockerfile.servers
- Base: Python 3.9-slim
- Purpose: MCP microservices
- Features: Multi-port exposure, health checks, EDA tool integration

### Dockerfile.mcp
- Base: Python 3.9-slim
- Purpose: MCP EDA Server
- Features: MCP protocol support, health checks

### Dockerfile.experiment
- Base: Python 3.9-slim
- Purpose: Experiment framework
- Features: Experiment tools, result storage

### Dockerfile.test
- Base: Python 3.9-slim
- Purpose: Test suite
- Features: Test dependencies, coverage tools

## Health Checks

### Agent Client Health Check
```bash
curl -f http://localhost:8000/health
```

### Server Health Check
```bash
docker-compose exec mcp-servers python3 health_check.py
```

The health check script verifies:
- All MCP servers are responding
- EDA tools are accessible
- License files are available
- Required directories exist

## Volume Mounts

### Shared Volumes
- `./designs`: Design files (read-only)
- `./config`: Configuration files (read-only)
- `./libraries`: Technology libraries (read-only)
- `./scripts`: EDA scripts (read-only)
- `./logs`: Log files (read-write)
- `./deliverables`: Output files (read-write)
- `./experiment`: Experiment framework (read-write)

### Development Volumes
In development mode, the entire project is mounted for live code changes.

## Environment Variables

### Required
- `OPENAI_API_KEY`: OpenAI API key for LLM integration
- `EDA_TOOLS_HOST`: Host where EDA tools are running

### Optional
- `DEBUG`: Enable debug mode (default: false)
- `LOG_LEVEL`: Logging level (default: info)
- `SNPSLMD_LICENSE_FILE`: Synopsys license file path
- `CDS_LIC_FILE`: Cadence license file path

### Port Configuration
- `SETUP_PORT`: Synthesis setup server port (default: 13333)
- `COMPILE_PORT`: Synthesis compile server port (default: 13334)
- `FLOORPLAN_PORT`: Floorplan server port (default: 13335)
- `POWER_PORT`: Power planning server port (default: 13336)
- `PLACE_PORT`: Placement server port (default: 13337)
- `CTS_PORT`: Clock tree synthesis server port (default: 13338)
- `ROUTE_PORT`: Routing server port (default: 13339)
- `SAVE_PORT`: Save design server port (default: 13440)
- `MCP_AGENT_PORT`: MCP Agent Client port (default: 8000)
- `MCP_EDA_PORT`: MCP EDA Server port (default: 8001)

## Networking

### Default Network
- **Name**: `mcp-network`
- **Type**: Bridge
- **Purpose**: Internal communication between services

### Port Mapping
- **Production**: Direct port mapping (8000, 13333-13440)
- **Development**: Offset ports to avoid conflicts (8001, 14333-14440)

## Troubleshooting

### Common Issues

#### Services Not Starting
```bash
# Check logs
./docker/deploy.sh logs

# Check status
./docker/deploy.sh status

# Restart services
./docker/deploy.sh restart
```

#### EDA Tools Not Accessible
1. Verify `EDA_TOOLS_HOST` in `.env`
2. Check license file paths
3. Ensure EDA tools are running on host

#### Port Conflicts
- Use development mode with different ports
- Check for existing services using the same ports
- Modify port configuration in `.env`

#### Permission Issues
```bash
# Fix volume permissions
sudo chown -R $USER:$USER ./logs ./deliverables

# Fix Docker permissions
sudo usermod -aG docker $USER
```

### Debug Mode

Enable debug mode for detailed logging:

```bash
# Set in .env
DEBUG=true
LOG_LEVEL=debug

# Restart services
./docker/deploy.sh restart
```

### Log Analysis

```bash
# View specific service logs
./docker/deploy.sh logs mcp-agent-client

# Follow logs in real-time
docker-compose logs -f

# Check health status
docker-compose exec mcp-servers python3 health_check.py
```

## Performance

### Resource Requirements
- **Minimum**: 4GB RAM, 2 CPU cores
- **Recommended**: 8GB RAM, 4 CPU cores
- **Storage**: 10GB for images and volumes

### Optimization
- Use volume mounts for persistent data
- Configure appropriate resource limits
- Monitor resource usage with `docker stats`

## Security

### Best Practices
- Use `.env` file for sensitive configuration
- Don't commit `.env` file to version control
- Use read-only mounts where possible
- Regularly update base images

### Network Security
- Services communicate over internal Docker network
- External access only through exposed ports
- Health checks verify service integrity

## Monitoring

### Health Monitoring
```bash
# Automated health checks
docker-compose ps

# Manual health check
./docker/deploy.sh status
```

### Resource Monitoring
```bash
# Container resource usage
docker stats

# Volume usage
docker system df
```

## Backup and Recovery

### Data Backup
```bash
# Backup volumes
docker run --rm -v mcp_eda_logs:/data -v $(pwd):/backup alpine tar czf /backup/logs_backup.tar.gz -C /data .

# Backup deliverables
docker run --rm -v mcp_eda_deliverables:/data -v $(pwd):/backup alpine tar czf /backup/deliverables_backup.tar.gz -C /data .
```

### Recovery
```bash
# Restore from backup
docker run --rm -v mcp_eda_logs:/data -v $(pwd):/backup alpine tar xzf /backup/logs_backup.tar.gz -C /data
```

## Development

### Development Mode
```bash
# Start in development mode
docker-compose -f docker-compose.yml -f docker-compose.override.yml up -d

# View development logs
docker-compose -f docker-compose.yml -f docker-compose.override.yml logs -f
```

### Code Changes
In development mode, code changes are reflected immediately due to volume mounts.

### Testing in Docker
```bash
# Run tests in container
./docker/deploy.sh test

# Run specific test type
./docker/deploy.sh test unit
```

## Production Deployment

### Production Checklist
- [ ] Configure `.env` with production values
- [ ] Set appropriate resource limits
- [ ] Configure logging and monitoring
- [ ] Set up backup procedures
- [ ] Test health checks
- [ ] Verify EDA tool access

### Production Commands
```bash
# Production deployment
./docker/deploy.sh build
./docker/deploy.sh start

# Monitor production
./docker/deploy.sh status
./docker/deploy.sh logs
```

## Support

For issues and questions:
1. Check the troubleshooting section
2. Review logs with `./docker/deploy.sh logs`
3. Verify configuration in `.env`
4. Check health status with `./docker/deploy.sh status` 