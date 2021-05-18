#!/bin/bash -l

#SBATCH -A g2021012             # code of the project
#SBATCH -M snowy                #required
#SBATCH -p core                 # core/ node
#SBATCH -n 16                  # nr of cores/ nodes
#SBATCH -t 00:29:00             # time needed (dd-hh:mm:ss)
#SBATCH -J STAR_index     # a name for your job
#SBATCH --mail-type=ALL         #required
#SBATCH --mail-user Satyakrishnaprasanna.Kolluri.2805@student.uu.se

#Load modules
module load bioinfo-tools
module load star


#Code
STAR --runThreadN 6 --runMode genomeGenerate --genomeDir /proj/g2021012/nobackup/satya/genome_star/ --genomeFastaFiles /proj/g2021012/nobackup/satya/genome_star/GCF_002303985.1_Duzib1.0_protein.fa --outFileNamePrefix /home/satya/genome_star --outSAMtype BAM SortedByCoordinate --outSAMunmapped Within --outSAMattributes Standar
