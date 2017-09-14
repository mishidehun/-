#!/bin/bash
##############################################################
# File Name: rpm/nginx.sh
# Version: V1.0
# Author: Zhao Yu Heng
# Organization: www.oldboyedu.com 
# Created Time : 2017-09-04 17:24:44
# Description:Yan Fei
##############################################################
useradd -M -s /sbin/nologin  www
ln -s /application/nginx-1.10.3 /application/nginx
ln -s /application/nginx/sbin/nginx /usr/local/bin
chown -R www.www /application/nginx-1.10.3
echo "/application/nginx/sbin/nginx" >> /etc/rc.d/rc.local
/application/nginx/sbin/nginx
