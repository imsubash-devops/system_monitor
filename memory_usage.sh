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
    ps -eocomm,pmem | grep -E -v '(0.0)'
}