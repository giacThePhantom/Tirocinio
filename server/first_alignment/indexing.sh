#!/bin/sh
file=$1
output_dir=$2
prefix_path=$3
fastq_dir=$4
threads=$5

#-------Esecuzione di indexing--------------------#

samtools index -@ $threads $file
