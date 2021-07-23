#!/bin/sh

condition=$1
constraint=$2
image_out=$3
table_out=$4
pre_post=$5

printf "\\\\section{$(echo $condition | sed 's@_@\\_@g')}\n"
scr/tables_plot_replicate.R $condition $constraint $image_out $table_out $pre_post

printf "\\\\begin{table}[H]\n\\centering\n\\input{$table_out}\n\\caption{SNP count of condition $(echo $condition | sed "s@_@ @g") with constraint $constraint}\\end{table}\n"
printf "\\\\begin{figure}[H]\n\\includegraphics[width=\\\\textwidth]{$image_out.png}\n\\caption{SNP count of condition $(echo $condition | sed "s@_@ @g") with constraint $constraint}\n\\end{figure}\n"

printf "\\\\subsection{Correlation of allelic fraction between replicates}\n"
scr/correlation_replicates_all.sh $condition $constraint $pre_post
