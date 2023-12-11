
#192.168.94.136 - script box
#192.168.94.137 - web01
#192.168.94.138 - web02
#192.168.94.132 - web03


#!/bin/bash
 

for host in `cat remhosts`
do 
	echo "#############################################"
	echo " Connecting to the $host"
	echo " Pushing script to $host"
	scp websetup.sh devops@$host:/tmp/
	echo " Executing the script in $host"
	ssh devops@$host  /tmp/websetup.sh
	ssh devops@$host  rm -rf /tmp/websetup.sh
	echo "###########################################"
done
