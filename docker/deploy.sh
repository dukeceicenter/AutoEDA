#!/bin/bash
"""
MCP-EDA-Server Docker Deployment Script
Deploy and manage the complete MCP-EDA-Server stack
"""

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Configuration
PROJECT_NAME="mcp-eda"
COMPOSE_FILE="docker-compose.yml"
OVERRIDE_FILE="docker-compose.override.yml"
ENV_FILE=".env"

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
    if [ ! -f "$ENV_FILE" ]; then
        print_warning ".env file not found. Creating from template..."
        cp docker/env.example "$ENV_FILE"
        print_warning "Please edit $ENV_FILE with your configuration before continuing."
        exit 1
    fi
    
    print_success "Prerequisites check passed"
}

# Function to build images
build_images() {
    print_status "Building Docker images..."
    
    docker-compose -f "$COMPOSE_FILE" build --no-cache
    
        print_success "Docker images built successfully"
}

# Function to start services
start_services() {
    local profile="$1"
    print_status "Starting services with profile: $profile"
    
    if [ -n "$profile" ]; then
        docker-compose -f "$COMPOSE_FILE" --profile "$profile" up -d
    else
        docker-compose -f "$COMPOSE_FILE" up -d
    fi
    
    print_success "Services started successfully"
}

# Function to stop services
stop_services() {
    print_status "Stopping services..."
    
    docker-compose -f "$COMPOSE_FILE" down
    
        print_success "Services stopped successfully"
}

# Function to restart services
restart_services() {
    print_status "Restarting services..."
    
    docker-compose -f "$COMPOSE_FILE" restart
    
        print_success "Services restarted successfully"
}

# Function to check service status
check_status() {
    print_status "Checking service status..."
    
    docker-compose -f "$COMPOSE_FILE" ps
    
    print_status "Checking service health..."
    docker-compose -f "$COMPOSE_FILE" exec mcp-servers python3 health_check.py
}

# Function to view logs
view_logs() {
    local service="$1"
    
    if [ -n "$service" ]; then
        print_status "Viewing logs for service: $service"
        docker-compose -f "$COMPOSE_FILE" logs -f "$service"
    else
        print_status "Viewing all logs..."
        docker-compose -f "$COMPOSE_FILE" logs -f
    fi
}

# Function to run experiments
run_experiments() {
    print_status "Running experiments..."
    
    docker-compose -f "$COMPOSE_FILE" --profile experiment run --rm experiment-runner python3 run_experiment.py --full
}

# Function to run tests
run_tests() {
    local test_type="$1"
    
    if [ -n "$test_type" ]; then
        print_status "Running tests: $test_type"
        docker-compose -f "$COMPOSE_FILE" --profile test run --rm test-runner python3 run_tests.py "$test_type"
    else
        print_status "Running all tests..."
        docker-compose -f "$COMPOSE_FILE" --profile test run --rm test-runner python3 run_tests.py all
    fi
}

# Function to clean up
cleanup() {
    print_status "Cleaning up Docker resources..."
    
    # Stop and remove containers
    docker-compose -f "$COMPOSE_FILE" down --volumes --remove-orphans
    
    # Remove unused images
    docker image prune -f
    
    # Remove unused networks
    docker network prune -f
    
    print_success "Cleanup completed"
}

# Function to show usage
show_usage() {
    echo "Usage: $0 [COMMAND] [OPTIONS]"
    echo ""
    echo "Commands:"
    echo "  build                    Build Docker images"
    echo "  start [PROFILE]          Start services (optional profile: experiment, test)"
    echo "  stop                     Stop services"
    echo "  restart                  Restart services"
    echo "  status                   Check service status and health"
    echo "  logs [SERVICE]           View logs (optional service name)"
    echo "  experiment               Run experiments"
    echo "  test [TYPE]              Run tests (optional type: unit, api, integration, mcp, experiment, all)"
    echo "  cleanup                  Clean up Docker resources"
    echo "  help                     Show this help message"
    echo ""
    echo "Examples:"
    echo "  $0 build"
    echo "  $0 start"
    echo "  $0 start experiment"
    echo "  $0 logs mcp-agent-client"
    echo "  $0 test unit"
    echo "  $0 experiment"
}

# Main script logic
case "${1:-help}" in
    build)
        check_prerequisites
        build_images
        ;;
    start)
        check_prerequisites
        start_services "$2"
        ;;
    stop)
        stop_services
        ;;
    restart)
        restart_services
        ;;
    status)
        check_status
        ;;
    logs)
        view_logs "$2"
        ;;
    experiment)
        run_experiments
        ;;
    test)
        run_tests "$2"
        ;;
    cleanup)
        cleanup
        ;;
    help|--help|-h)
        show_usage
        ;;
    *)
        print_error "Unknown command: $1"
        show_usage
        exit 1
        ;;
esac 