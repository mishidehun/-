#!/bin/bash

#intput your birthday and calculate the rest of the day

read -p "Please intput your birthday[MMDD eg:0915]:" bir
#echo $bir 
now=`date +%m%d`
#echo $now

if [ $bir = $now ];then
	echo "Happy birthday to you!"
elif [ $bir -gt $now ];then
	year=`date +%Y`
	echo "$Year"
	total_d=$(($((`date --date="$year$bir" +%s` - `date +%s`))/60/60/24))
	echo "Your birthday will be $total_d later"
else
	year=$((`date +%Y` +1))
	total_d=$(($((`date --date="$year$bir" +%s` - `date +%s`))/60/60/24))
	echo "Your birthday will be $total_d later"
fi
	

