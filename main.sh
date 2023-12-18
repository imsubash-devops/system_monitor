#!/bin/bash
: '
   Title: Memory Usage
   Author: Subash
   Date: 17 Dec
'
echo "$HOSTNAME"
source cpu_usage.sh
source memory_usage.sh
source disk_usage.sh
source file_op.sh
source email.sh
count=1
while [ $count -gt 0 ]; do
    echo "
      select your choice:
      1. CPU statistics - Enter cpu/Cpu/CPU
      2. Memory statistics -Enter mem/MEM/Memory
      3. Disk statistics- Enter  df/disk/Disk
      4. All (cpu,memory,disk)- Enter all/ALL/All
      5. None -Enter None,none,NONE
      0. Exit
      "
    read -rp "Enter your choice : " choice
    read -rp "Enter the output file name : " output_file
    create_file "$output_file"
    check_file_present "$output_file"

    case $choice in
    1 | cpu | CPU | Cpu)
        cpu_stats "$output_file"
        ;;
    2 | mem | Mem | Memory)
        mem_stats "$output_file"
        ;;

    3 | df | disk | Disk)
        disk_stats "$output_file"
        ;;

    4 | All | all | All)
        cpu_stats "$output_file"
        mem_stats "$output_file"
        disk_stats "$output_file"
        ;;

    5 | None | none | NONE) ;;

    0)
        echo "Exiting script"
        exit 0
        ;;

    *)
        echo "Please enter valid input"
        exit 1
        ;;
    esac
    count=$((count - 1))
    echo $count
done

cupsfilter "$output_file".txt >"$output_file".pdf

list_files_directories

##send an email
read -rp "Enter sender email address: " sender
read -rp "Enter receiver email address: " receiver
read -rp "Enter gmail app password: " gmail_app_password
read -rp "Enter  email subject: " subject
send_email "$sender" "$receiver" "$gmail_app_password" "$subject" "$output_file".pdf

# Additional check before attempting to remove files
# Additional check before attempting to remove files
if [ -e "$output_file" ]; then
    echo "Files exist. Removing..."
    remove_file "$output_file".*
    echo "Files removed successfully"
else
    echo "Files not found. Skipping removal."
fi

list_files_directories
