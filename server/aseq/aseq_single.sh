#!/bin/sh

#This script executes aseq with a vcf file

prefix_path="/GROUPS/sharedRL/tirocinanti/"
vcf_file=$1
bam_file=$2
output_dir=$3
th=10
mbq="20"
mrq="20"



aseq_exec=$prefix_path"tools/aseq/bin/linux64/ASEQ"
vcf_flag="vcf=$vcf_file"
bam_flag="bam=$bam_file"
threads_flag="threads=$th"
out_flag="out=$output_dir"
mbq_flag="mbq=$mbq"
mrq_flag="mrq=$mrq"

$aseq_exec $vcf_flag $bam_flag $threads_flag $out_flag $mbq_flag $mrq_flag

file_out_prefix=$(echo $bam_file | awk 'match($0, /rep[1-4].*/) {print substr($0, RSTART, RLENGTH - 4)}')
file_out=${output_dir}${file_out_prefix}".PILEUP.ASEQ"

new_file_out=${output_dir}${file_out_prefix}"_"$(echo $vcf_file | awk 'match($0, /chr[0-9MX][0-9T]?/) {print substr($0, RSTART, RLENGTH)}')".PILEUP.ASEQ"

mv $file_out $new_file_out
