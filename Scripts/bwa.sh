#!/bin/bash -l
#SBATCH -A g2020008             # code of the project
#SBATCH -p core                 # core/ node
#SBATCH -n 2                   # nr of cores/ nodes
#SBATCH -t 01:10:00             # time needed (dd-hh:mm:ss)
#SBATCH -J bwa_alignment               # a name for your job
#SBATCH --mail-type=ALL         #required
#SBATCH --mail-user Satyakrishnaprasanna.Kolluri.2805@student.uu.se

#Load modules
module load bioinfo-tools
module load bwa/0.7.17

#Code to run
bwa mem /home/satya/glob/5_Tean_Teh_2017/pacbio_data/pacbio_genome_assembly/durian_pacbio_assembly_dna.contigs.fasta /home/satya/glob/5_Tean_Teh_2017/illumina_data/SRR6058604_scaffold_06.1P.fastq.gz /home/satya/glob/5_Tean_Teh_2017/illu.mina_data/SRR6058604_scaffold_06.2P.fastq.gz > /home/satya/Genomeanalysis/BWA.sam
