#!/bin/bash
user=$(id -u)
#validating root user

validate()
{
    if [ $? -ne 0 ]
    then
    echo "run with root access.. $1"
    exit 1
    else
    echo "you are super user... $2"
    fi
}

dnf install mysql -y
validate $1 $2
dnf install git -y
validate $1 $2