#!/bin/bash -l

#SBATCH -A g2021012             # code of the project
#SBATCH -M snowy                #required
#SBATCH -p core                 # core/ node
#SBATCH -n 8                  # nr of cores/ nodes
#SBATCH -t 07:00:00             # time needed (dd-hh:mm:ss)
#SBATCH -J before_trinity     # a name for your job
#SBATCH --mail-type=ALL         #required
#SBATCH --mail-user Satyakrishnaprasanna.Kolluri.2805@student.uu.se

#Load modules
module load bioinfo-tools
module load samtools

#Code to run
samtools sort /home/satya/Genomeanalysis/output/tophat_scaf5_outfiles/tophat_bam/accepted92_hits.bam -o /home/satya/Genomeanalysis/output/tophat_sorted/accepted92_hits.sorts.sorted.bam
samtools sort /home/satya/Genomeanalysis/output/tophat_scaf6_outfiles/tophat_bam/accepted94_hits.bam -o /home/satya/Genomeanalysis/output/tophat_sorted/accepted94_hits.sorts.sorted.bam
samtools sort /home/satya/Genomeanalysis/output/tophat_scaf6_outfiles/tophat_bam/accepted93_hits.bam -o /home/satya/Genomeanalysis/output/tophat_sorted/accepted93_hits.sorts.sorted.bam
samtools sort /home/satya/Genomeanalysis/output/tophat_scaf6_outfiles/tophat_bam/accepted96_hits.bam -o /home/satya/Genomeanalysis/output/tophat_sorted/accepted96_hits.sorts.sorted.bam
samtools sort /home/satya/Genomeanalysis/output/tophat_scaf6_outfiles/tophat_bam/accepted97_hits.bam -o /home/satya/Genomeanalysis/output/tophat_sorted/accepted97_hits.sorts.sorted.bam
