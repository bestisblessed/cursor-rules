#!/bin/bash

# Source rules
SOURCE="$HOME/Code/cursor-rules/.cursor/rules"

# Copy to all directories in ~/Code 
for project in "$HOME/Code"/*; do 
    if [ -d "$project" ] && [ "$(basename "$project")" != "cursor" ]; then
        mkdir -p "$project/.cursor/rules"
        cp -f "$SOURCE"/* "$project/.cursor/rules/"
    fi
done
