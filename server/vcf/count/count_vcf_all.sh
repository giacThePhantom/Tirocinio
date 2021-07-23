#!/bin/sh

path="/GROUPS/sharedRL/tirocinanti/giacomo/output/vcf/"

./count_vcf.sh ${path}Polymorphisms_new/ Not_intersected_count.txt
./count_vcf.sh ${path}103_intersect/ 103_intersect_count.txt
./count_vcf.sh ${path}103_exonic_intersect/ 103_exonic_intersect_count.txt
./count_vcf.sh ${path}GENCODE_intersect/ GENCODE_intersect_count.txt
./count_vcf.sh ${path}only_snp/ only_snp_count.txt
