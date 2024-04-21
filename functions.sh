#!/bin/bash

user=$(id -u)
#validating root user
Time=$(date +%Y.%m.%d-%H.%M.%S)
scriptname=$( echo $0 )
logfile=/tmp/$scriptname.$Time.log

validate()
{
    if [ $1 -ne 0 ]
    then
    echo "$2........failure"
    exit 1
    else
    echo "$2..... Success"
    fi

}
    if [ $? -ne 0 ]
    then
    echo "Please run with root access"
    exit 1
    else
    echo "you are super user"
    fi


dnf install mysql -y 
validate($1 logfile)
validate $? "installing mysql" 
dnf install git -y
validate($1 logfile)
validate $? "installing git"