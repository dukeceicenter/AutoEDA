# MCP EDA Docker Deployment Guide

## Overview

Due to licensing restrictions of commercial EDA tools (Synopsys Design Compiler and Cadence Innovus), this project uses a **hybrid deployment approach** where:

- **MCP Servers**: Containerized for easy deployment and scaling
- **EDA Tools**: Run on the host system with proper licenses
- **Communication**: Via network ports between containers and host

## Architecture

```
┌─────────────────────────────────────────────────────────────┐
│                    Host System                              │
│  ┌─────────────────┐    ┌─────────────────┐                │
│  │   EDA Tools     │    │   MCP Servers   │                │
│  │   (Host)        │◄──►│   (Docker)      │                │
│  │                 │    │                 │                │
│  │ • Design        │    │ • Port 13333-   │                │
│  │   Compiler      │    │   13440         │                │
│  │ • Innovus       │    │ • FastAPI       │                │
│  │ • Licenses      │    │ • Python        │                │
│  └─────────────────┘    └─────────────────┘                │
│           │                       │                        │
│           └───────────────────────┼────────────────────────┘
│                                   │
│  ┌─────────────────────────────────┼─────────────────────┐
│  │         Docker Container        │                     │
│  │  ┌─────────────────────────────┐ │                     │
│  │  │    MCP Agent Client         │ │                     │
│  │  │    (Port 8000)              │ │                     │
│  │  │    • FastAPI                │ │                     │
│  │  │    • OpenAI Integration     │ │                     │
│  │  │    • Natural Language       │ │                     │
│  │  └─────────────────────────────┘ │                     │
│  └─────────────────────────────────┘                     │
└─────────────────────────────────────────────────────────────┘
```

## Prerequisites

### Host System Requirements
- **Linux OS** (Ubuntu 20.04+ recommended)
- **Synopsys Design Compiler** with valid license
- **Cadence Innovus** with valid license
- **FreePDK45** technology library
- **Docker** and **Docker Compose**

### License Setup
```bash
# Set up Synopsys license
export SNPSLMD_LICENSE_FILE=/path/to/synopsys/license

# Set up Cadence license
export CDS_LIC_FILE=/path/to/cadence/license

# Verify tools are accessible
which dc_shell
which innovus
```

## Quick Start

### 1. Build and Start Services

```bash
# Clone the repository
git clone https://github.com/AndyLu666/MCP-EDA-Server.git
cd MCP-EDA-Server

# Build Docker images
docker-compose build

# Start services
docker-compose up -d
```

### 2. Verify Deployment

```bash
# Check container status
docker-compose ps

# Check MCP Agent Client
curl http://localhost:8000/health

# Check MCP Servers
curl http://localhost:13333/health
curl http://localhost:13335/health
```

### 3. Run Your First Design

```bash
# Test with natural language interface
curl -X POST http://localhost:8000/agent \
  -H "Content-Type: application/json" \
  -d '{"user_query":"Run synth_setup for design=\"des\" and return the log path."}'
```

## Docker Configuration

### docker-compose.yml

