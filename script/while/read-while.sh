#!/bin/bash
##############################################################
# File Name: read-while.sh
# Version: V1.0
# Author: Zhao Yu Heng
# Organization: www.oldboyedu.com 
# Created Time : 2017-08-26 23:58:14
# Description:Yan Fei
##############################################################
while read line 
do
	#echo $line 
 echo -e  "\033[44;36m scp -r /tmp/abc  root@ $line:/tmp \033[0m" 
done </tmp/1.txt
