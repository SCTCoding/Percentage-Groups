#! /bin/bash

if [[ -e "/var/db/.DeployGroup" ]]
then
  numberValue=$((1 + $RANDOM % 10000))
  
  if [[ $numberValue -eq 1 ]] || [[ $numberValue -lt 800 ]]
  then
    echo "1" > "/var/db/.DeployGroup"
  elif [[ $numberValue -eq 800 ]] || [[ $numberValue -lt 4000 ]]
  then
    echo "2" > "/var/db/.DeployGroup"
  elif [[ $numberValue -eq 4000 ]] || [[ $numberValue -le 10000 ]]
  then
    echo "3" > "/var/db/.DeployGroup"
  fi
  
  echo "<result>$(cat "/var/db/.DeployGroup")</result>"
else
  echo "<result>$(cat "/var/db/.DeployGroup")</result>"
fi

exit 0
