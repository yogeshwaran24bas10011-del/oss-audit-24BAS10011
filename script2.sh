#!/bin/bash
# Script 2: FOSS Package Inspector
PACKAGE="python3"

# Check if package is installed
if command -v $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."
    # Use python3 --version to show info
    python3 --version
else
    echo "$PACKAGE is NOT installed."
fi

# [span_6](start_span)Case statement for philosophy notes[span_6](end_span)
case $PACKAGE in
    python3)
        echo "Philosophy: Python is a language shaped entirely by community and readability." ;;
    httpd)
        echo "Apache: The web server that built the open internet." ;;
    mysql)
        echo "MySQL: Open source at the heart of millions of apps." ;;
    *)
        echo "Open source software promotes freedom and collaboration." ;;
esac
