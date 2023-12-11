#!/bin/bash

echo "Welcome to Command Substitution"
FREERAM=$(free -m | grep Mem | awk '{print $4}')
DISKFREE=`df -h | awk '{print $1 $4}'`
USER=$(who |awk '{print $1}')

echo "######################################################"
echo "Free Space is $FREERAM"
echo "######################################################"
echo " Disk free space is $DISKFREE"
echo "#####################################################"
echo "Current user is $USER"
echo "#######################################################"

