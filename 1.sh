#!/bin/bash
# Make IMAGES directory if not exists (mkdir -p) and
# find .jpg files (-type f) within a folder of the specified naming scheme (YYYYMMDD-0X) 
# and copy these files to the IMAGES directory, preserving original directory structure (cp --parents)
mkdir -p IMAGES && find -type f -regex ^\.\/[0-9]+-[0-9]+\/.+\.jpg$ -exec cp --parents {} IMAGES ';'
# Same as above except adding ! -name "*.jpg" to exclude .jpg files
mkdir -p DATA_ANALYSIS && find -type f -regex ^\.\/[0-9]+-[0-9]+\/.+$ ! -name "*.jpg" -exec cp --parents {} DATA_ANALYSIS ';'

# Resulting directory tree:
#
# ASSIGNMENT-DATA\IMAGES
# +---20180204-01
# |       1.jpg
# |       2.jpg
# |
# +---20180220-01
# |       1.jpg
# |       2.jpg
# |       3.jpg
# |
# +---20180220-02
# |       1.jpg
# |       2.jpg
# |       3.jpg
# |
# +---20180310-01
# |       1.jpg
# |
# +---20180310-02
# |       1.jpg
# |       2.jpg
# |       3.jpg
# |
# +---20180405-01
# |       1.jpg
# |       2.jpg
# |
# \---20180511-01
#         1.jpg
#         2.jpg
#
#
# ASSIGNMENT-DATA\DATA_ANALYSIS
# +---20180204-01
# |       data01.eeg
# |       data02.eeg
# |       data03.eeg
# |       data04.eeg
# |       info.csv
# |       notes20180204.txt
# |
# +---20180220-01
# |       data01.eeg
# |       data02.eeg
# |       data03.eeg
# |       data04.eeg
# |       data05.eeg
# |       labnotes.ext
# |
# +---20180220-02
# |       data01.eeg
# |       data02.eeg
# |       data03.eeg
# |       info.csv
# |       notes.txt
# |
# +---20180310-01
# |       data01.eeg
# |       data02.eeg
# |       data03.eeg
# |       data04.eeg
# |       info.csv
# |       notes20180310-01.txt
# |
# +---20180310-02
# |       data01.eeg
# |       data02.eeg
# |       data03.eeg
# |       data04.eeg
# |       noteslab.txt
# |
# +---20180405-01
# |       data01.eeg
# |       data02.eeg
# |       data03.eeg
# |       data04.eeg
# |       info.csv
# |
# \---20180511-01
#         data01.eeg
#         data02.eeg
#         data03.eeg
#         data04.eeg
#         notes20180511-01
#         