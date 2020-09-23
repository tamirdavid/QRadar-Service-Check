#!/bin/bash

while IFS= read -r line; do
	IFS=' ' read -r -a array <<< $line
	check=${array[2]}
	if [ $check = "down" ]; then
	   IFS=' ' read -r -a date <<< $dateNow
           echo ${date[0]}
	   echo " name: \""${array[0]} is down\""; category: \""SERVICE\""; source ip: ${array[3]} ; destination ip: 10.1.2.3" >> LOGS.csv
 	fi
done < "$1"

if [ -s /root/offenseForService/LOGS.csv ]
then
    cd /opt/qradar/bin/
    timeout 40 ./logrun.pl -u 10.10.10.10 -f /root/offenseForService/LOGS.csv -l -v 1
    >/root/offenseForService/services.txt
    >/root/offenseForService/LOGS.csv
else
    echo "LOGS.csv is empty"
fi
