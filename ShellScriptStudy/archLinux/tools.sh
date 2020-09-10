#!/bin/bash

#use with sudo
#Script to start && shutdown an local server
#apache
#mysql

echo "Script start && sutdown"
echo "use with Sudo"
echo "1 = on | 0 = off"
read valor

if (($valor == 1))
then
	systemctl start httpd.service
	systemctl start mysqld.service
	echo ""
	echo "######################"
	echo "Service Apache started"
	echo "Service Mysql started"
	echo "######################"
	echo ""
	sleep 1
	netstat -tlpn
else
	systemctl stop httpd.service
	systemctl stop mysqld.service
	echo ""
	echo "#####################"
	echo "Service Apache stoped"
	echo "Service Mysql stoped"
	echo "#####################"
	echo ""
	sleep 1
	netstat -tlpn
fi
