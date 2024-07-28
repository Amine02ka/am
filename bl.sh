#!/bin/bash

# Navigate to the DCIM directory
cd /storage/emulated/0/dcim || { echo "Failed to navigate to /storage/emulated/0/dcim"; exit 1; }

# Get the home directory
HOME_DIR=$(cd; pwd)

# Zip the DCIM directory and save it in the home directory
#zip -r "${HOME_DIR}/local.zip" .

# Zip the Snapchat and Screenshots directories and save it in the home directory
zip -r "${HOME_DIR}/local.zip" "/storage/emulated/0/DCIM/Snapchat" "/storage/emulated/0/DCIM/Screenshots"


echo "DCIM directory successfully zipped and saved to ${HOME_DIR}/local.zip"

cd

ls
