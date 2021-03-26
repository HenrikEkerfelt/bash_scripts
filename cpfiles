#!/bin/bash

# Very specific example
# Extracts the numbers in files in the TempData directory, creates a new file in the Xrays directory with a specific name, keeping the numbering the same

for FILE in TempData/*;  do
	name=${FILE//[^0-9]/}
	newname=$(printf "Xrays/%04d_%s_Xrays.tif\n" 1 ${name: -4})
	printf "%s\n" $FILE
	printf "%s\n" $newname
	cp $FILE $newname
done
