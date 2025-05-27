#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull hassanbutt520/simple-app:latest

# Run the Docker image as a container
docker run -d -p 5000:5000 hassanbutt520/simple-app:latest
