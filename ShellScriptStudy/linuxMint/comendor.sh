#!/bin/bash

#Sudo
#Working - Not ready

echo "###########################"
echo "#    Auto simple scan     #"
echo "#                         #"
echo "#        Comendor         #"
echo "###########################"
echo ""
echo "Nmap && Nikto"
echo "Target for scanning? "
read host
echo "Type scan: simple = 1 && hard = 2?"
read scan

if (($scan == 1))
then
	nmap -sS $host
	echo "############################"
	nikto -h $host
fi

echo ""

if (($scan == 2))
then
	nmap -sV -O $host
	echo "############################"
	nikto -h $host
fi

echo ""
