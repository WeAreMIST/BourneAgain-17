#!/bin/bash

declare -A matrix
row=63
col=100

declare -a base
base[0]=49

for ((i=0;i<row;i++)) do
    for ((j=0;j<col;j++)) do
        matrix["$i","$j"]='_'
    done
done

len=16
n=$1
j="$((row-1))"
m="$j"
z=1
for ((i=0;i<n;i++)) do
    elems=${#base[@]}
    for ((p=$(($z-1));p<$elems;p++)) do
        #trunk
        for ((k=len;k>0;k--)) do
            matrix["$j","${base[p]}"]='1'
            ((j--))
        done
        #branches
        for ((k=1;k<=len;k++)) do
            matrix["$j","$((${base[p]}-$k))"]='1'
            matrix["$j","$((${base[p]}+$k))"]='1'
            ((j--))
        done
    base=("${base[@]}" "$((${base[p]}-$k+1))" "$((${base[p]}+$k-1))")
    if [ $(($p+1)) -ne $elems ]; then
        j=$(($j+$len+$len))
    fi
    done
    len=$((len/2))
    z=$(($z+$z))
done

#print the matrix
for ((i=0;i<row;i++)) do
    for ((j=0;j<col;j++)) do
        echo -n ${matrix["$i","$j"]}
    done
    echo 
done
