#!/bin/bash

read -p "Enter the Number:" NUM

if [ $NUM -gt 100 ]
then
	echo " Enter the IF Block"
	echo " The number is greater than 100"
	date
else
	echo "The number is less than 100"
fi

echo " The script is executed successfully"