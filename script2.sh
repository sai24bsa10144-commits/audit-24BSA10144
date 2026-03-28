#!/bin/bash

# Script 2: FOSS Package Inspector
# Author: Pratham

PACKAGE="git"

echo "Checking if $PACKAGE is installed..."
echo "----------------------------------"

# Check if package exists
if command -v $PACKAGE &> /dev/null
then
    echo "$PACKAGE is installed."

    # Get version
    VERSION=$($PACKAGE --version)
    echo "Version: $VERSION"
else
    echo "$PACKAGE is NOT installed."
fi

echo ""

# Case statement (philosophy line)
case $PACKAGE in
    git)
        echo "Git: A distributed version control system built for open collaboration."
        ;;
    python)
        echo "Python: A powerful open-source programming language."
        ;;
    vlc)
        echo "VLC: A free media player that supports almost all formats."
        ;;
    firefox)
        echo "Firefox: A browser that promotes an open and private web."
        ;;
    *)
        echo "Unknown package."
        ;;
esac
