#! /bin/bash

# ------------------------------------------------------------------------
# EXERCISE-1
# Create a script that checks if a number is divisible by either 2, 3 or 5.
# ------------------------------------------------------------------------
divisibleBy(){
    local choice=$1
    local dividedBy=(2 3 5)

    for num in "${dividedBy[@]}"
    # could also use for num in {2,3,5}
    do
        if [ $(( $choice%num )) -eq 0 ]; then
        echo "Your number is divisible by ${num}!"
        fi
    done
}

# read -p "Please choose a number " number
# divisibleBy number

# ------------------------------------------------------------------------
# EXERCISE-2
# Create a script that counts the number of ".txt" files inside your present working directory.
# ------------------------------------------------------------------------
countTxt(){
    local count=0
    for file in ./*.txt
    do
        (( count=count+1 ))
    done

    echo "You have ${count} .txt files in this directory!"

}
# countTxt

# ------------------------------------------------------------------------
# EXERCISE-3
# In this exercise after creating some .txt and .jpg files,
# we will let the user choose either the .jpg or the .txt files,
# and rename all these files.

# -Create any number of different .txt files and .jpg files.
# -Let the user choose either the .jpg or the .txt files and
# keep asking until the user press either "j" or "t".
#
# -Let the user choose a Prefix to add to the name of all the selected files
# (all the .jpg or all the .txt files).
# -Rename all the selected files adding this prefix to their name.
# ------------------------------------------------------------------------
renameFiles(){
    prefix=$1
    type=$2

    echo "Files before change: "
    ls | grep "$type"

    for file in *"$type"
    do
        local newFile="${prefix}${file}"
        mv "${file}" "${newFile}"
    done

    echo "Files after change: "
    ls | grep "$type"
}

changePrefix(){
    read -p "Would you like to rename .jpg (j) or .txt (t) files? " choice
    case "$choice" in
        j | J)
        read -p "Please type a prefix to rename these files " prefix
        renameFiles "$prefix" ".jpg"
        ;;
        t | T)
        read -p "Please type a prefix to rename these files " prefix
        renameFiles "$prefix" ".txt"
        ;;
        *) changePrefix
        ;;
    esac
}
changePrefix
