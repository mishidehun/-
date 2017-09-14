#!/bin/bash
##############################################################
# File Name: num1.sh
# Version: V1.0
# Author: Zhao Yu Heng
# Organization: www.oldboyedu.com 
# Created Time : 2017-08-26 23:28:55
# Description:Yan Fei
##############################################################
i=$1

while ((  $i < 200 )) 
do 
	# echo "$i < 10"
	echo "192.168.0.$i"  >> /tmp/1.txt 
	((i++))
 done

