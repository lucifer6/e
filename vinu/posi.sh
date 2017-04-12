#!/bin/bash
echo "Enter a string"
read str
echo "Enter the string to be searched"
read s
l=`echo $str |wc -w`
i=1
f=0
while [ $i -le $l ]
do
a=`echo $str -tr -s " "|cut -f  $i -d " "`
if [ $a = $s ]
then
echo "Position substring is $i"
f=1
fi
i=$(($i+1))
done
if [ $f -eq 0 ]
then
echo "Word not exist"
fi
