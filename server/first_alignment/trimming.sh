#!/bin/sh
#Script per trimmare ed allineare un fastq in input

file=$1
output_dir=$2
prefix_path=$3
fastq_dir=$4
threads=$5

#---------Creare il directory tree-------------#
remove_extension=$(echo $1 | sed 's/\.fastq\.gz//g')
file_path_and_name=$(echo $remove_extension | sed 's/\_/\//g')
path="$output_dir$(echo $file_path_and_name | sed 's/\/rep[0-9]//g')"
name="$output_dir$file_path_and_name"

mkdir -p $path

#--------Esecuzione di trimmomatic------------#
trimmomatic_exec=$prefix_path"tools/Trimmomatic-0.39/trimmomatic-0.39.jar"
illumina_clip=$prefix_path"tools/Trimmomatic-0.39/adapters/TruSeq3-SE.fa:2:30:10"
trimlog="-trimlog ${name}.trimmomatic.log"
tr_input="$fastq_dir$file"
tr_output="${name}.trimmed.fastq.gz"
tr_steps="LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36"
tr_flags="SE -threads $threads -phred33"
java -jar $trimmomatic_exec $tr_flags $trimlog $tr_input $tr_output ILLUMINACLIP:$illumina_clip $tr_steps

echo "$tr_output" >> ${output_dir}trimmed.log
