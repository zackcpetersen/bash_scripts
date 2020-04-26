#! /bin/bash

read -p "What would you like to name your script (without an extension)? " scriptname

touch ~/Desktop/scripts/$scriptname.sh

echo "#! /bin/bash" >> ~/Desktop/scripts/$scriptname.sh

chmod +x ~/Desktop/scripts/$scriptname.sh

atom ~/Desktop/scripts/$scriptname.sh
