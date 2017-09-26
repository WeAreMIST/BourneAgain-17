#!/bin/bash
# prime or not

num=$1
i=2

if [ $num -lt 2 ]
then
  echo "Not prime"
  exit 0
elif [ $num -eq 2 ]
then
  echo "Prime"
  exit 0
fi

while [ $i -le $(($num/2)) ]
do
  if [ $(($num % i)) -eq 0 ]
  then
    echo "Not a prime"
    exit 0
  fi
  ((i++))
done

echo "Prime"
