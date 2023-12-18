#!/bin/bash

: '
    Title: SENDING an EMAIL
    AUTHOR: SUBASH
    DATE: 17 DEC, 2023
'


function send_email {
    curl -s --url 'smtps://smtp.gmail.com:465' --ssl-reqd \
        --mail-from "$1" \
        --mail-rcpt "$2"\
        --user "$1":"$3" \
        -F '=(;type=multipart/mixed' -F "='
            <html><body><p><b>
                    SYSTEM REPORT <br>
                    This report has been generated using the shell script commands <br>
                    Thank you for sending system report
            </b></p></body></html>
            ';type=text/html" \
        -F "file=@$5;type=application/pdf;encoder=base64"  -F '=)' \
        -H "Subject: $4" \
        -H "From: $1" \
        -H "To: $2"  
    if [[ $? == 0 ]]
    then
        echo "Mail sent successfully"
    fi
}

