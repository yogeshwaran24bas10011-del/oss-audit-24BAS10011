#!/bin/bash
# Script 3: Disk and Permission Auditor
# Directories to audit, including Python's library path
DIRS=("/etc" "/var/log" "/usr/bin" "/usr/lib/python3")

echo "Directory Audit Report"
echo "------------------------------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # [span_9](start_span)Extract permissions, owner, and group[span_9](end_span)
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # [span_10](start_span)Get directory size[span_10](end_span)
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "Directory: $DIR"
        echo "Permissions/Owner: $PERMS"
        echo "Size: $SIZE"
        echo "--------------------------"
    else
        echo "$DIR does not exist on this system."
    fi
done
