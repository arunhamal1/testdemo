#!/bin/bash
read -p "Enter a number to check: " inp_number
pointer=2
counter=0
##to cut the loop in half##
##echo $a
echo $inp_number
if [ "$(( inp_number%2))" -eq 0 ]
then
    range=$((inp_number/2))
else
   range=$(((inp_number+1)/2))
fi
##to create a loop till b which is 2 at the start is not equal to half of "a"##
while [ "$range" -gt "$pointer" ]
    do
      ##to check if a is exactly divided by b or not while the value of b increase##
       if [ $((inp_number%pointer)) -eq 0 ]
       then
             counter=$((counter+1))
       fi
       pointer=$(( pointer+1 ))
done
 ## if prime counter is more than 1 then the number is not prime else it is prime
if [ "$counter" -gt 0 ]
   then
       echo "not prime"
   else
       echo "prime"
fi


