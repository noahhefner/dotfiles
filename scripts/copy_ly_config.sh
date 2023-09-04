#!/bin/bash

wd=$(pwd)

retval=$( source "$wd/validate_repo_location.sh" )
echo "$retval"
if [ "$retval" = "0" ]
then
  echo "Good return from validation."
else
  echo "Bad return from validation."
fi

cp ./../ly/config.ini /etc/ly
