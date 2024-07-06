#!/bin/bash

read -p "Press first number " add
read -p "Press second number" add2
sum=$(expr $add + $add2)
echo $sum
