#!/bin/sh

prefix_dir="/GROUPS/sharedRL/tirocinanti/giacomo/output/alignment/"
dir_regex=$2

wc -l $1 | sed "s@\([0-9]\+\)\s${prefix_dir}@\1 @g ; s@${dir_regex}@@g ; s@/@_@g" | awk '{OFS=","} {print $2,$1}'
