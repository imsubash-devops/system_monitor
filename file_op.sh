#!/bin/bash
: '
   Title: File Operations
   Author: SUBASH
   Date: 17 Dec
'
function create_file {
    touch $1
}

function list_files_directories {
    echo "..........................."
    echo "LIST OF FILES AND DIRECTORIES"
    
    ls -al
}

function check_file_present {
    ls -al "$1"
}

function remove_file {
    rm -rf "$1"
}
