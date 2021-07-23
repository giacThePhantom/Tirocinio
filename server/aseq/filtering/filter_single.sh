#!/bin/sh
bottom_af=$1
top_af=$2
min_cov=$3
file=$4

awk '{ if ( $16 <= '"$top_af"' && $16 >= '"$bottom_af"' && $17 >= '"$min_cov"' ) print $0}' $file > "${file}.${bottom_af}.${top_af}.${min_cov}.filtered"
