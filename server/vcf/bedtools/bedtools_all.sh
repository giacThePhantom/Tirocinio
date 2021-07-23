#!/bin/sh

[ -z $1 ] && echo "Missing gtf file" && exit 0
[ -z $2 ] && echo "Missing output directory" && exit 0

prefix_path="/GROUPS/sharedRL/tirocinanti/"
annotation_path=$prefix_path"giacomo/output/vcf/"
polymorphism_path=$annotation_path"Polymorphisms_new/"
output_dir=$2
gtf_file=$1
bedtools_istances=10
mkdir -p $output_dir

ls $polymorphism_path | parallel --will-cite --jobs $bedtools_istances ./bedtools_single.sh ${polymorphism_path} ${output_dir} {} $gtf_file
