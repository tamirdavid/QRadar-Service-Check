#!/bin/bash

file=$1
while IFS= read -r p || [ -n "$p" ]
do

if ssh -qn root@$p ps aux | grep -q hostcontext; then
    echo -n -e "hostcontext is up" >> services.txt
else
    echo -n -e "hostcontext is down" >> services.txt 
fi
echo " $p" >> services.txt

if ssh -qn root@$p ps aux | grep -q ecs-ec; then
    echo -n -e "ecs-ec is up" >> services.txt
else
    echo -n -e "ecs-ec is down" >> services.txt
fi
echo " $p" >> services.txt

if ssh -qn root@$p ps aux | grep -q ecs-ec-ingress; then
    echo -n -e "ecs-ec-ingress is up" >> services.txt
else
    echo -n -e "ecs-ec-ingress is down" >> services.txt
fi
echo " $p" >> services.txt

done < "$file"

bash csvMaker.sh services.txt
