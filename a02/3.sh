#!/bin/bash
find -type f -regex ^\.\/[0-9]+-[0-9]+\/.*note.*$ -execdir mv {} notes.txt ';'
# uses execdir to execute within the directory of the file

# Result:
# $ ls */notes.txt
# 20180204-01/notes.txt  20180220-01/notes.txt  20180220-02/notes.txt  20180310-01/notes.txt  20180310-02/notes.txt  20180511-01/notes.txt
