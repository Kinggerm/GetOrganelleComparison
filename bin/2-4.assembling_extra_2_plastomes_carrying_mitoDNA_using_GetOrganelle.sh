# Daucus carota plastome: the output plastome will carry exactly the same 126-bp mitochondrial insertion mentioned by Goremykin et al (2009)
get_organelle_from_reads.py -1 SRR2147183_1.fastq.gz -2 SRR2147183_2.fastq.gz -F embplant_pt -o Daucus_carota_SRR2147183-plastome -R 10


# Asclepias syriaca plastome: the output plastome will carry exactly the same 2427-bp mitochondrial insertion detected by Straub et al (2013) 
get_organelle_from_reads.py -1 SRR4243000_1.fastq.gz -2 SRR4243000_2.fastq.gz -F embplant_pt -o Asclepias_syriaca_SRR4243000-plastome -R 5 -w 58 --reduce-reads-for-coverage inf -k 21,35,45,55,65,75,85,95,105 -t 16
# failed but nearly circular; rerun get_organelle_from_reads.py using the previous result as the seed, setting a small --max-extending-len
get_organelle_from_reads.py -1 SRR4243000_1.fastq.gz -2 SRR4243000_2.fastq.gz -F embplant_pt -o Asclepias_syriaca_SRR4243000-plastome -R 5 -w 58 --reduce-reads-for-coverage inf -k 21,35,45,55,65,75,85,95,105 -t 16 --max-extending-len 300 -s Asclepias_syriaca_SRR4243000-plastome/embplant_pt.K105.contigs.graph1.1.path_sequence.fasta