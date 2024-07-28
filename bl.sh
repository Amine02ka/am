#!/bin/bash

# Navigate to the DCIM directory
cd /storage/emulated/0/dcim || { echo "Failed to navigate to /storage/emulated/0/dcim"; exit 1; }

# Get the home directory
HOME_DIR=$(cd; pwd)

# Zip the Snapchat and Screenshots directories in fastest mode and save it in the home directory
#zip -r -1 "${HOME_DIR}/local.zip" "/storage/emulated/0/DCIM/Snapchat" "/storage/emulated/0/DCIM/Screenshots"

zip -r -1 "${HOME_DIR}/local.zip" "/storage/emulated/0/DCIM/"

# Echo success message
echo "Snapchat and Screenshots directories successfully zipped (fastest mode) and saved to ${HOME_DIR}/local.zip"

# Change back to the home directory
cd

# List files in the home directory to confirm the zip file is there
ls
