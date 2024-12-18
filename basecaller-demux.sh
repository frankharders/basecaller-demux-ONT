#!/bin/bash

#ONT Dorado

mkdir -p 1_pod52bam;
mkdir -p 2_bam2fastq;

~/GIT/dorado*/bin/dorado basecaller ~/GIT/dorado*/mode*/dna_r10.4.1_e8.2_400bps_hac\@v5.0.0 pod5/ > 1_pod52bam/calls.bam;

~/GIT/dorado*/bin/dorado demux 

# optie 1;
~/GIT/dorado*/bin/dorado demux --no-trim --kit-name SQK-NBD114-96 --emit-fastq -o 2_bam2fastq/ 1_pod52bam/calls.bam

# optie 2;
~/GIT/dorado*/bin/dorado demux --no-trim --no-classify --emit-fastq -o 2_bam2fastq/ 1_pod52bam/calls.bam



