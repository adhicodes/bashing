#!/bin/bash

ls /var/run/httpd/httpd.pid

if [ $? -eq 0 ]
then 
	echo " HTTPD Service  is running"
elif [ $? -gt 0 ]
then 
	echo "HTTPD Service is not running"
	echo " Starting HTTPD Service"
	systemctl start httpd
	if [ $? -eq 0 ]
	then
		echo " Service running successfully"
	else
		echo " Service failed. Contact System Admin"
	fi
fi
