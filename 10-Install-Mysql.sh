#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "Error :: Please run this script with root access"
exit 1 #give other than 0 upto 127
else
echo "your are running with root access"
fi

dnf install mysql -y

if [ $? -eq 0 ]
then
echo "Installing MySQL is success"
else
echo "Installing MySQL is failure"
exit 1
fi
