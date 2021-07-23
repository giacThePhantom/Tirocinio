#!/bin/sh

file=$1
output_file=$2
ext="${file##*.}"

case "$ext" in
    gz) zcat $file | grep -v "^#" | wc -l | sed "s@.*@$file: &@g" >> ${output_file} ;;
    vcf) grep -v "^#" $file | wc -l | sed "s@.*@$file: &@g" >> ${output_file} ;;
esac
