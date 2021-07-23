#!/bin/sh
dir=$1"/"
prefix=$2"/"
echo $dir
wc -l $(ls ${prefix}${dir} | grep "union$" | sed "s@.*@$prefix$dir&@g") | sed "s@$prefix$dir@@g" | awk '{OFS=","} {print $2,$1}' | head -n -1 > ${prefix}${dir}union.csv
wc -l $(ls ${prefix}${dir} | grep "intersection$"| sed "s@.*@$prefix$dir&@g") | sed "s@$prefix$dir@@g" | awk '{OFS=","} {print $2,$1}' | head -n -1 > ${prefix}${dir}intersection.csv
