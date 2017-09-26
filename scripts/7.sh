#!/bin/bash
# simple while

c=1

while [ $c -le 10 ]
do
  echo $c
  ((c++))
done
