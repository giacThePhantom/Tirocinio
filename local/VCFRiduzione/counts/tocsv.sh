#!/bin/sh
out="countsnp.csv"
chr=$(seq 1 22)" X MT"
rownames=""
files="Not_intersected_count.txt 103_intersect_count.txt 103_exonic_intersect_count.txt GENCODE_intersect_count.txt"

echo "Chr,"$(seq -s "," 1 22)",X,MT" > $out

for i in ${files}; do
	case "$i" in
		Not_intersected_count\.txt) printf "Not intersected," >> $out ;;
		103_intersect_count\.txt) printf "Homo_sapiens.GRCh38.103.gtf," >> $out ;;
		103_exonic_intersect_count\.txt) printf "Homo_sapiens.GRCh38.103.exonic.gtf," >> $out ;;
		GENCODE_intersect_count\.txt) printf "GENCODE_Exons_GRCh38.bed," >> $out ;;
	esac
	for y in ${chr}; do
		case "$y" in
			MT) grep "chr${y}\." $i | awk '{print $2}' >> $out ;;
			*) grep "chr${y}\." $i | awk '{printf $2","}' >> $out ;;
		esac
	done
done
