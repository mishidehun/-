#!/bin/bash

cat<<INFO
extract the user of /etc/passwd
INFO

users=`cut -d ':' -f 1 /etc/passwd`
echo $users

for user in $users
do
declare -i num=$num+1
echo "$num $user"
done



