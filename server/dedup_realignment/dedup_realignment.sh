#!/bin/sh

../get_replicant.sh -p | grep "rep[1234]\.bam$" | parallel --will-cite --jobs 1 ./dedup.sh {}

../get_replicant.sh -p | grep "rep[1234]\.sorted\.groups\.dedup\.bam$" | parallel --will-cite --jobs 1 ./realign_recalibration.sh {}
