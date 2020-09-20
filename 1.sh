#!/bin/bash
mkdir -p IMAGES && find -type f -regex ^\.\/[0-9]+-[0-9]+\/.+\.jpg$ -exec cp --parents {} IMAGES ';'
mkdir -p DATA_ANALYSIS && find -type f -regex ^\.\/[0-9]+-[0-9]+\/.+$ ! -name "*.jpg" -exec cp --parents {} DATA_ANALYSIS ';'
