#!/bin/bash -l
#SBATCH -A g2020008          #Code for project
#SBATCH -p core                 # core/ node
#SBATCH -n 8                  # nr of cores/ nodes
#SBATCH -t 01:00:00             # time needed (dd-hh:mm:ss)
#SBATCH -J maker1_step     # a name for your job
#SBATCH --mail-type=ALL         #required
#SBATCH --mail-user Satyakrishnaprasanna.Kolluri.2805@student.uu.se

#Load modules
module load bioinfo-tools
module load maker/3.01.1-beta

#Code to run
maker
