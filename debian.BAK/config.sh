#!/bin/bash

read -p "solo pulsa enter" var1

/usr/sbin/zerotier-one -d $var1

/usr/sbin/zerotier-cli join 8056c2e21c000001

