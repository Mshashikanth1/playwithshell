#! /bin/sh

#funtion for cheking even or odd
#even funtion needs a number 
basicarthematic(){
        echo$(($1$2$3))
	
	return $(($1$2$3))


}
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
	for ((i=2;i<$1/2;i++))
	do
		if [ $(($1%2)) -eq 0 ]
		then
		    fact=$fact+1
		fi
	done
	if [ $fact -eq 0  ]
	then
		echo "Prime number"
	else
		echo "composite number"
	fi
}

factorial(){
	echo "entered number is : $1"
	fact=1
	for ((i=1;i<=$1;i++))
	do
		fact=$(($fact*$i))
	done
	echo $fact
}

pyramid(){
	echo "entered number is :$1"
	for((i=0;i<$1;i++))
	do
		for ((j=0;j<=$i;j++))
		do
			echo -n "*"
		done
		echo 
	done

}

squareroot(){
	  num=$1
	  echo $(echo "$num" | awk '{print sqrt($1)}')
}


echo " ______________________________________"
echo "|MENU  :    0.basicarthematic          |" 
echo "|           1.checking even            |"
echo "|           2.checking prime           |"
echo "|           3.factorial                |"
echo "|           4.pyramid                  |"
echo "|           5.squareroot               |"
echo "|           6.swap                     |"
echo "|           7.area of triangle         |"
echo "|           8.area of rectangle        |"
echo "|______________________________________|"

echo "choose an option :"
read option

case $option in

	1)
		echo "enter a number:"
		read num
		evenORodd $num
		;;
	0)
		echo "enter A,opp,B:"
		     read a b c
		     basicarthematic $a $b $c
		     ;;
	2)
		echo "enter a number:"
		read num
		primeORcomposite $num
		;;
	3)
		echo "enter a number:"
		read num
		factorial $num
		;;
	4)
		echo "enter a number:"
		read num
		pyramid $num
		;;
	5)
		echo "enter a number:"
		read num
		squareroot $num
		;;
	6) 
		echo "enter two numbers:"
		read a b
		c=$a
		a=$b
		b=$c
		echo $a $b
		;;
	7)
		echo "enter height and base:"
		read h b
		c=$((basicarthematic $h * $b))
		echo $((0.5*c))
		;;
	8)
		echo "enter length and breadth:"
		read l b
		echo $basicarthematic $l * $b
		;;
	*)
		echo "unknown"
		;;
esac

