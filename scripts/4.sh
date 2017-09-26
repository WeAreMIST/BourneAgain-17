#!/bin/bash
# compiling and running a cpp file

echo "Compiling $1"
g++ "$1.cpp" -o $1

echo "Running $1"
./$1
rm $1
