#!/bin/sh

polymorphism_path=$1
output_dir=$2
file=$3
gtf_file=$4
output_file=$(echo $file | sed 's/vcf$/intersected.&/g')

bedtools intersect -u -wa -a $polymorphism_path$file -b $gtf_file > $output_dir$output_file
