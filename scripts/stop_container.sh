#!/bin/bash
set -e

# Find the container ID running from the image
CONTAINER_ID=$(docker ps -q --filter "ancestor=hassanbutt520/simple-app:latest")

if [ -n "$CONTAINER_ID" ]; then
  echo "Stopping container $CONTAINER_ID..."
  docker stop "$CONTAINER_ID"

  echo "Removing container $CONTAINER_ID..."
  docker rm "$CONTAINER_ID"
else
  echo "No running container found for image hassanbutt520/simple-app:latest"
fi
