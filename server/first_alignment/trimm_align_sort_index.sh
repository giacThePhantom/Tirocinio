#!/bin/sh

prefix_path="/GROUPS/sharedRL/tirocinanti/"

script_path="${prefix_path}giacomo/scripts/"


fastq_dir=$prefix_path"giacomo/fastq/"

output_dir=$prefix_path"giacomo/output/alignment/"


#Creare cartella output se non esiste

mkdir -p $output_dir

#--------TRIMMING--------#

tr_istances="4"
tr_threads="5"
ls $fastq_dir | parallel --will-cite --jobs $tr_istances ./trimming.sh {} $output_dir $prefix_path $fastq_dir $tr_threads



#-------STAR----------#

st_istances="4"
st_threads="5"

parallel -a ${output_dir}trimmed.log --will-cite --jobs $st_istances ./star.sh {} $output_dir $prefix_path $fastq_dir $st_threads


#-----SAMTOOLS-------#

sam_istances="4"
sam_threads="5"

	#-----Sorting--------#

	parallel -a ${output_dir}aligned.log --will-cite --jobs $sam_istances ./sorting.sh {} $output_dir $prefix_path $fastq_dir $sam_threads


	#----Indexing-------#

	parallel -a ${output_dir}sorted.log --will-cite --jobs $sam_istances ./indexing.sh {} $output_dir $prefix_path $fastq_dir $sam_threads

mv ${output_dir}trimmed.log $script_path
mv ${output_dir}aligned.log $script_path
mv ${output_dir}sorted.log $script_path
