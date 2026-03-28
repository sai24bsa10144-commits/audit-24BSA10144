#!/bin/bash

# Script 1: System Identity Report
# Author: Pratham
# Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Pratham"
SOFTWARE_CHOICE="Git"

# --- System Info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime)
DATE=$(date)
HOME_DIR=$HOME
OS_NAME=$(sw_vers -productName)
OS_VERSION=$(sw_vers -productVersion)

# --- Display ---
echo "================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "================================"

echo "Operating System : $OS_NAME $OS_VERSION"
echo "Kernel Version   : $KERNEL"
echo "User             : $USER_NAME"
echo "Home Directory   : $HOME_DIR"
echo "Uptime           : $UPTIME"
echo "Date & Time      : $DATE"

echo ""
echo "This system is based on Unix and follows open-source principles."
echo "License: macOS uses a mix of open-source (BSD) and proprietary components."

echo "================================"