```yaml
version: '3.8'

services:
  mcp-agent-client:
    build:
      context: .
      dockerfile: docker/Dockerfile.agent
    ports:
      - "8000:8000"
    environment:
      - OPENAI_API_KEY=${OPENAI_API_KEY}
      - MCP_SERVER_HOST=host.docker.internal
    volumes:
      - ./designs:/app/designs:ro
      - ./config:/app/config:ro
      - ./libraries:/app/libraries:ro
      - ./logs:/app/logs
      - ./deliverables:/app/deliverables
    networks:
      - mcp-network
    depends_on:
      - mcp-servers

  mcp-servers:
    build:
      context: .
      dockerfile: docker/Dockerfile.servers
    ports:
      - "13333:13333"  # Synthesis Setup
      - "13334:13334"  # Synthesis Compile
      - "13335:13335"  # Floorplan
      - "13336:13336"  # Power Planning
      - "13337:13337"  # Placement
      - "13338:13338"  # CTS
      - "13339:13339"  # Routing
      - "13440:13440"  # Save Design
    environment:
      - EDA_TOOLS_HOST=${EDA_TOOLS_HOST:-host.docker.internal}
      - SNPSLMD_LICENSE_FILE=${SNPSLMD_LICENSE_FILE}
      - CDS_LIC_FILE=${CDS_LIC_FILE}
    volumes:
      - ./designs:/app/designs
      - ./config:/app/config:ro
      - ./libraries:/app/libraries:ro
      - ./scripts:/app/scripts:ro
      - ./logs:/app/logs
      - ./deliverables:/app/deliverables
    networks:
      - mcp-network
    command: >
      sh -c "
        python3 server/synth_setup_server.py --port 13333 &
        python3 server/synth_compile_server.py --port 13334 &
        python3 server/floorplan_server.py --port 13335 &
        python3 server/powerplan_server.py --port 13336 &
        python3 server/placement_server.py --port 13337 &
        python3 server/cts_server.py --port 13338 &
        python3 server/route_server.py --port 13339 &
        python3 server/save_server.py --port 13440 &
        wait
      "

networks:
  mcp-network:
    driver: bridge

volumes:
  logs:
  deliverables:
```

### Dockerfile.agent

```dockerfile
FROM python:3.9-slim

WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements and install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY mcp_agent_client.py .
COPY server/ ./server/

# Create necessary directories
RUN mkdir -p logs deliverables

# Expose port
EXPOSE 8000

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD curl -f http://localhost:8000/health || exit 1

# Start the application
CMD ["uvicorn", "mcp_agent_client:app", "--host", "0.0.0.0", "--port", "8000"]
```

### Dockerfile.servers

```dockerfile
FROM python:3.9-slim

WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements and install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY server/ ./server/
COPY scripts/ ./scripts/
COPY config/ ./config/

# Create necessary directories
RUN mkdir -p logs deliverables

# Add health check endpoints to servers
COPY docker/health_check.py ./health_check.py

# Expose ports
EXPOSE 13333 13334 13335 13336 13337 13338 13339 13440

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD python3 health_check.py || exit 1

# Default command (will be overridden by docker-compose)
CMD ["python3", "server/synth_setup_server.py", "--port", "13333"]
```

## Environment Configuration

### .env file

```bash
# OpenAI API Configuration
OPENAI_API_KEY=your_openai_api_key_here

# EDA Tools Configuration
EDA_TOOLS_HOST=host.docker.internal
SNPSLMD_LICENSE_FILE=/path/to/synopsys/license
CDS_LIC_FILE=/path/to/cadence/license

# MCP Server Configuration
MCP_SERVER_HOST=http://localhost

# Optional: Custom ports
SETUP_PORT=13333
COMPILE_PORT=13334
FLOORPLAN_PORT=13335
POWER_PORT=13336
PLACE_PORT=13337
CTS_PORT=13338
ROUTE_PORT=13339
SAVE_PORT=13440
```

## Deployment Options

### Option 1: Local Development

```bash
# Start all services
docker-compose up -d

# View logs
docker-compose logs -f

# Stop services
docker-compose down
```

### Option 2: Production Deployment

```bash
# Build production images
docker-compose -f docker-compose.prod.yml build

# Deploy with proper networking
docker-compose -f docker-compose.prod.yml up -d

# Monitor services
docker-compose -f docker-compose.prod.yml logs -f
```

### Option 3: Kubernetes Deployment

```bash
# Apply Kubernetes manifests
kubectl apply -f k8s/

# Check deployment status
kubectl get pods -n mcp-eda

# Access services
kubectl port-forward svc/mcp-agent-client 8000:8000 -n mcp-eda
```

## Network Configuration

### Host Network Access

