#!/bin/bash

# Script 3: Disk and Permission Auditor
# Author: Pratham

DIRS=("/etc" "/var/log" "/Users" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"
do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo ""
echo "Checking Git config directory..."

GIT_CONFIG="$HOME/.gitconfig"

if [ -f "$GIT_CONFIG" ]; then
    PERMS=$(ls -l $GIT_CONFIG | awk '{print $1, $3, $4}')
    echo "Git config found => Permissions: $PERMS"
else
    echo "Git config file not found"
fi
