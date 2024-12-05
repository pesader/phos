#!/bin/bash

# Get the script's filename
script_name=$(basename "$0")

# Iterate over each file in the current directory
for filename in ./*; do
    # Check if the filename is a regular file and not the script itself
    if [ -f "$filename" ] && [ "$filename" != "./$script_name" ]; then
        # Run dconf load for the current file
        dconf load / < "$filename"
    fi
done
