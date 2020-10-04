# QRadar-Service-Check
This script can help QRadar administrators monitor critical services in their customer's collectors as well as monitor event processors and data nodes.
# The first step - add collectors IPs
You can use addCollectorToFile.sh to add your collectors to collectorIps.txt, the reason for using a text file is that the managed hosts table contains internal IPS and sometimes customers use NAT as Public IP due to security issues.
# The Second step - use loop.sh
You have to pass the collecorIps.txt file as a parameter. Loop going to check some services in every collector and write the result to services.txt file, you can monitor services as you want. After it happens, the script uses runlog.pl script and generate logs in the QRadar system.
# The third step - capture the logs
You need to capture the logs inside the QRadar log activity and make rules as you want.

For question find me on Linkedin: https://www.linkedin.com/in/tamir-david-95068116a/
