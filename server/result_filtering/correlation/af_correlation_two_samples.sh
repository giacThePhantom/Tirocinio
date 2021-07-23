#!/bin/sh

file="/GROUPS/sharedRL/tirocinanti/giacomo/output/alignment/"$1
[ -z $3 ] || costraint="."$3"."$4"."$5".filtered"
[ $2 = "post" ] && out_dir="/GROUPS/sharedRL/tirocinanti/giacomo/output/correlation/post-rec/" && file_suffix=".sorted.groups.dedup.splitted.realigned.recalibrated" && aseq_dir="-post-recalibration-aseq"
[ $2 = "pre" ] && out_dir="/GROUPS/sharedRL/tirocinanti/giacomo/output/correlation/pre-rec/" && file_suffix="" && aseq_dir="-aseq"

bottom_af=$3
top_af=$4
min_cov=$5

mkdir -p $out_dir

chrs="1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 X MT"

for i in $(seq 1 4); do
	for j in $(seq $((i+1)) 4); do
		out="${out_dir}$(echo $1 | sed 's@/@_@g')rep${i}-${j}${costraint}.csv"
		true > $out
		echo $out
		for chr in $chrs; do
			first_file="${file}rep${i}${aseq_dir}/rep${i}${file_suffix}_chr${chr}.PILEUP.ASEQ"
			second_file="${file}rep${j}${aseq_dir}/rep${j}${file_suffix}_chr${chr}.PILEUP.ASEQ"
			./af_correlation_lesser_costraints.py $first_file $second_file $bottom_af $top_af $min_cov  >> $out
		done
	done
done
