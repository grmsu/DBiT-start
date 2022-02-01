SAMPLEID=$1
INDIR=$2

# filter based on linker sequence
sh /gpfs/ysm/project/fan/gs592/Database/SH/0-LinkerFilter1.sh $SAMPLEID $INDIR/01.rawdata
sh /gpfs/ysm/project/fan/gs592/Database/SH/0-LinkerFilter2.sh $SAMPLEID $INDIR/01.rawdata

# rearrange read format to be compatible with st-pipeline
sh /gpfs/ysm/project/fan/gs592/Database/SH/1-RearrangeRead.sh $SAMPLEID $INDIR

# run st-pipeline
sh /gpfs/ysm/project/fan/gs592/Database/SH/2-STpipeline.sh $SAMPLEID $INDIR

# convert gene IDs to names
sh /gpfs/ysm/project/fan/gs592/Database/SH/2-ConvertToNames.sh $SAMPLEID $INDIR/03.stpipeline/

# initial SVG for alignment
sh /gpfs/ysm/project/fan/gs592/Database/SH/2-SVG.sh $SAMPLEID $INDIR/03.stpipeline/
