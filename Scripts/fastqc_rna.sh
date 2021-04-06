#!/bin/bash -l
#SBATCH -A g2020008		# code of the project
#SBATCH -p core			# core/ node
#SBATCH -n 2			# nr of cores/ nodes
#SBATCH -t 00:20:00		# time needed (dd-hh:mm:ss)
#SBATCH -J FastQC_RNA   	# a name for your job
#SBATCH --mail-type=ALL         #required
#SBATCH --mail-user Satyakrishnaprasanna.Kolluri.2805@student.uu.se
######################################

# Load modules
module load bioinfo-tools
module load FastQC

#Input sources
#work only on '.fq.gz' files
source_files=/home/satya/glob/5_Tean_Teh_2017/pacbio_data/SRR6037732_scaffold_06.fq.gz
output_folder=/home/satya/glob/5_Tean_Teh_2017/pacbio_data/fastqc_results_rna
mkdir -p ${output_folder}		# creates the output folders if they don't exist yet
####################################
# Code to run

   fastqc --extract --outdir="$output_folder" $source_files

mv *.out ${output_folderS}

