#!/bin/bash

# Define the file and expected content
FILE="apple_green"
EXPECTED_CONTENT="This is a validated production file."

# Check if the file exists
if [ -f "$FILE" ]; then
    # Read the content of the file
    CONTENT=$(cat "$FILE")
    
    # Verify the content matches
    if [ "$CONTENT" == "$EXPECTED_CONTENT" ]; then
        echo "✅ SUCCESS: $FILE is valid and untampered."
        exit 0
    else
        echo "❌ FAILURE: $FILE content does not match production standards!"
        exit 1
    fi
else
    echo "❌ FAILURE: $FILE is missing from the workspace!"
    exit 1
fi
