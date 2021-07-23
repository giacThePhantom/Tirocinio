#!/bin/sh
prefix_path="/GROUPS/sharedRL/tirocinanti/"
annotation_path=$prefix_path"annotations/human/"
vcf_path=$prefix_path"giacomo/output/vcf/"

./bedtools_all.sh ${vcf_path}/bed/GENCODE_Exons_GRCh38.bed ${vcf_path}/GENCODE_intersect/
./bedtools_all.sh ${annotation_path}Homo_sapiens.GRCh38.103.exonic.gtf ${vcf_path}/103_exonic_intersect/
./bedtools_all.sh ${annotation_path}Homo_sapiens.GRCh38.103.gtf ${vcf_path}/103_intersect/
