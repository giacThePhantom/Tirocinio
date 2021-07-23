#!/bin/sh
#REGEX FOR A RECORD "^[0-9XM][0-9T]\?\s[0-9]\+\srs[0-9]\+\(\s[A-Z]\(,[A-Z]\)\+\?\)\+\s\.\s\."\
input_dir=$1
output_dir=$2
file=$3

grep "TSA=SNV" $input_dir$file > $output_dir$file
