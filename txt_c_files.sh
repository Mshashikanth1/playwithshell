#! /bin/bash

echo "enter the directory : "
read dir
if [ -d $dir ]
then
	cd $dir
        ls *.txt *.c
fi

