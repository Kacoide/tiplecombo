#!/bin/bash

#building#

echo "Que nombre tendra su imagen?"
read image
echo " "
echo "Que nombre tendra su container?"
read container
echo " "
echo "¿Como se llama el volumen que desea ocupar?"
read volu
echo " "

docker build -t $image .

#docker run#

docker run -itd -v $volu:/* --name $container --cap-add=SYS_ADMIN --cap-add=NET_ADMIN --privileged=true --restart unless-stopped --device=/dev/net/tun $image

#Final#
sleep 3 
echo " "
echo " "
echo "Recuerda que el nombre del container es: $container"
echo " Y "
echo "El nombre de la imagen es: $image"
echo " "
echo "El servicio está funcionando"
