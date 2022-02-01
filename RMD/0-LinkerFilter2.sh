sample=$1
indir=$2
tmp_data=$indir/$sample/tmp_data/

/gpfs/ysm/project/fan/gs592/02_Spatial_Hippocampus_DG/00.software/bbmap/bbduk.sh \
in1=`ls $tmp_data/qc_raw_data/${sample}_raw_qc_linker1_1.fq.gz` \
in2=`ls $tmp_data/qc_raw_data/${sample}_raw_qc_linker1_2.fq.gz` \
outm1=$tmp_data/qc_raw_data/${sample}_raw_qc_1.fq.gz \
outm2=$tmp_data/qc_raw_data/${sample}_raw_qc_2.fq.gz \
k=30 mm=f rcomp=f restrictleft=80 skipr1=t \
hdist=3 \
stats=$tmp_data/qc_raw_data/${sample}_stats.linker2.txt \
threads=20 \
literal=ATCCACGTGCTTGAGAGGCCAGAGCATTCG
