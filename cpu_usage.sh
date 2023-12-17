#!/bin/bash
: '
   Title: CPU usage monitoring
   Author: Subash
   Date: 17 Dec
'
echo "...................................."
echo "............CPU USAGE................"
echo "....................................."
ps -eocomm,pcpu | grep -E -v '(0.0)|(%CPU)'
