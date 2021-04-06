#!/bin/bash -l

#SBATCH -A g2020008             # code of the project
#SBATCH -p core                 # core/ node
#SBATCH -n 4                   # nr of cores/ nodes
#SBATCH -t 02:00:00             # time needed (dd-hh:mm:ss)
#SBATCH -J htseq               # a name for your job
#SBATCH --mail-type=ALL         #required
#SBATCH --mail-user Satyakrishnaprasanna.Kolluri.2805@student.uu.se

#Load modules
module load bioinfo-tools
module load htseq

#Code to run
htseq-count \
	-f bam \
	-r pos \
	-t gene \
	-i ID \
	-s no \
	/home/satya/Genomeanalysis/output/tophat_scaf6_outfiles/tophat_bam/accepted92_hits.bam \
	/home/satya/Genomeanalysis/maker/maker_2/long_contig.all.gff \
	> /home/satya/Genomeanalysis/output/htseq_92_output.txt

htseq-count \
	-f bam \
	-r pos \
	-t gene \
	-i ID \
	-s no \
	/home/satya/Genomeanalysis/output/tophat_scaf6_outfiles/tophat_bam/accepted93_hits.bam \
	/home/satya/Genomeanalysis/maker/maker_2/long_contig.all.gff \                                   
	> /home/satya/Genomeanalysis/output/htseq_93_output.txt

htseq-count \
	-f bam \
	-r pos \
	-t gene \
	-i ID \
	-s no \
	/home/satya/Genomeanalysis/output/tophat_scaf6_outfiles/tophat_bam/accepted96_hits.bam \
	/home/satya/Genomeanalysis/maker/maker_2/long_contig.all.gff \
	> /home/satya/Genomeanalysis/output/htseq_96_output.txt

htseq-count \
	-f bam \
	-r pos \
	-t gene \
	-i ID \
	-s no \
	/home/satya/Genomeanalysis/output/tophat_scaf6_outfiles/tophat_bam/accepted97_hits.bam \
	/home/satya/Genomeanalysis/maker/maker_2/long_contig.all.gff \
	> /home/satya/Genomeanalysis/output/htseq_97_output.txt
