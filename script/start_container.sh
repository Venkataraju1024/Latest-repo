#!/bin/bash
# Start container
CONTAINER_NAME="venkataraju1994"
IMAGE_NAME="venkataraju1994/my-flask-app:latest"
PORT=5000

# Check if container already exists
if [ $(docker ps -aq -f name=$CONTAINER_NAME) ]; then
    echo "Removing existing container..."
    docker rm -f $CONTAINER_NAME
fi

echo "Starting container $CONTAINER_NAME from image $IMAGE_NAME..."
docker run -d --name $CONTAINER_NAME -p $PORT:$PORT $IMAGE_NAME
echo "Container started. Access app at http://localhost:$PORT"
