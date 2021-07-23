#!/bin/sh
gatk_path="/GROUPS/sharedRL/tirocinanti/tools/gatk.jar"
folder=$(echo $1 | sed 's/rep[1234]\.sorted\.groups\.dedup\.bam//g')
bam=$(echo $1 | sed 's/.*\///g ; s/\.sorted\.groups\.dedup\.bam//g')
fasta="/GROUPS/sharedRL/tirocinanti/annotations/human/Homo_sapiens.GRCh38.dna.primary_assembly.fa"
vcf_dir="/GROUPS/sharedRL/tirocinanti/annotations/human/Polymorphisms/"
knownsiteslist=$(ls $vcf_dir | grep "vcf.gz$" | sed -e " s|.*|-knownSites ${vcf_dir}&|g")
java -Xmx16G -jar ${gatk_path} \
       -T SplitNCigarReads \
       -I ${folder}$bam.sorted.groups.dedup.bam \
       -R $fasta \
       -U ALLOW_N_CIGAR_READS \
       -o ${folder}$bam.sorted.groups.dedup.splitted.bam > ${folder}${bam}.splitting.log 2>&1

java -Xmx16G -jar ${gatk_path} \
       -S SILENT \
       -T RealignerTargetCreator \
       -I ${folder}$bam.sorted.groups.dedup.splitted.bam -nt 10 \
       -R $fasta \
       -o ${folder}$bam.intervals > ${folder}${bam}.realignerTarget.log 2>&1

java -Xmx16G -jar ${gatk_path} -S SILENT \
       -I ${folder}$bam.sorted.groups.dedup.splitted.bam \
       -R $fasta \
       -T IndelRealigner \
       -targetIntervals ${folder}$bam.intervals \
       -o ${folder}$bam.sorted.groups.dedup.splitted.realigned.bam > ${folder}${bam}.realigner.log 2>&1
samtools index ${folder}$bam.sorted.groups.dedup.splitted.realigned.bam

java -Xmx8G -jar ${gatk_path} \
       -T BaseRecalibrator -R $fasta \
       -I ${folder}$bam.sorted.groups.dedup.splitted.realigned.bam -nct 10 \
       ${knownsiteslist} \
       -o ${folder}$bam.3.qs > ${folder}${bam}.recalibrationSite.log 2>&1

java -Xmx8G -jar ${gatk_path} \
       -T PrintReads \
       -R $fasta \
       -I ${folder}$bam.sorted.groups.dedup.splitted.realigned.bam -nct 10 \
       -o ${folder}$bam.sorted.groups.dedup.splitted.realigned.recalibrated.bam \
       --BQSR ${folder}$bam.3.qs > ${folder}${bam}.recalibration.log 2>&1

samtools index ${folder}$bam.sorted.groups.dedup.splitted.realigned.recalibrated.bam
