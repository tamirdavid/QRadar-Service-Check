QRadar---Service-Check
This script can help QRadar administrators monitor critical services in their customers collectors.

First step - add collectors IPs
You can use addCollectorToFile.sh to add your collectors to collectorIps.txt, the reason for using a txt file is that managed hosts table contain internal IPS and sometimes customers use NAT as Public IP due to security issues.

Second step - use loop.sh
You have to pass the collecorIps.txt file as a parameter. Loop going to check hostcontext service in every collector and write the result to hostcontext.txt, you can monitor services as you want. After it happens, the script use runlog.pl script and generate logs in the QRadar system.

Third step - capture the logs
You need to capture the logs inside the QRadar log activity and make a rules as you want.

For question find me on linkedin: https://www.linkedin.com/in/tamir-david-95068116a/