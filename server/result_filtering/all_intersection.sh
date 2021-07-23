#!/bin/sh

chrs="1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 X MT"
filters="0\.1\.0\.9\.10 0\.1\.0\.9\.20 0\.2\.0\.8\.10 0\.2\.0\.8\.20"
regex_dir=$1
output_dir=$2

mkdir -p ${output_dir}

for filter in $filters; do
	for chr in $chrs; do
		echo "filter: $(echo $filter | sed 's/\\//g') chr: ${chr}"
		./get_intersection_chr.sh $(../get_replicant.sh -p | grep "${regex_dir}.*chr${chr}\.PILEUP\.ASEQ\.${filter}\.filtered$") > ${output_dir}chr${chr}.$(echo $filter | sed 's/\\//g').intersection
	done
done
