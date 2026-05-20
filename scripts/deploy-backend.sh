#!/bin/bash
echo "Starting Manual Backend Container Build..."
docker build -t starttech-backend:latest -f Dockerfile .
echo "Tagging and pushing container image..."
docker tag starttech-backend:latest $DOCKERHUB_USERNAME/starttech-backend:latest
docker push $DOCKERHUB_USERNAME/starttech-backend:latest
echo "Backend image pushed successfully!"