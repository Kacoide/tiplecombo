#!/bin/bash

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
