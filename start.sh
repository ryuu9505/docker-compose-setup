#!/bin/bash

# List of Docker Compose files to run
COMPOSE_FILES=(
  "docker-compose-influxdb.yml"
  "docker-compose-postgis.yml"
  "docker-compose-rabbitmq.yml"
  "docker-compose-redis.yml"
)

# Build the docker-compose command
CMD="docker-compose"
for FILE in "${COMPOSE_FILES[@]}"; do
  CMD+=" -f $FILE"
done

# Start containers
echo "🚀 Starting all Docker containers..."
$CMD up -d

# Show running containers
echo "✅ All containers are up and running!"
docker ps
