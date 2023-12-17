#!bin/bash

: '
   Title: Memory Usage
   Author: Subash
   Date: 17 Dec
'
ps -eocomm,pmem | grep -E -v '(0.0)|(%mem)'