# README

Raccolta di script per il tirocinio di Giacomo Fantoni

## first_alignment
Script necessari per l'operazione di trimming, allineamento, ordinamento e indicizzazione dei fastq files in bam files.
* **trimming_alignment.sh** Gestisce tutta la pipeline.
* **trimming.sh** chiamato da trimming_alignment.sh come primo script, esegue trimmomatic.
* **star.sh** chiamato da trimming_alignment.sh, esegue star dopo trimmomatic.
* **sorting.sh** chiamato da trimming_alignment.sh, utilizza samtools per ordinare il sam file output di star e comprimerlo in un bam.
* **indexing.sh** chiamato da trimming_alignment.sh, utilizza samtools per indicizzare il bam file output di sorting.
* **trimmomatic_star.log** contiene informazioni sull'esecuzione di trimming_alignment.sh.

## vcf
Script necessari per il filtraggio di file vcf in modo da prepararli per l'esecuzione di ASEQ
