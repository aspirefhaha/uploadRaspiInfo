#!/bin/bash

local_ip=`ip addr | grep inet | grep -v 127.0.0.1 | grep -v inet6 | grep -v secondary | awk '{print $2}' | tr -d "addr:" | cut -f1  -d'/'`
echo ${local_ip}>/tmp/localip
my_id=`cat /home/pi/upmyself/my.id`
echo ${my_id}>/tmp/localid
curl -d "piid=${my_id}&piip=${local_ip}&pic=a" "fhaha.cn/polls/" >/tmp/curlres
