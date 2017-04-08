#!/bin/bash

cat<<INFO
calculate the product by shift of the args
INFO

result=1
while [ $# -gt 0 ]
do
	result=`expr $result \* $1`
	shift
done
echo $result
	
