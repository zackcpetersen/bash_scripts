#! /bin/bash

myFunction(){
    # -------------------------------------------
    # local variables should almost always be used
    # -------------------------------------------

    local var1="Eggs"
    var2="Salad"

    echo "---------- Inside the function ----------"
    echo "var1 (local): $var1"
    echo "var2 (global): $var2"
}

echo "Start the program"

myFunction

echo "---------- Outside the function ----------"
echo "var1: $var1"
echo "var2: $var2"
