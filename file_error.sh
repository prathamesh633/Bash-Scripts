#!/bin/bash
# This script counts the number of lines containing the word "ERROR" in a given log file


# Check arguments. If given incorrect number of arguments, print usage and exit.
if [ $# -ne 2 ]; then
  echo "Usage: $0 <log_file> <output_file>"
  exit 1
fi

LOG_FILE=$1
OUTPUT_FILE=$2

# Count lines containing 'ERROR'
ERROR_COUNT=$(grep -c "ERROR" "$LOG_FILE")

# Write result to output file
echo "Total Errors Found: $ERROR_COUNT" > "$OUTPUT_FILE"

echo "Error count written to $OUTPUT_FILE"