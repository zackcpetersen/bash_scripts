#! /bin/bash

mkdir ~/Desktop/Exercises/
touch ~/Desktop/Exercises/1.txt ~/Desktop/Exercises/2.txt

ls -l > ~/Desktop/Exercises/1.txt

read -p "What would you like to name your file? " filename
mv ~/Desktop/Exercises/1.txt ~/Desktop/Exercises/$filename.txt

open ~/Desktop/Exercises/$filename.txt
