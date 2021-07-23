#!/bin/sh

#This script takes as input a bam file and explores a directory containing all the SNPs separated by chromosome.




bam=$1
vcf_dir="/GROUPS/sharedRL/tirocinanti/giacomo/output/vcf/only_snp_unravelled/"

output_dir=$(echo $bam | sed 's@rep.*@@g')$(echo $bam | awk 'match($0, /rep[1-4]/) {print substr($0, RSTART, RLENGTH)}')"-$2/"


mkdir -p $output_dir

ls $vcf_dir | parallel --will-cite --jobs 1 ./aseq_single.sh $vcf_dir{} $bam $output_dir
