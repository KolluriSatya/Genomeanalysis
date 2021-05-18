#!/bin/bash -l
#SBATCH -A g2020008             # code of the project
#SBATCH -p core                 # core/ node
#SBATCH -n 12                  # nr of cores/ nodes
#SBATCH -t 10:00:00             # time needed (dd-hh:mm:ss)
#SBATCH -J tophat_scaffold6     # a name for your job
#SBATCH --mail-type=ALL         #required
#SBATCH --mail-user Satyakrishnaprasanna.Kolluri.2805@student.uu.se

#Load modules
module load bioinfo-tools
module load samtools
module load bowtie2
module load tophat

#code to run
tophat2 -r  -o this1_out readsfastaindex/readsF orf.fastq
for file in /home/satya/glob/5_Tean_Teh_2017/transcriptome/trimmed/*_06.1.fastq.gz
do
   file2="$(sed 's/_06\.1/_06.2\' <<<$file)"
   echo $file
   echo $file2
   output=$(basename $file)
   tophat -o /home/satya/glob/tophat_scaf6_outfiles/tophat_out_${output%.fastq.gz} \
   -p 12 /home/satya/Genomeanalysis/pilon/bowtie2/bowtie2onpilon $file $file2
done
