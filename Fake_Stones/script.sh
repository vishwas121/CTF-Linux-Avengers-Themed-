#!/bin/bash
set -e
in="${1:-new.txt}"
 
[ ! -f "$in" ] && { echo "$0 - File $in not found."; exit 1; }
 
while IFS= read -r file
do
	cat $file
	echo "\n"
done < "${in}"