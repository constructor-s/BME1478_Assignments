#!/bin/bash
find -type d -regex ^\.\/[0-9]+-[0-9]+ -print0 | while IFS= read -r -d '' line;
do
	if ls "$line"/*note* 1> /dev/null 2>&1; then
		# echo "$line"/*note* "exists"
		:
	else
		echo "$line" "is missing a note file"
	fi

	if ls "$line""/info.csv" 1> /dev/null 2>&1; then
		# echo "$line""/info.csv" "exists"
		:
	else
		echo "$line" "is missing a demographic spreadsheet (info.csv)"
	fi
done
