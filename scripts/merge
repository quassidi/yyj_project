#!/bin/bash
#merge files with date 
for i in `find . -name "*.log" -type f`; do
    ls $i | xargs -I{} awk '{print "{}", $0}' $i
done