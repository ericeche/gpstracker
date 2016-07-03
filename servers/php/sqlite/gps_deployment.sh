#!/bin/bash
# Eric Echeverri July 1 2016 
# Usage: gps_deployment.sh /dir/config_file
# To execute the script :
# 1. create .$2 in your home directory
# 2. run this script using root
#

FILE=$1

if [ -z "$1" ]; then
echo Usage: gps_deployment.sh /dir/config_file 
exit 1
fi

if [ -f $FILE ]; then
   echo "File '$FILE' Exists"
else
   echo "The File '$FILE' Does Not Exist"
   exit 1
fi

echo Creating GPS DB......
cat *.sql | mysql --defaults-extra-file=$2
echo Finishing GPS DB.......

echo Boo Bye...Done

