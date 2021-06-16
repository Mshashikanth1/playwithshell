#! /bin/sh

#funtion for cheking even or odd
#even funtion needs a number 
evenORodd(){
	echo "$1"
	if [ $(( $1%2 )) -eq 0 ]
	then
	    echo "even number!"
        else
    		echo "odd number!"		
	fi
  }

primeORcomposite(){
	echo "enterd number is : $1"
	fact=0
	it=$(( $i%2 ))
	for i in {2..$it}
	do
		if [ $(( $1%i )) -eq 0 ]
		then 
			fact+=1
		fi

		if[ fact -gt 0 ]
		then
			break
		
	done
	if [ fact -gt 0 ]
	then 
		echo "prime"
	else
		echo "conposite"
	fi
	}

echo " ______________________________________"
echo "|choose one:                           |" 
echo "|           1.checking even            |"
echo "|           2.checking prime           |"
echo " ______________________________________"

read option

case $option in 
	1)
		echo "enter a number:"
		read num
		evenORodd $num
		;;
	2)
		echo "enter a number:"
		read num
		primeORcomposite $num
		;;
	*)
		echo "unknown"
		;;
esac

