#!/bin/bash
##############################################################
# File Name: logqie.sh
# Version: V1.0
# Author: Zhao Yu Heng
# Organization: www.oldboyedu.com 
# Created Time : 2017-09-03 23:54:34
# Description:Yan Fei
##############################################################

function e_df()
{
	[ -f $1 ] && rm  -rf $1 
}
for i in `seq 5 -1 2`
do
	i2=$[$i-1]
	e_df /data/1.log.$i
	if [ -f /data/1.log.$i2 ]
	then 
		mv /data/1.log.$i2 /data/1.log.$i 
	fi
doen
e_df /data/1.log.1
mv /data/1.log /data/1.log.1
