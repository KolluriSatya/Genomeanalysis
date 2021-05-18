#!/bin/bash -l

#SBATCH -A g2021012             # code of the project
#SBATCH -M snowy                #required
#SBATCH -p core                 # core/ node
#SBATCH -n 16                  # nr of cores/ nodes
#SBATCH -t 00:29:00             # time needed (dd-hh:mm:ss)
#SBATCH -J STAR     # a name for your job
#SBATCH --mail-type=ALL         #required
#SBATCH --mail-user Satyakrishnaprasanna.Kolluri.2805@student.uu.se

#Load modules
module load bioinfo-tools
module load star

#code to run
STAR --runThreadN 2 --genomeDir /proj/g2021012/nobackup/satya/genome_star --readFilesIn /proj/g2021012/nobackup/satya/genome_star/SRR6040092_scaffold_06.1.fastq --outFileNamePrefix /proj/g2021012/nobackup/satya/genome_star/aril.output.prefix --outSAMtype BAM SortedByCoordinate
STAR --runThreadN 2 --genomeDir /proj/g2021012/nobackup/satya/genome_star --readFilesIn /proj/g2021012/nobackup/satya/genome_star/SRR6040097_scaffold_06.1.fastq --outFileNamePrefix /proj/g2021012/nobackup/satya/genome_star/leaf.output.prefix --outSAMtype BAM SortedByCoordinate
