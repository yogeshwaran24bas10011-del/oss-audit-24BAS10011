#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo "--------------------------------------------------"

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date +'%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# [span_15](start_span)Compose and write to file[span_15](end_span)
echo "--- MY OPEN SOURCE MANIFESTO ---" > "$OUTPUT"
echo "Created on: $DATE" >> "$OUTPUT"
echo "I believe in $FREEDOM. That is why I use $TOOL." >> "$OUTPUT"
echo "To give back to the community, I want to build $BUILD." >> "$OUTPUT"
echo "Software should be free as in freedom, not just free beer." >> "$OUTPUT"

echo "--------------------------------------------------"
echo "Manifesto saved to $OUTPUT"
cat "$OUTPUT"
