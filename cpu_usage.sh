#!/bin/bash
: '
   Title: CPU usage monitoring
   Author: Subash
   Date: 17 Dec
'
ps -eocomm,pcpu | grep -E -v '(0.0)|(%CPU)'
