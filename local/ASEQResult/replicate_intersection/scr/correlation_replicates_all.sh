#!/bin/sh

condition=$1
constraint=$2
pre_post=$3

for i in $(seq 1 4); do
	for j in $(seq $(($i + 1)) 4); do
		scr/corr_replicate.R "latex/plots/$condition-rep-$i-$j.$pre_post.$constraint" "rep $i" "rep $j" "data/corr_csvs/${pre_post}-recalibration/${condition}_rep$i-$j.$constraint.filtered.csv"
		printf "\\\\begin{figure}[H]\n\\centering\n\\includegraphics[width=\\\\textwidth]{latex/plots/$condition-rep-$i-$j.$pre_post.$constraint.png}\n\\caption{Correlation between replicates: $i and $j}\n\\end{figure}\n"
	done
done
