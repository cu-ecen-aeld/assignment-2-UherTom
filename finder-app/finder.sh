#!/bin/sh
if [ -d "$1" ];
then
	echo "Let's go."
else
	echo "$1 is not a directory"
	exit 1
fi
if [ $# -eq 0 ]; then
	echo "Parametrs where not specified."
	exit 1
fi
if [ -z "$2" ]; then
  echo "Parametrs where not specified"
  exit 1
fi

filesdir=$1
searchstr=$2

filescomp="grep -rw $filesdir -e $searchstr | wc -l"
filescomp2="grep -rw $filesdir -le $searchstr | wc -l"

eval "$filescomp2"
eval "$filescomp"

numberoflines=$(eval "$filescomp")
numberoffiles=$(eval "$filescomp2")

echo "The number of files are $numberoffiles and the number of matching lines are $numberoflines."

