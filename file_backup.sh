#!/bin/bash
# This script creates a backup of a specified directory in compressed form (.tar file) and saves it to a given location

# check arguments
if [ $# -lt 1 ]; then
  echo "Usage: $0 <source_directory> [destination_directory]"
  exit 1
fi

SRC_DIR=$1
BACKUP_DIR=${2:-/tmp/backup}   # default to /tmp/backup if not provided

# create destination directory if not exists
mkdir -p "$BACKUP_DIR"

# backup filename with date
BACKUP_FILE="$BACKUP_DIR/backup_$(basename $SRC_DIR)_$(date +%F).tar.gz"

# create tar.gz archive
tar -czf "$BACKUP_FILE" "$SRC_DIR"

echo "Backup of $SRC_DIR completed: $BACKUP_FILE"
