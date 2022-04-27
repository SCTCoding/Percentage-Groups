#! /bin/bash

i=0

OneCount=0
TwoCount=0
ThreeCount=0

until [[ $i -eq 1000 ]]
do

  numberValue=$((1 + $RANDOM % 10000))
    
  if [[ $numberValue -eq 1 ]] || [[ $numberValue -lt 800 ]]
  then
    OneCount=$(( $OneCount + 1 ))
  elif [[ $numberValue -eq 800 ]] || [[ $numberValue -lt 4000 ]]
  then
    TwoCount=$(( $TwoCount + 1 ))
  elif [[ $numberValue -eq 4000 ]] || [[ $numberValue -le 10000 ]]
  then
    ThreeCount=$(( $ThreeCount + 1 ))
  fi

  i=$(( $i + 1 ))

done  

echo "Group 1 Count: ${OneCount}"
echo "Group 2 Count: ${TwoCount}"
echo "Group 3 Count: ${ThreeCount}"
echo "Total: $(( $OneCount + $TwoCount + $ThreeCount ))"


exit 0
