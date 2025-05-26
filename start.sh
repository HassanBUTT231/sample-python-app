#!/bin/bash

# Variables
AWS_REGION="us-east-1"
IMAGE_NAME="my-app-repo"
IMAGE_TAG="latest"
ECR_URI="099199746132.dkr.ecr.$AWS_REGION.amazonaws.com/$IMAGE_NAME"

# Login to ECR
echo "Logging into Amazon ECR..."
aws ecr get-login-password --region $AWS_REGION | docker login --username AWS --password-stdin $ECR_URI

# Pull the Docker image
echo "Pulling Docker image from ECR..."
docker pull $ECR_URI:$IMAGE_TAG

# Run the container
echo "Running Docker container..."
docker run -d --name $IMAGE_NAME -p 80:5000 $ECR_URI:$IMAGE_TAG
