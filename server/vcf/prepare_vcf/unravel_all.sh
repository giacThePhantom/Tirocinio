#!/bin/sh

prefix_path="/GROUPS/sharedRL/tirocinanti/"
vcf_path=$prefix_path"giacomo/output/vcf/only_snp/"
output_dir=$prefix_path"giacomo/output/vcf/only_snp_unravelled/"

mkdir -p $output_dir

ls $vcf_path | parallel --will-cite --jobs 20 ./unravel_multiple_bases.py $vcf_path $output_dir {}
