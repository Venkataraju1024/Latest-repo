#!/bin/bash
# Start container
CONTAINER_NAME="flask-app"
IMAGE_NAME="my-flask-app"
PORT=5000

# Check if container already exists
if [ $(docker ps -aq -f name=$CONTAINER_NAME) ]; then
    echo "Removing existing container..."
    docker rm -f $CONTAINER_NAME
fi

echo "Starting container $CONTAINER_NAME from image $IMAGE_NAME..."
docker run -d --name $CONTAINER_NAME -p $PORT:5000 $IMAGE_NAME
echo "Container started. Access app at http://localhost:$PORT"