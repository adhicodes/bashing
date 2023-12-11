#!/bin/bash

### This script shows the system information ###
echo "Welcome to Bash Scripting"
echo 
echo "#########################################################"
echo "The uptime check of the system is"
uptime
echo
echo "########################################################"
echo "Disk Utilization"
df -h
echo
echo "########################################################"
echo "Memory Utilization"
free -m