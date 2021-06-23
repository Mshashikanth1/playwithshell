#!/bin/bash

#this script will perform an easy animations we obsorve heare and there


s1=(Ooooo oOooo ooOoo oooOo ooooO)
s2=('|' '/' '-' '\')
s3=( '>_' './' )
s4=( '*' ' ' )
s5=('SHASHIKANTH' 'MALLEPALLI ')
s6=( '+' '-' '*' '%' '/' )

copy(){
   ani&
   pid=$!
   for i in `seq 1 10`
   do
	   sleep 1
   done
   kill $pid
   echo ""

}

ani(){
     while [ 1 ]
     do

	for i in "${s3[@]}"
	do 
		echo -ne "\r$i"
		sleep 0.2
	done
     done
}

copy

