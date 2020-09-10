#!/bin/bash

#usar no sudo
#Script para desligar e ligar servicos para web
#apache2
#mysql
#nessusd

echo "Script para desligar e ligar apache/mysql/nessus"
echo "Lembrar de usar SUDO"
echo "1 = on | 0 = off"
echo "Qual op você deseja[1/0]:"
read valor

if (($valor == 1))
then
	service apache2 start
	service mysql start
	/etc/init.d/nessusd start
	echo ""
	echo "Service Apache iniciado"
	echo "Service Mysql iniciado"
	echo "Service Nessus iniciado"
else
	service apache2 stop
	service mysql stop
	/etc/init.d/nessusd stop
	service cups stop
	echo ""
	echo "Service Cups parado"
	echo "Service Apache parado"
	echo "Service Mysql parado"
	echo "Service Nessus parado"
fi
