#!/bin/bash

#calculate 1+2+...+n

read -p "Please intput the number:" num

######## style1 ###############
if false; then
n=$(($num))

i=0
s=0

while [ $i -le $n ]
do
	s=$[$s + $i]
	i=$[$i + 1]
done

echo "The style1 result of '0+...+ ${num}' is $s"
fi
######### style1 end ###########

######### style2 ###############
if false; then
i=0
s=0

while [ "$i" != "$num" ]
do
	i=$[$i + 1]
	s=$[$s + $i]
done

echo "The style2 result of '0+...+ ${num}' is $s"
fi
######### style2 end #############

########### style3 ###############
i=0
s=0

for i in `seq 0 $[$num]`
do
	s=$[$s + $i]
done
echo "The style3 result of '0+...+ ${num}' is $s"

