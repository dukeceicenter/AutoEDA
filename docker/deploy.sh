#!/bin/bash

# MCP EDA Docker Deployment Script
# This script helps deploy the MCP EDA system using Docker

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Function to check prerequisites
check_prerequisites() {
    print_status "Checking prerequisites..."
    
    # Check if Docker is installed
    if ! command -v docker &> /dev/null; then
        print_error "Docker is not installed. Please install Docker first."
        exit 1
    fi
    
    # Check if Docker Compose is installed
    if ! command -v docker-compose &> /dev/null; then
        print_error "Docker Compose is not installed. Please install Docker Compose first."
        exit 1
    fi
    
    # Check if .env file exists
    if [ ! -f ".env" ]; then
        print_warning ".env file not found. Creating from template..."
        cp docker/env.example .env
        print_warning "Please edit .env file with your configuration before continuing."
        exit 1
    fi
    
    # Check if EDA tools are accessible
    print_status "Checking EDA tools accessibility..."
    
    # Check Design Compiler
    if ! command -v dc_shell &> /dev/null; then
        print_warning "Design Compiler (dc_shell) not found in PATH"
    else
        print_success "Design Compiler found"
    fi
    
    # Check Innovus
    if ! command -v innovus &> /dev/null; then
        print_warning "Innovus not found in PATH"
    else
        print_success "Innovus found"
    fi
    
    print_success "Prerequisites check completed"
}

# Function to build Docker images
build_images() {
    print_status "Building Docker images..."
    
    docker-compose build
    
    if [ $? -eq 0 ]; then
        print_success "Docker images built successfully"
    else
        print_error "Failed to build Docker images"
        exit 1
    fi
}

# Function to start services
start_services() {
    print_status "Starting MCP EDA services..."
    
    docker-compose up -d
    
    if [ $? -eq 0 ]; then
        print_success "Services started successfully"
    else
        print_error "Failed to start services"
        exit 1
    fi
}

# Function to check service health
check_health() {
    print_status "Checking service health..."
    
    # Wait for services to start
    sleep 10
    
    # Check MCP Agent Client
    if curl -f http://localhost:8000/health &> /dev/null; then
        print_success "MCP Agent Client is healthy"
    else
        print_warning "MCP Agent Client health check failed"
    fi
    
    # Check MCP Servers
    for port in 13333 13335 13337 13339; do
        if curl -f http://localhost:$port/health &> /dev/null; then
            print_success "MCP Server on port $port is healthy"
        else
            print_warning "MCP Server on port $port health check failed"
        fi
    done
}

# Function to stop services
stop_services() {
    print_status "Stopping MCP EDA services..."
    
    docker-compose down
    
    if [ $? -eq 0 ]; then
        print_success "Services stopped successfully"
    else
        print_error "Failed to stop services"
        exit 1
    fi
}

# Function to show logs
show_logs() {
    print_status "Showing service logs..."
    docker-compose logs -f
}

# Function to restart services
restart_services() {
    print_status "Restarting MCP EDA services..."
    
    docker-compose restart
    
    if [ $? -eq 0 ]; then
        print_success "Services restarted successfully"
    else
        print_error "Failed to restart services"
        exit 1
    fi
}

# Function to clean up
cleanup() {
    print_status "Cleaning up Docker resources..."
    
    docker-compose down --volumes --remove-orphans
    docker system prune -f
    
    print_success "Cleanup completed"
}

# Function to show status
show_status() {
    print_status "Service status:"
    docker-compose ps
    
    echo ""
    print_status "Resource usage:"
    docker stats --no-stream
}

# Function to run test
run_test() {
    print_status "Running test design..."
    
    # Test with DES design
    response=$(curl -s -X POST http://localhost:8000/agent \
        -H "Content-Type: application/json" \
        -d '{"user_query":"Run synth_setup for design=\"des\" and return the log path."}')
    
    if echo "$response" | grep -q "status.*ok"; then
        print_success "Test completed successfully"
        echo "Response: $response"
    else
        print_error "Test failed"
        echo "Response: $response"
    fi
}

# Function to show help
show_help() {
    echo "MCP EDA Docker Deployment Script"
    echo ""
    echo "Usage: $0 [COMMAND]"
    echo ""
    echo "Commands:"
    echo "  check     - Check prerequisites and EDA tools"
    echo "  build     - Build Docker images"
    echo "  start     - Start all services"
    echo "  stop      - Stop all services"
    echo "  restart   - Restart all services"
    echo "  status    - Show service status and resource usage"
    echo "  logs      - Show service logs"
    echo "  test      - Run a test design"
    echo "  cleanup   - Clean up Docker resources"
    echo "  deploy    - Full deployment (check + build + start + health)"
    echo "  help      - Show this help message"
    echo ""
    echo "Examples:"
    echo "  $0 deploy    # Full deployment"
    echo "  $0 start     # Start services only"
    echo "  $0 logs      # View logs"
    echo "  $0 test      # Run test"
}

# Main script logic
case "${1:-help}" in
    check)
        check_prerequisites
        ;;
    build)
        build_images
        ;;
    start)
        start_services
        ;;
    stop)
        stop_services
        ;;
    restart)
        restart_services
        ;;
    status)
        show_status
        ;;
    logs)
        show_logs
        ;;
    test)
        run_test
        ;;
    cleanup)
        cleanup
        ;;
    deploy)
        check_prerequisites
        build_images
        start_services
        check_health
        print_success "Deployment completed successfully!"
        print_status "You can now access:"
        echo "  - MCP Agent Client: http://localhost:8000"
        echo "  - API Documentation: http://localhost:8000/docs"
        echo "  - Test with: $0 test"
        ;;
    help|*)
        show_help
        ;;
esac 