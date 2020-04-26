#!/usr/bin/env bash

number1=20
number2=10

echo " SUM $(( number1+number2 )) "
echo " PRODUCT $(( number1*number2 )) "
echo " DIVISION $(( number2/number1 )) "
echo " REMAINDER $(( number2%number1 )) "
echo " POWER $(( number1**number2 )) "

echo "---------------------------------"
echo "INCREASE A VARIABLE"

echo " $(( number1++ ))"
echo "variable is now $number1"

echo " $(( --number1 ))"

echo "---------------------------------"
echo "SHORT WAY OF OPERATING ON A VARIABLE"

echo "variable is $number2"
number2=$((number2 +3))
echo "value= $number2"

echo "ADD: $(( number2+=3 ))"
