#! /bin/bash

echo "some lines of code here"

for i in {1..100}
do
    if [ $i == 5 ]; then
        echo "haha"
        break
    fi
    echo "hello $i"
done

echo "we continue..."

# looping through files in current directory

for i in ./*
do
    echo "filename is: $i"
done

echo  "***************************************************"
echo "WHILE LOOPS"
number=1
while [ $number -le 100 ];
do
    echo "number is $number"
    number=$(( number + 2 ))
done
