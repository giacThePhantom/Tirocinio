#!/bin/sh
dir_regex=$1
[ -z $1 ] && echo "Missing regex of dir of filtered files" && exit 1

../../get_replicant.sh -p | grep "${dir_regex}.*filtered$" | xargs -I {}  ./count_single.sh {} $dir_regex
