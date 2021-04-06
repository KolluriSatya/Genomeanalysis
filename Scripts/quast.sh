#!/bin/bash -l

#SBATCH -A g2020008             # code of the project
#SBATCH -p core                 # core/ node
#SBATCH -n 8                  # nr of cores/ nodes
#SBATCH -t 01:00:00             # time needed (dd-hh:mm:ss)
#SBATCH -J quast     # a name for your job
#SBATCH --mail-type=ALL         #required
#SBATCH --mail-user Satyakrishnaprasanna.Kolluri.2805@student.uu.se

#Download the information from
downloaded https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/002/303/985/GCF_002303985.1_Duzib1.0/GCF_002303985.1_Duzib1.0_protein.faa.gz

#Load modules
module load bioinfo-tools
module load quast

#code to run
quast.py \
-o /home/satya/Genomeanalysis/output/CANU_Quast \
/home/satya/glob/5_Tean_Teh_2017/GA/durian_pacbio_assembly_dna.contigs.fasta


quast.py \
-o /home/satya/Genomeanalysis/output/pilon_Quast \
/home/satya/Genomeanalysis/output/pilon_improved_output.fasta


quast.py \
-o /home/satya/Genomeanalysis/output/pilon_Quast_reference_CANU \
/home/satya/glob/5_Tean_Teh_2017/GA/durian_pacbio_assembly_dna.contigs.fasta \
/home/satya/Genomeanalysis/output/pilon_improved_output.fasta


quast.py \
-o /home/satya/Genomeanalysis/output/pilon_Quast_reference_paper \
-R /home/satya/Genomeanalysis/codes/GCF_002303985.1_Duzib1.0_protein.faa.gz \
/home/satya/Genomeanalysis/output/pilon_improved_output.fasta


quast.py \
-o /home/satya/Genomeanalysis/output/CANU_Quast_reference_paper \
-R /home/satya/Genomeanalysis/codes/GCF_002303985.1_Duzib1.0_protein.faa.gz \
/home/satya/glob/5_Tean_Teh_2017/GA/durian_pacbio_assembly_dna.contigs.fasta

