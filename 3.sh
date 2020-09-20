#!/bin/bash
find -type f -regex ^\.\/[0-9]+-[0-9]+\/.*note.*$ -execdir mv {} notes.txt ';'
