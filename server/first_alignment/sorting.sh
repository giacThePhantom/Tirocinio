#!/bin/sh
file=$1
output_dir=$2
prefix_path=$3
fastq_dir=$4
threads=$5

#---------Creare il directory tree-------------#
remove_extension=$(echo $1 | sed 's/Aligned\.out\.sam//g')
file_path_and_name=$(echo $remove_extension | sed 's/\_/\//g')
path="$output_dir$(echo $file_path_and_name | sed 's/\/rep[0-9]//g')"
name="$file_path_and_name"

#-------Esecuzione di STAR--------------------#

samtools sort -o $name.bam -@ $threads $1

echo $name.bam >> ${output_dir}sorted.log
