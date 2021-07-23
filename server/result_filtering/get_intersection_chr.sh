#!/bin/sh

for i in $@; do
	[ "$i" = "$1" ] && temp=$(cat $i)
	[ "$i" = "$1" ] || temp=$(echo "$temp" | awk 'NR==FNR{seen[$3]=1; next} seen[$3]' - $i)
done

[ -z "$temp" ] || echo "$temp" | awk 'BEGIN{OFS="\t"} {print $1,$2,$3,$5,$6}'
