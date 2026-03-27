#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script4.sh [logfile] [keyword]

LOGFILE=$1
KEYWORD=${2:-"python"} # Default keyword is 'python'
COUNT=0

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# [span_12](start_span)Read file line by line[span_12](end_span)
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "The keyword '$KEYWORD' was found $COUNT times in $LOGFILE."
