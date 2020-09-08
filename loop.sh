#!/bin/bash
while IFS= read -r line; do
   ssh root@$line systemctl -q is-active hostcontext &&\echo -n -e "hostcontext is up" >> hostcontext.txt||
   \echo -n -e "hostcontext is down" >> hostcontext.txt && echo " $line" >> hostcontext.txt
done < "$1"

bash csvMaker.sh hostcontext.txt

