#!/bin/bash -l
#SBATCH -A g2020008             # code of the project
#SBATCH -p core                 # core/ node
#SBATCH -n 8                  # nr of cores/ nodes
#SBATCH -t 10:00:00             # time needed (dd-hh:mm:ss)
#SBATCH -J tophat_list     # a name for your job
#SBATCH --mail-type=ALL         #required
#SBATCH --mail-user Satyakrishnaprasanna.Kolluri.2805@student.uu.se

#Load modules
module load bioinfo-tools
module load samtools
module load bowtie2
module load tophat

#Code to run
tophat -o /home/satya/Genomeanalysis/tophat_outfiles/trans_6S66 -p 12 /home/satya/Genomeanalysis/pilon/bowtie2/bowtie2onpilon /home/satya/glob/5_Tean_Teh_2017/transcriptome/trimmed/SRR6040066_scaffold_06.1.fastq.gz /home/satya/glob/5_Tean_Teh_2017/transcriptome/trimmed/SRR6040066_scaffold_06.2.fastq.gz
tophat -o /home/satya/Genomeanalysis/tophat_outfiles/trans_6S67 -p 12 /home/satya/Genomeanalysis/pilon/bowtie2/bowtie2onpilon /home/satya/glob/5_Tean_Teh_2017/transcriptome/trimmed/SRR6040067_scaffold_06.1.fastq.gz /home/satya/glob/5_Tean_Teh_2017/transcriptome/trimmed/SRR6040067_scaffold_06.2.fastq.gz
tophat -o /home/satya/Genomeanalysis/tophat_outfiles/trans_6S69 -p 12 /home/satya/Genomeanalysis/pilon/bowtie2/bowtie2onpilon /home/satya/glob/5_Tean_Teh_2017/transcriptome/trimmed/SRR6040069_scaffold_06.1.fastq.gz /home/satya/glob/5_Tean_Teh_2017/transcriptome/trimmed/SRR6040069_scaffold_06.2.fastq.gz
tophat -o /home/satya/Genomeanalysis/tophat_outfiles/trans_6S92 -p 12 /home/satya/Genomeanalysis/pilon/bowtie2/bowtie2onpilon /home/satya/glob/5_Tean_Teh_2017/transcriptome/trimmed/SRR6040092_scaffold_06.1.fastq.gz /home/satya/glob/5_Tean_Teh_2017/transcriptome/trimmed/SRR6040092_scaffold_06.2.fastq.gz
tophat -o /home/satya/Genomeanalysis/tophat_outfiles/trans_6S93 -p 12 /home/satya/Genomeanalysis/pilon/bowtie2/bowtie2onpilon /home/satya/glob/5_Tean_Teh_2017/transcriptome/trimmed/SRR6040093_scaffold_06.1.fastq.gz /home/satya/glob/5_Tean_Teh_2017/transcriptome/trimmed/SRR6040093_scaffold_06.2.fastq.gz
tophat -o /home/satya/Genomeanalysis/tophat_outfiles/trans_6S94 -p 12 /home/satya/Genomeanalysis/pilon/bowtie2/bowtie2onpilon /home/satya/glob/5_Tean_Teh_2017/transcriptome/trimmed/SRR6040094_scaffold_06.1.fastq.gz /home/satya/glob/5_Tean_Teh_2017/transcriptome/trimmed/SRR6040094_scaffold_06.2.fastq.gz
tophat -o /home/satya/Genomeanalysis/tophat_outfiles/trans_6S96 -p 12 /home/satya/Genomeanalysis/pilon/bowtie2/bowtie2onpilon /home/satya/glob/5_Tean_Teh_2017/transcriptome/trimmed/SRR6040096_scaffold_06.1.fastq.gz /home/satya/glob/5_Tean_Teh_2017/transcriptome/trimmed/SRR6040096_scaffold_06.2.fastq.gz
tophat -o /home/satya/Genomeanalysis/tophat_outfiles/trans_6S97 -p 12 /home/satya/Genomeanalysis/pilon/bowtie2/bowtie2onpilon /home/satya/glob/5_Tean_Teh_2017/transcriptome/trimmed/SRR6040097_scaffold_06.1.fastq.gz /home/satya/glob/5_Tean_Teh_2017/transcriptome/trimmed/SRR6040097_scaffold_06.2.fastq.gz
