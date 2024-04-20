#!/bin/bash
user=$(id -u)
#validating root user
if [ $user -ne 0 ]
then
echo "Please run this script with root access"
exit 1 #manually exit if error comes.
else
echo "you are super user"
fi
dnf install mysql -y
if [ $? -ne 0 ]
then
echo "Installation of mysql is failure"
exit 1
else
echo "Installation of mysql is success"
fi
dnf install git -y
if [ $? -ne 0 ]
then
echo "Installation of git is a failure"
exit 1
else
echo "Installation of git is success"
fi
