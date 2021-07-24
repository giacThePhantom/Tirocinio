# Documentation for all script executed on the CIBIO server

## First alignment
### trimm_align_sort_index.sh
This script takes care of all the pipeline for trimming, align, sort and index.
It produces indexed and sorted bam files from fastq files.
### trimming.sh [private]
This script is the first used by trimm_align_sort_index.sh.
It takes the raw fastq files and removes the primers sequences.
#### Inputs:
In this particular order:
* Fastq file
* Output directory
* Prefix for resolving of non absolutes paths
* Directory containing the fastq files
* Number of threads used by a trimmomatic instance.
#### outputs:
* A directory tree containing all the trimmed sam files.
* A file on the root of the output directory containing all the sam files created.
### star.sh [private]
This script takes the trimmed files from trimmomatic and alignes them against a reference genome.
#### Inputs:
* Sam file
* output directory.
* Prefix for resolving of non absolutes paths
* Directory containing the fastq files
* Number of threads used by a star instance.
#### outputs:
* A directory tree containing all the aligned sam files.
* A file on the root of the output directory containing all the new sam files created.
### sorting.sh [private]
This script takes the aligned sam files and sorts all the reads, compressing them in a bam file.
#### Inputs:
* Sam file
* output directory.
* Prefix for resolving of non absolutes paths
* Directory containing the fastq files
* Number of threads used by a samtools instance.
#### outputs:
* A directory tree containing all the sorted bam files.
* A file on the root of the output directory containing all the new bam files created.
### indexing.sh [private]
This script takes the sorted bam files and indexes all the reads.
#### Inputs:
* Bam file
* output directory.
* Prefix for resolving of non absolutes paths
* Directory containing the fastq files
* Number of threads used by a samtools instance.
#### outputs:
* A directory tree containing all the sorted bam files with the respective bai indexes.
