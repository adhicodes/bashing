#!/bin/bash

counter=0
while [ $counter -lt 5 ]
do
	echo " Looping..."
	echo " Value of Counter is $counter"
	counter=$(( $counter + 1 ))
	sleep 1
done
echo " Ou of the Loop"