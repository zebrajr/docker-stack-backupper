#!/bin/bash
source ../.env

current_date=$(date +%Y-%m-%d)
mkdir -p /home/${REMOTE_USER}/${REMOTE_PATH}/images/${current_date}

# List and export all Docker images
docker ps --format "{{.Image}}" | while read image; do
    echo "Backing Up: ${image}"
    sudo docker save "$image" | gzip > "/home/${REMOTE_USER}/${REMOTE_PATH}/images/${current_date}/${image//\//_}.tar.gz"
done
