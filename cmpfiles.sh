#!/bin/bash

#Compares files using cmp in TempData and Xrays_broken and prints the names of the files that are identical.

for FILE in TempData/*;  do
	for FILE2 in Xrays_broken/*; do
		if cmp -s $FILE $FILE2; then
		 	printf "\t%s and %s is the same file\n" $FILE $FILE2 
		 	break
		 fi 
	done;
done
