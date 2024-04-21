#!/bin/bash
user=$(id -u)
#validating root user

validate()
{
    if [$1 ne 0]
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
validate $? "installing mysql" 
dnf install git -y
validate $? "installing git"