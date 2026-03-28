#!/bin/bash

# Script 5: Open Source Manifesto Generator
# Author: Pratham

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Create manifesto
echo "----------------------------------------" > $OUTPUT
echo "Open Source Manifesto" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I use $TOOL every day, and it represents the power of open-source software." >> $OUTPUT
echo "For me, freedom means $FREEDOM." >> $OUTPUT
echo "In the future, I would build $BUILD and share it freely with the world." >> $OUTPUT

echo "" >> $OUTPUT
echo "This reflects my belief in collaboration and open innovation." >> $OUTPUT
echo "----------------------------------------" >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
