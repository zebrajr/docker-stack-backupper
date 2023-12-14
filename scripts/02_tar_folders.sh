#!/bin/bash
source ../.env

current_date=$(date +%Y-%m-%d)
mkdir -p /home/${REMOTE_USER}/${REMOTE_PATH}/data/${current_date}

# Tar.gz each folder in the target directory
for dir in ${REMOTE_DIRECTORY_BACKUP}/*/; do
    echo "Backing Up: ${dir}"
    sudo tar -czf "/home/${REMOTE_USER}/${REMOTE_PATH}/data/${current_date}/$(basename "$dir").tar.gz" -C "$dir" .
    sudo chown ${REMOTE_USER}:${REMOTE_USER} "/home/${REMOTE_USER}/${REMOTE_PATH}/data/${current_date}/$(basename "$dir").tar.gz"
done
