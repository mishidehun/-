#!/bin/bash
##############################################################
# File Name: autoip.sh
# Version: V1.0
# Author: Zhao Yu Heng
# Organization: www.oldboyedu.com 
# Created Time : 2017-08-26 22:01:46
# Description:Yan Fei
##############################################################
FILES=$*
if [ -z $* ] 
then
	 echo -e "\033[47;32m usage:{/boot|/tmp|tmp/1.txt }\033[0m"
	 exit 
 fi
for i in `echo 192.168.0.3 127.0.0.1`
do
	 scp -rp $FILES  $i:/opt
 done
