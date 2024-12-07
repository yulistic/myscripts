#!/bin/bash

# Constants for remote user and server
REMOTE_USER="your_remote_user"    # Replace with your remote user
REMOTE_HOST="your_remote_server"  # Replace with your remote server or IP

# Usage: ./fetch_compressed.sh <src_path> <dest_path>

# Check if the required arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <src_path> <dest_path>"
    exit 1
fi

SRC_PATH=$1
DEST_PATH=$2

# Create the destination path if it doesn't exist
mkdir -p "$DEST_PATH"

# Use rsync to compress files during transfer and save them to the local path
rsync -avz --progress "$REMOTE_USER@$REMOTE_HOST:$SRC_PATH" "$DEST_PATH"

# Check if rsync was successful
if [ $? -eq 0 ]; then
    echo "Files successfully synced from $REMOTE_USER@$REMOTE_HOST:$SRC_PATH to $DEST_PATH"
else
    echo "Error occurred during rsync."
    exit 1
fi

