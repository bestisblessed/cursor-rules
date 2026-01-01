#!/bin/bash

# Source rules
SOURCE="$HOME/Code/cursor-rules/.cursor/rules"
SOURCE_DIR="$HOME/Code/cursor-rules"

# Copy to all directories in ~/Code 
for project in "$HOME/Code"/*; do 
    if [ -d "$project" ] && [ "$project" != "$SOURCE_DIR" ]; then
        mkdir -p "$project/.cursor/rules"
        cp -f "$SOURCE"/* "$project/.cursor/rules/" 2>/dev/null
    fi
done
