#!/bin/bash
##############################################################
# File Name: plip-auto.sh
# Version: V1.0
# Author: Zhao Yu Heng
# Organization: www.oldboyedu.com 
# Created Time : 2017-08-27 00:34:10
# Description:Yan Fei
##############################################################
FILES=$*
if [ -z $FILES  ]
	 then 
		  echo -e "\033[44;36m Usage:{/tmp|/tmp/ /opt |/tmp1.txt}\033[0m"
	    exit
  fi
for  i in $( cat /tmp/1.txt )
do
	 echo -e  "\033[44;36m scp -r $FILES  root@$i:/tmp \033[0m"
done
