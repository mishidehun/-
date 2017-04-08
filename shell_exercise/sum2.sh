#!/bin/bash

cat<<INFO
sum of the num seq in 1 100 which num%3 = 0
INFO

sum=0
for num in `seq 1 100`
do
	if [ `expr $num % 3` -ne 0 ];then
		continue
	fi
#	echo $num
	sum=`expr $sum + $num`
done
echo $sum
		

