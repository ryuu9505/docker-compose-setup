#!/bin/bash

# List of Docker Compose files
COMPOSE_FILES=(
  "docker-compose-influxdb.yml"
  "docker-compose-postgis.yml"
  "docker-compose-rabbitmq.yml"
  "docker-compose-redis.yml"
)

# Build the docker-compose down command
CMD="docker-compose"
for FILE in "${COMPOSE_FILES[@]}"; do
  CMD+=" -f $FILE"
done

# Stop all services using docker-compose
echo "🛑 Stopping all Docker Compose services..."
$CMD down

# Force stop all running containers
echo "⏳ Stopping all running containers..."
docker stop $(docker ps -q) 2>/dev/null

# Remove all stopped containers
echo "🧹 Removing all stopped containers..."
docker rm $(docker ps -aq) 2>/dev/null

# Show the current container status
echo "📌 Current running containers:"
docker ps
