#!/bin/bash -x
read -p "Enter n: " number;
index=0;
while (( $number%2==0 ))
   do
       arrayOfPrimeFactor[index]=2;
       number=$(( $number / 2));
       ((index++));
   done
for (( j=3; $j<=$number; j=$j+2 ))
     do
         while (( $number%$j==0 ))
           do
               arrayOfPrimeFactor[index]=$j;
               number=$(( $number / $j));
               ((index++));
           done
     done
if [ $number -gt 2 ]
then
    arrayOfPrimeFactor[index]=$number;
fi
echo Prime Factor is ${arrayOfPrimeFactor[@]};
