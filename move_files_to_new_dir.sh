#! /bin/bash
echo "enter the Exsisting direcctory :"
read dir
echo "enter the new directory :"
read ndir
if [ -d $dir ]
then
	mv $dir/* $ndir
	cd $ndir
        ls
fi

