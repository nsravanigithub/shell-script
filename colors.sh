#!/bin/bash

user=$(id -u)
#validating root user
Time=$(date +%Y.%m.%d-%H.%M.%S)
scriptname=$( echo $0 | cut -d "." -f1) #it cuts the .sh from script name 
logfile=/tmp/$scriptname.$Time.log
R="\e[31m"
G="\e[32m"
validate()
{
    if [ $1 -ne 0 ]
    then
    echo -e "$2........$R failure $N" 
    exit 1
    else
    echo -e "$2.....$G Success $N"
    fi

}
    if [ $? -ne 0 ]
    then
    echo "Please run with root access"
    exit 1
    else
    echo "you are super user"
    fi


dnf install mysql -y &>> $logfile  #it will append whatever output u get into the logfilecd

validate $? "installing mysql" 
dnf install git -y &>> $logfile

validate $? "installing git"