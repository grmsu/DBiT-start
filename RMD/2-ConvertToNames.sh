sample=$1
output=$2/$sample
path_to_annotation_file=/gpfs/ysm/project/fan/gs592/Database/GRCh38/gencode.v37.annotation.gtf

convertEnsemblToNames.py $output/${sample}_stdata.tsv \
--annotation $path_to_annotation_file \
--output $output/${sample}_stdata.updated.tsv
