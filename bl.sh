#!/bin/bash

# Navigate to the DCIM directory
cd /storage/emulated/0/dcim || { echo "Failed to navigate to /storage/emulated/0/dcim"; exit 1; }

# Get the home directory
HOME_DIR=$(cd; pwd)

# Zip the DCIM directory and save it in the home directory
zip -r "${HOME_DIR}/dcim_backup.zip" .

echo "DCIM directory successfully zipped and saved to ${HOME_DIR}/dcim_backup.zip"
