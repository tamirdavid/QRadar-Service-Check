#!/bin/bash
while IFS= read -r line; do
	IFS=' ' read -r -a array <<< $line
	check=${array[2]}
	if [ $check = "up" ]; then
	   dateNow=$(date)
	   echo $dateNow
	   IFS=' ' read -r -a datee <<< $dateNow
	   echo "<182>${datee[1]} ${datee[2]} ${datee[3]} ; name: "hostcontext is up"; category: "SERVICE"; source ip: 10.10.10.10 ; destination ip: 10.1.2.3" >> LOGS.csv
 	fi
done < "$1"

/opt/qradar/bin/logrun.pl -u 10.10.10.10 -f LOGS.csv -l -v 1


