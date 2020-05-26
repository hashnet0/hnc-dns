#!/bin/bash

# Docker image name
IMAGE_NAME="hnc-dns:latest"

# The container's name when using ./run.sh
CONTAINER_NAME="hnc-dns"

# The maximum memory allowed in this container
MEMORY_MAX="2048m"

# The port the server is running on
PORT=53

# The mounted volume name when using ./run.sh
VOLUME_NAME=${CONTAINER_NAME}

