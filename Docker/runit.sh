#!/bin/bash

a=$(docker build -t debianlocal .)

b=$(docker run -itd --name host1 --rm --privileged=true --cap-add=NET_ADMIN --cap-add=SYS_ADMIN --device=/dev/net/tun debianlocal /bin/bash)

echo $a

if [ $a > 0 ]; then
	echo "Algo salio mal"
else
	echo $b
	sleep 2
	echo "Todo salio bien"
fi
