!/bin/bash
# The script show the active network connection when we give ip addr show and ignore the lo(loopback) interface
value=`ip addr show | grep -v LOOPBACK | grep -ic mtu`

if [ $value -eq 1 ]
then
	echo " We have 1 active Network Interface"
elif [ $value -gt 1 ]
then 
	echo " We have mutiple network Interface"
else
	echo " No Active Network Interface"
fi

echo " Script executed successfully"