#!/bin/bash

# Counter for file names
counter=0

# Read each line from stdin
while IFS= read -r line; do
    # Create a new file with the line content
    echo "$line" | jq > "./tests/test_$counter.txt"
    ((counter++))
done

echo "Files created successfully."
