#!/bin/sh

file=$1
output_dir=$2
prefix_path=$3
fastq_dir=$4
threads=$5

#---------Creare il directory tree-------------#
remove_extension=$(echo $1 | sed 's/\.trimmed\.fastq\.gz//g')
file_path_and_name=$(echo $remove_extension | sed 's/\_/\//g')
path="$(echo $file_path_and_name | sed 's/\/rep[0-9]//g')"
name="$file_path_and_name"

#-------Esecuzione di STAR--------------------#
star_exec=$prefix_path"tools/star/STAR-master/bin/Linux_x86_64_static/STAR"
genome_ref=$prefix_path"tools/star/reference_genomes/GRCh38"
st_threads_flags="--runThreadN $threads"
st_genome_flags="--genomeDir $genome_ref --genomeLoad NoSharedMemory"
st_read_cmd="--readFilesCommand zcat"
st_input="--readFilesIn $file"
st_output="--outFileNamePrefix $name"
st_flags="--outSAMstrandField intronMotif --outSAMunmapped None --outReadsUnmapped fastx --outFilterScoreMinOverLread 0.33 --outFilterMatchNminOverLread 0.33"

$star_exec $st_genome_flags $st_threads_flags $st_read_cmd $st_input $st_output $st_flags

echo "${name}Aligned.out.sam" >> ${output_dir}aligned.log
