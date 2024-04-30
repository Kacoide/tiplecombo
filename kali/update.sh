#!/bin/bash

#Actualizacion de la maquina#

apt update -y
apt upgrade -y
apt install curl -y
apt install net-tools -y
apt install traceroute -y
apt install dnsutils  -y
apt install openssh-server -y
apt install inetutils-ping -y
apt install vim -y
#Instalacion de las herramientos de la distro#

apt update && apt -y install kali-linux-headless
apt update && apt -y install kali-linux-large

#Parte final del script#

sleep 2
echo " "
#Esta linea habilita todas la herramientas en la maquina#
dpkg --configure -a
echo " "
echo " "
echo "El script ya ha finalizado"
