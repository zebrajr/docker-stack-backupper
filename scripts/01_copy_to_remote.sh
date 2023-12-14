#!/bin/bash
source ../.env

# Ensure the target directory exists on the remote server
ssh ${REMOTE_USER}@${REMOTE_HOST} "mkdir -p /home/${REMOTE_USER}/${REMOTE_PATH}"

# Copy specified files/folders to the remote server
scp -r ../scripts ${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_PATH}
scp -r ../.env  ${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_PATH}
