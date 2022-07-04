#!/bin/bash
declare -a arr

arr=(1 -3 2 4 -5)
sizeOfArray=${#arr[@]}
flag=0
for (( index=0; index<$(($sizeOfArray-2)); index++ ))
do
   for (( index2=$(($index+1)); index2<$(($sizeOfArray-1)); index2++ ))
   do
      for (( index3=$(($index2+1)); index3<$sizeOfArray; index3++ ))
      do
          ans=$(( ${arr[index]} + ${arr[index2]} ));
          if [  $(( $ans + ${arr[index3]} ))  -eq 0 ]
          then
               echo triplet are : \ [ ${arr[index]},${arr[index2]},${arr[index3]} ];
               flag=1;
          fi
      done
    done
done
if [ $flag -eq 0 ]
then
     echo No any Triplates found;
fi
