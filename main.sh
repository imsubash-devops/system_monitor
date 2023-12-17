#!/bin/bash
: '
   Title: Memory Usage
   Author: Subash
   Date: 17 Dec
'
echo "$HOSTNAME"
source cpu_usage.sh
source memory_usage.sh
read -rp "Enter your choice : " choice

case $choice in
cpu) cpu_stats
    ;;
mem) mem_stats
    ;;

*)
    echo "Please enter valid input"
    exit 1
esac
