#!/bin/bash
##############################################################
# File Name: num1.sh
# Version: V1.0
# Author: Zhao Yu Heng
# Organization: www.oldboyedu.com 
# Created Time : 2017-08-26 13:50:08
# Description:Yan Fei
##############################################################
for i in `seq 1 10`
 do	
	    read -p "请输入你的数字" a
		echo -e  "\033[$a;35mthis is numu $i\033[0m"
	done
