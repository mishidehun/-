#!/bin/bash

<<INFO
uncompress the file by the suffix
INFO


case ${1##*.} in
	gz)
	echo "tar -zxvf $1"
	tar -zxvf $1
	;;
	zip)
	echo "unzip $1"
	unzip $1
	;;
	bz2)
	echo "tar -jxvf $1"
	tar -jxvf $1
	;;
	*)
	echo "wrong file type"
esac
