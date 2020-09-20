#!/bin/bash
mkdir -p IMAGES && find -regex ^\.\/[0-9]+-[0-9]+\/.+\.jpg$ -exec cp --parents {} IMAGES ';'
mkdir -p DATA_ANALYSIS && find -regex ^\.\/[0-9]+-[0-9]+\/.+$ ! -name "*.jpg" -exec cp --parents {} DATA_ANALYSIS ';'
