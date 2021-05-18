#!/bin/bash -l

#SBATCH -A g2021012             # code of the project
#SBATCH -M snowy                #required
#SBATCH -p core                 # core/ node
#SBATCH -n 8                  # nr of cores/ nodes
#SBATCH -t 08:00:00             # time needed (dd-hh:mm:ss)
#SBATCH -J trinity_scaf6     # a name for your job
#SBATCH --mail-type=ALL         #required
#SBATCH --mail-user Satyakrishnaprasanna.Kolluri.2805@student.uu.se

#Load modules
module load bioinfo-tools
module load trinity

#Code to run
for file in /home/satya/Genomeanalysis/output/tophat_sorted/*.bam
do
        output=$(basename $file)
        Trinity --genome_guided_bam $file --genome_guided_max_intron 10000 --max_memory 10G --CPU 4 --output /home/satya/Genomeanalysis/output/trinity_outfiles_${output%.bam}
done
