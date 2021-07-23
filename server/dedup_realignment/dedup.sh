#!/bin/sh

picard_path="/GROUPS/sharedRL/tirocinanti/tools/picard.jar"
folder=$(echo $1 | sed 's/rep[1234]\.bam//g')
bam=$(echo $1 | sed 's/.*\///g ; s/\.bam//g')

java -jar ${picard_path} AddOrReplaceReadGroups \
       I=$folder$bam.bam \
       O=$folder$bam.sorted.groups.bam \
       RGID=1 \
       RGLB=lib1 \
       RGPL=ILLUMINA \
       RGPU=unit1 \
       RGSM=20 > $folder$bam.picard.addreplacegroups.log

java -Xmx8G -jar ${picard_path} MarkDuplicates \
	I=$folder$bam.sorted.groups.bam \
	O=$folder$bam.sorted.groups.dedup.bam \
	REMOVE_DUPLICATES=true TMP_DIR=/tmp MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=1000 \
	VALIDATION_STRINGENCY=LENIENT \
	METRICS_FILE=$folder$bam.picard.log \
	ASSUME_SORTED=true > $folder$bam.picard.markduplicates.log

samtools index $folder$bam.sorted.groups.dedup.bam
