#!/bin/bash
#this programme displays the version of bash currnently run

noclr='\033[0m'
grn='033[0;32m'  #hex codes for different colours
blu='033[0;34m'
ani(){
   echo -ne "${grn}cheking version" 
   i=0
   while ((i<=10))
   do
	  echo -ne "."

	  i=$i+1
	  sleep 0.2  # adding sllep
   done 

}
getversion(){
	v=$(bash --version | grep 'GNU bash' | awk '{print substr($4,1,1)}')
	echo ""
	echo -e "${blu}$v${noclr}"

   #-e is for changing color
   
}

ani
getversion
