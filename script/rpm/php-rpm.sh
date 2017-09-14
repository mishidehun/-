#!/bin/bash
##############################################################
# File Name: php-rpm.sh
# Version: V1.0
# Author: Zhao Yu Heng
# Organization: www.oldboyedu.com 
# Created Time : 2017-08-28 19:50:29
# Description:Yan Fei
##############################################################
#useradd www
useradd -M -s /sbin/nologin -u 666 www
  # ln -s /php
    ln -s /application/php-5.5.32/ /application/php
	 ln -s /application/php-5.5.32/sbin/php-fpm  /usr/local/bin/
	 #chown www
	  chown -R www.www  /application/php-5.5.32/
	   # start nginx  php-fpm 
	   /application/php-5.5.32/sbin/php-fpm
	   # kaiji
	   echo "/application/php-5.5.32/sbin/php-fpm" >> /etc/rc.d/rc.local


