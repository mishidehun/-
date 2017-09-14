#!/bin/bash
##############################################################
# File Name: log.sh
# Version: V1.0
# Author: Zhao Yu Heng
# Organization: www.oldboyedu.com 
# Created Time : 2017-08-26 20:33:03
# Description:Yan Fei
##############################################################
cd /server/script/for
#for i  in $(find . -name "*.sh" ) 
for i  in $(find . -name "*.gz" ) 
do
#	tar -zcf $i$(date +%F-%T).tar.gz $i
    tar xf $i -C /server/script/for/check
 done
