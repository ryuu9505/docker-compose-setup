#!/bin/bash

# Load .env file
if [ -f .env ]; then
  source .env
fi

# Build the docker-compose command
CMD="docker-compose"
for FILE in $COMPOSE_FILES; do
  CMD+=" -f $FILE"
done

# Start containers
echo "🚀 Starting all Docker containers..."
$CMD up -d

# Show running containers
echo "✅ All containers are up and running!"
docker ps
