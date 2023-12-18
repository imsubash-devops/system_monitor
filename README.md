# system_monitor project
This project is aimed to monitor our system using different parameters:
- CPU usage
- Memory usage
- Disk usage

  In this project, the file is generated as a text file(.txt) and it will be converted as a pdf file(.pdf) using cupsfilter.
  The generated file is sent through the email.

  This script once run successfully, is launched in ec2 instance and set the cronjob so that the report is generated in the specific time.
