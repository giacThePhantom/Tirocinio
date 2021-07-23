#!/bin/sh

prefix_path="/GROUPS/sharedRL/tirocinanti/"
output_dir=$prefix_path"giacomo/output/countsnp/"
polymorphism_path=$output_dir"Polymorphisms_new/"

mkdir -p $output_dir

ls $polymorphism_path | xargs -I {} ./count_new_single_file.sh "${polymorphism_path}"{} $output_dir
