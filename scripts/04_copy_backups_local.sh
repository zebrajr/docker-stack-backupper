#!/bin/bash
source ../.env

# Copy backups from remote server to local machine
scp -r ${REMOTE_USER}@${REMOTE_HOST}:/home/${REMOTE_USER}/${REMOTE_PATH}/data ../
scp -r ${REMOTE_USER}@${REMOTE_HOST}:/home/${REMOTE_USER}/${REMOTE_PATH}/images ../
