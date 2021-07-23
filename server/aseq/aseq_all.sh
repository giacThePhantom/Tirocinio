#!/bin/sh

#This script takes as input a regex of the directory containing all the bam files
#and calls a script to execute the pileup using aseq for all of the bam files found by the regex
#The second argument is the directory which will contain all the pileup results

[ -z $1 ] && echo "Missing regex to filter out bam files" && exit 1
[ -z $2 ] && echo "Missing suffix of directory" && exit 1



grep_regex=$1
output_dir_name=$2

../get_replicant.sh -p | grep "$grep_regex" | parallel --will-cite --jobs 3 ./aseq_for_chr.sh {} "$output_dir_name"
