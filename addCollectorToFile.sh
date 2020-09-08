#!/bin/bash
if [ "$1" != "" ]; then
	echo $1 >> collectorsIps
else
	echo "Enter Ip"
	read ip
	echo $ip >> collectorsIps
fi
