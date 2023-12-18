#!/bin/bash
: '
   Title: CPU usage monitoring
   Author: Subash
   Date: 17 Dec
'
function cpu_stats {
    echo "....................................."
    echo "............CPU USAGE............"
    echo "....................................."
    # Retrieve a list of processes with their command names and CPU usage percentages,
    # then filter out processes with 0.0% CPU usage using grep.
    ps -eocomm,pcpu | grep -E -v '(0.0)' >> "$1".txt
}

function cpu_stats_top {
    echo "....................................."
    echo "............CPU USAGE............"
    echo "....................................."
    top >> "$1".txt

}
