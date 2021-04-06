#!/bin/bash -l
#SBATCH -A g2020008             # code of the project
#SBATCH -p core                 # core/ node
#SBATCH -n 8                   # nr of cores/ nodes
#SBATCH -t 00:50:00             # time needed (dd-hh:mm:ss)
#SBATCH -J bowtie_build               # a name for your job
#SBATCH --mail-type=ALL         #required
#SBATCH --mail-user Satyakrishnaprasanna.Kolluri.2805@student.uu.se

#Load modules
module load bioinfo-tools
module load bowtie2

#code to run
bowtie2-build /home/satya/pilon/pilon_improved_output.fasta /home/satya/pilon/bowtie2/bowtie2onpilon 


