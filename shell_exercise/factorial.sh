#!/bin/bash

cat<<INFO
calculate 1*2*....*n
INFO

read -p "Please intput:" num

declare -i factorial=1

for i in `seq 1 $[$num]`
do
	factorial=$[$factorial * $[$i]]
done 

echo $factorial
