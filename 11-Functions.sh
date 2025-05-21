#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "Error :: Please run this script with root access"
exit 1 #give other than 0 upto 127
else
echo "your are running with root access"
fi

VALIDATE()
{
   if [ $1 -eq 0 ]
then
echo "Installing $2 is success"
else
echo "Installing $2 is failure"
exit 1
fi 
}

dnf list installed mysql
if [ $? -ne 0]
then
echo "MYSQL is not installed... going to install it"
dnf install mysql -y
VALIDATE $1 "MYSQL"
else
echo "MYSQL is already installed...Noting to do"
fi

