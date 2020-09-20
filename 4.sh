#!/bin/bash
# Assume current directory (.) is assignment-data
# Use --strip-trailing-cr for compatibility 
# between different new line characters
# -q, --brief: report only when files differ
# -r, --recursive: recursively compare any subdirectories found

# The command is below:
# diff -qr --strip-trailing-cr . <path/to/folder/to/compare/against>

# For example:
diff -qr --strip-trailing-cr . ../assignment2-data/assignment-data/

# Example output:
# $ diff -qr --strip-trailing-cr . ../assignment2-data/assignment-data/
# Only in .: .git
# Only in .: 1.sh
# Only in .: 2.sh
# Only in ./20180204-01: notes.txt
# Only in ../assignment2-data/assignment-data/20180204-01: notes20180204.txt
# Only in ../assignment2-data/assignment-data/20180220-01: labnotes.ext
# Only in ./20180220-01: notes.txt
# Only in ./20180310-01: notes.txt
# Only in ../assignment2-data/assignment-data/20180310-01: notes20180310-01.txt
# Only in ./20180310-02: notes.txt
# Only in ../assignment2-data/assignment-data/20180310-02: noteslab.txt
# Only in .: 20180511-01
# Only in .: 3.sh
# Only in .: 4.sh
# Only in .: DATA_ANALYSIS
# Only in .: IMAGES
