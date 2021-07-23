#!/bin/sh

path=$1
output_dir=$2
file_name=$(echo $3 | sed 's/\.gz//g')

zcat ${path}${file_name} | grep -v "<\.>" > ${output_dir}${file_name}
