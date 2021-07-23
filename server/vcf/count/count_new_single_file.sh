#!/bin/sh

file=$1
output_dir=$2
output_file="count_all.txt"

echo "$file in $output_dir"

wc -l $file | sed 's/.*/"$file": &/g'>> ${output_dir}${output_file}
