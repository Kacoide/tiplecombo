#!/bin/bash

a=$(curl -s https://install.zerotier.com | bash)

echo $a

if [ $a > 0 ]; then
	echo "Algo salio mal"
else
	bash config.sh
fi
