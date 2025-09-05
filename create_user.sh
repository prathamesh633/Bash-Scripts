#!/bin/bash
# Usage: ./add_user.sh <username>

if [ $# -ne 1 ]; then
  echo "Usage: $0 <username>"
  exit 1
fi

USER=$1

echo "Set password for $USER:"
sudo adduser "$USER"
