#! /bin/bash

mkdir ~/Desktop/scripts/found-files/

for myFile in *;
do
    if [ -f "$myFile" ]; then
        echo "$myFile"
        check=$(grep -ni "echo" "$myFile")
        if [ -z "$check" ]; then
            echo "EMPTY"
        else
            echo "FOUND!"
            cp "$myFile" ~/Desktop/scripts/found-files/
            echo "  " >> ~/Desktop/scripts/found-files/"$myFile"
            echo "******" >> ~/Desktop/scripts/found-files/"$myFile"
            echo "$check" >> ~/Desktop/scripts/found-files/"$myFile"
        fi
    else
        echo "${myFile} is NOT a file"
    fi
    echo ".......DONE......."
    echo " "
done
