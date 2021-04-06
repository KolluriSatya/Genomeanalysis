#!/bin/bash -l
#SBATCH -A g2020008             # code of the project
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
trinity --genome_guided_bam /home/satya/glob/tophat_scaf6_outfiles/tophat_bam/accepted66_hits.bam --max_memory 30G --genome_guided_max_intron 10000 --CPU 8 --output /home/satya/Genomeanalysis/trinity_output
