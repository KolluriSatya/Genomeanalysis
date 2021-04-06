#!/bin/bash -l
#SBATCH -A g2020008             # code of the project
#SBATCH -p core                 # core/ node
#SBATCH -n 4                  # nr of cores/ nodes
#SBATCH -t 00:40:00             # time needed (dd-hh:mm:ss)
#SBATCH -J Pilon_imporveassembly               # a name for your job
#SBATCH --mail-type=ALL         #required
#SBATCH --mail-user Satyakrishnaprasanna.Kolluri.2805@student.uu.se

#Load modules
module load bioinfo-tools
module load Pilon/1.22

#Code to run
 java -jar \
$PILON_HOME/pilon.jar \
  --genome /home/satya/glob/5_Tean_Teh_2017/pacbio_data/pacbio_genome_assembly/durian_pacbio_assembly_dna.contigs.fasta \
 --bam /home/satya/pacbio_allignment_sorted.bam \
  --diploid \
 --threads 2 \
 --output pilon_improved_output \
 --outdir /home/satya/pilon \
    
 
