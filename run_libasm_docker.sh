#!/bin/bash

# Project directory on the host (adjust this to your actual libasm project path)
PROJECT_DIR="/Users/brkss/Developer/1337/libasm/libasm"
# Docker volume path inside container
DOCKER_WORKDIR="/home/dev/libasm"

# Create the container and run interactively
docker run --platform linux/amd64 -it \
  --name libasm-dev \
  -v "$PROJECT_DIR":"$DOCKER_WORKDIR" \
  -w "$DOCKER_WORKDIR" \
  ubuntu:20.04 \
  bash -c "
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
      build-essential \
      gcc \
      nasm \
      make \
      manpages-dev \
      vim && \
    echo 'Environment ready. You can now run make or edit your code.' && \
    bash
  "
