#!/bin/bash -l
#SBATCH -A g2020008             # code of the project
#SBATCH -p core                 # core/ node
#SBATCH -n 8                   # nr of cores/ nodes
#SBATCH -t 19:00:00             # time needed (dd-hh:mm:ss)
#SBATCH -J assembly_CANU           # a name for your job
#SBATCH --mail-type=ALL         #required
#SBATCH --mail-user Satyakrishnaprasanna.Kolluri.2805@student.uu.se

#Load Modules
module load bioinfo-tools
module load canu/1.7

#Code to run
canu \
-p durian_pacbio_assembly_dna  -d /home/satya/glob/5_Tean_Teh_2017/pacbio_data/pacbio_genome_assembly \
genomesize=32m \
stopOnReadQuality=false \
-pacbio-raw /home/satya/glob/5_Tean_Teh_2017/pacbio_data/SRR6037732_scaffold_06.fq.gz
