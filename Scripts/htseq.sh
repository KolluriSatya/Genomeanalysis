#!/bin/bash -l

#SBATCH -A g2021012            #code of the project
#SBATCH -M snowy                #required
#SBATCH -p core                 # core/ node
#SBATCH -n 8                   # nr of cores/ nodes
#SBATCH -t 04:00:00             # time needed (dd-hh:mm:ss)
#SBATCH -J htseq_final               # a name for your job
#SBATCH --mail-type=ALL         #required
#SBATCH --mail-user Satyakrishnaprasanna.Kolluri.2805@student.uu.se

#Load modules
module load bioinfo-tools
module load samtools/1.9
module load htseq/0.9.1


#Code to run
htseq-count -f bam -t CDS -i Name -r pos /proj/g2021012/nobackup/part_of_plant_92Aligned.sortedByCoord.out.bam \
/proj/g2021012/nobackup/satya/sequence.gff3 > rna_SRR6040092_counts.txt

htseq-count -f bam -t CDS -i Name -r pos /proj/g2021012/nobackup/part_of_plant_93Aligned.sortedByCoord.out.bam \
/proj/g2021012/nobackup/satya/sequence.gff3 > rna_SRR6040093_counts.txt

htseq-count -f bam -t CDS -i Name -r pos /proj/g2021012/nobackup/part_of_plant_96Aligned.sortedByCoord.out.bam \
/proj/g2021012/nobackup/satya/sequence.gff3 > rna_SRR6040096_counts.txt

htseq-count -f bam -t CDS -i Name -r pos /proj/g2021012/nobackup/part_of_plant_97Aligned.sortedByCoord.out.bam \
/proj/g2021012/nobackup/satya/sequence.gff3 > rna_SRR6040097_counts.txt

