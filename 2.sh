#!/bin/bash
# Find all folders of the specified naming scheme (YYYYMMDD-0X)
# Pipe it to while loop to read the results
find -type d -regex ^\.\/[0-9]+-[0-9]+ -print0 | while IFS= read -r -d '' line;
do
	# Check any file that globs with *note*
	if ls "$line"/*note* 1> /dev/null 2>&1; then
		# echo "$line"/*note* "exists"
		:
	else
		echo "$line" "is missing a note file"
	fi

	# Check any file that has basename info.csv
	if ls "$line"/*.csv 1> /dev/null 2>&1; then
		# echo "$line"/*.csv "exists"
		:
	else
		echo "$line" "is missing a demographic spreadsheet (*.csv)"
	fi
done

# Example output:
# $ ./2.sh
# ./20180220-01 is missing a demographic spreadsheet (*.csv)
# ./20180310-02 is missing a demographic spreadsheet (*.csv)
# ./20180405-01 is missing a note file
# ./20180511-01 is missing a demographic spreadsheet (*.csv)
