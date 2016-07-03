#!/bin/bash
# Eric Echeverri November 14 2015
# Usage: sql_deployments.sh [LAS or ACS] /dir/config_file
# ticket : El-1505 eloquence database load script
# To execute the script :
# 1. create .$2 in your home directory
# 2. run this script using root
#

FILE=$1

if [ -z "$1" ]; then
echo Usage: sql_deployments.sh LAS /dir/config_file or sql_deployments.sh ACS /dir/config_file
exit 1
fi

if [ -f $FILE ]; then
   echo "File '$FILE' Exists"
else
   echo "The File '$FILE' Does Not Exist"
   exit 1
fi

echo Creating gps DB......
cat gpstracker-09-14-14.sql | mysql --defaults-extra-file=$1
echo Finishing gps DB.......


echo Boo Bye...Done

