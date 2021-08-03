#! /bin/bash
echo "enter a filename :"
read filename
terminal='tty'
exec <$filename
now=0
nol=0
while read line
do 
	nol='expr $now +$#'
	set $line
done
echo "number of words: $now"
