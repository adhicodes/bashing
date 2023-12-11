#!/bin/bash

MYUSR="Adhi Sekar Ragu Eershu"
for usr in $MYUSR
do
	echo "Adding user $usr"
	useradd $usr
	id $usr
	echo "###############################"
done
