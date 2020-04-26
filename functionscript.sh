#! /bin/bash

myDate(){
    echo "today is: "
    date
    echo "have a GREAT day!"
}

hello2(){
    echo "hello $1"
    echo "also hello $2"
    return 35
}

echo "start here"
myDate
echo "return value of my funtion is $?"

echo "---------------------------------------"
hello2 "Zack" "Yo Mamma"

echo "return value of my funtion is $?"

echo "moving on!"
