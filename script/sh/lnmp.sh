#!/bin/bash
##############################################################
# File Name: lnmp.sh
# Version: V1.0
# Author: Zhao Yu Heng
# Organization: www.oldboyedu.com 
# Created Time : 2017-09-07 09:55:43
# Description:Yan Fei
##############################################################

#检查软件下载目录是否存在
installdir=/server/tools 
[ -d  $installdir    ] &&  true  || mkdir $installdir -p                                                          
#检查软件虚拟用户是否存在
user_www=`grep -o ^www /etc/passwd`  
[ -z $user_www  ]  &&  true || useradd -M -s /sbin/nologin -u 678 www  #添加用户
 #设置安装列表
echo "[1] 安装ningx"
echo "[2] 安装php"
echo "[3] 安装mysql"
read -p "type:" num
 
 #安装nginx
 nginxdir= http://116.196.72.35/tools/nginx/nginx-1.10.3.tar.gz  #nginx 下载目录
 nginx-dir=/application/nginx-1.10.3/      #nginx 编译目录
 nginx-ln=/application/nginx               #nginx 软连接
 nginx-command=/usr/local/bin              #nginx 命令链接         
 
 if [ $num = 1 ]
 then 
 
	  yum install opensll-devel pcre-devel -y 
 cd $installdir                          
#下载nginx-1.10.3 解压并进入解压目录
      wget $nginxdir && tar xf nginx-1.10.3.tar.gz && cd nginx-1.10.3

# 进行编译
	  ./configure  --prefix=$nginx-dir --user=www --group=www --with-http_stub_status_module --with-http_ssl_module  --with-pcre  

	 [ $? -eq 0 ]  &&  make && make install  || echo "编译失败，请检查!!!"

ln -s $nginx-dir   $nginx-ln                  # 创建目录软连接
ln -s $nginx-ln/sbin/nginx  $nginx-command    # 创建命令软连接

echo $nginx-dir/sbin/nginx >> /etc/rc.d/rc.local  #开机自启动


$nginx-dir/sbin/nginx                             #启动nginx

else 
     echo "usage:[1|2|3]"
	 sleep 1
	 exit 
 fi






