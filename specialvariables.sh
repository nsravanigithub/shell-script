#!/bin/bash

#special variables in shell-scripting

echo "Print all the variables: $@"
echo "Number of variables passed: $#"
echo "Name of the script: $0"
echo "Current working directory: $PWD"
echo "Home directory: $HOME"
echo "which user is running the script: $USER"
echo "Hostname of the server: $HOSTNAME"
echo "Process id of the current shell-script: $$"
sleep 60
sleep 60&
echo "Process id of the last background command: $!"
