#!/bin/bash
id=$(id -u)
#validating root user
if [ $id -eq 0 ]
echo "super user"
else
echo "normal user"
fi