#!/bin/bash -x

index=0;
for (( i=1; i<100; i++ ))
do
     number=$i;
     remainder=$(($number%10));
     number=$(($number/10));
     if [ $number -eq $remainder ]
     then
         arr[index]=$i;
          ((index++));
     fi
done
echo Number with repeated digits are : ${arr[@]}
