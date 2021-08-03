#! /bin/bash
nowDate=$(date +"%Y-%m-%d")
nowTime=$(date +"%T")
users=$(who | cut -d " " -f1)
terminal=0
login=0
for u in $users
do
	echo "$nowDate","$nowTime user:" $u
done
