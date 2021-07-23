#!/bin/sh

prefix_path="/GROUPS/sharedRL/tirocinanti/"
annotation_path=$prefix_path"annotations/human/"
polymorphism_path=$annotation_path"Polymorphisms/"
output_dir=$prefix_path"/giacomo/output/countsnp/Polymorphisms_new/"

mkdir -p $output_dir

ls $polymorphism_path | xargs -I {} ./delete_non_alt_single.sh ${polymorphism_path} ${output_dir} {}
