#!/bin/bash
#echo -n " Enter the guess value that how many files under this directory :"

while true
do
	echo -n " Please guess the number of files in the current directory :"
read n
x=0
for i in *;
do
if [ ! -x $i ]
then
if [ -f $i ]
then
	x=`expr $x + 1`
fi
fi
done
if [ $n == $x ]
then
	echo " Your guess is correct "
	echo " Congratulations "
	break
else
	clear 
	echo  -e "Your guess is wrong please try again \n "
	
fi
done
