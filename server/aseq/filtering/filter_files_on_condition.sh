#!/bin/sh

bottom_af=$1
top_af=$2
min_cov=$3

../../get_replicant.sh -p | grep "ASEQ$" | parallel --will-cite --jobs 10 ./filter_single.sh $bottom_af $top_af $min_cov
