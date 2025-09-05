#!/bin/bash
# This script counts the number of lines, words, and characters in a given file

# Usage: ./file_stats.sh <filename>
if [ $# -ne 1 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

FILE=$1

LINES=$(wc -l < "$FILE")
WORDS=$(wc -w < "$FILE")
CHARS=$(wc -m < "$FILE")

echo "File: $FILE"
echo "Lines: $LINES"
echo "Words: $WORDS"
echo "Characters: $CHARS"
