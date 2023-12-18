#!bin/bash

: '
   Title: Memory Usage
   Author: Subash
   Date: 17 Dec
'
function mem_stats {
    echo "...................................."
    echo "............MEMORY USAGE........."
    echo "....................................."
    # Retrieve a list of processes with their command names and memory usage percentages,
    # then filter out processes with 0.0% memory usage using grep.
    ps -eocomm,pmem | grep -E -v '(0.0)' >> "$1".txt
}