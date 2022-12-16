#!/bin/sh
# Storing information from user input
writefile=$1
writestr=$2

set -e 

if [ $# -eq 0 ]; then
        echo "Parametrs where not specified."
        exit 1
fi
if [ -z "$2" ]; then
 echo "Parametrs where not specified"
 exit 1
fi

#mkdir -p "$(dirname "$writefile")" || exit 1 && touch $writefile || exit 1; echo "$writestr" > $writefile

mkdir -p "$(dirname "$writefile")" || exit 1
touch "$writefile" || exit 1
echo "$writestr" > $writefile



