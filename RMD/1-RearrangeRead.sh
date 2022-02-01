sample=$1
indirn=$2
mkdir -p $indirn/02.effective

perl /gpfs/ysm/project/fan/gs592/Database/PerlScripts/1-effective.pl -indir $indirn/01.rawdata -outdir $indirn/02.effective -insertsize $sample
