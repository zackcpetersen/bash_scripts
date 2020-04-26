#! /bin/bash

echo "select an option..."
echo "type 1 to do A"
echo "type 2 to do B"
echo "type 3 to do C"
echo "type hello to do D"
read choice

case $choice in
    1)
    echo "You chose A";;
    2)
    echo "You chose B";;
    3)
    echo "You chose C";;
    "hello")
    echo "You chose D";;
    *".txt")
    echo "this is a txt file";;
    1[2-8])
    echo "you typed a number between 12-18";;
    [0-9])
    echo "you typed a number";;
    [a-z] | [A-Z])
    echo "You typed a letter";;
    *)
    echo "None of the above"
esac
