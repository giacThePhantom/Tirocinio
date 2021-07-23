#!/bin/sh
cd $HOME/Universita/Tesi/DatiRaccolti/ASEQResult/replicate_intersection

pre_posts="pre post"
filters="0.1.0.9.10 0.1.0.9.20 0.2.0.8.10 0.2.0.8.20"
conditions="scr_DMSO_POL scr_DMSO_TOT scr_NUTLIN_POL scr_NUTLIN_TOT shDHX30_DMSO_POL shDHX30_DMSO_TOT shDHX30_NUTLIN_POL shDHX30_NUTLIN_TOT shPCBP2_DMSO_POL shPCBP2_DMSO_TOT shPCBP2_NUTLIN_POL shPCBP2_NUTLIN_TOT"

for pre_post in $pre_posts; do
	#for filter in $filters; do
		filter="0.2.0.8.20"
		tex_file="latex/correlation_rep$(echo $filter | sed 's/\.\?0\./_/g')_$pre_post.tex"
		cp latex/template.tex $tex_file
		for condition in $conditions; do
			scr/table_barplot_per_condition.sh $condition $filter latex/plots/$condition.$(echo $filter | sed 's/0\.//g').$pre_post latex/tables/$condition.$(echo $filter | sed 's/0\.//g').$pre_post $pre_post >> $tex_file
		done
		printf "\\\\end{document}" >> $tex_file
		pdflatex -output-directory=build $tex_file && pdflatex -output-directory=../build $tex_file
#	done
done
