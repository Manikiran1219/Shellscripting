#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "Error :: Please run this script with root access"
exit 1 #give other than 0 upto 127
else
echo "your are running with root access"
fi

dnf list installed mysql

if [ $? -ne 0 ]
then 
echo "MySQL is not installed ....going to install"
dnf install mysql -y

if [ $? -eq 0 ]
then
echo "Installing MySQL is success"
else
echo "Installing MySQL is failure"
exit 1
fi
else
echo "MySQL is already installed..Nothing to do"
fi

# dnf install mysql -y

# if [ $? -eq 0 ]
#then
#echo "Installing MySQL is success"
#else
#echo "Installing MySQL is failure"
#exit 1
# fi
