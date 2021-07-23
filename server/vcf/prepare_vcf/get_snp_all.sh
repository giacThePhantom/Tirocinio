#!/bin/sh

prefix_path="/GROUPS/sharedRL/tirocinanti/"
vcf_path=$prefix_path"giacomo/output/vcf/103_exonic_intersect/"
output_dir=$prefix_path"giacomo/output/vcf/only_snp/"

mkdir -p $output_dir

ls $vcf_path | parallel --will-cite --jobs 20 ./get_only_snp.sh $vcf_path $output_dir {}
