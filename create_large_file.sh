#!/bin/bash

# Define the file size in MB
FILE_SIZE_MB=50
FILE_NAME="test_file_50MB"

echo "Creating a $FILE_SIZE_MB MB file named $FILE_NAME..."

# Use the 'dd' command to create the file
dd if=/dev/urandom of=$FILE_NAME bs=1M count=$FILE_SIZE_MB

if [[ $? -eq 0 ]]; then
  echo "File $FILE_NAME created successfully."
else
  echo "Failed to create the file."
fi