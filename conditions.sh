#! /bin/bash

read -p "How old are you? " age

if [ $age -gt 100 ]; then
    echo "You old as fuck"
elif [[ $age -lt 100 && $age -gt 50 ]]; then
    echo "You ain't young, but you're still kicking"
else
    echo "You got some time still"
fi

echo "bye"



#---------------------------

# 3 -eq 3  		3 = 3
# 3 -ne 4		3 is not 4
# 3 -gt 1		3 > 1
# 3 -lt 7		3 < 7

# 3 -ge 3 		3 >= 3
# 3 -le 3 		3 <= 3

# -p allows to set a variable to the answer of a read question
