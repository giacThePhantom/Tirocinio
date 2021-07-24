# Dedup_realignment subfolder
## dedup_realignment.sh
This script takes the bam files created from the first alignments, deduplicates them and recalibrates them.
## dedup.sh [private]
This script takes a bam file and deduplicates it creating a new bam file in a different directory.
### Inputs:
* A Bam file
### Output:
* Another indexed bam file in the same directory.
## realign_recalibration.sh
This script takes the dedupped bam file and recalibrates it against a reference genome.
It needs a list of all known polymorphisms.
### input:
* A dedupped bam file
### Output
* A realigned and indexed bam file
