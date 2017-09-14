#!/bin/bash
##############################################################
# File Name: ip.sh
# Version: V1.0
# Author: Zhao Yu Heng
# Organization: www.oldboyedu.com 
# Created Time : 2017-09-01 22:48:07
# Description:Yan Fei
##############################################################
ip=192.16.1.
for i in  {1..254}
do
	ping -c  2 $ip$i  2>/dev/null 
if [ $? == 0 ]
then
	echo " $ip$i is online" >> 1.sh
else
    echo " $ip$i is not online" >> 1.sh
fi
done
