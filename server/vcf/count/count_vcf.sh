#!/bin/sh

[ -z $1 ] && echo "Missing path of vcf files" && exit 0
[ -z $2 ] && echo "Missing output file name" && exit 0

prefix_path="/GROUPS/sharedRL/tirocinanti/"
annotation_path=$prefix_path"annotations/human/"
polymorphism_path=$1
output_dir=$prefix_path"/giacomo/output/vcf/counts/"
output_file=$output_dir$2

mkdir -p $output_dir

ls $polymorphism_path | xargs -I {} ./count_single_file.sh "${polymorphism_path}"{} $output_file
