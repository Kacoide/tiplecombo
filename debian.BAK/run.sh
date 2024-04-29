#!/bin/bash

#Instalacion de netdata#

b=$(curl https://get.netdata.cloud/kickstart.sh > /tmp/netdata-kickstart.sh && sh /tmp/netdata-kickstart.sh --nightly-channel --claim-token u10P6Rz1VaN8CBmUOyYJfOFjVWldkTACQstGSy-iq8wF6CaPM3pHO0770LUBlqVHtGU87q-5pFY6J7qd7MYJynpNEbufb1A_VHF6_F0zgtahQVQHsQ5BbPAZG293tlK9l8Pbg6M --claim-rooms 6c050486-2e0b-4673-9f79-0dcc1f48af4b --claim-url https://app.netdata.cloud)

#Instalacion y actualizacion de la maquina para ser minimamente operativa#
apt update -y
apt upgrade -y
apt install net-tools -y
apt install traceroute -y
apt install dnsutils  -y
apt install openssh-server -y
apt-get install inetutils-ping -y

a=$(apt install curl -y)

echo $a

if [ $a -eq 0 ]; then
	echo $b
else
	sleep 3
	echo " "
	echo "ALGO SALIO MAL"
