#!/bin/bash

#This is a log cleanup and backup script

print_header() {
    echo ""
    echo "============================="
    echo "  $1"
    echo "============================="
}

#Deleting logs older than 30 mins
print_header "Deleting logs older than 30 mins"
sudo find /var/log -type f -mmin +30 -exec rm -f {} \;
print_header "Deleted Succesfully"

#Compress files older than 10 minutes
print_header "Compress files older than 10 minutes"
find /var/log -type f -mmin +10 ! -name "*.gz" -exec gzip {} \;
print_header "Succesfull"
