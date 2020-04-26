#! /bin/bash

read -p "What is your name? " yourname
echo "Hello, $yourname! Nice to meet you"

echo "What is the path of the file you want to open?"
read filepath
open $filepath

# here is a comment!
# it doesn't do anything!
