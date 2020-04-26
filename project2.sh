#! /bin/bash

findText(){
    local search="$1"
    # ------------------------------------------------------
    # check to see if directory exists - create it if not
    # ------------------------------------------------------
    if [ $(find ~/Desktop/scripts/found-files -type d) ]; then
        echo "Found files will be put in ~/Desktop/scripts/found-files"
    else
        mkdir ~/Desktop/scripts/found-files
        echo "Created: ~/Desktop/scripts/found-files for files"
    fi

    for i in $( find . -type d );
    do
        if [ "$i" != "./found-files" ]; then

            # echo "This folder is: ${i}"
            for myFile in $i/* ;
            do
                if [ -f "${myFile}" ]; then
                    local name_file=$(basename "$myFile")
                    local check=$(grep -ni "$search" "$myFile")
                    if [ ! -z "$check" ]; then
                        echo "FOUND! ${search} in: ${name_file}"
                        echo "**********************************"

                        cp "$myFile" ~/Desktop/scripts/found-files/"${name_file}"
                        echo "  " >> ~/Desktop/scripts/found-files/"${name_file}"
                        echo "******" >> ~/Desktop/scripts/found-files/"${name_file}"
                        echo "$check" >> ~/Desktop/scripts/found-files/"${name_file}"
                    fi
                fi
            done
        fi
    done
    if [ "$(ls -A ~/Desktop/scripts/found-files/)" ]; then
        open ~/Desktop/scripts/found-files/
    else
        echo "Nothing was found :("
    fi
}

read -p "What do you want to search for in the files? " search
findText "$search"
