#! /bin/bash
h=$(date +"%H")
if(($h<12))
then 
echo good Morning!
elif(($h<18))
then
echo good Afternoon!
else
echo good Evening!
fi

