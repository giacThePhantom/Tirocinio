#!/bin/sh
nrep=$1
latex_out="../latex/snp_count_min_rep_$nrep.tex"
cp ../latex/template.tex $latex_out


contains() {
    string="$1"
    substring="$2"
    if test "${string#*$substring}" != "$string"
    then
        return 0    # $substring is in $string
    else
        return 1    # $substring is not in $string
    fi
}

csv_path="../output/rsid_count/"
csv_files=$(ls $csv_path)
tables_path="../output/tex_tables/"
image_path="../output/images/"
for file in $csv_files; do
	name=$(echo $file | sed 's/\..*$//')"_$nrep"
	./barplot_tables.R $csv_path$file $nrep $name
	min_cov=$(echo $name | sed  's/.*\([12]0\).*/\1/g')
	pre_post=$(echo $name | sed  's/.*\(pre\|post\).*/\1/g')
	contains $name "three_prime_utr" && three=" in the 3'-UTR"
	printf "\\\\section*{SNP found with minimum coverage $min_cov $pre_post recalibration$three}\n"  >> $latex_out
	#printf "\\\\begin{table}[H]\n\\centering\n\\input{$tables_path$name.tex}\n\\\\end{table}"  >> $latex_out
	printf "\\\\begin{figure}[H]\n\\centering\n\\includegraphics[width=\\\\textwidth]{$image_path$name.png}\n\\\\end{figure}\n"  >> $latex_out
  three=""
done
printf "\\\\end{document}\n" >> $latex_out
pdflatex -output-dir="../output/pdfs/" $latex_out && pdflatex -output-dir="../output/pdfs/" $latex_out
