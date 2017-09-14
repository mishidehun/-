#!/bin/bash
##############################################################
# File Name: numu+.sh
# Version: V1.0
# Author: Zhao Yu Heng
# Organization: www.oldboyedu.com 
# Created Time : 2017-08-26 20:25:45
# Description:Yan Fei
##############################################################
j=0
for ((i=1;i<=100;i++))
do
	j=`expr $i + $j`
done
echo $j
