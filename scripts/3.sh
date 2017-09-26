#!/bin/bash
# passing arguments

echo "Number of arguments passed: $#"
echo "Script name: $0"

echo "$1 has been copied to $2"
cp $1 $2
ls
