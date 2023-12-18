#!/bin/bash
: '
   Title: Disk usage monitoring
   Author: Subash
   Date: 17 Dec
'
function disk_stats {
    echo "....................................."
    echo "............DISK USAGE............"
    echo "....................................."

    # Retrieve a list of processes with their command names and CPU usage percentages,
    # then filter out processes with 0.0% CPU usage using grep.
    df -h >>"$1".txt
}
