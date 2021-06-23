#!/bin/bash
#this programme displays the version of bash currnently run

ani(){
   echo -ne "cheking version" 
   i=0
   while ((i<=10))
   do
	  echo -ne "."

	  i=$i+1
	  sleep 0.2
   done 

}
getversion(){
	v=$(bash --version | grep 'GNU bash' | awk '{print substr($4,1,1)}')
	echo ""
	echo  $v

}

ani
getversion