The containers need to access EDA tools running on the host:

```bash
# On Linux, use host.docker.internal or host IP
export EDA_TOOLS_HOST=172.17.0.1

# On macOS/Windows, use host.docker.internal
export EDA_TOOLS_HOST=host.docker.internal
```

### Firewall Configuration

```bash
# Allow container access to host EDA tools
sudo ufw allow from 172.17.0.0/16 to any port 22
sudo ufw allow from 172.17.0.0/16 to any port 8080
```

## Monitoring and Logging

### Container Logs

```bash
# View all logs
docker-compose logs -f

# View specific service logs
docker-compose logs -f mcp-agent-client
docker-compose logs -f mcp-servers
```

### Health Monitoring

```bash
# Check service health
curl http://localhost:8000/health
curl http://localhost:13333/health

# Monitor resource usage
docker stats
```

### Log Aggregation

```bash
# Mount logs to host for external monitoring
docker-compose up -d -v /var/log/mcp-eda:/app/logs
```

## Troubleshooting

### Common Issues

#### 1. EDA Tools Not Accessible

```bash
# Check network connectivity
docker exec -it mcp-eda-mcp-servers-1 ping host.docker.internal

# Verify license files
docker exec -it mcp-eda-mcp-servers-1 env | grep LICENSE
```

#### 2. Permission Issues

```bash
# Fix file permissions
sudo chown -R $USER:$USER designs/ logs/ deliverables/

# Run with proper user
docker-compose run --user $(id -u):$(id -g) mcp-servers
```

#### 3. Port Conflicts

```bash
# Check port usage
netstat -tlnp | grep -E "(1333[3-9]|13440|8000)"

# Use different ports
docker-compose -f docker-compose.override.yml up -d
```

### Debug Mode

```bash
# Run in debug mode
docker-compose -f docker-compose.debug.yml up

# Access container shell
docker exec -it mcp-eda-mcp-servers-1 bash
```

## Security Considerations

### Network Security

```bash
# Use internal networks only
docker-compose -f docker-compose.secure.yml up -d

# Implement API authentication
export MCP_API_KEY=your_secure_api_key
```

### Data Protection

```bash
# Encrypt sensitive data
docker run --rm -v /path/to/designs:/data \
  -e ENCRYPT_KEY=your_encryption_key \
  mcp-eda-encryptor
```

## Performance Optimization

### Resource Limits

```yaml
# docker-compose.yml
services:
  mcp-servers:
    deploy:
      resources:
        limits:
          cpus: '4.0'
          memory: 8G
        reservations:
          cpus: '2.0'
          memory: 4G
```

### Caching

```bash
# Use Docker layer caching
docker-compose build --no-cache

# Implement application-level caching
export REDIS_URL=redis://redis:6379
```

## Migration from Local Installation

### Step 1: Backup Current Setup

```bash
# Backup designs and configurations
tar -czf mcp-eda-backup-$(date +%Y%m%d).tar.gz \
  designs/ config/ libraries/ logs/ deliverables/
```

### Step 2: Deploy with Docker

```bash
# Deploy new Docker setup
docker-compose up -d

# Verify functionality
curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"Run synth_setup for design=\"des\" and return the log path."}'
```

### Step 3: Migrate Data

```bash
# Copy existing data to Docker volumes
docker cp mcp-eda-backup-20241219.tar.gz mcp-eda-mcp-servers-1:/app/
docker exec -it mcp-eda-mcp-servers-1 tar -xzf mcp-eda-backup-20241219.tar.gz
```

## Conclusion

This hybrid Docker approach provides:

- **Easy Deployment**: Containerized MCP services
- **License Compliance**: EDA tools remain on host
- **Scalability**: Independent service scaling
- **Portability**: Consistent environment across systems
- **Maintenance**: Simplified updates and rollbacks

The key is maintaining the separation between containerized services and host-based EDA tools while ensuring proper communication between them. 