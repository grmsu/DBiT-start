sample=$1
indir=$2
tmp_data=$indir/$sample/tmp_data

mkdir -p $tmp_data
mkdir -p $tmp_data/qc_raw_data/

/gpfs/ysm/project/fan/gs592/02_Spatial_Hippocampus_DG/00.software/bbmap/bbduk.sh \
in1=`ls $indir/$sample/*1.fq.gz` \
in2=`ls $indir/$sample/*2.fq.gz` \
outm1=$tmp_data/qc_raw_data/$sample\_raw_qc_linker1_1.fq.gz \
outm2=$tmp_data/qc_raw_data/$sample\_raw_qc_linker1_2.fq.gz \
k=30 mm=f rcomp=f restrictleft=118 skipr1=t \
hdist=3 \
stats=$tmp_data/qc_raw_data/$sample\_stats.linker1.txt \
threads=20 \
literal=GTGGCCGATGTTTCGCATCGGCGTACGACT
