#!/bin/bash
spinner=(Ooooo oOooo ooOoo oooOo ooooO)
spinner2=('|' '/' '-' '\')
copy(){
   spin&
   pid=$!
   for i in `seq 1 10`
   do
	   sleep 1
   done
   kill $pid
   echo ""

}

spin(){
     while [ 1 ]
     do

	for i in "${spinner[@]}"
	do 
		echo -ne "\r$i"
		sleep 0.2
	done
     done
}

copy

