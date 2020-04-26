#! /bin/bash

# Condition to check if a file EXISTS

myfile=createscript.sh
if [ -e $myfile ]; then
    echo 'you don did it'
fi

if [ ! -e $myfile ]; then
    echo 'it aint there'
fi

# -e looks for file
# -d looks for directory
# -r looks if file is readable
# -w looks if file is writable
# -x looks if file is executable
# -s looks if file is NOT empty
# -f looks if file is a regular file (example -- a directory not a file)
