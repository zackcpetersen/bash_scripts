#!/usr/bin/env bash

echo "**************************************"
echo "\$0 gives absolute path of script"
echo "$0"
echo "This is ${1}"

echo "There are $# parameters!"

echo "Here are all the paramters: $@"

echo "**************************************"
echo "----------- \$@ -----------"
for i in "$@"; do
    echo "${i}"
done

echo "----------- \$* -----------"
for i in "$*"; do
    echo "${i}"
done

# "$@" IS DIFFERENT FROM "$*"
