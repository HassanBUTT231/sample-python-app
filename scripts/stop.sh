#!/bin/bash

CONTAINER_NAME="my-app-repo"

if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
  echo "Stopping running container: $CONTAINER_NAME"
  docker stop $CONTAINER_NAME
  docker rm $CONTAINER_NAME
else
  echo "No running container named $CONTAINER_NAME found"
fi
