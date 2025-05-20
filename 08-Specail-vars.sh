#!/bin/bash

echo "All variables passed to the script: $@"
echo "Number of variables : $#"
echo "Script name : $0"
echo "Current Directory : $PWD"
echo "User running this script : $USER"
echo "Home Directory of the user : $HOME"
echo "PID of the Script :$$"
sleep 10 &
echo "PID of the last command in background : $!"