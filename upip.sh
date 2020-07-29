#!/bin/bash

local_ip=`ip addr | grep inet | grep -v 127.0.0.1 | grep -v inet6 | grep -v secondary | awk '{print $2}' | tr -d "addr:" | cut -f1  -d'/'`
echo ${local_ip}
my_id=`cat my.id`
echo ${my_id}
curl -d "piid=${my_id}&piip=${local_ip}&pic=a" "fhaha.cn/polls/"
