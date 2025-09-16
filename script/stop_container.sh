#!/bin/bash
# Stop the running container if exists
CONTAINER_NAME="venkataraju1994"

if [ $(docker ps -q -f name=$CONTAINER_NAME) ]; then
    echo "Stopping container $CONTAINER_NAME..."
    docker stop $CONTAINER_NAME
    docker rm $CONTAINER_NAME
    echo "Container stopped and removed."
else
    echo "No running container named $CONTAINER_NAME."
fi
