#!bin/bash

: '
   Title: Memory Usage
   Author: Subash
   Date: 17 Dec
'
echo "...................................."
echo "............MEMORY USAGE............."
echo "....................................."
ps -eocomm,pmem | grep -E -v '(0.0)|(%mem)'